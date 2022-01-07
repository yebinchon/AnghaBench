; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_resample.c_bessel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_resample.c_bessel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @bessel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @bessel(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store double %0, double* %2, align 8
  store double 1.000000e+00, double* %3, align 8
  store double 0.000000e+00, double* %4, align 8
  store double 1.000000e+00, double* %5, align 8
  %7 = load double, double* %2, align 8
  %8 = load double, double* %2, align 8
  %9 = fmul double %7, %8
  %10 = fdiv double %9, 4.000000e+00
  store double %10, double* %2, align 8
  store i32 1, i32* %6, align 4
  br label %11

11:                                               ; preds = %28, %1
  %12 = load double, double* %3, align 8
  %13 = load double, double* %4, align 8
  %14 = fcmp une double %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load double, double* %3, align 8
  store double %16, double* %4, align 8
  %17 = load double, double* %2, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %17, %21
  %23 = load double, double* %5, align 8
  %24 = fmul double %23, %22
  store double %24, double* %5, align 8
  %25 = load double, double* %5, align 8
  %26 = load double, double* %3, align 8
  %27 = fadd double %26, %25
  store double %27, double* %3, align 8
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %11

31:                                               ; preds = %11
  %32 = load double, double* %3, align 8
  ret double %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
