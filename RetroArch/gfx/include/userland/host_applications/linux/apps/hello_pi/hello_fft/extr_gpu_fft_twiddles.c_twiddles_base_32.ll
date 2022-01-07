; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_twiddles.c_twiddles_base_32.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_twiddles.c_twiddles_base_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (double, float*, double)* @twiddles_base_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @twiddles_base_32(double %0, float* %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca float*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  store float* %1, float** %5, align 8
  store double %2, double* %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %34, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = load double, double* %4, align 8
  %13 = fdiv double %12, 3.200000e+01
  %14 = load i32, i32* %7, align 4
  %15 = sitofp i32 %14 to double
  %16 = fmul double %13, %15
  %17 = load double, double* %6, align 8
  %18 = fadd double %16, %17
  %19 = call i32 @cos(double %18)
  %20 = sitofp i32 %19 to float
  %21 = load float*, float** %5, align 8
  %22 = getelementptr inbounds float, float* %21, i32 1
  store float* %22, float** %5, align 8
  store float %20, float* %21, align 4
  %23 = load double, double* %4, align 8
  %24 = fdiv double %23, 3.200000e+01
  %25 = load i32, i32* %7, align 4
  %26 = sitofp i32 %25 to double
  %27 = fmul double %24, %26
  %28 = load double, double* %6, align 8
  %29 = fadd double %27, %28
  %30 = call i32 @sin(double %29)
  %31 = sitofp i32 %30 to float
  %32 = load float*, float** %5, align 8
  %33 = getelementptr inbounds float, float* %32, i32 1
  store float* %33, float** %5, align 8
  store float %31, float* %32, align 4
  br label %34

34:                                               ; preds = %11
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %8

37:                                               ; preds = %8
  %38 = load double, double* %4, align 8
  %39 = load float*, float** %5, align 8
  %40 = load double, double* %6, align 8
  %41 = fmul double 2.000000e+00, %40
  %42 = fptosi double %41 to i32
  %43 = call float* @twiddles_base_16(double %38, float* %39, i32 %42)
  ret float* %43
}

declare dso_local i32 @cos(double) #1

declare dso_local i32 @sin(double) #1

declare dso_local float* @twiddles_base_16(double, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
