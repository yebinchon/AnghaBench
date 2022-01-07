; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_dynaudnorm.c_setup_compress_thresh.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_dynaudnorm.c_setup_compress_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBL_EPSILON = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @setup_compress_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @setup_compress_thresh(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = load double, double* @DBL_EPSILON, align 8
  %8 = fcmp ogt double %6, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %1
  %10 = load double, double* %3, align 8
  %11 = load double, double* @DBL_EPSILON, align 8
  %12 = fsub double 1.000000e+00, %11
  %13 = fcmp olt double %10, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %9
  %15 = load double, double* %3, align 8
  store double %15, double* %4, align 8
  store double 1.000000e+00, double* %5, align 8
  br label %16

16:                                               ; preds = %50, %14
  %17 = load double, double* %5, align 8
  %18 = load double, double* @DBL_EPSILON, align 8
  %19 = fcmp ogt double %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %46, %20
  %22 = load double, double* %4, align 8
  %23 = load double, double* %5, align 8
  %24 = fadd double %22, %23
  %25 = call i32 @UINT64_C(i32 1)
  %26 = shl i32 %25, 63
  %27 = sitofp i32 %26 to double
  %28 = fmul double %24, %27
  %29 = call i64 @llrint(double %28)
  %30 = load double, double* %4, align 8
  %31 = call i32 @UINT64_C(i32 1)
  %32 = shl i32 %31, 63
  %33 = sitofp i32 %32 to double
  %34 = fmul double %30, %33
  %35 = call i64 @llrint(double %34)
  %36 = icmp sgt i64 %29, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %21
  %38 = load double, double* %4, align 8
  %39 = load double, double* %5, align 8
  %40 = fadd double %38, %39
  %41 = call double @bound(double %40, double 1.000000e+00)
  %42 = load double, double* %3, align 8
  %43 = fcmp ole double %41, %42
  br label %44

44:                                               ; preds = %37, %21
  %45 = phi i1 [ false, %21 ], [ %43, %37 ]
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  %47 = load double, double* %5, align 8
  %48 = load double, double* %4, align 8
  %49 = fadd double %48, %47
  store double %49, double* %4, align 8
  br label %21

50:                                               ; preds = %44
  %51 = load double, double* %5, align 8
  %52 = fdiv double %51, 2.000000e+00
  store double %52, double* %5, align 8
  br label %16

53:                                               ; preds = %16
  %54 = load double, double* %4, align 8
  store double %54, double* %2, align 8
  br label %57

55:                                               ; preds = %9, %1
  %56 = load double, double* %3, align 8
  store double %56, double* %2, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = load double, double* %2, align 8
  ret double %58
}

declare dso_local i64 @llrint(double) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local double @bound(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
