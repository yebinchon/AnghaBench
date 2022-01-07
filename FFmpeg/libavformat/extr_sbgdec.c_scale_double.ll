; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_scale_double.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_scale_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SBG_SCALE = common dso_local global double 0.000000e+00, align 8
@INT_MIN = common dso_local global double 0.000000e+00, align 8
@INT_MAX = common dso_local global double 0.000000e+00, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%g is too large\0A\00", align 1
@EDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, double, double, i32*)* @scale_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scale_double(i8* %0, double %1, double %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load double, double* %7, align 8
  %11 = load double, double* @SBG_SCALE, align 8
  %12 = fmul double %10, %11
  %13 = load double, double* %8, align 8
  %14 = fmul double %13, %12
  store double %14, double* %8, align 8
  %15 = load double, double* %8, align 8
  %16 = load double, double* @INT_MIN, align 8
  %17 = fcmp olt double %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load double, double* %8, align 8
  %20 = load double, double* @INT_MAX, align 8
  %21 = fcmp oge double %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18, %4
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @AV_LOG_ERROR, align 4
  %28 = load double, double* %7, align 8
  %29 = call i32 @av_log(i8* %26, i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), double %28)
  br label %30

30:                                               ; preds = %25, %22
  %31 = load i32, i32* @EDOM, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %5, align 4
  br label %37

33:                                               ; preds = %18
  %34 = load double, double* %8, align 8
  %35 = fptosi double %34 to i32
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @av_log(i8*, i32, i8*, double) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
