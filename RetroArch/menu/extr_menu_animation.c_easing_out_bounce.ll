; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_easing_out_bounce.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_easing_out_bounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float, float)* @easing_out_bounce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @easing_out_bounce(float %0, float %1, float %2, float %3) #0 {
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
  store float %12, float* %6, align 4
  %13 = load float, float* %6, align 4
  %14 = fpext float %13 to double
  %15 = fcmp olt double %14, 0x3FD745D1745D1746
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load float, float* %8, align 4
  %18 = fpext float %17 to double
  %19 = load float, float* %6, align 4
  %20 = fpext float %19 to double
  %21 = fmul double 7.562500e+00, %20
  %22 = load float, float* %6, align 4
  %23 = fpext float %22 to double
  %24 = fmul double %21, %23
  %25 = fmul double %18, %24
  %26 = load float, float* %7, align 4
  %27 = fpext float %26 to double
  %28 = fadd double %25, %27
  %29 = fptrunc double %28 to float
  store float %29, float* %5, align 4
  br label %96

30:                                               ; preds = %4
  %31 = load float, float* %6, align 4
  %32 = fpext float %31 to double
  %33 = fcmp olt double %32, 0x3FE745D1745D1746
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load float, float* %6, align 4
  %36 = fpext float %35 to double
  %37 = fsub double %36, 0x3FE1745D1745D174
  %38 = fptrunc double %37 to float
  store float %38, float* %6, align 4
  %39 = load float, float* %8, align 4
  %40 = fpext float %39 to double
  %41 = load float, float* %6, align 4
  %42 = fpext float %41 to double
  %43 = fmul double 7.562500e+00, %42
  %44 = load float, float* %6, align 4
  %45 = fpext float %44 to double
  %46 = fmul double %43, %45
  %47 = fadd double %46, 7.500000e-01
  %48 = fmul double %40, %47
  %49 = load float, float* %7, align 4
  %50 = fpext float %49 to double
  %51 = fadd double %48, %50
  %52 = fptrunc double %51 to float
  store float %52, float* %5, align 4
  br label %96

53:                                               ; preds = %30
  %54 = load float, float* %6, align 4
  %55 = fpext float %54 to double
  %56 = fcmp olt double %55, 0x3FED1745D1745D17
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load float, float* %6, align 4
  %59 = fpext float %58 to double
  %60 = fsub double %59, 0x3FEA2E8BA2E8BA2F
  %61 = fptrunc double %60 to float
  store float %61, float* %6, align 4
  %62 = load float, float* %8, align 4
  %63 = fpext float %62 to double
  %64 = load float, float* %6, align 4
  %65 = fpext float %64 to double
  %66 = fmul double 7.562500e+00, %65
  %67 = load float, float* %6, align 4
  %68 = fpext float %67 to double
  %69 = fmul double %66, %68
  %70 = fadd double %69, 9.375000e-01
  %71 = fmul double %63, %70
  %72 = load float, float* %7, align 4
  %73 = fpext float %72 to double
  %74 = fadd double %71, %73
  %75 = fptrunc double %74 to float
  store float %75, float* %5, align 4
  br label %96

76:                                               ; preds = %53
  br label %77

77:                                               ; preds = %76
  %78 = load float, float* %6, align 4
  %79 = fpext float %78 to double
  %80 = fsub double %79, 0x3FEE8BA2E8BA2E8C
  %81 = fptrunc double %80 to float
  store float %81, float* %6, align 4
  %82 = load float, float* %8, align 4
  %83 = fpext float %82 to double
  %84 = load float, float* %6, align 4
  %85 = fpext float %84 to double
  %86 = fmul double 7.562500e+00, %85
  %87 = load float, float* %6, align 4
  %88 = fpext float %87 to double
  %89 = fmul double %86, %88
  %90 = fadd double %89, 9.843750e-01
  %91 = fmul double %83, %90
  %92 = load float, float* %7, align 4
  %93 = fpext float %92 to double
  %94 = fadd double %91, %93
  %95 = fptrunc double %94 to float
  store float %95, float* %5, align 4
  br label %96

96:                                               ; preds = %77, %57, %34, %16
  %97 = load float, float* %5, align 4
  ret float %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
