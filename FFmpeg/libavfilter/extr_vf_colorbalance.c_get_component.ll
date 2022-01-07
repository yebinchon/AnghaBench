; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorbalance.c_get_component.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorbalance.c_get_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float, float, float)* @get_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @get_component(float %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  store float 4.000000e+00, float* %11, align 4
  store float 0x3FD54FDF40000000, float* %12, align 4
  store float 0x3FE6666660000000, float* %13, align 4
  %14 = load float, float* %7, align 4
  %15 = fsub float 0x3FD54FDF40000000, %14
  %16 = fmul float %15, 4.000000e+00
  %17 = fadd float %16, 5.000000e-01
  %18 = call float @av_clipf(float %17, i32 0, i32 1)
  %19 = fmul float %18, 0x3FE6666660000000
  %20 = load float, float* %8, align 4
  %21 = fmul float %20, %19
  store float %21, float* %8, align 4
  %22 = load float, float* %7, align 4
  %23 = fsub float %22, 0x3FD54FDF40000000
  %24 = fmul float %23, 4.000000e+00
  %25 = fadd float %24, 5.000000e-01
  %26 = call float @av_clipf(float %25, i32 0, i32 1)
  %27 = load float, float* %7, align 4
  %28 = fpext float %27 to double
  %29 = fsub double 1.000000e+00, %28
  %30 = fsub double %29, 0x3FD54FDF40000000
  %31 = fmul double %30, 4.000000e+00
  %32 = fadd double %31, 5.000000e-01
  %33 = fptrunc double %32 to float
  %34 = call float @av_clipf(float %33, i32 0, i32 1)
  %35 = fmul float %26, %34
  %36 = fmul float %35, 0x3FE6666660000000
  %37 = load float, float* %9, align 4
  %38 = fmul float %37, %36
  store float %38, float* %9, align 4
  %39 = load float, float* %7, align 4
  %40 = fadd float %39, 0x3FD54FDF40000000
  %41 = fsub float %40, 1.000000e+00
  %42 = fmul float %41, 4.000000e+00
  %43 = fadd float %42, 5.000000e-01
  %44 = call float @av_clipf(float %43, i32 0, i32 1)
  %45 = fmul float %44, 0x3FE6666660000000
  %46 = load float, float* %10, align 4
  %47 = fmul float %46, %45
  store float %47, float* %10, align 4
  %48 = load float, float* %8, align 4
  %49 = load float, float* %6, align 4
  %50 = fadd float %49, %48
  store float %50, float* %6, align 4
  %51 = load float, float* %9, align 4
  %52 = load float, float* %6, align 4
  %53 = fadd float %52, %51
  store float %53, float* %6, align 4
  %54 = load float, float* %10, align 4
  %55 = load float, float* %6, align 4
  %56 = fadd float %55, %54
  store float %56, float* %6, align 4
  %57 = load float, float* %6, align 4
  %58 = call float @av_clipf(float %57, i32 0, i32 1)
  ret float %58
}

declare dso_local float @av_clipf(float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
