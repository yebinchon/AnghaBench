; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_color_utils.c_avpriv_trc_iec61966_2_1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_color_utils.c_avpriv_trc_iec61966_2_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @avpriv_trc_iec61966_2_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @avpriv_trc_iec61966_2_1(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %2, align 8
  store double 1.055000e+00, double* %3, align 8
  store double 3.130800e-03, double* %4, align 8
  %5 = load double, double* %2, align 8
  %6 = fcmp ogt double 0.000000e+00, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  %9 = load double, double* %2, align 8
  %10 = fcmp ogt double 3.130800e-03, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load double, double* %2, align 8
  %13 = fmul double 1.292000e+01, %12
  br label %19

14:                                               ; preds = %8
  %15 = load double, double* %2, align 8
  %16 = call double @pow(double %15, double 0x3FDAAAAAAAAAAAAB)
  %17 = fmul double 1.055000e+00, %16
  %18 = fsub double %17, 0x3FAC28F5C28F5C20
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi double [ %13, %11 ], [ %18, %14 ]
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi double [ 0.000000e+00, %7 ], [ %20, %19 ]
  ret double %22
}

declare dso_local double @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
