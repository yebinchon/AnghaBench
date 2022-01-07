; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_formats.c_ff_parse_sample_rate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_formats.c_ff_parse_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global double 0.000000e+00, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid sample rate '%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_parse_sample_rate(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call double @av_strtod(i8* %10, i8** %8)
  store double %11, double* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %3
  %17 = load double, double* %9, align 8
  %18 = fcmp olt double %17, 1.000000e+00
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = load double, double* %9, align 8
  %21 = fptosi double %20 to i32
  %22 = sitofp i32 %21 to double
  %23 = load double, double* %9, align 8
  %24 = fcmp une double %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load double, double* %9, align 8
  %27 = load double, double* @INT_MAX, align 8
  %28 = fcmp ogt double %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25, %19, %16, %3
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @av_log(i8* %30, i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = call i32 @AVERROR(i32 %34)
  store i32 %35, i32* %4, align 4
  br label %40

36:                                               ; preds = %25
  %37 = load double, double* %9, align 8
  %38 = fptosi double %37 to i32
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local double @av_strtod(i8*, i8**) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
