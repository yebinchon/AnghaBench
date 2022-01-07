; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adx.c_ff_adx_calculate_coeffs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adx.c_ff_adx_calculate_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_SQRT2 = common dso_local global double 0.000000e+00, align 8
@M_PI = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_adx_calculate_coeffs(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load double, double* @M_SQRT2, align 8
  %13 = load double, double* @M_PI, align 8
  %14 = fmul double 2.000000e+00, %13
  %15 = load i32, i32* %5, align 4
  %16 = sitofp i32 %15 to double
  %17 = fmul double %14, %16
  %18 = load i32, i32* %6, align 4
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %17, %19
  %21 = call double @cos(double %20) #3
  %22 = fsub double %12, %21
  store double %22, double* %9, align 8
  %23 = load double, double* @M_SQRT2, align 8
  %24 = fsub double %23, 1.000000e+00
  store double %24, double* %10, align 8
  %25 = load double, double* %9, align 8
  %26 = load double, double* %9, align 8
  %27 = load double, double* %10, align 8
  %28 = fadd double %26, %27
  %29 = load double, double* %9, align 8
  %30 = load double, double* %10, align 8
  %31 = fsub double %29, %30
  %32 = fmul double %28, %31
  %33 = call double @sqrt(double %32) #3
  %34 = fsub double %25, %33
  %35 = load double, double* %10, align 8
  %36 = fdiv double %34, %35
  store double %36, double* %11, align 8
  %37 = load double, double* %11, align 8
  %38 = fmul double %37, 2.000000e+00
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 1, %39
  %41 = sitofp i32 %40 to double
  %42 = fmul double %38, %41
  %43 = call i32 @lrintf(double %42)
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %43, i32* %45, align 4
  %46 = load double, double* %11, align 8
  %47 = load double, double* %11, align 8
  %48 = fmul double %46, %47
  %49 = fneg double %48
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 1, %50
  %52 = sitofp i32 %51 to double
  %53 = fmul double %49, %52
  %54 = call i32 @lrintf(double %53)
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %54, i32* %56, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

declare dso_local i32 @lrintf(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
