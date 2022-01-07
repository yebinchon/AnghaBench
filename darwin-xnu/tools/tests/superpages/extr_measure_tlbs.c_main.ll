; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_measure_tlbs.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_measure_tlbs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [98 x i8] c"; m0 r s; m0 r b; m0 w s; m0 w b; m1 r s; m1 r b; m1 w s; m1 w b; m2 r s; m2 r b; m2 w s; m2 w b\0A\00", align 1
@START = common dso_local global i32 0, align 4
@MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"; %lld; %lld; %lld; %lld\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@STEP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @START, align 4
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %53, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MAX, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %48, %18
  %22 = load i32, i32* %11, align 4
  %23 = icmp sle i32 %22, 2
  br i1 %23, label %24, label %51

24:                                               ; preds = %21
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %7, align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @testt(i32 %25, i32 %26, i32 0, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @testt(i32 %29, i32 %30, i32 0, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @TRUE, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @testt(i32 %33, i32 %34, i32 1, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @testt(i32 %37, i32 %38, i32 1, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @stdout, align 4
  %47 = call i32 @fflush(i32 %46)
  br label %48

48:                                               ; preds = %24
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %21

51:                                               ; preds = %21
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51
  %54 = load i64, i64* @STEP, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %6, align 4
  br label %14

59:                                               ; preds = %14
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @testt(i32, i32, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
