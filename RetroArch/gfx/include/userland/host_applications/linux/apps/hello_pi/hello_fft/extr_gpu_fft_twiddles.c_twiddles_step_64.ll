; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_twiddles.c_twiddles_step_64.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_twiddles.c_twiddles_step_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (double, float*, double)* @twiddles_step_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @twiddles_step_64(double %0, float* %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca float*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  store float* %1, float** %5, align 8
  store double %2, double* %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %22, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 32
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load double, double* %6, align 8
  %13 = call i32 @ALPHA(double %12)
  %14 = sitofp i32 %13 to float
  %15 = load float*, float** %5, align 8
  %16 = getelementptr inbounds float, float* %15, i32 1
  store float* %16, float** %5, align 8
  store float %14, float* %15, align 4
  %17 = load double, double* %6, align 8
  %18 = call i32 @BETA(double %17)
  %19 = sitofp i32 %18 to float
  %20 = load float*, float** %5, align 8
  %21 = getelementptr inbounds float, float* %20, i32 1
  store float* %21, float** %5, align 8
  store float %19, float* %20, align 4
  br label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %8

25:                                               ; preds = %8
  %26 = load double, double* %4, align 8
  %27 = load float*, float** %5, align 8
  %28 = load double, double* %6, align 8
  %29 = fmul double 2.000000e+00, %28
  %30 = fptosi double %29 to i32
  %31 = call float* @twiddles_step_32(double %26, float* %27, i32 %30)
  ret float* %31
}

declare dso_local i32 @ALPHA(double) #1

declare dso_local i32 @BETA(double) #1

declare dso_local float* @twiddles_step_32(double, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
