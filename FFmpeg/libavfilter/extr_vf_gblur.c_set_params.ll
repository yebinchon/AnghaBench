; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_gblur.c_set_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_gblur.c_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, i32, float*, float*, float*)* @set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_params(float %0, i32 %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store float %0, float* %6, align 4
  store i32 %1, i32* %7, align 4
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %13 = load float, float* %6, align 4
  %14 = load float, float* %6, align 4
  %15 = fmul float %13, %14
  %16 = fpext float %15 to double
  %17 = load i32, i32* %7, align 4
  %18 = sitofp i32 %17 to double
  %19 = fmul double 2.000000e+00, %18
  %20 = fdiv double %16, %19
  store double %20, double* %12, align 8
  %21 = load double, double* %12, align 8
  %22 = fmul double 2.000000e+00, %21
  %23 = fadd double 1.000000e+00, %22
  %24 = load double, double* %12, align 8
  %25 = fmul double 4.000000e+00, %24
  %26 = fadd double 1.000000e+00, %25
  %27 = call double @sqrt(double %26) #3
  %28 = fsub double %23, %27
  %29 = load double, double* %12, align 8
  %30 = fmul double 2.000000e+00, %29
  %31 = fdiv double %28, %30
  store double %31, double* %11, align 8
  %32 = load double, double* %11, align 8
  %33 = load double, double* %12, align 8
  %34 = fdiv double %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = call float @pow(double %34, i32 %35)
  %37 = load float*, float** %8, align 8
  store float %36, float* %37, align 4
  %38 = load double, double* %11, align 8
  %39 = fsub double 1.000000e+00, %38
  %40 = fdiv double 1.000000e+00, %39
  %41 = fptrunc double %40 to float
  %42 = load float*, float** %9, align 8
  store float %41, float* %42, align 4
  %43 = load double, double* %11, align 8
  %44 = fptrunc double %43 to float
  %45 = load float*, float** %10, align 8
  store float %44, float* %45, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

declare dso_local float @pow(double, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
