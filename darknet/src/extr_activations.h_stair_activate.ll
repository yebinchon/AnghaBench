; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_activations.h_stair_activate.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_activations.h_stair_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @stair_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @stair_activate(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  store float %0, float* %3, align 4
  %5 = load float, float* %3, align 4
  %6 = call float @floor(float %5)
  %7 = fptosi float %6 to i32
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = srem i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load float, float* %3, align 4
  %13 = fpext float %12 to double
  %14 = fdiv double %13, 2.000000e+00
  %15 = fptrunc double %14 to float
  %16 = call float @floor(float %15)
  store float %16, float* %2, align 4
  br label %28

17:                                               ; preds = %1
  %18 = load float, float* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sitofp i32 %19 to float
  %21 = fsub float %18, %20
  %22 = load float, float* %3, align 4
  %23 = fpext float %22 to double
  %24 = fdiv double %23, 2.000000e+00
  %25 = fptrunc double %24 to float
  %26 = call float @floor(float %25)
  %27 = fadd float %21, %26
  store float %27, float* %2, align 4
  br label %28

28:                                               ; preds = %17, %11
  %29 = load float, float* %2, align 4
  ret float %29
}

declare dso_local float @floor(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
