; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vidstabdetect.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vidstabdetect.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__**, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_19__, %struct.TYPE_21__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { i32*, i32* }
%struct.TYPE_22__ = type { i32*, i32* }

@VS_OK = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"motion detection failed\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot write to transform file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_22__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  store %struct.TYPE_26__* %16, %struct.TYPE_26__** %6, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %7, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 2
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %8, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %26, i64 0
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  store %struct.TYPE_25__* %28, %struct.TYPE_25__** %10, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %36 = call i32 @av_frame_is_writable(%struct.TYPE_24__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %40 = call i32 @av_frame_make_writable(%struct.TYPE_24__* %39)
  br label %41

41:                                               ; preds = %38, %34, %2
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %74, %41
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %42
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %56, i32* %61, align 4
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %68, i32* %73, align 4
  br label %74

74:                                               ; preds = %49
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %42

77:                                               ; preds = %42
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %79 = call i64 @vsMotionDetection(%struct.TYPE_21__* %78, i32* %9, %struct.TYPE_22__* %11)
  %80 = load i64, i64* @VS_OK, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %84 = load i32, i32* @AV_LOG_ERROR, align 4
  %85 = call i32 @av_log(%struct.TYPE_26__* %83, i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @AVERROR_EXTERNAL, align 4
  %87 = call i32 @AVERROR(i32 %86)
  store i32 %87, i32* %3, align 4
  br label %109

88:                                               ; preds = %77
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @vsWriteToFile(%struct.TYPE_21__* %89, i32 %92, i32* %9)
  %94 = load i64, i64* @VS_OK, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %88
  %97 = load i32, i32* @errno, align 4
  %98 = call i32 @AVERROR(i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %100 = load i32, i32* @AV_LOG_ERROR, align 4
  %101 = call i32 @av_log(%struct.TYPE_26__* %99, i32 %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %3, align 4
  br label %109

103:                                              ; preds = %88
  %104 = call i32 @vs_vector_del(i32* %9)
  br label %105

105:                                              ; preds = %103
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %108 = call i32 @ff_filter_frame(%struct.TYPE_25__* %106, %struct.TYPE_24__* %107)
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %96, %82
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @av_frame_is_writable(%struct.TYPE_24__*) #1

declare dso_local i32 @av_frame_make_writable(%struct.TYPE_24__*) #1

declare dso_local i64 @vsMotionDetection(%struct.TYPE_21__*, i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @av_log(%struct.TYPE_26__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @vsWriteToFile(%struct.TYPE_21__*, i32, i32*) #1

declare dso_local i32 @vs_vector_del(i32*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
