; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_lpc.c_FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_lpc.c_FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_LN2 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @FLAC__lpc_compute_expected_bits_per_residual_sample_with_error_scale(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %7 = load double, double* %4, align 8
  %8 = fcmp ogt double %7, 0.000000e+00
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load double, double* %5, align 8
  %11 = load double, double* %4, align 8
  %12 = fmul double %10, %11
  %13 = call double @log(double %12) #2
  %14 = fmul double 5.000000e-01, %13
  %15 = load double, double* @M_LN2, align 8
  %16 = fdiv double %14, %15
  store double %16, double* %6, align 8
  %17 = load double, double* %6, align 8
  %18 = fcmp oge double %17, 0.000000e+00
  br i1 %18, label %19, label %21

19:                                               ; preds = %9
  %20 = load double, double* %6, align 8
  store double %20, double* %3, align 8
  br label %27

21:                                               ; preds = %9
  store double 0.000000e+00, double* %3, align 8
  br label %27

22:                                               ; preds = %2
  %23 = load double, double* %4, align 8
  %24 = fcmp olt double %23, 0.000000e+00
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store double 1.000000e+32, double* %3, align 8
  br label %27

26:                                               ; preds = %22
  store double 0.000000e+00, double* %3, align 8
  br label %27

27:                                               ; preds = %26, %25, %21, %19
  %28 = load double, double* %3, align 8
  ret double %28
}

; Function Attrs: nounwind
declare dso_local double @log(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
