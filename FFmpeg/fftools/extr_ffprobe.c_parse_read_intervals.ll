; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_parse_read_intervals.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_parse_read_intervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@read_intervals = common dso_local global %struct.TYPE_5__* null, align 8
@read_intervals_nb = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Error parsing read interval #%d '%s'\0A\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Parsed log interval \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_read_intervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_read_intervals(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i8* @av_strdup(i8* %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = call i32 @AVERROR(i32 %15)
  store i32 %16, i32* %2, align 4
  br label %107

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %18 = load i8*, i8** %8, align 8
  store i8* %18, i8** %7, align 8
  br label %19

19:                                               ; preds = %32, %17
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 44
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %7, align 8
  br label %19

35:                                               ; preds = %19
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call %struct.TYPE_5__* @av_malloc_array(i32 %38, i32 4)
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** @read_intervals, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @read_intervals, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %103

45:                                               ; preds = %35
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* @read_intervals_nb, align 4
  %47 = load i8*, i8** %8, align 8
  store i8* %47, i8** %7, align 8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %94, %45
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %97

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @read_intervals_nb, align 4
  %54 = icmp slt i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @av_assert0(i32 %55)
  %57 = load i8*, i8** %7, align 8
  %58 = call i8* @strchr(i8* %57, i8 signext 44)
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %9, align 8
  store i8 0, i8* %62, align 1
  br label %64

64:                                               ; preds = %61, %51
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @read_intervals, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %65, i32* %70, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @read_intervals, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = call i32 @parse_read_interval(i8* %71, %struct.TYPE_5__* %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %64
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %81, i8* %82)
  br label %103

84:                                               ; preds = %64
  %85 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %86 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** @read_intervals, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %92 = call i32 @log_read_interval(%struct.TYPE_5__* %90, i32* null, i32 %91)
  %93 = load i8*, i8** %9, align 8
  store i8* %93, i8** %7, align 8
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %48

97:                                               ; preds = %48
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @read_intervals_nb, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @av_assert0(i32 %101)
  br label %103

103:                                              ; preds = %97, %79, %42
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @av_free(i8* %104)
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %103, %14
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_5__* @av_malloc_array(i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_read_interval(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @log_read_interval(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
