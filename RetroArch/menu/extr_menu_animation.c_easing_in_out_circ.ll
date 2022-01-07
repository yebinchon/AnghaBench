; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_easing_in_out_circ.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_easing_in_out_circ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float, float)* @easing_in_out_circ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @easing_in_out_circ(float %0, float %1, float %2, float %3) #0 {
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
  br i1 %15, label %16, label %31

16:                                               ; preds = %4
  %17 = load float, float* %8, align 4
  %18 = fneg float %17
  %19 = fdiv float %18, 2.000000e+00
  %20 = load float, float* %6, align 4
  %21 = load float, float* %6, align 4
  %22 = fmul float %20, %21
  %23 = fsub float 1.000000e+00, %22
  %24 = fptosi float %23 to i32
  %25 = call i32 @sqrt(i32 %24)
  %26 = sub nsw i32 %25, 1
  %27 = sitofp i32 %26 to float
  %28 = fmul float %19, %27
  %29 = load float, float* %7, align 4
  %30 = fadd float %28, %29
  store float %30, float* %5, align 4
  br label %47

31:                                               ; preds = %4
  %32 = load float, float* %6, align 4
  %33 = fsub float %32, 2.000000e+00
  store float %33, float* %6, align 4
  %34 = load float, float* %8, align 4
  %35 = fdiv float %34, 2.000000e+00
  %36 = load float, float* %6, align 4
  %37 = load float, float* %6, align 4
  %38 = fmul float %36, %37
  %39 = fsub float 1.000000e+00, %38
  %40 = fptosi float %39 to i32
  %41 = call i32 @sqrt(i32 %40)
  %42 = add nsw i32 %41, 1
  %43 = sitofp i32 %42 to float
  %44 = fmul float %35, %43
  %45 = load float, float* %7, align 4
  %46 = fadd float %44, %45
  store float %46, float* %5, align 4
  br label %47

47:                                               ; preds = %31, %16
  %48 = load float, float* %5, align 4
  ret float %48
}

declare dso_local i32 @sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
