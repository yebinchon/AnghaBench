; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_chebyshev2_compute_bw_gain_db.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_chebyshev2_compute_bw_gain_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @chebyshev2_compute_bw_gain_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @chebyshev2_compute_bw_gain_db(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %2, align 8
  store double 0.000000e+00, double* %3, align 8
  %4 = load double, double* %2, align 8
  %5 = fcmp ole double %4, -6.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store double -3.000000e+00, double* %3, align 8
  br label %22

7:                                                ; preds = %1
  %8 = load double, double* %2, align 8
  %9 = fcmp ogt double %8, -6.000000e+00
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load double, double* %2, align 8
  %12 = fcmp olt double %11, 6.000000e+00
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load double, double* %2, align 8
  %15 = fmul double %14, 3.000000e-01
  store double %15, double* %3, align 8
  br label %21

16:                                               ; preds = %10, %7
  %17 = load double, double* %2, align 8
  %18 = fcmp oge double %17, 6.000000e+00
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store double 3.000000e+00, double* %3, align 8
  br label %20

20:                                               ; preds = %19, %16
  br label %21

21:                                               ; preds = %20, %13
  br label %22

22:                                               ; preds = %21, %6
  %23 = load double, double* %3, align 8
  ret double %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
