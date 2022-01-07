; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_calculate_bicubic_coeffs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_calculate_bicubic_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float*)* @calculate_bicubic_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_bicubic_coeffs(float %0, float* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %3, align 4
  store float* %1, float** %4, align 8
  %7 = load float, float* %3, align 4
  %8 = load float, float* %3, align 4
  %9 = fmul float %7, %8
  store float %9, float* %5, align 4
  %10 = load float, float* %3, align 4
  %11 = load float, float* %3, align 4
  %12 = fmul float %10, %11
  %13 = load float, float* %3, align 4
  %14 = fmul float %12, %13
  store float %14, float* %6, align 4
  %15 = load float, float* %3, align 4
  %16 = fneg float %15
  %17 = fdiv float %16, 3.000000e+00
  %18 = load float, float* %5, align 4
  %19 = fdiv float %18, 2.000000e+00
  %20 = fadd float %17, %19
  %21 = load float, float* %6, align 4
  %22 = fdiv float %21, 6.000000e+00
  %23 = fsub float %20, %22
  %24 = load float*, float** %4, align 8
  %25 = getelementptr inbounds float, float* %24, i64 0
  store float %23, float* %25, align 4
  %26 = load float, float* %3, align 4
  %27 = fdiv float %26, 2.000000e+00
  %28 = fsub float 1.000000e+00, %27
  %29 = load float, float* %5, align 4
  %30 = fsub float %28, %29
  %31 = load float, float* %6, align 4
  %32 = fdiv float %31, 2.000000e+00
  %33 = fadd float %30, %32
  %34 = load float*, float** %4, align 8
  %35 = getelementptr inbounds float, float* %34, i64 1
  store float %33, float* %35, align 4
  %36 = load float, float* %3, align 4
  %37 = load float, float* %5, align 4
  %38 = fdiv float %37, 2.000000e+00
  %39 = fadd float %36, %38
  %40 = load float, float* %6, align 4
  %41 = fdiv float %40, 2.000000e+00
  %42 = fsub float %39, %41
  %43 = load float*, float** %4, align 8
  %44 = getelementptr inbounds float, float* %43, i64 2
  store float %42, float* %44, align 4
  %45 = load float, float* %3, align 4
  %46 = fneg float %45
  %47 = fdiv float %46, 6.000000e+00
  %48 = load float, float* %6, align 4
  %49 = fdiv float %48, 6.000000e+00
  %50 = fadd float %47, %49
  %51 = load float*, float** %4, align 8
  %52 = getelementptr inbounds float, float* %51, i64 3
  store float %50, float* %52, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
