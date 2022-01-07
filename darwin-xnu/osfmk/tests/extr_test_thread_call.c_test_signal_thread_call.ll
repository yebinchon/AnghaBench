; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_test_thread_call.c_test_signal_thread_call.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_test_thread_call.c_test_signal_thread_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_signal_callback = common dso_local global i32 0, align 4
@TEST_ARG1 = common dso_local global i64 0, align 8
@THREAD_CALL_PRIORITY_HIGH = common dso_local global i32 0, align 4
@THREAD_CALL_OPTIONS_ONCE = common dso_local global i32 0, align 4
@THREAD_CALL_OPTIONS_SIGNAL = common dso_local global i32 0, align 4
@TEST_ARG2 = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"call should not be pending\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"thread_call_cancel should succeed\00", align 1
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@signal_callback_counter = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"callback fired\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"thread_call_cancel should not succeed\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"thread_call_free should succeed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_signal_thread_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_signal_thread_call() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i64, i64* @TEST_ARG1, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @THREAD_CALL_PRIORITY_HIGH, align 4
  %10 = load i32, i32* @THREAD_CALL_OPTIONS_ONCE, align 4
  %11 = load i32, i32* @THREAD_CALL_OPTIONS_SIGNAL, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @thread_call_allocate_with_options(i32* @test_signal_callback, i32 %8, i32 %9, i32 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i64, i64* @TEST_ARG2, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* @NSEC_PER_SEC, align 4
  %17 = call i32 @clock_interval_to_deadline(i32 10, i32 %16, i32* %3)
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @thread_call_enter1_delayed(i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @T_ASSERT_EQ_INT(i32 %22, i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @thread_call_cancel(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i32 @T_ASSERT_EQ_INT(i32 %27, i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @NSEC_PER_MSEC, align 4
  %31 = call i32 @clock_interval_to_deadline(i32 10, i32 %30, i32* %3)
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @thread_call_enter1_delayed(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i32 @T_ASSERT_EQ_INT(i32 %36, i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @NSEC_PER_MSEC, align 4
  %40 = call i32 @delay_for_interval(i32 50, i32 %39)
  %41 = load i32, i32* @signal_callback_counter, align 4
  %42 = call i32 @T_ASSERT_EQ_INT(i32 %41, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @thread_call_cancel(i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @T_ASSERT_EQ_INT(i32 %45, i32 %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @thread_call_free(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @TRUE, align 4
  %52 = call i32 @T_ASSERT_EQ_INT(i32 %50, i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @thread_call_allocate_with_options(i32*, i32, i32, i32) #1

declare dso_local i32 @clock_interval_to_deadline(i32, i32, i32*) #1

declare dso_local i32 @thread_call_enter1_delayed(i32, i32, i32) #1

declare dso_local i32 @T_ASSERT_EQ_INT(i32, i32, i8*) #1

declare dso_local i32 @thread_call_cancel(i32) #1

declare dso_local i32 @delay_for_interval(i32, i32) #1

declare dso_local i32 @thread_call_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
