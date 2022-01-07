; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_easing_out_in_quint.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_easing_out_in_quint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float, float)* @easing_out_in_quint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @easing_out_in_quint(float %0, float %1, float %2, float %3) #0 {
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
  %12 = fdiv float %11, 2.000000e+00
  %13 = fcmp olt float %10, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load float, float* %6, align 4
  %16 = fmul float %15, 2.000000e+00
  %17 = load float, float* %7, align 4
  %18 = load float, float* %8, align 4
  %19 = fdiv float %18, 2.000000e+00
  %20 = load float, float* %9, align 4
  %21 = call float @easing_out_quint(float %16, float %17, float %19, float %20)
  store float %21, float* %5, align 4
  br label %35

22:                                               ; preds = %4
  %23 = load float, float* %6, align 4
  %24 = fmul float %23, 2.000000e+00
  %25 = load float, float* %9, align 4
  %26 = fsub float %24, %25
  %27 = load float, float* %7, align 4
  %28 = load float, float* %8, align 4
  %29 = fdiv float %28, 2.000000e+00
  %30 = fadd float %27, %29
  %31 = load float, float* %8, align 4
  %32 = fdiv float %31, 2.000000e+00
  %33 = load float, float* %9, align 4
  %34 = call float @easing_in_quint(float %26, float %30, float %32, float %33)
  store float %34, float* %5, align 4
  br label %35

35:                                               ; preds = %22, %14
  %36 = load float, float* %5, align 4
  ret float %36
}

declare dso_local float @easing_out_quint(float, float, float, float) #1

declare dso_local float @easing_in_quint(float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
