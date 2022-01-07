; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_activations.h_plse_activate.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_activations.h_plse_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @plse_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @plse_activate(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, float* %3, align 4
  %4 = load float, float* %3, align 4
  %5 = fcmp olt float %4, -4.000000e+00
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load float, float* %3, align 4
  %8 = fadd float %7, 4.000000e+00
  %9 = fpext float %8 to double
  %10 = fmul double 1.000000e-02, %9
  %11 = fptrunc double %10 to float
  store float %11, float* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load float, float* %3, align 4
  %14 = fcmp ogt float %13, 4.000000e+00
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load float, float* %3, align 4
  %17 = fsub float %16, 4.000000e+00
  %18 = fpext float %17 to double
  %19 = fmul double 1.000000e-02, %18
  %20 = fadd double %19, 1.000000e+00
  %21 = fptrunc double %20 to float
  store float %21, float* %2, align 4
  br label %28

22:                                               ; preds = %12
  %23 = load float, float* %3, align 4
  %24 = fpext float %23 to double
  %25 = fmul double 1.250000e-01, %24
  %26 = fadd double %25, 5.000000e-01
  %27 = fptrunc double %26 to float
  store float %27, float* %2, align 4
  br label %28

28:                                               ; preds = %22, %15, %6
  %29 = load float, float* %2, align 4
  ret float %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
