; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_utils.c_rand_normal.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_utils.c_rand_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rand_normal.haveSpare = internal global i32 0, align 4
@rand_normal.rand1 = internal global double 0.000000e+00, align 8
@rand_normal.rand2 = internal global double 0.000000e+00, align 8
@RAND_MAX = common dso_local global i64 0, align 8
@TWO_PI = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @rand_normal() #0 {
  %1 = alloca float, align 4
  %2 = load i32, i32* @rand_normal.haveSpare, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  store i32 0, i32* @rand_normal.haveSpare, align 4
  %5 = load double, double* @rand_normal.rand1, align 8
  %6 = call float @sqrt(double %5)
  %7 = load double, double* @rand_normal.rand2, align 8
  %8 = call float @sin(double %7)
  %9 = fmul float %6, %8
  store float %9, float* %1, align 4
  br label %34

10:                                               ; preds = %0
  store i32 1, i32* @rand_normal.haveSpare, align 4
  %11 = call double (...) @rand()
  %12 = load i64, i64* @RAND_MAX, align 8
  %13 = sitofp i64 %12 to double
  %14 = fdiv double %11, %13
  store double %14, double* @rand_normal.rand1, align 8
  %15 = load double, double* @rand_normal.rand1, align 8
  %16 = fcmp olt double %15, 1.000000e-100
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store double 1.000000e-100, double* @rand_normal.rand1, align 8
  br label %18

18:                                               ; preds = %17, %10
  %19 = load double, double* @rand_normal.rand1, align 8
  %20 = call i32 @log(double %19)
  %21 = mul nsw i32 -2, %20
  %22 = sitofp i32 %21 to double
  store double %22, double* @rand_normal.rand1, align 8
  %23 = call double (...) @rand()
  %24 = load i64, i64* @RAND_MAX, align 8
  %25 = sitofp i64 %24 to double
  %26 = fdiv double %23, %25
  %27 = load double, double* @TWO_PI, align 8
  %28 = fmul double %26, %27
  store double %28, double* @rand_normal.rand2, align 8
  %29 = load double, double* @rand_normal.rand1, align 8
  %30 = call float @sqrt(double %29)
  %31 = load double, double* @rand_normal.rand2, align 8
  %32 = call float @cos(double %31)
  %33 = fmul float %30, %32
  store float %33, float* %1, align 4
  br label %34

34:                                               ; preds = %18, %4
  %35 = load float, float* %1, align 4
  ret float %35
}

declare dso_local float @sqrt(double) #1

declare dso_local float @sin(double) #1

declare dso_local double @rand(...) #1

declare dso_local i32 @log(double) #1

declare dso_local float @cos(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
