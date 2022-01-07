; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_color_utils.c_avpriv_trc_smpte_st2084.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_color_utils.c_avpriv_trc_smpte_st2084.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @avpriv_trc_smpte_st2084 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @avpriv_trc_smpte_st2084(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double %0, double* %2, align 8
  store double 0x3FEAC00000000000, double* %3, align 8
  store double 0x4032DA0000000000, double* %4, align 8
  store double 1.868750e+01, double* %5, align 8
  store double 0x4053B60000000000, double* %6, align 8
  store double 0x3FC4640000000000, double* %7, align 8
  %10 = load double, double* %2, align 8
  %11 = fdiv double %10, 1.000000e+04
  store double %11, double* %8, align 8
  %12 = load double, double* %8, align 8
  %13 = call double @pow(double %12, double 0x3FC4640000000000) #2
  store double %13, double* %9, align 8
  %14 = load double, double* %2, align 8
  %15 = fcmp ogt double 0.000000e+00, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %26

17:                                               ; preds = %1
  %18 = load double, double* %9, align 8
  %19 = fmul double 0x4032DA0000000000, %18
  %20 = fadd double 0x3FEAC00000000000, %19
  %21 = load double, double* %9, align 8
  %22 = fmul double 1.868750e+01, %21
  %23 = fadd double 1.000000e+00, %22
  %24 = fdiv double %20, %23
  %25 = call double @pow(double %24, double 0x4053B60000000000) #2
  br label %26

26:                                               ; preds = %17, %16
  %27 = phi double [ 0.000000e+00, %16 ], [ %25, %17 ]
  ret double %27
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
