; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_sift.c__ccv_mod_2pi.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_sift.c__ccv_mod_2pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCV_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @_ccv_mod_2pi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @_ccv_mod_2pi(float %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  br label %3

3:                                                ; preds = %9, %1
  %4 = load float, float* %2, align 4
  %5 = load i32, i32* @CCV_PI, align 4
  %6 = mul nsw i32 2, %5
  %7 = sitofp i32 %6 to float
  %8 = fcmp ogt float %4, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load i32, i32* @CCV_PI, align 4
  %11 = mul nsw i32 2, %10
  %12 = sitofp i32 %11 to float
  %13 = load float, float* %2, align 4
  %14 = fsub float %13, %12
  store float %14, float* %2, align 4
  br label %3

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %19, %15
  %17 = load float, float* %2, align 4
  %18 = fcmp olt float %17, 0.000000e+00
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* @CCV_PI, align 4
  %21 = mul nsw i32 2, %20
  %22 = sitofp i32 %21 to float
  %23 = load float, float* %2, align 4
  %24 = fadd float %23, %22
  store float %24, float* %2, align 4
  br label %16

25:                                               ; preds = %16
  %26 = load float, float* %2, align 4
  ret float %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
