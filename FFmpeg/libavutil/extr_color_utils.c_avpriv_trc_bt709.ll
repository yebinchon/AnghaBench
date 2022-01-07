; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_color_utils.c_avpriv_trc_bt709.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_color_utils.c_avpriv_trc_bt709.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BT709_alpha = common dso_local global double 0.000000e+00, align 8
@BT709_beta = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @avpriv_trc_bt709 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @avpriv_trc_bt709(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %2, align 8
  %5 = load double, double* @BT709_alpha, align 8
  store double %5, double* %3, align 8
  %6 = load double, double* @BT709_beta, align 8
  store double %6, double* %4, align 8
  %7 = load double, double* %2, align 8
  %8 = fcmp ogt double 0.000000e+00, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %27

10:                                               ; preds = %1
  %11 = load double, double* %4, align 8
  %12 = load double, double* %2, align 8
  %13 = fcmp ogt double %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load double, double* %2, align 8
  %16 = fmul double 4.500000e+00, %15
  br label %25

17:                                               ; preds = %10
  %18 = load double, double* %3, align 8
  %19 = load double, double* %2, align 8
  %20 = call double @pow(double %19, double 4.500000e-01)
  %21 = fmul double %18, %20
  %22 = load double, double* %3, align 8
  %23 = fsub double %22, 1.000000e+00
  %24 = fsub double %21, %23
  br label %25

25:                                               ; preds = %17, %14
  %26 = phi double [ %16, %14 ], [ %24, %17 ]
  br label %27

27:                                               ; preds = %25, %9
  %28 = phi double [ 0.000000e+00, %9 ], [ %26, %25 ]
  ret double %28
}

declare dso_local double @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
