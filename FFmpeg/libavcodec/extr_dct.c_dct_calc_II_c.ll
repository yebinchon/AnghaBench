; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dct.c_dct_calc_II_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dct.c_dct_calc_II_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, double*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, double*)* @dct_calc_II_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dct_calc_II_c(%struct.TYPE_6__* %0, double* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store double* %1, double** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 1, %17
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %74, %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %21, 2
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %77

24:                                               ; preds = %19
  %25 = load double*, double** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %25, i64 %27
  %29 = load double, double* %28, align 8
  %30 = fptrunc double %29 to float
  store float %30, float* %8, align 4
  %31 = load double*, double** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %31, i64 %36
  %38 = load double, double* %37, align 8
  %39 = fptrunc double %38 to float
  store float %39, float* %9, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 2, %42
  %44 = add nsw i32 %43, 1
  %45 = call float @SIN(%struct.TYPE_6__* %40, i32 %41, i32 %44)
  store float %45, float* %10, align 4
  %46 = load float, float* %8, align 4
  %47 = load float, float* %9, align 4
  %48 = fsub float %46, %47
  %49 = load float, float* %10, align 4
  %50 = fmul float %49, %48
  store float %50, float* %10, align 4
  %51 = load float, float* %8, align 4
  %52 = load float, float* %9, align 4
  %53 = fadd float %51, %52
  %54 = fmul float %53, 5.000000e-01
  store float %54, float* %8, align 4
  %55 = load float, float* %8, align 4
  %56 = load float, float* %10, align 4
  %57 = fadd float %55, %56
  %58 = fpext float %57 to double
  %59 = load double*, double** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  store double %58, double* %62, align 8
  %63 = load float, float* %8, align 4
  %64 = load float, float* %10, align 4
  %65 = fsub float %63, %64
  %66 = fpext float %65 to double
  %67 = load double*, double** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %67, i64 %72
  store double %66, double* %73, align 8
  br label %74

74:                                               ; preds = %24
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %19

77:                                               ; preds = %19
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_7__*, double*)*, i32 (%struct.TYPE_7__*, double*)** %80, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load double*, double** %4, align 8
  %85 = call i32 %81(%struct.TYPE_7__* %83, double* %84)
  %86 = load double*, double** %4, align 8
  %87 = getelementptr inbounds double, double* %86, i64 1
  %88 = load double, double* %87, align 8
  %89 = fmul double %88, 5.000000e-01
  %90 = fptrunc double %89 to float
  store float %90, float* %7, align 4
  %91 = load double*, double** %4, align 8
  %92 = getelementptr inbounds double, double* %91, i64 1
  %93 = load double, double* %92, align 8
  %94 = fmul double %93, -1.000000e+00
  store double %94, double* %92, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 %95, 2
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %150, %77
  %98 = load i32, i32* %6, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %153

100:                                              ; preds = %97
  %101 = load double*, double** %4, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %101, i64 %103
  %105 = load double, double* %104, align 8
  %106 = fptrunc double %105 to float
  store float %106, float* %11, align 4
  %107 = load double*, double** %4, align 8
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double, double* %107, i64 %110
  %112 = load double, double* %111, align 8
  %113 = fptrunc double %112 to float
  store float %113, float* %12, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call float @COS(%struct.TYPE_6__* %114, i32 %115, i32 %116)
  store float %117, float* %13, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call float @SIN(%struct.TYPE_6__* %118, i32 %119, i32 %120)
  store float %121, float* %14, align 4
  %122 = load float, float* %13, align 4
  %123 = load float, float* %11, align 4
  %124 = fmul float %122, %123
  %125 = load float, float* %14, align 4
  %126 = load float, float* %12, align 4
  %127 = fmul float %125, %126
  %128 = fadd float %124, %127
  %129 = fpext float %128 to double
  %130 = load double*, double** %4, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds double, double* %130, i64 %132
  store double %129, double* %133, align 8
  %134 = load float, float* %7, align 4
  %135 = fpext float %134 to double
  %136 = load double*, double** %4, align 8
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, double* %136, i64 %139
  store double %135, double* %140, align 8
  %141 = load float, float* %14, align 4
  %142 = load float, float* %11, align 4
  %143 = fmul float %141, %142
  %144 = load float, float* %13, align 4
  %145 = load float, float* %12, align 4
  %146 = fmul float %144, %145
  %147 = fsub float %143, %146
  %148 = load float, float* %7, align 4
  %149 = fadd float %148, %147
  store float %149, float* %7, align 4
  br label %150

150:                                              ; preds = %100
  %151 = load i32, i32* %6, align 4
  %152 = sub nsw i32 %151, 2
  store i32 %152, i32* %6, align 4
  br label %97

153:                                              ; preds = %97
  ret void
}

declare dso_local float @SIN(%struct.TYPE_6__*, i32, i32) #1

declare dso_local float @COS(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
