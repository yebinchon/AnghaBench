; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_xbr.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_xbr.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_23__** }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_24__*, i32, %struct.TYPE_21__*, i32*, i32)* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_22__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_21__, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_24__* %13, %struct.TYPE_24__** %6, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %16, i64 0
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %7, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %8, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_22__* @ff_get_video_buffer(%struct.TYPE_23__* %22, i32 %25, i32 %28)
  store %struct.TYPE_22__* %29, %struct.TYPE_22__** %10, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %31 = icmp ne %struct.TYPE_22__* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = call i32 @av_frame_free(%struct.TYPE_22__** %5)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = call i32 @AVERROR(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %78

36:                                               ; preds = %2
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %39 = call i32 @av_frame_copy_props(%struct.TYPE_22__* %37, %struct.TYPE_22__* %38)
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 2
  store %struct.TYPE_22__* %40, %struct.TYPE_22__** %41, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  store %struct.TYPE_22__* %42, %struct.TYPE_22__** %43, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_24__*, i32, %struct.TYPE_21__*, i32*, i32)*, i32 (%struct.TYPE_24__*, i32, %struct.TYPE_21__*, i32*, i32)** %51, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %61 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_24__* %60)
  %62 = call i32 @FFMIN(i32 %59, i32 %61)
  %63 = call i32 %52(%struct.TYPE_24__* %53, i32 %56, %struct.TYPE_21__* %9, i32* null, i32 %62)
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = call i32 @av_frame_free(%struct.TYPE_22__** %5)
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %77 = call i32 @ff_filter_frame(%struct.TYPE_23__* %75, %struct.TYPE_22__* %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %36, %32
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_22__* @ff_get_video_buffer(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_22__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_24__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
