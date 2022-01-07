; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_vibrato.c_hermite_interp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_vibrato.c_hermite_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @hermite_interp(float %0, float* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %3, align 4
  store float* %1, float** %4, align 8
  %9 = load float*, float** %4, align 8
  %10 = getelementptr inbounds float, float* %9, i64 1
  %11 = load float, float* %10, align 4
  store float %11, float* %5, align 4
  %12 = load float*, float** %4, align 8
  %13 = getelementptr inbounds float, float* %12, i64 2
  %14 = load float, float* %13, align 4
  %15 = load float*, float** %4, align 8
  %16 = getelementptr inbounds float, float* %15, i64 0
  %17 = load float, float* %16, align 4
  %18 = fsub float %14, %17
  %19 = fpext float %18 to double
  %20 = fmul double 5.000000e-01, %19
  %21 = fptrunc double %20 to float
  store float %21, float* %6, align 4
  %22 = load float*, float** %4, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  %24 = load float, float* %23, align 4
  %25 = fpext float %24 to double
  %26 = load float*, float** %4, align 8
  %27 = getelementptr inbounds float, float* %26, i64 1
  %28 = load float, float* %27, align 4
  %29 = fpext float %28 to double
  %30 = fmul double 2.500000e+00, %29
  %31 = fsub double %25, %30
  %32 = load float*, float** %4, align 8
  %33 = getelementptr inbounds float, float* %32, i64 2
  %34 = load float, float* %33, align 4
  %35 = fpext float %34 to double
  %36 = fmul double 2.000000e+00, %35
  %37 = load float*, float** %4, align 8
  %38 = getelementptr inbounds float, float* %37, i64 3
  %39 = load float, float* %38, align 4
  %40 = fpext float %39 to double
  %41 = fmul double 5.000000e-01, %40
  %42 = fsub double %36, %41
  %43 = fadd double %31, %42
  %44 = fptrunc double %43 to float
  store float %44, float* %7, align 4
  %45 = load float*, float** %4, align 8
  %46 = getelementptr inbounds float, float* %45, i64 3
  %47 = load float, float* %46, align 4
  %48 = load float*, float** %4, align 8
  %49 = getelementptr inbounds float, float* %48, i64 0
  %50 = load float, float* %49, align 4
  %51 = fsub float %47, %50
  %52 = fpext float %51 to double
  %53 = fmul double 5.000000e-01, %52
  %54 = load float*, float** %4, align 8
  %55 = getelementptr inbounds float, float* %54, i64 1
  %56 = load float, float* %55, align 4
  %57 = load float*, float** %4, align 8
  %58 = getelementptr inbounds float, float* %57, i64 2
  %59 = load float, float* %58, align 4
  %60 = fsub float %56, %59
  %61 = fpext float %60 to double
  %62 = fmul double 1.500000e+00, %61
  %63 = fadd double %53, %62
  %64 = fptrunc double %63 to float
  store float %64, float* %8, align 4
  %65 = load float, float* %8, align 4
  %66 = load float, float* %3, align 4
  %67 = fmul float %65, %66
  %68 = load float, float* %7, align 4
  %69 = fadd float %67, %68
  %70 = load float, float* %3, align 4
  %71 = fmul float %69, %70
  %72 = load float, float* %6, align 4
  %73 = fadd float %71, %72
  %74 = load float, float* %3, align 4
  %75 = fmul float %73, %74
  %76 = load float, float* %5, align 4
  %77 = fadd float %75, %76
  ret float %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
