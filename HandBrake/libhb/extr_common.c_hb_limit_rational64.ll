; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_limit_rational64.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_limit_rational64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_limit_rational64(double* %0, double* %1, double %2, double %3, double %4) #0 {
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store double* %0, double** %6, align 8
  store double* %1, double** %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store double %4, double* %10, align 8
  %13 = load double, double* %8, align 8
  %14 = load double, double* %9, align 8
  %15 = call i32 @hb_reduce64(double* %8, double* %9, double %13, double %14)
  %16 = load double, double* %8, align 8
  %17 = load double, double* %10, align 8
  %18 = fcmp olt double %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %5
  %20 = load double, double* %9, align 8
  %21 = load double, double* %10, align 8
  %22 = fcmp olt double %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load double, double* %8, align 8
  %25 = load double*, double** %6, align 8
  store double %24, double* %25, align 8
  %26 = load double, double* %9, align 8
  %27 = load double*, double** %7, align 8
  store double %26, double* %27, align 8
  br label %53

28:                                               ; preds = %19, %5
  %29 = load double, double* %8, align 8
  %30 = load double, double* %9, align 8
  %31 = fcmp ogt double %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load double, double* %10, align 8
  %34 = load double, double* %8, align 8
  %35 = fdiv double %33, %34
  store double %35, double* %11, align 8
  %36 = load double, double* %10, align 8
  store double %36, double* %8, align 8
  %37 = load double, double* %11, align 8
  %38 = load double, double* %9, align 8
  %39 = fmul double %38, %37
  store double %39, double* %9, align 8
  br label %48

40:                                               ; preds = %28
  %41 = load double, double* %10, align 8
  %42 = load double, double* %9, align 8
  %43 = fdiv double %41, %42
  store double %43, double* %12, align 8
  %44 = load double, double* %10, align 8
  store double %44, double* %9, align 8
  %45 = load double, double* %12, align 8
  %46 = load double, double* %8, align 8
  %47 = fmul double %46, %45
  store double %47, double* %8, align 8
  br label %48

48:                                               ; preds = %40, %32
  %49 = load double, double* %8, align 8
  %50 = load double*, double** %6, align 8
  store double %49, double* %50, align 8
  %51 = load double, double* %9, align 8
  %52 = load double*, double** %7, align 8
  store double %51, double* %52, align 8
  br label %53

53:                                               ; preds = %48, %23
  ret void
}

declare dso_local i32 @hb_reduce64(double*, double*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
