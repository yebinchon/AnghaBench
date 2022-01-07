; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_easing_out_expo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_easing_out_expo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float, float)* @easing_out_expo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @easing_out_expo(float %0, float %1, float %2, float %3) #0 {
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
  %12 = fcmp oeq float %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load float, float* %7, align 4
  %15 = load float, float* %8, align 4
  %16 = fadd float %14, %15
  store float %16, float* %5, align 4
  br label %35

17:                                               ; preds = %4
  %18 = load float, float* %8, align 4
  %19 = fpext float %18 to double
  %20 = fmul double %19, 1.001000e+00
  %21 = load float, float* %6, align 4
  %22 = fmul float -1.000000e+01, %21
  %23 = load float, float* %9, align 4
  %24 = fdiv float %22, %23
  %25 = fptosi float %24 to i32
  %26 = call i32 @powf(i32 2, i32 %25)
  %27 = sub nsw i32 0, %26
  %28 = add nsw i32 %27, 1
  %29 = sitofp i32 %28 to double
  %30 = fmul double %20, %29
  %31 = load float, float* %7, align 4
  %32 = fpext float %31 to double
  %33 = fadd double %30, %32
  %34 = fptrunc double %33 to float
  store float %34, float* %5, align 4
  br label %35

35:                                               ; preds = %17, %13
  %36 = load float, float* %5, align 4
  ret float %36
}

declare dso_local i32 @powf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
