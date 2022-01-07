; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_twiddles.c_twiddles_2k.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_twiddles.c_twiddles_2k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPU_FFT_QPUS = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, float*)* @twiddles_2k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twiddles_2k(double %0, float* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca float*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store double %0, double* %3, align 8
  store float* %1, float** %4, align 8
  store double 2.048000e+03, double* %5, align 8
  %7 = load double, double* %3, align 8
  %8 = load float*, float** %4, align 8
  %9 = call float* @twiddles_base_64(double %7, float* %8)
  store float* %9, float** %4, align 8
  %10 = load double, double* %3, align 8
  %11 = load float*, float** %4, align 8
  %12 = load double, double* %3, align 8
  %13 = load double, double* %5, align 8
  %14 = fdiv double %12, %13
  %15 = load double, double* @GPU_FFT_QPUS, align 8
  %16 = fmul double %14, %15
  %17 = call float* @twiddles_step_32(double %10, float* %11, double %16)
  store float* %17, float** %4, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %33, %2
  %19 = load i32, i32* %6, align 4
  %20 = sitofp i32 %19 to double
  %21 = load double, double* @GPU_FFT_QPUS, align 8
  %22 = fcmp olt double %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load double, double* %3, align 8
  %25 = load float*, float** %4, align 8
  %26 = load double, double* %3, align 8
  %27 = load double, double* %5, align 8
  %28 = fdiv double %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = sitofp i32 %29 to double
  %31 = fmul double %28, %30
  %32 = call float* @twiddles_base_32(double %24, float* %25, double %31)
  store float* %32, float** %4, align 8
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %18

36:                                               ; preds = %18
  ret void
}

declare dso_local float* @twiddles_base_64(double, float*) #1

declare dso_local float* @twiddles_step_32(double, float*, double) #1

declare dso_local float* @twiddles_base_32(double, float*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
