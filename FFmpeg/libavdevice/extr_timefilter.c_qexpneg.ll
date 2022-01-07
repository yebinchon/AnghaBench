; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_timefilter.c_qexpneg.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_timefilter.c_qexpneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @qexpneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @qexpneg(double %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = load double, double* %2, align 8
  %5 = fdiv double %4, 2.000000e+00
  %6 = load double, double* %2, align 8
  %7 = fdiv double %6, 3.000000e+00
  %8 = fadd double 1.000000e+00, %7
  %9 = fmul double %5, %8
  %10 = fadd double 1.000000e+00, %9
  %11 = fmul double %3, %10
  %12 = fadd double 1.000000e+00, %11
  %13 = fdiv double 1.000000e+00, %12
  %14 = fsub double 1.000000e+00, %13
  ret double %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
