; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_perspective.c_get_coeff.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_perspective.c_get_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @get_coeff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_coeff(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %2, align 8
  store double -6.000000e-01, double* %4, align 8
  %5 = load double, double* %2, align 8
  %6 = call double @llvm.fabs.f64(double %5)
  store double %6, double* %2, align 8
  %7 = load double, double* %2, align 8
  %8 = fcmp olt double %7, 1.000000e+00
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load double, double* %4, align 8
  %11 = fadd double %10, 3.000000e+00
  %12 = load double, double* %2, align 8
  %13 = fmul double %11, %12
  %14 = load double, double* %2, align 8
  %15 = fmul double %13, %14
  %16 = fsub double 1.000000e+00, %15
  %17 = load double, double* %4, align 8
  %18 = fadd double %17, 2.000000e+00
  %19 = load double, double* %2, align 8
  %20 = fmul double %18, %19
  %21 = load double, double* %2, align 8
  %22 = fmul double %20, %21
  %23 = load double, double* %2, align 8
  %24 = fmul double %22, %23
  %25 = fadd double %16, %24
  store double %25, double* %3, align 8
  br label %54

26:                                               ; preds = %1
  %27 = load double, double* %2, align 8
  %28 = fcmp olt double %27, 2.000000e+00
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = load double, double* %4, align 8
  %31 = fmul double -4.000000e+00, %30
  %32 = load double, double* %4, align 8
  %33 = fmul double 8.000000e+00, %32
  %34 = load double, double* %2, align 8
  %35 = fmul double %33, %34
  %36 = fadd double %31, %35
  %37 = load double, double* %4, align 8
  %38 = fmul double 5.000000e+00, %37
  %39 = load double, double* %2, align 8
  %40 = fmul double %38, %39
  %41 = load double, double* %2, align 8
  %42 = fmul double %40, %41
  %43 = fsub double %36, %42
  %44 = load double, double* %4, align 8
  %45 = load double, double* %2, align 8
  %46 = fmul double %44, %45
  %47 = load double, double* %2, align 8
  %48 = fmul double %46, %47
  %49 = load double, double* %2, align 8
  %50 = fmul double %48, %49
  %51 = fadd double %43, %50
  store double %51, double* %3, align 8
  br label %53

52:                                               ; preds = %26
  store double 0.000000e+00, double* %3, align 8
  br label %53

53:                                               ; preds = %52, %29
  br label %54

54:                                               ; preds = %53, %9
  %55 = load double, double* %3, align 8
  ret double %55
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
