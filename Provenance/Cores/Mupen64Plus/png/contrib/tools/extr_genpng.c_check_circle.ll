; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_check_circle.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_check_circle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg = type { i32 }

@FILTER_WIDTH = common dso_local global double 0.000000e+00, align 8
@INSIDE = common dso_local global i32 0, align 4
@OUTSIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arg*, double, double)* @check_circle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_circle(%struct.arg* %0, double %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arg*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.arg* %0, %struct.arg** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %9 = load %struct.arg*, %struct.arg** %5, align 8
  %10 = getelementptr inbounds %struct.arg, %struct.arg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %11, 2
  %13 = sitofp i32 %12 to double
  store double %13, double* %8, align 8
  %14 = load %struct.arg*, %struct.arg** %5, align 8
  %15 = load double, double* %6, align 8
  %16 = load double, double* %7, align 8
  %17 = load double, double* %8, align 8
  %18 = load double, double* @FILTER_WIDTH, align 8
  %19 = fadd double %17, %18
  %20 = call i64 @circle_check_line(%struct.arg* %14, double %15, double %16, double %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %3
  %23 = load double, double* @FILTER_WIDTH, align 8
  %24 = load double, double* %8, align 8
  %25 = fsub double %24, %23
  store double %25, double* %8, align 8
  %26 = load double, double* %8, align 8
  %27 = fcmp ogt double %26, 0.000000e+00
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.arg*, %struct.arg** %5, align 8
  %30 = load double, double* %6, align 8
  %31 = load double, double* %7, align 8
  %32 = load double, double* %8, align 8
  %33 = call i64 @circle_check_line(%struct.arg* %29, double %30, double %31, double %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @INSIDE, align 4
  store i32 %36, i32* %4, align 4
  br label %40

37:                                               ; preds = %28, %22
  store i32 0, i32* %4, align 4
  br label %40

38:                                               ; preds = %3
  %39 = load i32, i32* @OUTSIDE, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %37, %35
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @circle_check_line(%struct.arg*, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
