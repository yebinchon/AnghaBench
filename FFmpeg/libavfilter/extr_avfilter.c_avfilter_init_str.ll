; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_avfilter_init_str.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_avfilter_init_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"This filter does not take any options, but options were provided: %s.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"No such option: %s.\0A\00", align 1
@AVERROR_OPTION_NOT_FOUND = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avfilter_init_str(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %11
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = load i32, i32* @AV_LOG_ERROR, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (%struct.TYPE_10__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_10__* %24, i32 %25, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %61

30:                                               ; preds = %16
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @process_options(%struct.TYPE_10__* %31, i32** %6, i8* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %58

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %11, %2
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = call i32 @avfilter_init_dict(%struct.TYPE_10__* %39, i32** %6)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %58

44:                                               ; preds = %38
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %47 = call %struct.TYPE_11__* @av_dict_get(i32* %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %46)
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %7, align 8
  %48 = icmp ne %struct.TYPE_11__* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (%struct.TYPE_10__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_10__* %50, i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* @AVERROR_OPTION_NOT_FOUND, align 4
  store i32 %56, i32* %8, align 4
  br label %58

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %49, %43, %36
  %59 = call i32 @av_dict_free(i32** %6)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %23
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @process_options(%struct.TYPE_10__*, i32**, i8*) #1

declare dso_local i32 @avfilter_init_dict(%struct.TYPE_10__*, i32**) #1

declare dso_local %struct.TYPE_11__* @av_dict_get(i32*, i8*, i32*, i32) #1

declare dso_local i32 @av_dict_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
