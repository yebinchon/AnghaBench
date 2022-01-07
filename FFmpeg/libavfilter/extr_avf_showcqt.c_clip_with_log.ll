; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_clip_with_log.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_clip_with_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"[%d] %s is nan, setting it to %g.\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"[%d] %s is too low (%g), setting it to %g.\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"[%d] %s it too high (%g), setting it to %g.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*, i8*, double, double, double, double, i32)* @clip_with_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @clip_with_log(i8* %0, i8* %1, double %2, double %3, double %4, double %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* @AV_LOG_WARNING, align 4
  store i32 %16, i32* %15, align 4
  %17 = load double, double* %10, align 8
  %18 = call i64 @isnan(double %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %7
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = load double, double* %13, align 8
  %26 = call i32 (i8*, i32, i8*, i32, i8*, double, ...) @av_log(i8* %21, i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24, double %25)
  %27 = load double, double* %13, align 8
  store double %27, double* %10, align 8
  br label %56

28:                                               ; preds = %7
  %29 = load double, double* %10, align 8
  %30 = load double, double* %11, align 8
  %31 = fcmp olt double %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load double, double* %10, align 8
  %38 = load double, double* %11, align 8
  %39 = call i32 (i8*, i32, i8*, i32, i8*, double, ...) @av_log(i8* %33, i32 %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %35, i8* %36, double %37, double %38)
  %40 = load double, double* %11, align 8
  store double %40, double* %10, align 8
  br label %55

41:                                               ; preds = %28
  %42 = load double, double* %10, align 8
  %43 = load double, double* %12, align 8
  %44 = fcmp ogt double %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load double, double* %10, align 8
  %51 = load double, double* %12, align 8
  %52 = call i32 (i8*, i32, i8*, i32, i8*, double, ...) @av_log(i8* %46, i32 %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %48, i8* %49, double %50, double %51)
  %53 = load double, double* %12, align 8
  store double %53, double* %10, align 8
  br label %54

54:                                               ; preds = %45, %41
  br label %55

55:                                               ; preds = %54, %32
  br label %56

56:                                               ; preds = %55, %20
  %57 = load double, double* %10, align 8
  ret double %57
}

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i32, i8*, double, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
