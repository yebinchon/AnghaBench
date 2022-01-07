; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_framerate.c_blend_frames.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_framerate.c_blend_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__*, %struct.TYPE_16__**, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_17__*, i32, %struct.TYPE_14__*, i32*, i32)* }
%struct.TYPE_14__ = type { i32, i64, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, double, double, i32, i32, i64, i32 }

@FRAMERATE_FLAG_SCD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"blend_frames() interpolate scene score:%f\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"blend_frames() INTERPOLATE to create work frame\0A\00", align 1
@filter_slice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32)* @blend_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blend_frames(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %6, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %15, i64 0
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FRAMERATE_FLAG_SCD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %2
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = fcmp oge double %27, 0.000000e+00
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  store double %32, double* %8, align 8
  br label %44

33:                                               ; preds = %24
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call double @get_scene_score(%struct.TYPE_17__* %34, i32 %37, i32 %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  store double %41, double* %43, align 8
  store double %41, double* %8, align 8
  br label %44

44:                                               ; preds = %33, %29
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = load double, double* %8, align 8
  %47 = call i32 (%struct.TYPE_17__*, i8*, ...) @ff_dlog(%struct.TYPE_17__* %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), double %46)
  br label %48

48:                                               ; preds = %44, %2
  %49 = load double, double* %8, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = load double, double* %51, align 8
  %53 = fcmp olt double %49, %52
  br i1 %53, label %54, label %116

54:                                               ; preds = %48
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %67, %70
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i64 %71, i64* %72, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ff_get_video_buffer(%struct.TYPE_16__* %73, i32 %76, i32 %79)
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %54
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = call i32 @AVERROR(i32 %88)
  store i32 %89, i32* %3, align 4
  br label %117

90:                                               ; preds = %54
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @av_frame_copy_props(i32 %93, i32 %96)
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = call i32 (%struct.TYPE_17__*, i8*, ...) @ff_dlog(%struct.TYPE_17__* %98, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32 (%struct.TYPE_17__*, i32, %struct.TYPE_14__*, i32*, i32)*, i32 (%struct.TYPE_17__*, i32, %struct.TYPE_14__*, i32*, i32)** %103, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %106 = load i32, i32* @filter_slice, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 2
  %111 = call i32 @FFMAX(i32 1, i32 %110)
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %113 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_17__* %112)
  %114 = call i32 @FFMIN(i32 %111, i32 %113)
  %115 = call i32 %104(%struct.TYPE_17__* %105, i32 %106, %struct.TYPE_14__* %9, i32* null, i32 %114)
  store i32 1, i32* %3, align 4
  br label %117

116:                                              ; preds = %48
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %90, %87
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local double @get_scene_score(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_17__*, i8*, ...) #1

declare dso_local i32 @ff_get_video_buffer(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
