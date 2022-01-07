; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_activations.h_selu_activate.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_activations.h_selu_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @selu_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @selu_activate(float %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fcmp oge float %3, 0.000000e+00
  %5 = zext i1 %4 to i32
  %6 = sitofp i32 %5 to double
  %7 = fmul double %6, 1.050700e+00
  %8 = load float, float* %2, align 4
  %9 = fpext float %8 to double
  %10 = fmul double %7, %9
  %11 = load float, float* %2, align 4
  %12 = fcmp olt float %11, 0.000000e+00
  %13 = zext i1 %12 to i32
  %14 = sitofp i32 %13 to double
  %15 = fmul double %14, 1.050700e+00
  %16 = fmul double %15, 1.673200e+00
  %17 = load float, float* %2, align 4
  %18 = call i32 @exp(float %17)
  %19 = sub nsw i32 %18, 1
  %20 = sitofp i32 %19 to double
  %21 = fmul double %16, %20
  %22 = fadd double %10, %21
  %23 = fptrunc double %22 to float
  ret float %23
}

declare dso_local i32 @exp(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
