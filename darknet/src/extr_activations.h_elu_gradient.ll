; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_activations.h_elu_gradient.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_activations.h_elu_gradient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @elu_gradient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @elu_gradient(float %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fcmp oge float %3, 0.000000e+00
  %5 = zext i1 %4 to i32
  %6 = sitofp i32 %5 to float
  %7 = load float, float* %2, align 4
  %8 = fcmp olt float %7, 0.000000e+00
  %9 = zext i1 %8 to i32
  %10 = sitofp i32 %9 to float
  %11 = load float, float* %2, align 4
  %12 = fadd float %11, 1.000000e+00
  %13 = fmul float %10, %12
  %14 = fadd float %6, %13
  ret float %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
