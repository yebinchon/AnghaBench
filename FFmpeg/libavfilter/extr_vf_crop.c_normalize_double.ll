; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_crop.c_normalize_double.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_crop.c_normalize_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global double 0.000000e+00, align 8
@INT_MIN = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, double)* @normalize_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @normalize_double(i32* %0, double %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store double %1, double* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load double, double* %4, align 8
  %7 = call i64 @isnan(double %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = call i32 @AVERROR(i32 %10)
  store i32 %11, i32* %5, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load double, double* %4, align 8
  %14 = load double, double* @INT_MAX, align 8
  %15 = fcmp ogt double %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load double, double* %4, align 8
  %18 = load double, double* @INT_MIN, align 8
  %19 = fcmp olt double %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16, %12
  %21 = load double, double* %4, align 8
  %22 = load double, double* @INT_MAX, align 8
  %23 = fcmp ogt double %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load double, double* @INT_MAX, align 8
  br label %28

26:                                               ; preds = %20
  %27 = load double, double* @INT_MIN, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi double [ %25, %24 ], [ %27, %26 ]
  %30 = fptosi double %29 to i32
  %31 = load i32*, i32** %3, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %5, align 4
  br label %38

34:                                               ; preds = %16
  %35 = load double, double* %4, align 8
  %36 = call i32 @lrint(double %35)
  %37 = load i32*, i32** %3, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %28
  br label %39

39:                                               ; preds = %38, %9
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @lrint(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
