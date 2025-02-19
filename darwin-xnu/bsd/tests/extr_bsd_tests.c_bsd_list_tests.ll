; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/tests/extr_bsd_tests.c_bsd_list_tests.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/tests/extr_bsd_tests.c_bsd_list_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel_post_args = common dso_local global i64 0, align 8
@last_loaded_timestamp = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"bsd_list_tests:INFO waiting for %d usecs\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"bsd_list_tests: prev: %llu current: %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"bsd_list_tests: WARNING: Waiting beyond normal time for stabilizing kext loading\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"bsd_list_tests: INFO: no new kexts loaded. remaining checks: %d\0A\00", align 1
@bsd_post_tests = common dso_local global i32 0, align 4
@bsd_post_tests_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bsd_list_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* @kernel_post_args, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %43

9:                                                ; preds = %0
  %10 = load i64, i64* @last_loaded_timestamp, align 8
  store i64 %10, i64* %2, align 8
  store i32 5, i32* %3, align 4
  store i32 15, i32* %4, align 4
  store i32 300000, i32* %5, align 4
  br label %11

11:                                               ; preds = %37, %9
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @last_loaded_timestamp, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %17, i64 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @delay(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0))
  br label %39

28:                                               ; preds = %14
  %29 = load i64, i64* %2, align 8
  %30 = load i64, i64* @last_loaded_timestamp, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i64, i64* @last_loaded_timestamp, align 8
  store i64 %38, i64* %2, align 8
  br label %11

39:                                               ; preds = %26, %11
  %40 = load i32, i32* @bsd_post_tests, align 4
  %41 = load i32, i32* @bsd_post_tests_count, align 4
  %42 = call i32 @xnupost_list_tests(i32 %40, i32 %41)
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %39, %8
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @xnupost_list_tests(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
