; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adeclick.c_autocorrelation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adeclick.c_autocorrelation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, i32, i32, double*, double)* @autocorrelation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autocorrelation(double* %0, i32 %1, i32 %2, double* %3, double %4) #0 {
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store double* %0, double** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store double* %3, double** %9, align 8
  store double %4, double* %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %51, %5
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  store double 0.000000e+00, double* %13, align 8
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %12, align 4
  br label %20

20:                                               ; preds = %40, %18
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load double*, double** %6, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %25, i64 %27
  %29 = load double, double* %28, align 8
  %30 = load double*, double** %6, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %30, i64 %34
  %36 = load double, double* %35, align 8
  %37 = fmul double %29, %36
  %38 = load double, double* %13, align 8
  %39 = fadd double %38, %37
  store double %39, double* %13, align 8
  br label %40

40:                                               ; preds = %24
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %20

43:                                               ; preds = %20
  %44 = load double, double* %13, align 8
  %45 = load double, double* %10, align 8
  %46 = fmul double %44, %45
  %47 = load double*, double** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %47, i64 %49
  store double %46, double* %50, align 8
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %14

54:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
