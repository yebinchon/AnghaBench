; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_misc_vaapi.c_map.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_misc_vaapi.c_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32, i32, i32, float, float)* @map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @map(i32 %0, i32 %1, i32 %2, float %3, float %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %13 = load float, float* %10, align 4
  %14 = load float, float* %9, align 4
  %15 = fsub float %13, %14
  %16 = fpext float %15 to double
  %17 = fmul double 1.000000e+00, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %17, %21
  store double %22, double* %11, align 8
  %23 = load float, float* %9, align 4
  %24 = fpext float %23 to double
  %25 = load double, double* %11, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sitofp i32 %28 to double
  %30 = fmul double %25, %29
  %31 = fadd double %24, %30
  store double %31, double* %12, align 8
  %32 = load double, double* %12, align 8
  %33 = fptrunc double %32 to float
  ret float %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
