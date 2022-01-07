; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_twiddles.c_twiddles_32k.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_twiddles.c_twiddles_32k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPU_FFT_QPUS = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, float*)* @twiddles_32k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twiddles_32k(double %0, float* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca float*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store double %0, double* %3, align 8
  store float* %1, float** %4, align 8
  store double 3.276800e+04, double* %5, align 8
  %7 = load double, double* %3, align 8
  %8 = load float*, float** %4, align 8
  %9 = call float* @twiddles_base_32(double %7, float* %8, double 0.000000e+00)
  store float* %9, float** %4, align 8
  %10 = load double, double* %3, align 8
  %11 = load float*, float** %4, align 8
  %12 = load double, double* %3, align 8
  %13 = load double, double* %5, align 8
  %14 = fdiv double %12, %13
  %15 = fmul double %14, 3.200000e+01
  %16 = call float* @twiddles_step_32(double %10, float* %11, double %15)
  store float* %16, float** %4, align 8
  %17 = load double, double* %3, align 8
  %18 = load float*, float** %4, align 8
  %19 = load double, double* %3, align 8
  %20 = load double, double* %5, align 8
  %21 = fdiv double %19, %20
  %22 = load double, double* @GPU_FFT_QPUS, align 8
  %23 = fmul double %21, %22
  %24 = call float* @twiddles_step_32(double %17, float* %18, double %23)
  store float* %24, float** %4, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %40, %2
  %26 = load i32, i32* %6, align 4
  %27 = sitofp i32 %26 to double
  %28 = load double, double* @GPU_FFT_QPUS, align 8
  %29 = fcmp olt double %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load double, double* %3, align 8
  %32 = load float*, float** %4, align 8
  %33 = load double, double* %3, align 8
  %34 = load double, double* %5, align 8
  %35 = fdiv double %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = sitofp i32 %36 to double
  %38 = fmul double %35, %37
  %39 = call float* @twiddles_base_32(double %31, float* %32, double %38)
  store float* %39, float** %4, align 8
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %25

43:                                               ; preds = %25
  ret void
}

declare dso_local float* @twiddles_base_32(double, float*, double) #1

declare dso_local float* @twiddles_step_32(double, float*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
