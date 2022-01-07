; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_twiddles.c_twiddles_base_16.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_twiddles.c_twiddles_base_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@k = common dso_local global double* null, align 8
@m = common dso_local global double* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (double, float*, double)* @twiddles_base_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @twiddles_base_16(double %0, float* %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca float*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  store float* %1, float** %5, align 8
  store double %2, double* %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %64, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %67

11:                                               ; preds = %8
  %12 = load double, double* %4, align 8
  %13 = fdiv double %12, 1.600000e+01
  %14 = load double*, double** @k, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %14, i64 %16
  %18 = load double, double* %17, align 8
  %19 = fmul double %13, %18
  %20 = load double*, double** @m, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, double* %20, i64 %22
  %24 = load double, double* %23, align 8
  %25 = fmul double %19, %24
  %26 = load double, double* %6, align 8
  %27 = load double*, double** @k, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %27, i64 %29
  %31 = load double, double* %30, align 8
  %32 = fmul double %26, %31
  %33 = fadd double %25, %32
  %34 = call i32 @cos(double %33)
  %35 = sitofp i32 %34 to float
  %36 = load float*, float** %5, align 8
  %37 = getelementptr inbounds float, float* %36, i32 1
  store float* %37, float** %5, align 8
  store float %35, float* %36, align 4
  %38 = load double, double* %4, align 8
  %39 = fdiv double %38, 1.600000e+01
  %40 = load double*, double** @k, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %40, i64 %42
  %44 = load double, double* %43, align 8
  %45 = fmul double %39, %44
  %46 = load double*, double** @m, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %46, i64 %48
  %50 = load double, double* %49, align 8
  %51 = fmul double %45, %50
  %52 = load double, double* %6, align 8
  %53 = load double*, double** @k, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %53, i64 %55
  %57 = load double, double* %56, align 8
  %58 = fmul double %52, %57
  %59 = fadd double %51, %58
  %60 = call i32 @sin(double %59)
  %61 = sitofp i32 %60 to float
  %62 = load float*, float** %5, align 8
  %63 = getelementptr inbounds float, float* %62, i32 1
  store float* %63, float** %5, align 8
  store float %61, float* %62, align 4
  br label %64

64:                                               ; preds = %11
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %8

67:                                               ; preds = %8
  %68 = load float*, float** %5, align 8
  ret float* %68
}

declare dso_local i32 @cos(double) #1

declare dso_local i32 @sin(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
