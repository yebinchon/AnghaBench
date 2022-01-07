; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_twiddles.c_twiddles_base_64.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_twiddles.c_twiddles_base_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (double, float*)* @twiddles_base_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @twiddles_base_64(double %0, float* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  store float* %1, float** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %28, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 32
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load double, double* %3, align 8
  %11 = fdiv double %10, 6.400000e+01
  %12 = load i32, i32* %5, align 4
  %13 = sitofp i32 %12 to double
  %14 = fmul double %11, %13
  %15 = call i32 @cos(double %14)
  %16 = sitofp i32 %15 to float
  %17 = load float*, float** %4, align 8
  %18 = getelementptr inbounds float, float* %17, i32 1
  store float* %18, float** %4, align 8
  store float %16, float* %17, align 4
  %19 = load double, double* %3, align 8
  %20 = fdiv double %19, 6.400000e+01
  %21 = load i32, i32* %5, align 4
  %22 = sitofp i32 %21 to double
  %23 = fmul double %20, %22
  %24 = call i32 @sin(double %23)
  %25 = sitofp i32 %24 to float
  %26 = load float*, float** %4, align 8
  %27 = getelementptr inbounds float, float* %26, i32 1
  store float* %27, float** %4, align 8
  store float %25, float* %26, align 4
  br label %28

28:                                               ; preds = %9
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %6

31:                                               ; preds = %6
  %32 = load double, double* %3, align 8
  %33 = load float*, float** %4, align 8
  %34 = call float* @twiddles_base_32(double %32, float* %33, i32 0)
  ret float* %34
}

declare dso_local i32 @cos(double) #1

declare dso_local i32 @sin(double) #1

declare dso_local float* @twiddles_base_32(double, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
