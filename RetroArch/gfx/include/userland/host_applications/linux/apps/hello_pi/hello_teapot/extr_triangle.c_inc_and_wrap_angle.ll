; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_teapot/extr_triangle.c_inc_and_wrap_angle.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_teapot/extr_triangle.c_inc_and_wrap_angle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double)* @inc_and_wrap_angle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @inc_and_wrap_angle(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %4, align 8
  %6 = load double, double* %3, align 8
  %7 = fadd double %6, %5
  store double %7, double* %3, align 8
  %8 = load double, double* %3, align 8
  %9 = fcmp oge double %8, 3.600000e+02
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load double, double* %3, align 8
  %12 = fsub double %11, 3.600000e+02
  store double %12, double* %3, align 8
  br label %20

13:                                               ; preds = %2
  %14 = load double, double* %3, align 8
  %15 = fcmp ole double %14, 0.000000e+00
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load double, double* %3, align 8
  %18 = fadd double %17, 3.600000e+02
  store double %18, double* %3, align 8
  br label %19

19:                                               ; preds = %16, %13
  br label %20

20:                                               ; preds = %19, %10
  %21 = load double, double* %3, align 8
  ret double %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
