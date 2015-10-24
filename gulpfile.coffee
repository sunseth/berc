async = require 'async'
exec = require('child_process').exec
gulp = require 'gulp'
del = require 'del'
bowerFiles = require 'main-bower-files'
variant = require 'rework-variant'
concat = require 'gulp-concat'
rename = require 'gulp-rename'
nodemon = require 'gulp-nodemon'
bless = require 'gulp-bless'
templateCache = require 'gulp-angular-templatecache'
changed = require 'gulp-changed'
imagemin = require 'gulp-imagemin'

gutil = require 'gulp-util'
source = require 'vinyl-source-stream'
watchify = require 'watchify'
browserify = require 'browserify'
envify = require 'envify'
uglify = require 'gulp-uglify'
filter = require 'gulp-filter'
rename = require 'gulp-rename'

input =
  css: "#{__dirname}/source/css/**/*.css"
  coffee: "#{__dirname}/source/angular/**/*.coffee"
  angular: "#{__dirname}/source/angular/index.coffee"
  bower: "#{__dirname}/bower_components"
  semantic: "#{__dirname}/public/vendor/semantic-ui/dist/*.css"

output =
  css: "#{__dirname}/public/css"
  js: "#{__dirname}/public/js"
  vendor: "#{__dirname}/public/vendor"
  semantic: "#{__dirname}/public/vendor/semantic-ui/dist"