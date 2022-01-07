; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_easing_in_out_expo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_easing_in_out_expo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float, float)* @easing_in_out_expo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @easing_in_out_expo(float %0, float %1, float %2, float %3) #0 {
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
  br label %65

14:                                               ; preds = %4
  %15 = load float, float* %6, align 4
  %16 = load float, float* %9, align 4
  %17 = fcmp oeq float %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load float, float* %7, align 4
  %20 = load float, float* %8, align 4
  %21 = fadd float %19, %20
  store float %21, float* %5, align 4
  br label %65

22:                                               ; preds = %14
  %23 = load float, float* %6, align 4
  %24 = load float, float* %9, align 4
  %25 = fdiv float %23, %24
  %26 = fmul float %25, 2.000000e+00
  store float %26, float* %6, align 4
  %27 = load float, float* %6, align 4
  %28 = fcmp olt float %27, 1.000000e+00
  br i1 %28, label %29, label %47

29:                                               ; preds = %22
  %30 = load float, float* %8, align 4
  %31 = fdiv float %30, 2.000000e+00
  %32 = load float, float* %6, align 4
  %33 = fsub float %32, 1.000000e+00
  %34 = fmul float 1.000000e+01, %33
  %35 = fptosi float %34 to i32
  %36 = call i32 @powf(i32 2, i32 %35)
  %37 = sitofp i32 %36 to float
  %38 = fmul float %31, %37
  %39 = load float, float* %7, align 4
  %40 = fadd float %38, %39
  %41 = fpext float %40 to double
  %42 = load float, float* %8, align 4
  %43 = fpext float %42 to double
  %44 = fmul double %43, 5.000000e-04
  %45 = fsub double %41, %44
  %46 = fptrunc double %45 to float
  store float %46, float* %5, align 4
  br label %65

47:                                               ; preds = %22
  %48 = load float, float* %8, align 4
  %49 = fdiv float %48, 2.000000e+00
  %50 = fpext float %49 to double
  %51 = fmul double %50, 1.000500e+00
  %52 = load float, float* %6, align 4
  %53 = fsub float %52, 1.000000e+00
  %54 = fmul float -1.000000e+01, %53
  %55 = fptosi float %54 to i32
  %56 = call i32 @powf(i32 2, i32 %55)
  %57 = sub nsw i32 0, %56
  %58 = add nsw i32 %57, 2
  %59 = sitofp i32 %58 to double
  %60 = fmul double %51, %59
  %61 = load float, float* %7, align 4
  %62 = fpext float %61 to double
  %63 = fadd double %60, %62
  %64 = fptrunc double %63 to float
  store float %64, float* %5, align 4
  br label %65

65:                                               ; preds = %47, %29, %18, %12
  %66 = load float, float* %5, align 4
  ret float %66
}

declare dso_local i32 @powf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
