; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_twiddles.c_twiddles_4096k.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_twiddles.c_twiddles_4096k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPU_FFT_QPUS = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, float*)* @twiddles_4096k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twiddles_4096k(double %0, float* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca float*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store double %0, double* %3, align 8
  store float* %1, float** %4, align 8
  store double 0x4150000000000000, double* %5, align 8
  %7 = load double, double* %3, align 8
  %8 = load float*, float** %4, align 8
  %9 = call float* @twiddles_base_64(double %7, float* %8)
  store float* %9, float** %4, align 8
  %10 = load double, double* %3, align 8
  %11 = load float*, float** %4, align 8
  %12 = load double, double* %3, align 8
  %13 = load double, double* %5, align 8
  %14 = fdiv double %12, %13
  %15 = fmul double %14, 3.200000e+01
  %16 = fmul double %15, 3.200000e+01
  %17 = call float* @twiddles_step_64(double %10, float* %11, double %16)
  store float* %17, float** %4, align 8
  %18 = load double, double* %3, align 8
  %19 = load float*, float** %4, align 8
  %20 = load double, double* %3, align 8
  %21 = load double, double* %5, align 8
  %22 = fdiv double %20, %21
  %23 = fmul double %22, 3.200000e+01
  %24 = call float* @twiddles_step_32(double %18, float* %19, double %23)
  store float* %24, float** %4, align 8
  %25 = load double, double* %3, align 8
  %26 = load float*, float** %4, align 8
  %27 = load double, double* %3, align 8
  %28 = load double, double* %5, align 8
  %29 = fdiv double %27, %28
  %30 = load double, double* @GPU_FFT_QPUS, align 8
  %31 = fmul double %29, %30
  %32 = call float* @twiddles_step_32(double %25, float* %26, double %31)
  store float* %32, float** %4, align 8
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %48, %2
  %34 = load i32, i32* %6, align 4
  %35 = sitofp i32 %34 to double
  %36 = load double, double* @GPU_FFT_QPUS, align 8
  %37 = fcmp olt double %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load double, double* %3, align 8
  %40 = load float*, float** %4, align 8
  %41 = load double, double* %3, align 8
  %42 = load double, double* %5, align 8
  %43 = fdiv double %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = sitofp i32 %44 to double
  %46 = fmul double %43, %45
  %47 = call float* @twiddles_base_32(double %39, float* %40, double %46)
  store float* %47, float** %4, align 8
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %33

51:                                               ; preds = %33
  ret void
}

declare dso_local float* @twiddles_base_64(double, float*) #1

declare dso_local float* @twiddles_step_64(double, float*, double) #1

declare dso_local float* @twiddles_step_32(double, float*, double) #1

declare dso_local float* @twiddles_base_32(double, float*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
