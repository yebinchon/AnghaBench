; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_hermite.h_hermite_interpolation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_hermite.h_hermite_interpolation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, double, double, double, double, double)* @hermite_interpolation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @hermite_interpolation(double %0, double %1, double %2, double %3, double %4, double %5, double %6) #0 {
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store double %0, double* %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  %23 = load double, double* %10, align 8
  %24 = load double, double* %9, align 8
  %25 = fsub double %23, %24
  store double %25, double* %15, align 8
  %26 = load double, double* %8, align 8
  %27 = load double, double* %9, align 8
  %28 = fsub double %26, %27
  %29 = load double, double* %15, align 8
  %30 = fdiv double %28, %29
  store double %30, double* %16, align 8
  %31 = load double, double* %15, align 8
  %32 = load double, double* %13, align 8
  %33 = fmul double %32, %31
  store double %33, double* %13, align 8
  %34 = load double, double* %15, align 8
  %35 = load double, double* %14, align 8
  %36 = fmul double %35, %34
  store double %36, double* %14, align 8
  %37 = load double, double* %16, align 8
  %38 = load double, double* %16, align 8
  %39 = fmul double %37, %38
  store double %39, double* %17, align 8
  %40 = load double, double* %17, align 8
  %41 = load double, double* %16, align 8
  %42 = fmul double %40, %41
  store double %42, double* %18, align 8
  %43 = load double, double* %11, align 8
  store double %43, double* %19, align 8
  %44 = load double, double* %13, align 8
  store double %44, double* %20, align 8
  %45 = load double, double* %11, align 8
  %46 = fmul double -3.000000e+00, %45
  %47 = load double, double* %13, align 8
  %48 = fmul double 2.000000e+00, %47
  %49 = fsub double %46, %48
  %50 = load double, double* %12, align 8
  %51 = fmul double 3.000000e+00, %50
  %52 = fadd double %49, %51
  %53 = load double, double* %14, align 8
  %54 = fsub double %52, %53
  store double %54, double* %21, align 8
  %55 = load double, double* %11, align 8
  %56 = fmul double 2.000000e+00, %55
  %57 = load double, double* %13, align 8
  %58 = fadd double %56, %57
  %59 = load double, double* %12, align 8
  %60 = fmul double 2.000000e+00, %59
  %61 = fsub double %58, %60
  %62 = load double, double* %14, align 8
  %63 = fadd double %61, %62
  store double %63, double* %22, align 8
  %64 = load double, double* %22, align 8
  %65 = load double, double* %18, align 8
  %66 = fmul double %64, %65
  %67 = load double, double* %21, align 8
  %68 = load double, double* %17, align 8
  %69 = fmul double %67, %68
  %70 = fadd double %66, %69
  %71 = load double, double* %20, align 8
  %72 = load double, double* %16, align 8
  %73 = fmul double %71, %72
  %74 = fadd double %70, %73
  %75 = load double, double* %19, align 8
  %76 = fadd double %74, %75
  ret double %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
