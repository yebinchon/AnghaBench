; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tonemap.c_mobius.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tonemap.c_mobius.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, double)* @mobius to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @mobius(float %0, float %1, double %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca double, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store double %2, double* %7, align 8
  %10 = load float, float* %5, align 4
  %11 = load float, float* %6, align 4
  %12 = fcmp ole float %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load float, float* %5, align 4
  store float %14, float* %4, align 4
  br label %77

15:                                               ; preds = %3
  %16 = load float, float* %6, align 4
  %17 = fneg float %16
  %18 = load float, float* %6, align 4
  %19 = fmul float %17, %18
  %20 = fpext float %19 to double
  %21 = load double, double* %7, align 8
  %22 = fsub double %21, 1.000000e+00
  %23 = fmul double %20, %22
  %24 = load float, float* %6, align 4
  %25 = load float, float* %6, align 4
  %26 = fmul float %24, %25
  %27 = load float, float* %6, align 4
  %28 = fmul float 2.000000e+00, %27
  %29 = fsub float %26, %28
  %30 = fpext float %29 to double
  %31 = load double, double* %7, align 8
  %32 = fadd double %30, %31
  %33 = fdiv double %23, %32
  %34 = fptrunc double %33 to float
  store float %34, float* %8, align 4
  %35 = load float, float* %6, align 4
  %36 = load float, float* %6, align 4
  %37 = fmul float %35, %36
  %38 = fpext float %37 to double
  %39 = load float, float* %6, align 4
  %40 = fmul float 2.000000e+00, %39
  %41 = fpext float %40 to double
  %42 = load double, double* %7, align 8
  %43 = fmul double %41, %42
  %44 = fsub double %38, %43
  %45 = load double, double* %7, align 8
  %46 = fadd double %44, %45
  %47 = load double, double* %7, align 8
  %48 = fsub double %47, 1.000000e+00
  %49 = call float @FFMAX(double %48, i32 0)
  %50 = fpext float %49 to double
  %51 = fdiv double %46, %50
  %52 = fptrunc double %51 to float
  store float %52, float* %9, align 4
  %53 = load float, float* %9, align 4
  %54 = load float, float* %9, align 4
  %55 = fmul float %53, %54
  %56 = load float, float* %9, align 4
  %57 = fmul float 2.000000e+00, %56
  %58 = load float, float* %6, align 4
  %59 = fmul float %57, %58
  %60 = fadd float %55, %59
  %61 = load float, float* %6, align 4
  %62 = load float, float* %6, align 4
  %63 = fmul float %61, %62
  %64 = fadd float %60, %63
  %65 = load float, float* %9, align 4
  %66 = load float, float* %8, align 4
  %67 = fsub float %65, %66
  %68 = fdiv float %64, %67
  %69 = load float, float* %5, align 4
  %70 = load float, float* %8, align 4
  %71 = fadd float %69, %70
  %72 = fmul float %68, %71
  %73 = load float, float* %5, align 4
  %74 = load float, float* %9, align 4
  %75 = fadd float %73, %74
  %76 = fdiv float %72, %75
  store float %76, float* %4, align 4
  br label %77

77:                                               ; preds = %15, %13
  %78 = load float, float* %4, align 4
  ret float %78
}

declare dso_local float @FFMAX(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
