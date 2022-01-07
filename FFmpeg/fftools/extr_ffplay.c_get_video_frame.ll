; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_get_video_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_get_video_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { double, i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_19__, %struct.TYPE_14__*, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { double, i32 }

@NAN = common dso_local global double 0.000000e+00, align 8
@AV_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@framedrop = common dso_local global i64 0, align 8
@AV_SYNC_VIDEO_MASTER = common dso_local global i64 0, align 8
@AV_NOSYNC_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)* @get_video_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_video_frame(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = call i32 @decoder_decode_frame(%struct.TYPE_19__* %10, %struct.TYPE_18__* %11, i32* null)
  store i32 %12, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %111

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %109

18:                                               ; preds = %15
  %19 = load double, double* @NAN, align 8
  store double %19, double* %7, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = load double, double* @AV_NOPTS_VALUE, align 8
  %24 = fcmp une double %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call double @av_q2d(i32 %30)
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = fmul double %31, %34
  store double %35, double* %7, align 8
  br label %36

36:                                               ; preds = %25, %18
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %44 = call i32 @av_guess_sample_aspect_ratio(i32 %39, %struct.TYPE_14__* %42, %struct.TYPE_18__* %43)
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* @framedrop, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %36
  %50 = load i64, i64* @framedrop, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %108

52:                                               ; preds = %49
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = call i64 @get_master_sync_type(%struct.TYPE_17__* %53)
  %55 = load i64, i64* @AV_SYNC_VIDEO_MASTER, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %108

57:                                               ; preds = %52, %36
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load double, double* %59, align 8
  %61 = load double, double* @AV_NOPTS_VALUE, align 8
  %62 = fcmp une double %60, %61
  br i1 %62, label %63, label %107

63:                                               ; preds = %57
  %64 = load double, double* %7, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = call double @get_master_clock(%struct.TYPE_17__* %65)
  %67 = fsub double %64, %66
  store double %67, double* %8, align 8
  %68 = load double, double* %8, align 8
  %69 = call i32 @isnan(double %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %106, label %71

71:                                               ; preds = %63
  %72 = load double, double* %8, align 8
  %73 = call i64 @fabs(double %72)
  %74 = load i64, i64* @AV_NOSYNC_THRESHOLD, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %106

76:                                               ; preds = %71
  %77 = load double, double* %8, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load double, double* %79, align 8
  %81 = fsub double %77, %80
  %82 = fcmp olt double %81, 0.000000e+00
  br i1 %82, label %83, label %106

83:                                               ; preds = %76
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %87, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %83
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %105 = call i32 @av_frame_unref(%struct.TYPE_18__* %104)
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %99, %93, %83, %76, %71, %63
  br label %107

107:                                              ; preds = %106, %57
  br label %108

108:                                              ; preds = %107, %52, %49
  br label %109

109:                                              ; preds = %108, %15
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %14
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @decoder_decode_frame(%struct.TYPE_19__*, %struct.TYPE_18__*, i32*) #1

declare dso_local double @av_q2d(i32) #1

declare dso_local i32 @av_guess_sample_aspect_ratio(i32, %struct.TYPE_14__*, %struct.TYPE_18__*) #1

declare dso_local i64 @get_master_sync_type(%struct.TYPE_17__*) #1

declare dso_local double @get_master_clock(%struct.TYPE_17__*) #1

declare dso_local i32 @isnan(double) #1

declare dso_local i64 @fabs(double) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
