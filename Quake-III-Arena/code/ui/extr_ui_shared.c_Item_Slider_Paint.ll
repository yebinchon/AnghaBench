; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Slider_Paint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Slider_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float (i64)*, i32, %struct.TYPE_15__, i32 (float, float, i32, i32, i32)*, i32 (double*)* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__, %struct.TYPE_12__, i64, i64, i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { float, float }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_16__ = type { double* }

@DC = common dso_local global %struct.TYPE_11__* null, align 8
@WINDOW_HASFOCUS = common dso_local global i32 0, align 4
@PULSE_DIVISOR = common dso_local global i32 0, align 4
@SLIDER_WIDTH = common dso_local global i32 0, align 4
@SLIDER_HEIGHT = common dso_local global i32 0, align 4
@SLIDER_THUMB_WIDTH = common dso_local global i32 0, align 4
@SLIDER_THUMB_HEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Item_Slider_Paint(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %8, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load float (i64)*, float (i64)** %19, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call float %20(i64 %23)
  br label %26

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %17
  %27 = phi float [ %24, %17 ], [ 0.000000e+00, %25 ]
  store float %27, float* %7, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %82

35:                                               ; preds = %26
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load double*, double** %37, align 8
  %39 = getelementptr inbounds double, double* %38, i64 0
  %40 = load double, double* %39, align 8
  %41 = fmul double 8.000000e-01, %40
  %42 = load double*, double** %4, align 8
  %43 = getelementptr inbounds double, double* %42, i64 0
  store double %41, double* %43, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load double*, double** %45, align 8
  %47 = getelementptr inbounds double, double* %46, i64 1
  %48 = load double, double* %47, align 8
  %49 = fmul double 8.000000e-01, %48
  %50 = load double*, double** %4, align 8
  %51 = getelementptr inbounds double, double* %50, i64 1
  store double %49, double* %51, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load double*, double** %53, align 8
  %55 = getelementptr inbounds double, double* %54, i64 2
  %56 = load double, double* %55, align 8
  %57 = fmul double 8.000000e-01, %56
  %58 = load double*, double** %4, align 8
  %59 = getelementptr inbounds double, double* %58, i64 2
  store double %57, double* %59, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load double*, double** %61, align 8
  %63 = getelementptr inbounds double, double* %62, i64 3
  %64 = load double, double* %63, align 8
  %65 = fmul double 8.000000e-01, %64
  %66 = load double*, double** %4, align 8
  %67 = getelementptr inbounds double, double* %66, i64 3
  store double %65, double* %67, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load double*, double** %69, align 8
  %71 = load double*, double** %4, align 8
  %72 = load double*, double** %3, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @PULSE_DIVISOR, align 4
  %77 = sdiv i32 %75, %76
  %78 = call double @sin(i32 %77)
  %79 = fmul double 5.000000e-01, %78
  %80 = fadd double 5.000000e-01, %79
  %81 = call i32 @LerpColor(double* %70, double* %71, double* %72, double %80)
  br label %87

82:                                               ; preds = %26
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = call i32 @memcpy(double** %3, i32* %85, i32 8)
  br label %87

87:                                               ; preds = %82, %35
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load float, float* %91, align 4
  store float %92, float* %6, align 4
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %87
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %99 = call i32 @Item_Text_Paint(%struct.TYPE_17__* %98)
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %103, %107
  %109 = add nsw i32 %108, 8
  %110 = sitofp i32 %109 to float
  store float %110, float* %5, align 4
  br label %117

111:                                              ; preds = %87
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load float, float* %115, align 4
  store float %116, float* %5, align 4
  br label %117

117:                                              ; preds = %111, %97
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 4
  %120 = load i32 (double*)*, i32 (double*)** %119, align 8
  %121 = load double*, double** %3, align 8
  %122 = call i32 %120(double* %121)
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 3
  %125 = load i32 (float, float, i32, i32, i32)*, i32 (float, float, i32, i32, i32)** %124, align 8
  %126 = load float, float* %5, align 4
  %127 = load float, float* %6, align 4
  %128 = load i32, i32* @SLIDER_WIDTH, align 4
  %129 = load i32, i32* @SLIDER_HEIGHT, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 %125(float %126, float %127, i32 %128, i32 %129, i32 %133)
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %136 = call float @Item_Slider_ThumbPosition(%struct.TYPE_17__* %135)
  store float %136, float* %5, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 3
  %139 = load i32 (float, float, i32, i32, i32)*, i32 (float, float, i32, i32, i32)** %138, align 8
  %140 = load float, float* %5, align 4
  %141 = load i32, i32* @SLIDER_THUMB_WIDTH, align 4
  %142 = sdiv i32 %141, 2
  %143 = sitofp i32 %142 to float
  %144 = fsub float %140, %143
  %145 = load float, float* %6, align 4
  %146 = fsub float %145, 2.000000e+00
  %147 = load i32, i32* @SLIDER_THUMB_WIDTH, align 4
  %148 = load i32, i32* @SLIDER_THUMB_HEIGHT, align 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 %139(float %144, float %146, i32 %147, i32 %148, i32 %152)
  ret void
}

declare dso_local i32 @LerpColor(double*, double*, double*, double) #1

declare dso_local double @sin(i32) #1

declare dso_local i32 @memcpy(double**, i32*, i32) #1

declare dso_local i32 @Item_Text_Paint(%struct.TYPE_17__*) #1

declare dso_local float @Item_Slider_ThumbPosition(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
