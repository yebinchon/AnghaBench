; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_resampling_audio.c_fill_samples.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_resampling_audio.c_fill_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, i32, i32, i32, double*)* @fill_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_samples(double* %0, i32 %1, i32 %2, i32 %3, double* %4) #0 {
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double*, align 8
  %15 = alloca double, align 8
  store double* %0, double** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store double* %4, double** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sitofp i32 %16 to double
  %18 = fdiv double 1.000000e+00, %17
  store double %18, double* %13, align 8
  %19 = load double*, double** %6, align 8
  store double* %19, double** %14, align 8
  %20 = load i32, i32* @M_PI, align 4
  %21 = mul nsw i32 2, %20
  %22 = sitofp i32 %21 to double
  %23 = fmul double %22, 4.400000e+02
  store double %23, double* %15, align 8
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %59, %5
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %24
  %29 = load double, double* %15, align 8
  %30 = load double*, double** %10, align 8
  %31 = load double, double* %30, align 8
  %32 = fmul double %29, %31
  %33 = call double @sin(double %32) #2
  %34 = load double*, double** %14, align 8
  store double %33, double* %34, align 8
  store i32 1, i32* %12, align 4
  br label %35

35:                                               ; preds = %47, %28
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load double*, double** %14, align 8
  %41 = getelementptr inbounds double, double* %40, i64 0
  %42 = load double, double* %41, align 8
  %43 = load double*, double** %14, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  store double %42, double* %46, align 8
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %35

50:                                               ; preds = %35
  %51 = load i32, i32* %8, align 4
  %52 = load double*, double** %14, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds double, double* %52, i64 %53
  store double* %54, double** %14, align 8
  %55 = load double, double* %13, align 8
  %56 = load double*, double** %10, align 8
  %57 = load double, double* %56, align 8
  %58 = fadd double %57, %55
  store double %58, double* %56, align 8
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %24

62:                                               ; preds = %24
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
