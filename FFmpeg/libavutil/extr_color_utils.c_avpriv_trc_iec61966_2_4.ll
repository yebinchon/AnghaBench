; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_color_utils.c_avpriv_trc_iec61966_2_4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_color_utils.c_avpriv_trc_iec61966_2_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BT709_alpha = common dso_local global double 0.000000e+00, align 8
@BT709_beta = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @avpriv_trc_iec61966_2_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @avpriv_trc_iec61966_2_4(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %2, align 8
  %5 = load double, double* @BT709_alpha, align 8
  store double %5, double* %3, align 8
  %6 = load double, double* @BT709_beta, align 8
  store double %6, double* %4, align 8
  %7 = load double, double* %4, align 8
  %8 = fneg double %7
  %9 = load double, double* %2, align 8
  %10 = fcmp oge double %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load double, double* %3, align 8
  %13 = fneg double %12
  %14 = load double, double* %2, align 8
  %15 = fneg double %14
  %16 = call double @pow(double %15, double 4.500000e-01)
  %17 = fmul double %13, %16
  %18 = load double, double* %3, align 8
  %19 = fsub double %18, 1.000000e+00
  %20 = fadd double %17, %19
  br label %38

21:                                               ; preds = %1
  %22 = load double, double* %4, align 8
  %23 = load double, double* %2, align 8
  %24 = fcmp ogt double %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load double, double* %2, align 8
  %27 = fmul double 4.500000e+00, %26
  br label %36

28:                                               ; preds = %21
  %29 = load double, double* %3, align 8
  %30 = load double, double* %2, align 8
  %31 = call double @pow(double %30, double 4.500000e-01)
  %32 = fmul double %29, %31
  %33 = load double, double* %3, align 8
  %34 = fsub double %33, 1.000000e+00
  %35 = fsub double %32, %34
  br label %36

36:                                               ; preds = %28, %25
  %37 = phi double [ %27, %25 ], [ %35, %28 ]
  br label %38

38:                                               ; preds = %36, %11
  %39 = phi double [ %20, %11 ], [ %37, %36 ]
  ret double %39
}

declare dso_local double @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
