; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-codec-param-test.c_check_video_streams.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-codec-param-test.c_check_video_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64, i8* }

@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_OPT_TYPE_CONST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"frame_number\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Field %s differs: %s %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_13__*)* @check_video_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_video_streams(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @av_assert0(i32 %21)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %113, %2
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %116

29:                                               ; preds = %23
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %32, i64 %34
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %8, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %39, i64 %41
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %9, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %10, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %11, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %29
  br label %113

56:                                               ; preds = %29
  br label %57

57:                                               ; preds = %107, %75, %68, %56
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = call %struct.TYPE_12__* @av_opt_next(%struct.TYPE_14__* %58, %struct.TYPE_12__* %59)
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %7, align 8
  %61 = icmp ne %struct.TYPE_12__* %60, null
  br i1 %61, label %62, label %112

62:                                               ; preds = %57
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AV_OPT_TYPE_CONST, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %57

69:                                               ; preds = %62
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  br label %57

76:                                               ; preds = %69
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @av_opt_get(%struct.TYPE_14__* %77, i8* %80, i32 0, i8** %12)
  %82 = icmp sge i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @av_assert0(i32 %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @av_opt_get(%struct.TYPE_14__* %85, i8* %88, i32 0, i8** %13)
  %90 = icmp sge i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @av_assert0(i32 %91)
  %93 = load i8*, i8** %12, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = call i64 @strcmp(i8* %93, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %76
  %98 = load i32, i32* @AV_LOG_ERROR, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 @av_log(i32* null, i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %101, i8* %102, i8* %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = call i32 @AVERROR(i32 %105)
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %97, %76
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 @av_free(i8* %108)
  %110 = load i8*, i8** %13, align 8
  %111 = call i32 @av_free(i8* %110)
  br label %57

112:                                              ; preds = %57
  br label %113

113:                                              ; preds = %112, %55
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %23

116:                                              ; preds = %23
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local %struct.TYPE_12__* @av_opt_next(%struct.TYPE_14__*, %struct.TYPE_12__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @av_opt_get(%struct.TYPE_14__*, i8*, i32, i8**) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
