; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_color_utils.c_avpriv_trc_arib_std_b67.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_color_utils.c_avpriv_trc_arib_std_b67.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @avpriv_trc_arib_std_b67 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @avpriv_trc_arib_std_b67(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %2, align 8
  store double 0x3FC6E3FE014D320D, double* %3, align 8
  store double 0x3FD23803FD659BE6, double* %4, align 8
  store double 0x3FE1EAC9E840F18D, double* %5, align 8
  %6 = load double, double* %2, align 8
  %7 = fcmp ogt double 0.000000e+00, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %25

9:                                                ; preds = %1
  %10 = load double, double* %2, align 8
  %11 = fcmp ole double %10, 0x3FB5555555555555
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load double, double* %2, align 8
  %14 = fmul double 3.000000e+00, %13
  %15 = call double @sqrt(double %14) #3
  br label %23

16:                                               ; preds = %9
  %17 = load double, double* %2, align 8
  %18 = fmul double 1.200000e+01, %17
  %19 = fsub double %18, 0x3FD23803FD659BE6
  %20 = call double @log(double %19)
  %21 = fmul double 0x3FC6E3FE014D320D, %20
  %22 = fadd double %21, 0x3FE1EAC9E840F18D
  br label %23

23:                                               ; preds = %16, %12
  %24 = phi double [ %15, %12 ], [ %22, %16 ]
  br label %25

25:                                               ; preds = %23, %8
  %26 = phi double [ 0.000000e+00, %8 ], [ %24, %23 ]
  ret double %26
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

declare dso_local double @log(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
