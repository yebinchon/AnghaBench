; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..locationdriversnulllocation.c_null_location_get_position.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..locationdriversnulllocation.c_null_location_get_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, double*, double*, double*, double*)* @null_location_get_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_location_get_position(i8* %0, double* %1, double* %2, double* %3, double* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  store i8* %0, i8** %6, align 8
  store double* %1, double** %7, align 8
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  store double* %4, double** %10, align 8
  %11 = load double*, double** %7, align 8
  store double 0.000000e+00, double* %11, align 8
  %12 = load double*, double** %8, align 8
  store double 0.000000e+00, double* %12, align 8
  %13 = load double*, double** %9, align 8
  store double 0.000000e+00, double* %13, align 8
  %14 = load double*, double** %10, align 8
  store double 0.000000e+00, double* %14, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
