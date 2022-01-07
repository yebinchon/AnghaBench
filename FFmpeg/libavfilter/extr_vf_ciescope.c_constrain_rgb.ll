; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_constrain_rgb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_constrain_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double*, double*, double*)* @constrain_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constrain_rgb(double* %0, double* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double, align 8
  store double* %0, double** %5, align 8
  store double* %1, double** %6, align 8
  store double* %2, double** %7, align 8
  %9 = load double*, double** %5, align 8
  %10 = load double, double* %9, align 8
  %11 = fcmp olt double 0.000000e+00, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %16

13:                                               ; preds = %3
  %14 = load double*, double** %5, align 8
  %15 = load double, double* %14, align 8
  br label %16

16:                                               ; preds = %13, %12
  %17 = phi double [ 0.000000e+00, %12 ], [ %15, %13 ]
  store double %17, double* %8, align 8
  %18 = load double, double* %8, align 8
  %19 = load double*, double** %6, align 8
  %20 = load double, double* %19, align 8
  %21 = fcmp olt double %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load double, double* %8, align 8
  br label %27

24:                                               ; preds = %16
  %25 = load double*, double** %6, align 8
  %26 = load double, double* %25, align 8
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi double [ %23, %22 ], [ %26, %24 ]
  store double %28, double* %8, align 8
  %29 = load double, double* %8, align 8
  %30 = load double*, double** %7, align 8
  %31 = load double, double* %30, align 8
  %32 = fcmp olt double %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load double, double* %8, align 8
  br label %38

35:                                               ; preds = %27
  %36 = load double*, double** %7, align 8
  %37 = load double, double* %36, align 8
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi double [ %34, %33 ], [ %37, %35 ]
  store double %39, double* %8, align 8
  %40 = load double, double* %8, align 8
  %41 = fneg double %40
  store double %41, double* %8, align 8
  %42 = load double, double* %8, align 8
  %43 = fcmp ogt double %42, 0.000000e+00
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load double, double* %8, align 8
  %46 = load double*, double** %5, align 8
  %47 = load double, double* %46, align 8
  %48 = fadd double %47, %45
  store double %48, double* %46, align 8
  %49 = load double, double* %8, align 8
  %50 = load double*, double** %6, align 8
  %51 = load double, double* %50, align 8
  %52 = fadd double %51, %49
  store double %52, double* %50, align 8
  %53 = load double, double* %8, align 8
  %54 = load double*, double** %7, align 8
  %55 = load double, double* %54, align 8
  %56 = fadd double %55, %53
  store double %56, double* %54, align 8
  store i32 1, i32* %4, align 4
  br label %58

57:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %44
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
