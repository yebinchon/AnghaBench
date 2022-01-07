; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/resampler/extr_resample.c_cubic_coef.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/resampler/extr_resample.c_cubic_coef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float*)* @cubic_coef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cubic_coef(float %0, float* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float*, align 8
  store float %0, float* %3, align 4
  store float* %1, float** %4, align 8
  %5 = load float, float* %3, align 4
  %6 = fmul float 0xBFC5557140000000, %5
  %7 = load float, float* %3, align 4
  %8 = fmul float 0x3FC5557140000000, %7
  %9 = load float, float* %3, align 4
  %10 = fmul float %8, %9
  %11 = load float, float* %3, align 4
  %12 = fmul float %10, %11
  %13 = fadd float %6, %12
  %14 = load float*, float** %4, align 8
  %15 = getelementptr inbounds float, float* %14, i64 0
  store float %13, float* %15, align 4
  %16 = load float, float* %3, align 4
  %17 = load float, float* %3, align 4
  %18 = fmul float 5.000000e-01, %17
  %19 = load float, float* %3, align 4
  %20 = fmul float %18, %19
  %21 = fadd float %16, %20
  %22 = load float, float* %3, align 4
  %23 = fmul float 5.000000e-01, %22
  %24 = load float, float* %3, align 4
  %25 = fmul float %23, %24
  %26 = load float, float* %3, align 4
  %27 = fmul float %25, %26
  %28 = fsub float %21, %27
  %29 = load float*, float** %4, align 8
  %30 = getelementptr inbounds float, float* %29, i64 1
  store float %28, float* %30, align 4
  %31 = load float, float* %3, align 4
  %32 = fmul float 0xBFD5554760000000, %31
  %33 = load float, float* %3, align 4
  %34 = fmul float 5.000000e-01, %33
  %35 = load float, float* %3, align 4
  %36 = fmul float %34, %35
  %37 = fadd float %32, %36
  %38 = load float, float* %3, align 4
  %39 = fmul float 0x3FC5557140000000, %38
  %40 = load float, float* %3, align 4
  %41 = fmul float %39, %40
  %42 = load float, float* %3, align 4
  %43 = fmul float %41, %42
  %44 = fsub float %37, %43
  %45 = load float*, float** %4, align 8
  %46 = getelementptr inbounds float, float* %45, i64 3
  store float %44, float* %46, align 4
  %47 = load float*, float** %4, align 8
  %48 = getelementptr inbounds float, float* %47, i64 0
  %49 = load float, float* %48, align 4
  %50 = fpext float %49 to double
  %51 = fsub double 1.000000e+00, %50
  %52 = load float*, float** %4, align 8
  %53 = getelementptr inbounds float, float* %52, i64 1
  %54 = load float, float* %53, align 4
  %55 = fpext float %54 to double
  %56 = fsub double %51, %55
  %57 = load float*, float** %4, align 8
  %58 = getelementptr inbounds float, float* %57, i64 3
  %59 = load float, float* %58, align 4
  %60 = fpext float %59 to double
  %61 = fsub double %56, %60
  %62 = fptrunc double %61 to float
  %63 = load float*, float** %4, align 8
  %64 = getelementptr inbounds float, float* %63, i64 2
  store float %62, float* %64, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
