; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_activations.h_lhtan_activate.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_activations.h_lhtan_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @lhtan_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @lhtan_activate(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, float* %3, align 4
  %4 = load float, float* %3, align 4
  %5 = fcmp olt float %4, 0.000000e+00
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load float, float* %3, align 4
  %8 = fpext float %7 to double
  %9 = fmul double 1.000000e-03, %8
  %10 = fptrunc double %9 to float
  store float %10, float* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load float, float* %3, align 4
  %13 = fcmp ogt float %12, 1.000000e+00
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load float, float* %3, align 4
  %16 = fsub float %15, 1.000000e+00
  %17 = fpext float %16 to double
  %18 = fmul double 1.000000e-03, %17
  %19 = fadd double %18, 1.000000e+00
  %20 = fptrunc double %19 to float
  store float %20, float* %2, align 4
  br label %23

21:                                               ; preds = %11
  %22 = load float, float* %3, align 4
  store float %22, float* %2, align 4
  br label %23

23:                                               ; preds = %21, %14, %6
  %24 = load float, float* %2, align 4
  ret float %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
