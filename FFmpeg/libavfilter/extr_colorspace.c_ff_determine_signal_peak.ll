; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_colorspace.c_ff_determine_signal_peak.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_colorspace.c_ff_determine_signal_peak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { double }
%struct.TYPE_8__ = type { i32, i64 }

@AV_FRAME_DATA_CONTENT_LIGHT_LEVEL = common dso_local global i32 0, align 4
@REFERENCE_WHITE = common dso_local global double 0.000000e+00, align 8
@AV_FRAME_DATA_MASTERING_DISPLAY_METADATA = common dso_local global i32 0, align 4
@AVCOL_TRC_SMPTE2084 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @ff_determine_signal_peak(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = load i32, i32* @AV_FRAME_DATA_CONTENT_LIGHT_LEVEL, align 4
  %9 = call %struct.TYPE_9__* @av_frame_get_side_data(%struct.TYPE_10__* %7, i32 %8)
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %3, align 8
  store double 0.000000e+00, double* %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = load double, double* @REFERENCE_WHITE, align 8
  %21 = fdiv double %19, %20
  store double %21, double* %4, align 8
  br label %22

22:                                               ; preds = %12, %1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = load i32, i32* @AV_FRAME_DATA_MASTERING_DISPLAY_METADATA, align 4
  %25 = call %struct.TYPE_9__* @av_frame_get_side_data(%struct.TYPE_10__* %23, i32 %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %3, align 8
  %26 = load double, double* %4, align 8
  %27 = fcmp une double %26, 0.000000e+00
  br i1 %27, label %48, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %6, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call double @av_q2d(i32 %43)
  %45 = load double, double* @REFERENCE_WHITE, align 8
  %46 = fdiv double %44, %45
  store double %46, double* %4, align 8
  br label %47

47:                                               ; preds = %40, %31
  br label %48

48:                                               ; preds = %47, %28, %22
  %49 = load double, double* %4, align 8
  %50 = fcmp une double %49, 0.000000e+00
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AVCOL_TRC_SMPTE2084, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, float 1.000000e+02, float 1.000000e+01
  %59 = fpext float %58 to double
  store double %59, double* %4, align 8
  br label %60

60:                                               ; preds = %51, %48
  %61 = load double, double* %4, align 8
  ret double %61
}

declare dso_local %struct.TYPE_9__* @av_frame_get_side_data(%struct.TYPE_10__*, i32) #1

declare dso_local double @av_q2d(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
