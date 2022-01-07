; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_evrcdec.c_interpolate_delay.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_evrcdec.c_interpolate_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@interpolate_delay.d_interpolation_factors = internal constant [5 x float] [float 0.000000e+00, float 0x3FD53404E0000000, float 0x3FE5333340000000, float 1.000000e+00, float 1.000000e+00], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float, float, i32)* @interpolate_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interpolate_delay(float* %0, float %1, float %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [5 x float], [5 x float]* @interpolate_delay.d_interpolation_factors, i64 0, i64 %10
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = fsub double 1.000000e+00, %13
  %15 = load float, float* %7, align 4
  %16 = fpext float %15 to double
  %17 = fmul double %14, %16
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [5 x float], [5 x float]* @interpolate_delay.d_interpolation_factors, i64 0, i64 %19
  %21 = load float, float* %20, align 4
  %22 = load float, float* %6, align 4
  %23 = fmul float %21, %22
  %24 = fpext float %23 to double
  %25 = fadd double %17, %24
  %26 = fptrunc double %25 to float
  %27 = load float*, float** %5, align 8
  %28 = getelementptr inbounds float, float* %27, i64 0
  store float %26, float* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [5 x float], [5 x float]* @interpolate_delay.d_interpolation_factors, i64 0, i64 %31
  %33 = load float, float* %32, align 4
  %34 = fpext float %33 to double
  %35 = fsub double 1.000000e+00, %34
  %36 = load float, float* %7, align 4
  %37 = fpext float %36 to double
  %38 = fmul double %35, %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [5 x float], [5 x float]* @interpolate_delay.d_interpolation_factors, i64 0, i64 %41
  %43 = load float, float* %42, align 4
  %44 = load float, float* %6, align 4
  %45 = fmul float %43, %44
  %46 = fpext float %45 to double
  %47 = fadd double %38, %46
  %48 = fptrunc double %47 to float
  %49 = load float*, float** %5, align 8
  %50 = getelementptr inbounds float, float* %49, i64 1
  store float %48, float* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [5 x float], [5 x float]* @interpolate_delay.d_interpolation_factors, i64 0, i64 %53
  %55 = load float, float* %54, align 4
  %56 = fpext float %55 to double
  %57 = fsub double 1.000000e+00, %56
  %58 = load float, float* %7, align 4
  %59 = fpext float %58 to double
  %60 = fmul double %57, %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [5 x float], [5 x float]* @interpolate_delay.d_interpolation_factors, i64 0, i64 %63
  %65 = load float, float* %64, align 4
  %66 = load float, float* %6, align 4
  %67 = fmul float %65, %66
  %68 = fpext float %67 to double
  %69 = fadd double %60, %68
  %70 = fptrunc double %69 to float
  %71 = load float*, float** %5, align 8
  %72 = getelementptr inbounds float, float* %71, i64 2
  store float %70, float* %72, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
