; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_fixed_gain_smooth.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_fixed_gain_smooth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, double* }

@LP_FILTER_ORDER = common dso_local global i32 0, align 4
@MODE_7k4 = common dso_local global i32 0, align 4
@MODE_10k2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_3__*, float*, float*, i32)* @fixed_gain_smooth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @fixed_gain_smooth(%struct.TYPE_3__* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %39, %4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @LP_FILTER_ORDER, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load float*, float** %8, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %19, i64 %21
  %23 = load float, float* %22, align 4
  %24 = load float*, float** %7, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %24, i64 %26
  %28 = load float, float* %27, align 4
  %29 = fsub float %23, %28
  %30 = call float @fabs(float %29)
  %31 = load float*, float** %8, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = load float, float* %34, align 4
  %36 = fdiv float %30, %35
  %37 = load float, float* %10, align 4
  %38 = fadd float %37, %36
  store float %38, float* %10, align 4
  br label %39

39:                                               ; preds = %18
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %14

42:                                               ; preds = %14
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load float, float* %10, align 4
  %48 = fpext float %47 to double
  %49 = fcmp ole double %48, 6.500000e-01
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %42
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 10
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %58, %53
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 40
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %137

75:                                               ; preds = %65
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @MODE_7k4, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @MODE_10k2, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %136

83:                                               ; preds = %79, %75
  %84 = load float, float* %10, align 4
  %85 = fpext float %84 to double
  %86 = fmul double 4.000000e+00, %85
  %87 = fsub double %86, 1.600000e+00
  %88 = call float @av_clipf(double %87, double 0.000000e+00, double 1.000000e+00)
  store float %88, float* %12, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load double*, double** %90, align 8
  %92 = getelementptr inbounds double, double* %91, i64 0
  %93 = load double, double* %92, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load double*, double** %95, align 8
  %97 = getelementptr inbounds double, double* %96, i64 1
  %98 = load double, double* %97, align 8
  %99 = fadd double %93, %98
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load double*, double** %101, align 8
  %103 = getelementptr inbounds double, double* %102, i64 2
  %104 = load double, double* %103, align 8
  %105 = fadd double %99, %104
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load double*, double** %107, align 8
  %109 = getelementptr inbounds double, double* %108, i64 3
  %110 = load double, double* %109, align 8
  %111 = fadd double %105, %110
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load double*, double** %113, align 8
  %115 = getelementptr inbounds double, double* %114, i64 4
  %116 = load double, double* %115, align 8
  %117 = fadd double %111, %116
  %118 = fmul double %117, 2.000000e-01
  %119 = fptrunc double %118 to float
  store float %119, float* %13, align 4
  %120 = load float, float* %12, align 4
  %121 = fpext float %120 to double
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load double*, double** %123, align 8
  %125 = getelementptr inbounds double, double* %124, i64 4
  %126 = load double, double* %125, align 8
  %127 = fmul double %121, %126
  %128 = load float, float* %12, align 4
  %129 = fpext float %128 to double
  %130 = fsub double 1.000000e+00, %129
  %131 = load float, float* %13, align 4
  %132 = fpext float %131 to double
  %133 = fmul double %130, %132
  %134 = fadd double %127, %133
  %135 = fptrunc double %134 to float
  store float %135, float* %5, align 4
  br label %144

136:                                              ; preds = %79
  br label %137

137:                                              ; preds = %136, %70
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load double*, double** %139, align 8
  %141 = getelementptr inbounds double, double* %140, i64 4
  %142 = load double, double* %141, align 8
  %143 = fptrunc double %142 to float
  store float %143, float* %5, align 4
  br label %144

144:                                              ; preds = %137, %83
  %145 = load float, float* %5, align 4
  ret float %145
}

declare dso_local float @fabs(float) #1

declare dso_local float @av_clipf(double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
