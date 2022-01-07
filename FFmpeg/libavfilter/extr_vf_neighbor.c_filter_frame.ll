; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_neighbor.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_neighbor.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_15__** }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_16__*, i32, %struct.TYPE_13__*, i32*, i32)* }
%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_14__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@filter_slice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %6, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %16, i64 0
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %7, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %8, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32* @ff_get_video_buffer(%struct.TYPE_15__* %22, i32 %25, i32 %28)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = call i32 @av_frame_free(i32** %5)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = call i32 @AVERROR(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %64

36:                                               ; preds = %2
  %37 = load i32*, i32** %10, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @av_frame_copy_props(i32* %37, i32* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  store i32* %40, i32** %41, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  store i32* %42, i32** %43, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_16__*, i32, %struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_13__*, i32*, i32)** %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = load i32, i32* @filter_slice, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_16__* %56)
  %58 = call i32 @FFMIN(i32 %55, i32 %57)
  %59 = call i32 %48(%struct.TYPE_16__* %49, i32 %50, %struct.TYPE_13__* %9, i32* null, i32 %58)
  %60 = call i32 @av_frame_free(i32** %5)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @ff_filter_frame(%struct.TYPE_15__* %61, i32* %62)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %36, %32
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32* @ff_get_video_buffer(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @av_frame_free(i32**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(i32*, i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_16__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
