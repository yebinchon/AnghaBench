; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_limit_rational.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_limit_rational.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_limit_rational(double* %0, double* %1, double %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double %2, double* %6, align 8
  %9 = load double*, double** %4, align 8
  %10 = load double, double* %9, align 8
  %11 = load double, double* %6, align 8
  %12 = fcmp olt double %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load double*, double** %5, align 8
  %15 = load double, double* %14, align 8
  %16 = load double, double* %6, align 8
  %17 = fcmp olt double %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %49

19:                                               ; preds = %13, %3
  %20 = load double*, double** %4, align 8
  %21 = load double, double* %20, align 8
  %22 = load double*, double** %5, align 8
  %23 = load double, double* %22, align 8
  %24 = fcmp ogt double %21, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load double, double* %6, align 8
  %27 = load double*, double** %4, align 8
  %28 = load double, double* %27, align 8
  %29 = fdiv double %26, %28
  store double %29, double* %7, align 8
  %30 = load double, double* %6, align 8
  %31 = load double*, double** %4, align 8
  store double %30, double* %31, align 8
  %32 = load double, double* %7, align 8
  %33 = load double*, double** %5, align 8
  %34 = load double, double* %33, align 8
  %35 = fmul double %32, %34
  %36 = load double*, double** %5, align 8
  store double %35, double* %36, align 8
  br label %49

37:                                               ; preds = %19
  %38 = load double, double* %6, align 8
  %39 = load double*, double** %5, align 8
  %40 = load double, double* %39, align 8
  %41 = fdiv double %38, %40
  store double %41, double* %8, align 8
  %42 = load double, double* %6, align 8
  %43 = load double*, double** %5, align 8
  store double %42, double* %43, align 8
  %44 = load double, double* %8, align 8
  %45 = load double*, double** %4, align 8
  %46 = load double, double* %45, align 8
  %47 = fmul double %44, %46
  %48 = load double*, double** %4, align 8
  store double %47, double* %48, align 8
  br label %49

49:                                               ; preds = %18, %37, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
