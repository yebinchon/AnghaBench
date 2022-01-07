; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/tests/extr_swresample.c_get.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/tests/extr_swresample.c_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double**, i32, i32, i32, i32)* @get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get(double** %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca double**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double*, align 8
  store double** %0, double*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = call i64 @av_sample_fmt_is_planar(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @av_get_alt_sample_fmt(i32 %17, i32 0)
  store i32 %18, i32* %11, align 4
  %19 = load double**, double*** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double*, double** %19, i64 %21
  %23 = load double*, double** %22, align 8
  store double* %23, double** %12, align 8
  br label %33

24:                                               ; preds = %5
  %25 = load double**, double*** %7, align 8
  %26 = getelementptr inbounds double*, double** %25, i64 0
  %27 = load double*, double** %26, align 8
  store double* %27, double** %12, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = mul nsw i32 %29, %30
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %24, %16
  %34 = load i32, i32* %11, align 4
  switch i32 %34, label %71 [
    i32 128, label %35
    i32 130, label %43
    i32 129, label %50
    i32 131, label %57
    i32 132, label %65
  ]

35:                                               ; preds = %33
  %36 = load double*, double** %12, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %36, i64 %38
  %40 = load double, double* %39, align 8
  %41 = fdiv double %40, 1.270000e+02
  %42 = fsub double %41, 1.000000e+00
  store double %42, double* %6, align 8
  br label %73

43:                                               ; preds = %33
  %44 = load double*, double** %12, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %44, i64 %46
  %48 = load double, double* %47, align 8
  %49 = fdiv double %48, 3.276700e+04
  store double %49, double* %6, align 8
  br label %73

50:                                               ; preds = %33
  %51 = load double*, double** %12, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, double* %51, i64 %53
  %55 = load double, double* %54, align 8
  %56 = fdiv double %55, 0x41DFFFFFFFC00000
  store double %56, double* %6, align 8
  br label %73

57:                                               ; preds = %33
  %58 = load double*, double** %12, align 8
  %59 = bitcast double* %58 to float*
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %59, i64 %61
  %63 = load float, float* %62, align 4
  %64 = fpext float %63 to double
  store double %64, double* %6, align 8
  br label %73

65:                                               ; preds = %33
  %66 = load double*, double** %12, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %66, i64 %68
  %70 = load double, double* %69, align 8
  store double %70, double* %6, align 8
  br label %73

71:                                               ; preds = %33
  %72 = call i32 @av_assert0(i32 0)
  br label %73

73:                                               ; preds = %35, %43, %50, %57, %65, %71
  %74 = load double, double* %6, align 8
  ret double %74
}

declare dso_local i64 @av_sample_fmt_is_planar(i32) #1

declare dso_local i32 @av_get_alt_sample_fmt(i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
