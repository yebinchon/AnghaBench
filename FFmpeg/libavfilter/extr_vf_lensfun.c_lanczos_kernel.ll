; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lensfun.c_lanczos_kernel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lensfun.c_lanczos_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @lanczos_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @lanczos_kernel(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, float* %3, align 4
  %4 = load float, float* %3, align 4
  %5 = fcmp oeq float %4, 0.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store float 1.000000e+00, float* %2, align 4
  br label %34

7:                                                ; preds = %1
  %8 = load float, float* %3, align 4
  %9 = fcmp ogt float %8, -2.000000e+00
  br i1 %9, label %10, label %33

10:                                               ; preds = %7
  %11 = load float, float* %3, align 4
  %12 = fcmp olt float %11, 2.000000e+00
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load float, float* @M_PI, align 4
  %15 = load float, float* %3, align 4
  %16 = fmul float %14, %15
  %17 = call float @sin(float %16)
  %18 = fmul float 2.000000e+00, %17
  %19 = load float, float* @M_PI, align 4
  %20 = fdiv float %19, 2.000000e+00
  %21 = load float, float* %3, align 4
  %22 = fmul float %20, %21
  %23 = call float @sin(float %22)
  %24 = fmul float %18, %23
  %25 = load float, float* @M_PI, align 4
  %26 = load float, float* @M_PI, align 4
  %27 = fmul float %25, %26
  %28 = load float, float* %3, align 4
  %29 = fmul float %27, %28
  %30 = load float, float* %3, align 4
  %31 = fmul float %29, %30
  %32 = fdiv float %24, %31
  store float %32, float* %2, align 4
  br label %34

33:                                               ; preds = %10, %7
  store float 0.000000e+00, float* %2, align 4
  br label %34

34:                                               ; preds = %33, %13, %6
  %35 = load float, float* %2, align 4
  ret float %35
}

declare dso_local float @sin(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
