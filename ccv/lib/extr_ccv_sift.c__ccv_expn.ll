; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_sift.c__ccv_expn.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_sift.c__ccv_expn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXPN_MAX = common dso_local global double 0.000000e+00, align 8
@EXPN_SZ = common dso_local global double 0.000000e+00, align 8
@_ccv_expn_tab = common dso_local global double* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @_ccv_expn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @_ccv_expn(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store double %0, double* %3, align 8
  %8 = load double, double* %3, align 8
  %9 = fcmp ole double 0.000000e+00, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load double, double* %3, align 8
  %12 = load double, double* @EXPN_MAX, align 8
  %13 = fcmp ole double %11, %12
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i1 [ false, %1 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load double, double* %3, align 8
  %19 = load double, double* @EXPN_MAX, align 8
  %20 = fcmp ogt double %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store double 0.000000e+00, double* %2, align 8
  br label %52

22:                                               ; preds = %14
  %23 = load double, double* @EXPN_SZ, align 8
  %24 = load double, double* @EXPN_MAX, align 8
  %25 = fdiv double %23, %24
  %26 = load double, double* %3, align 8
  %27 = fmul double %26, %25
  store double %27, double* %3, align 8
  %28 = load double, double* %3, align 8
  %29 = fptosi double %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load double, double* %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sitofp i32 %31 to double
  %33 = fsub double %30, %32
  store double %33, double* %6, align 8
  %34 = load double*, double** @_ccv_expn_tab, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  store double %38, double* %4, align 8
  %39 = load double*, double** @_ccv_expn_tab, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %39, i64 %42
  %44 = load double, double* %43, align 8
  store double %44, double* %5, align 8
  %45 = load double, double* %4, align 8
  %46 = load double, double* %6, align 8
  %47 = load double, double* %5, align 8
  %48 = load double, double* %4, align 8
  %49 = fsub double %47, %48
  %50 = fmul double %46, %49
  %51 = fadd double %45, %50
  store double %51, double* %2, align 8
  br label %52

52:                                               ; preds = %22, %21
  %53 = load double, double* %2, align 8
  ret double %53
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
