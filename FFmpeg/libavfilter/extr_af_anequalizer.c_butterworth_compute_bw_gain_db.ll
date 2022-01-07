; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_butterworth_compute_bw_gain_db.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_butterworth_compute_bw_gain_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @butterworth_compute_bw_gain_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @butterworth_compute_bw_gain_db(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %2, align 8
  store double 0.000000e+00, double* %3, align 8
  %4 = load double, double* %2, align 8
  %5 = fcmp ole double %4, -6.000000e+00
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load double, double* %2, align 8
  %8 = fadd double %7, 3.000000e+00
  store double %8, double* %3, align 8
  br label %26

9:                                                ; preds = %1
  %10 = load double, double* %2, align 8
  %11 = fcmp ogt double %10, -6.000000e+00
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load double, double* %2, align 8
  %14 = fcmp olt double %13, 6.000000e+00
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load double, double* %2, align 8
  %17 = fmul double %16, 5.000000e-01
  store double %17, double* %3, align 8
  br label %25

18:                                               ; preds = %12, %9
  %19 = load double, double* %2, align 8
  %20 = fcmp oge double %19, 6.000000e+00
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load double, double* %2, align 8
  %23 = fsub double %22, 3.000000e+00
  store double %23, double* %3, align 8
  br label %24

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24, %15
  br label %26

26:                                               ; preds = %25, %6
  %27 = load double, double* %3, align 8
  ret double %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
