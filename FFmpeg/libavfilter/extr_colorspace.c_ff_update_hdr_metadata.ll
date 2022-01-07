; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_colorspace.c_ff_update_hdr_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_colorspace.c_ff_update_hdr_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }

@AV_FRAME_DATA_CONTENT_LIGHT_LEVEL = common dso_local global i32 0, align 4
@REFERENCE_WHITE = common dso_local global double 0.000000e+00, align 8
@AV_FRAME_DATA_MASTERING_DISPLAY_METADATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_update_hdr_metadata(i32* %0, double %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store double %1, double* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @AV_FRAME_DATA_CONTENT_LIGHT_LEVEL, align 4
  %10 = call %struct.TYPE_6__* @av_frame_get_side_data(i32* %8, i32 %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %6, align 8
  %18 = load double, double* %4, align 8
  %19 = load double, double* @REFERENCE_WHITE, align 8
  %20 = fmul double %18, %19
  %21 = fptoui double %20 to i32
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %13, %2
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @AV_FRAME_DATA_MASTERING_DISPLAY_METADATA, align 4
  %27 = call %struct.TYPE_6__* @av_frame_get_side_data(i32* %25, i32 %26)
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %5, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %7, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load double, double* %4, align 8
  %41 = load double, double* @REFERENCE_WHITE, align 8
  %42 = fmul double %40, %41
  %43 = call i32 @av_d2q(double %42, i32 10000)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %39, %30
  br label %47

47:                                               ; preds = %46, %24
  ret void
}

declare dso_local %struct.TYPE_6__* @av_frame_get_side_data(i32*, i32) #1

declare dso_local i32 @av_d2q(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
