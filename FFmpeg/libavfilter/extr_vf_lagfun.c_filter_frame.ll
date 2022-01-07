; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lagfun.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lagfun.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_22__** }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_23__*, i32, %struct.TYPE_19__*, i32*, i32)* }
%struct.TYPE_19__ = type { %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { %struct.TYPE_21__*, i32*, i32 }
%struct.TYPE_21__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %13, %struct.TYPE_23__** %6, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %16, i64 0
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %7, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %8, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %25 = icmp ne %struct.TYPE_21__* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %2
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %28 = call i8* @av_frame_clone(%struct.TYPE_21__* %27)
  %29 = bitcast i8* %28 to %struct.TYPE_21__*
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  store %struct.TYPE_21__* %29, %struct.TYPE_21__** %31, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %34 = call i32 @ff_filter_frame(%struct.TYPE_22__* %32, %struct.TYPE_21__* %33)
  store i32 %34, i32* %3, align 4
  br label %94

35:                                               ; preds = %2
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.TYPE_21__* @ff_get_video_buffer(%struct.TYPE_22__* %36, i32 %39, i32 %42)
  store %struct.TYPE_21__* %43, %struct.TYPE_21__** %10, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %45 = icmp ne %struct.TYPE_21__* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %35
  %47 = call i32 @av_frame_free(%struct.TYPE_21__** %5)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = call i32 @AVERROR(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %94

50:                                               ; preds = %35
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  store %struct.TYPE_21__* %56, %struct.TYPE_21__** %57, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store %struct.TYPE_21__* %58, %struct.TYPE_21__** %59, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  store %struct.TYPE_21__* %62, %struct.TYPE_21__** %63, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_23__*, i32, %struct.TYPE_19__*, i32*, i32)*, i32 (%struct.TYPE_23__*, i32, %struct.TYPE_19__*, i32*, i32)** %67, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %79 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_23__* %78)
  %80 = call i32 @FFMIN(i32 %77, i32 %79)
  %81 = call i32 %68(%struct.TYPE_23__* %69, i32 %72, %struct.TYPE_19__* %9, i32* null, i32 %80)
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = call i32 @av_frame_free(%struct.TYPE_21__** %83)
  %85 = call i32 @av_frame_free(%struct.TYPE_21__** %5)
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %87 = call i8* @av_frame_clone(%struct.TYPE_21__* %86)
  %88 = bitcast i8* %87 to %struct.TYPE_21__*
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  store %struct.TYPE_21__* %88, %struct.TYPE_21__** %90, align 8
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %93 = call i32 @ff_filter_frame(%struct.TYPE_22__* %91, %struct.TYPE_21__* %92)
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %50, %46, %26
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i8* @av_frame_clone(%struct.TYPE_21__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @ff_get_video_buffer(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_21__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
