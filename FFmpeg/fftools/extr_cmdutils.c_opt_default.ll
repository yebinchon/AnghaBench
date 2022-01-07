; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_opt_default.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_opt_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"fdebug\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@AV_OPT_SEARCH_FAKE_OBJ = common dso_local global i32 0, align 4
@codec_opts = common dso_local global i32 0, align 4
@FLAGS = common dso_local global i32 0, align 4
@format_opts = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Routing option %s to both codec and muxer layer\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"sws_flags\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Ignoring %s %s, due to disabled swscale\0A\00", align 1
@AVERROR_OPTION_NOT_FOUND = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@resample_opts = common dso_local global i32 0, align 4
@swr_opts = common dso_local global i32 0, align 4
@sws_dict = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opt_default(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = call i32* (...) @avcodec_get_class()
  store i32* %14, i32** %12, align 8
  %15 = call i32* (...) @avformat_get_class()
  store i32* %15, i32** %13, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19, %3
  %24 = load i32, i32* @AV_LOG_DEBUG, align 4
  %25 = call i32 @av_log_set_level(i32 %24)
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 58)
  store i8* %28, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  store i8* %35, i8** %11, align 8
  br label %36

36:                                               ; preds = %30, %26
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = add nsw i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = call i32 @FFMIN(i32 128, i32 %45)
  %47 = call i32 @av_strlcpy(i8* %37, i8* %38, i32 %46)
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %49 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %50 = load i32, i32* @AV_OPT_SEARCH_FAKE_OBJ, align 4
  %51 = or i32 %49, %50
  %52 = call i32* @opt_find(i32** %12, i8* %48, i32* null, i32 0, i32 %51)
  store i32* %52, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %78, label %54

54:                                               ; preds = %36
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 118
  br i1 %59, label %72, label %60

60:                                               ; preds = %54
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 97
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 115
  br i1 %71, label %72, label %83

72:                                               ; preds = %66, %60, %54
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i32, i32* @AV_OPT_SEARCH_FAKE_OBJ, align 4
  %76 = call i32* @opt_find(i32** %12, i8* %74, i32* null, i32 0, i32 %75)
  store i32* %76, i32** %8, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %72, %36
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* @FLAGS, align 4
  %82 = call i32 @av_dict_set(i32* @codec_opts, i8* %79, i8* %80, i32 %81)
  store i32 1, i32* %9, align 4
  br label %83

83:                                               ; preds = %78, %72, %66
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %86 = load i32, i32* @AV_OPT_SEARCH_FAKE_OBJ, align 4
  %87 = or i32 %85, %86
  %88 = call i32* @opt_find(i32** %13, i8* %84, i32* null, i32 0, i32 %87)
  store i32* %88, i32** %8, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %83
  %91 = load i8*, i8** %6, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* @FLAGS, align 4
  %94 = call i32 @av_dict_set(i32* @format_opts, i8* %91, i8* %92, i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %98, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %97, %90
  store i32 1, i32* %9, align 4
  br label %102

102:                                              ; preds = %101, %83
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %102
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @AV_LOG_WARNING, align 4
  %111 = load i8*, i8** %6, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %110, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %111, i8* %112)
  store i32 1, i32* %9, align 4
  br label %114

114:                                              ; preds = %109, %105, %102
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %120

118:                                              ; preds = %114
  %119 = load i32, i32* @AVERROR_OPTION_NOT_FOUND, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %117
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32* @avcodec_get_class(...) #1

declare dso_local i32* @avformat_get_class(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_log_set_level(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32* @opt_find(i32**, i8*, i32*, i32, i32) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
