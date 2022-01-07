; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_sinc.c_bessel_I_0.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_sinc.c_bessel_I_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @bessel_I_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @bessel_I_0(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store float %0, float* %2, align 4
  store float 1.000000e+00, float* %3, align 4
  store float 1.000000e+00, float* %4, align 4
  %9 = load float, float* %2, align 4
  %10 = fdiv float %9, 2.000000e+00
  store float %10, float* %6, align 4
  store i32 1, i32* %7, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load float, float* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = sitofp i32 %13 to float
  %16 = fdiv float %12, %15
  store float %16, float* %8, align 4
  %17 = load float, float* %4, align 4
  store float %17, float* %5, align 4
  %18 = load float, float* %8, align 4
  %19 = load float, float* %8, align 4
  %20 = fmul float %18, %19
  %21 = load float, float* %3, align 4
  %22 = fmul float %21, %20
  store float %22, float* %3, align 4
  %23 = load float, float* %4, align 4
  %24 = fadd float %23, %22
  store float %24, float* %4, align 4
  br label %25

25:                                               ; preds = %11
  %26 = load float, float* %4, align 4
  %27 = load float, float* %5, align 4
  %28 = fcmp une float %26, %27
  br i1 %28, label %11, label %29

29:                                               ; preds = %25
  %30 = load float, float* %4, align 4
  ret float %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
