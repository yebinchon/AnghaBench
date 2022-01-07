; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_selectivecolor.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_selectivecolor.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_18__*, %struct.TYPE_21__*, %struct.TYPE_22__** }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_23__*, i64, i64, %struct.TYPE_20__*, i32*, i32)* }
%struct.TYPE_20__ = type { i32*, i32* }
%struct.TYPE_21__ = type { i64, i64 }

@filter_frame.funcs = internal constant [2 x [2 x [2 x %struct.TYPE_19__]]] [[2 x [2 x %struct.TYPE_19__]] [[2 x %struct.TYPE_19__] [%struct.TYPE_19__ { %struct.TYPE_17__ { i32 130, i32 128 }, %struct.TYPE_16__ zeroinitializer }, %struct.TYPE_19__ zeroinitializer], [2 x %struct.TYPE_19__] [%struct.TYPE_19__ { %struct.TYPE_17__ { i32 134, i32 132 }, %struct.TYPE_16__ zeroinitializer }, %struct.TYPE_19__ zeroinitializer]], [2 x [2 x %struct.TYPE_19__]] [[2 x %struct.TYPE_19__] [%struct.TYPE_19__ { %struct.TYPE_17__ { i32 131, i32 129 }, %struct.TYPE_16__ zeroinitializer }, %struct.TYPE_19__ zeroinitializer], [2 x %struct.TYPE_19__] [%struct.TYPE_19__ { %struct.TYPE_17__ { i32 135, i32 133 }, %struct.TYPE_16__ zeroinitializer }, %struct.TYPE_19__ zeroinitializer]]], align 16
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_22__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  store %struct.TYPE_23__* %14, %struct.TYPE_23__** %6, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %17, i64 0
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %7, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %11, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @av_frame_is_writable(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %27 = load i32*, i32** %5, align 8
  store i32* %27, i32** %9, align 8
  br label %47

28:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32* @ff_get_video_buffer(%struct.TYPE_22__* %29, i32 %32, i32 %35)
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %28
  %40 = call i32 @av_frame_free(i32** %5)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = call i32 @AVERROR(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %89

43:                                               ; preds = %28
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @av_frame_copy_props(i32* %44, i32* %45)
  br label %47

47:                                               ; preds = %43, %26
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  store i32* %48, i32** %49, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i32* %50, i32** %51, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_23__*, i64, i64, %struct.TYPE_20__*, i32*, i32)*, i32 (%struct.TYPE_23__*, i64, i64, %struct.TYPE_20__*, i32*, i32)** %55, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds [2 x [2 x [2 x %struct.TYPE_19__]]], [2 x [2 x [2 x %struct.TYPE_19__]]]* @filter_frame.funcs, i64 0, i64 %60
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x [2 x %struct.TYPE_19__]], [2 x [2 x %struct.TYPE_19__]]* %61, i64 0, i64 %63
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds [2 x %struct.TYPE_19__], [2 x %struct.TYPE_19__]* %64, i64 0, i64 %67
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %73 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_23__* %72)
  %74 = call i32 @FFMIN(i32 %71, i32 %73)
  %75 = bitcast %struct.TYPE_19__* %68 to { i64, i64 }*
  %76 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 16
  %78 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %75, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 %56(%struct.TYPE_23__* %57, i64 %77, i64 %79, %struct.TYPE_20__* %10, i32* null, i32 %74)
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %47
  %84 = call i32 @av_frame_free(i32** %5)
  br label %85

85:                                               ; preds = %83, %47
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @ff_filter_frame(%struct.TYPE_22__* %86, i32* %87)
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %39
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @av_frame_is_writable(i32*) #1

declare dso_local i32* @ff_get_video_buffer(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @av_frame_free(i32**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(i32*, i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_23__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_22__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
