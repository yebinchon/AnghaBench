; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_color_utils.c_avpriv_trc_bt1361.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_color_utils.c_avpriv_trc_bt1361.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BT709_alpha = common dso_local global double 0.000000e+00, align 8
@BT709_beta = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @avpriv_trc_bt1361 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @avpriv_trc_bt1361(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %2, align 8
  %5 = load double, double* @BT709_alpha, align 8
  store double %5, double* %3, align 8
  %6 = load double, double* @BT709_beta, align 8
  store double %6, double* %4, align 8
  %7 = load double, double* %2, align 8
  %8 = fcmp oge double -4.500000e-03, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load double, double* %3, align 8
  %11 = load double, double* %2, align 8
  %12 = fmul double -4.000000e+00, %11
  %13 = call double @pow(double %12, double 4.500000e-01)
  %14 = fmul double %10, %13
  %15 = load double, double* %3, align 8
  %16 = fsub double %15, 1.000000e+00
  %17 = fadd double %14, %16
  %18 = fneg double %17
  %19 = fdiv double %18, 4.000000e+00
  br label %37

20:                                               ; preds = %1
  %21 = load double, double* %4, align 8
  %22 = load double, double* %2, align 8
  %23 = fcmp ogt double %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load double, double* %2, align 8
  %26 = fmul double 4.500000e+00, %25
  br label %35

27:                                               ; preds = %20
  %28 = load double, double* %3, align 8
  %29 = load double, double* %2, align 8
  %30 = call double @pow(double %29, double 4.500000e-01)
  %31 = fmul double %28, %30
  %32 = load double, double* %3, align 8
  %33 = fsub double %32, 1.000000e+00
  %34 = fsub double %31, %33
  br label %35

35:                                               ; preds = %27, %24
  %36 = phi double [ %26, %24 ], [ %34, %27 ]
  br label %37

37:                                               ; preds = %35, %9
  %38 = phi double [ %19, %9 ], [ %36, %35 ]
  ret double %38
}

declare dso_local double @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
