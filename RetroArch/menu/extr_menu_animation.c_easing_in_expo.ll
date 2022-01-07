; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_easing_in_expo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_easing_in_expo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float, float)* @easing_in_expo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @easing_in_expo(float %0, float %1, float %2, float %3) #0 {
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
  %11 = fcmp oeq float %10, 0.000000e+00
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load float, float* %7, align 4
  store float %13, float* %5, align 4
  br label %32

14:                                               ; preds = %4
  %15 = load float, float* %8, align 4
  %16 = load float, float* %6, align 4
  %17 = load float, float* %9, align 4
  %18 = fdiv float %16, %17
  %19 = fsub float %18, 1.000000e+00
  %20 = fmul float 1.000000e+01, %19
  %21 = fptosi float %20 to i32
  %22 = call float @powf(i32 2, i32 %21)
  %23 = fmul float %15, %22
  %24 = load float, float* %7, align 4
  %25 = fadd float %23, %24
  %26 = fpext float %25 to double
  %27 = load float, float* %8, align 4
  %28 = fpext float %27 to double
  %29 = fmul double %28, 1.000000e-03
  %30 = fsub double %26, %29
  %31 = fptrunc double %30 to float
  store float %31, float* %5, align 4
  br label %32

32:                                               ; preds = %14, %12
  %33 = load float, float* %5, align 4
  ret float %33
}

declare dso_local float @powf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
