; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorchannelmixer.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorchannelmixer.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_12__*, %struct.TYPE_15__**, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_16__*, i32, %struct.TYPE_13__*, i32*, i32)* }
%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_14__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
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
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %7, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %19, i64 0
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %8, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @av_frame_is_writable(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32*, i32** %5, align 8
  store i32* %26, i32** %10, align 8
  br label %46

27:                                               ; preds = %2
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @ff_get_video_buffer(%struct.TYPE_15__* %28, i32 %31, i32 %34)
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %27
  %39 = call i32 @av_frame_free(i32** %5)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = call i32 @AVERROR(i32 %40)
  store i32 %41, i32* %3, align 4
  br label %76

42:                                               ; preds = %27
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @av_frame_copy_props(i32* %43, i32* %44)
  br label %46

46:                                               ; preds = %42, %25
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  store i32* %47, i32** %48, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  store i32* %49, i32** %50, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_16__*, i32, %struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_13__*, i32*, i32)** %54, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_16__* %63)
  %65 = call i32 @FFMIN(i32 %62, i32 %64)
  %66 = call i32 %55(%struct.TYPE_16__* %56, i32 %59, %struct.TYPE_13__* %9, i32* null, i32 %65)
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = icmp ne i32* %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %46
  %71 = call i32 @av_frame_free(i32** %5)
  br label %72

72:                                               ; preds = %70, %46
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @ff_filter_frame(%struct.TYPE_15__* %73, i32* %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %38
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @av_frame_is_writable(i32*) #1

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
