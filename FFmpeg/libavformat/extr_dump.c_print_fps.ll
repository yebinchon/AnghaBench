; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dump.c_print_fps.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dump.c_print_fps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%1.4f %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%3.2f %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%1.0f %s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%1.0fk %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, i8*)* @print_fps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_fps(double %0, i8* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load double, double* %3, align 8
  %7 = fmul double %6, 1.000000e+02
  %8 = call i32 @lrintf(double %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @AV_LOG_INFO, align 4
  %13 = load double, double* %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @av_log(i32* null, i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %13, i8* %14)
  br label %42

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = srem i32 %17, 100
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* @AV_LOG_INFO, align 4
  %22 = load double, double* %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @av_log(i32* null, i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), double %22, i8* %23)
  br label %41

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = srem i32 %26, 100000
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* @AV_LOG_INFO, align 4
  %31 = load double, double* %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @av_log(i32* null, i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), double %31, i8* %32)
  br label %40

34:                                               ; preds = %25
  %35 = load i32, i32* @AV_LOG_INFO, align 4
  %36 = load double, double* %3, align 8
  %37 = fdiv double %36, 1.000000e+03
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @av_log(i32* null, i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), double %37, i8* %38)
  br label %40

40:                                               ; preds = %34, %29
  br label %41

41:                                               ; preds = %40, %20
  br label %42

42:                                               ; preds = %41, %11
  ret void
}

declare dso_local i32 @lrintf(double) #1

declare dso_local i32 @av_log(i32*, i32, i8*, double, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
