; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_xy_to_upvp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_xy_to_upvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, double, double*, double*)* @xy_to_upvp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xy_to_upvp(double %0, double %1, double* %2, double* %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %9 = load double, double* %5, align 8
  %10 = fmul double 4.000000e+00, %9
  %11 = load double, double* %5, align 8
  %12 = fmul double -2.000000e+00, %11
  %13 = load double, double* %6, align 8
  %14 = fmul double 1.200000e+01, %13
  %15 = fadd double %12, %14
  %16 = fadd double %15, 3.000000e+00
  %17 = fdiv double %10, %16
  %18 = load double*, double** %7, align 8
  store double %17, double* %18, align 8
  %19 = load double, double* %6, align 8
  %20 = fmul double 9.000000e+00, %19
  %21 = load double, double* %5, align 8
  %22 = fmul double -2.000000e+00, %21
  %23 = load double, double* %6, align 8
  %24 = fmul double 1.200000e+01, %23
  %25 = fadd double %22, %24
  %26 = fadd double %25, 3.000000e+00
  %27 = fdiv double %20, %26
  %28 = load double*, double** %8, align 8
  store double %27, double* %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
