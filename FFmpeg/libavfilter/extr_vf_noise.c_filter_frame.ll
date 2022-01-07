; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_noise.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_noise.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_17__** }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_18__*, i32, %struct.TYPE_14__*, i32*, i32)* }
%struct.TYPE_14__ = type { i32*, i32* }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32*, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@NOISE_TEMPORAL = common dso_local global i32 0, align 4
@MAX_RES = common dso_local global i32 0, align 4
@MAX_SHIFT = common dso_local global i32 0, align 4
@filter_slice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %6, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %19, i64 0
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %7, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %8, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @av_frame_is_writable(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32*, i32** %5, align 8
  store i32* %29, i32** %10, align 8
  br label %49

30:                                               ; preds = %2
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32* @ff_get_video_buffer(%struct.TYPE_17__* %31, i32 %34, i32 %37)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = call i32 @av_frame_free(i32** %5)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %135

45:                                               ; preds = %30
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @av_frame_copy_props(i32* %46, i32* %47)
  br label %49

49:                                               ; preds = %45, %28
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %101, %49
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %104

53:                                               ; preds = %50
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i64 %58
  store %struct.TYPE_16__* %59, %struct.TYPE_16__** %13, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %53
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NOISE_TEMPORAL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %64, %53
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %71
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %94, %76
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @MAX_RES, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 3
  %84 = call i32 @av_lfg_get(i32* %83)
  %85 = load i32, i32* @MAX_SHIFT, align 4
  %86 = sub nsw i32 %85, 1
  %87 = and i32 %84, %86
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  br label %94

94:                                               ; preds = %81
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %77

97:                                               ; preds = %77
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %71, %64
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %50

104:                                              ; preds = %50
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i32* %105, i32** %106, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i32* %107, i32** %108, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32 (%struct.TYPE_18__*, i32, %struct.TYPE_14__*, i32*, i32)*, i32 (%struct.TYPE_18__*, i32, %struct.TYPE_14__*, i32*, i32)** %112, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = load i32, i32* @filter_slice, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %122 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_18__* %121)
  %123 = call i32 @FFMIN(i32 %120, i32 %122)
  %124 = call i32 %113(%struct.TYPE_18__* %114, i32 %115, %struct.TYPE_14__* %9, i32* null, i32 %123)
  %125 = call i32 (...) @emms_c()
  %126 = load i32*, i32** %5, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = icmp ne i32* %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %104
  %130 = call i32 @av_frame_free(i32** %5)
  br label %131

131:                                              ; preds = %129, %104
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = call i32 @ff_filter_frame(%struct.TYPE_17__* %132, i32* %133)
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %131, %41
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i64 @av_frame_is_writable(i32*) #1

declare dso_local i32* @ff_get_video_buffer(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @av_frame_free(i32**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(i32*, i32*) #1

declare dso_local i32 @av_lfg_get(i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_18__*) #1

declare dso_local i32 @emms_c(...) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_17__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
