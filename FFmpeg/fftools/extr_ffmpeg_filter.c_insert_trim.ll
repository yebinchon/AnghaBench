; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_insert_trim.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_insert_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }

@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"trim\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"atrim\00", align 1
@INT64_MAX = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"%s filter not present, cannot limit recording time.\0A\00", align 1
@AVERROR_FILTER_NOT_FOUND = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"durationi\00", align 1
@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"starti\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Error configuring the %s filter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_9__**, i32*, i8*)* @insert_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_trim(i32 %0, i32 %1, %struct.TYPE_9__** %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %12, align 8
  %22 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @avfilter_pad_get_type(i32 %25, i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %33, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @INT64_MAX, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %5
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %114

42:                                               ; preds = %37, %5
  %43 = load i8*, i8** %16, align 8
  %44 = call i32* @avfilter_get_by_name(i8* %43)
  store i32* %44, i32** %14, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = load i8*, i8** %16, align 8
  %50 = call i32 @av_log(%struct.TYPE_9__* null, i32 %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @AVERROR_FILTER_NOT_FOUND, align 4
  store i32 %51, i32* %6, align 4
  br label %114

52:                                               ; preds = %42
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call %struct.TYPE_9__* @avfilter_graph_alloc_filter(i32* %53, i32* %54, i8* %55)
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %13, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %58 = icmp ne %struct.TYPE_9__* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = call i32 @AVERROR(i32 %60)
  store i32 %61, i32* %6, align 4
  br label %114

62:                                               ; preds = %52
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @INT64_MAX, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %70 = call i32 @av_opt_set_int(%struct.TYPE_9__* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %69)
  store i32 %70, i32* %17, align 4
  br label %71

71:                                               ; preds = %66, %62
  %72 = load i32, i32* %17, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %82 = call i32 @av_opt_set_int(%struct.TYPE_9__* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %80, i32 %81)
  store i32 %82, i32* %17, align 4
  br label %83

83:                                               ; preds = %78, %74, %71
  %84 = load i32, i32* %17, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %88 = load i32, i32* @AV_LOG_ERROR, align 4
  %89 = load i8*, i8** %16, align 8
  %90 = call i32 @av_log(%struct.TYPE_9__* %87, i32 %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %6, align 4
  br label %114

92:                                               ; preds = %83
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %94 = call i32 @avfilter_init_str(%struct.TYPE_9__* %93, i32* null)
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* %17, align 4
  store i32 %98, i32* %6, align 4
  br label %114

99:                                               ; preds = %92
  %100 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %105 = call i32 @avfilter_link(%struct.TYPE_9__* %101, i32 %103, %struct.TYPE_9__* %104, i32 0)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i32, i32* %17, align 4
  store i32 %109, i32* %6, align 4
  br label %114

110:                                              ; preds = %99
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %112 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %112, align 8
  %113 = load i32*, i32** %10, align 8
  store i32 0, i32* %113, align 4
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %110, %108, %97, %86, %59, %47, %41
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @avfilter_pad_get_type(i32, i32) #1

declare dso_local i32* @avfilter_get_by_name(i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, i8*) #1

declare dso_local %struct.TYPE_9__* @avfilter_graph_alloc_filter(i32*, i32*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_opt_set_int(%struct.TYPE_9__*, i8*, i32, i32) #1

declare dso_local i32 @avfilter_init_str(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @avfilter_link(%struct.TYPE_9__*, i32, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
