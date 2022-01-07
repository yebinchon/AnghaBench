; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/unit-test-app/components/test_utils/extr_test_runner.c_check_leak.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/unit-test-app/components/test_utils/extr_test_runner.c_check_leak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@warn_leak_threshold = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"MALLOC_CAP_%s %s leak: Before %u bytes free, After %u bytes free (delta %u)\0A\00", align 1
@critical_leak_threshold = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"potential\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"The test leaked too much memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i8*)* @check_leak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_leak(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ule i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %38

12:                                               ; preds = %3
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = sub i64 %13, %14
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @warn_leak_threshold, align 8
  %18 = icmp ule i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %38

20:                                               ; preds = %12
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @critical_leak_threshold, align 8
  %24 = icmp ule i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %26, i64 %27, i64 %28, i64 %29)
  %31 = load i32, i32* @stdout, align 4
  %32 = call i32 @fflush(i32 %31)
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @critical_leak_threshold, align 8
  %35 = icmp ule i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @TEST_ASSERT_MESSAGE(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %20, %19, %11
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, i64, i64, i64) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @TEST_ASSERT_MESSAGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
