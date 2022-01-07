; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_replaygain.c_calc_stereo_rms.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_replaygain.c_calc_stereo_rms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (float*, i32)* @calc_stereo_rms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @calc_stereo_rms(float* %0, i32 %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store float* %0, float** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %5, align 4
  store double 0x3C9CD2B297D889BC, double* %6, align 8
  br label %8

8:                                                ; preds = %12, %2
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %5, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load float*, float** %3, align 8
  %14 = getelementptr inbounds float, float* %13, i64 0
  %15 = load float, float* %14, align 4
  %16 = load float*, float** %3, align 8
  %17 = getelementptr inbounds float, float* %16, i64 0
  %18 = load float, float* %17, align 4
  %19 = fmul float %15, %18
  %20 = load float*, float** %3, align 8
  %21 = getelementptr inbounds float, float* %20, i64 1
  %22 = load float, float* %21, align 4
  %23 = load float*, float** %3, align 8
  %24 = getelementptr inbounds float, float* %23, i64 1
  %25 = load float, float* %24, align 4
  %26 = fmul float %22, %25
  %27 = fadd float %19, %26
  %28 = fpext float %27 to double
  %29 = load double, double* %6, align 8
  %30 = fadd double %29, %28
  store double %30, double* %6, align 8
  %31 = load float*, float** %3, align 8
  %32 = getelementptr inbounds float, float* %31, i64 2
  store float* %32, float** %3, align 8
  br label %8

33:                                               ; preds = %8
  %34 = load double, double* %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sitofp i32 %35 to double
  %37 = fdiv double %34, %36
  %38 = call i32 @log10(double %37)
  %39 = mul nsw i32 10, %38
  %40 = sitofp i32 %39 to double
  %41 = fadd double %40, 9.000000e+01
  %42 = fsub double %41, 3.000000e+00
  ret double %42
}

declare dso_local i32 @log10(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
