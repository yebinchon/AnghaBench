; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_easing_in_out_quart.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_easing_in_out_quart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float, float)* @easing_in_out_quart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @easing_in_out_quart(float %0, float %1, float %2, float %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  %10 = load float, float* %6, align 4
  %11 = load float, float* %9, align 4
  %12 = fdiv float %10, %11
  %13 = fmul float %12, 2.000000e+00
  store float %13, float* %6, align 4
  %14 = load float, float* %6, align 4
  %15 = fcmp olt float %14, 1.000000e+00
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load float, float* %8, align 4
  %18 = fdiv float %17, 2.000000e+00
  %19 = load float, float* %6, align 4
  %20 = call i32 @pow(float %19, i32 4)
  %21 = sitofp i32 %20 to float
  %22 = fmul float %18, %21
  %23 = load float, float* %7, align 4
  %24 = fadd float %22, %23
  store float %24, float* %5, align 4
  br label %37

25:                                               ; preds = %4
  %26 = load float, float* %8, align 4
  %27 = fneg float %26
  %28 = fdiv float %27, 2.000000e+00
  %29 = load float, float* %6, align 4
  %30 = fsub float %29, 2.000000e+00
  %31 = call i32 @pow(float %30, i32 4)
  %32 = sub nsw i32 %31, 2
  %33 = sitofp i32 %32 to float
  %34 = fmul float %28, %33
  %35 = load float, float* %7, align 4
  %36 = fadd float %34, %35
  store float %36, float* %5, align 4
  br label %37

37:                                               ; preds = %25, %16
  %38 = load float, float* %5, align 4
  ret float %38
}

declare dso_local i32 @pow(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
