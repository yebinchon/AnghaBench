; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_test_thread_call.c_test_once_thread_call.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_test_thread_call.c_test_once_thread_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_lock_grp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"test_thread_call\00", align 1
@LCK_GRP_ATTR_NULL = common dso_local global i32 0, align 4
@test_lock = common dso_local global i32 0, align 4
@LCK_ATTR_NULL = common dso_local global i32 0, align 4
@test_once_callback = common dso_local global i32 0, align 4
@TEST_ARG1 = common dso_local global i64 0, align 8
@THREAD_CALL_PRIORITY_HIGH = common dso_local global i32 0, align 4
@THREAD_CALL_OPTIONS_ONCE = common dso_local global i32 0, align 4
@TEST_ARG2 = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@LCK_SLEEP_DEFAULT = common dso_local global i32 0, align 4
@wait_for_callback = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"main function woken by callback\00", align 1
@once_callback_counter = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"callback fired\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"thread_call_cancel should not succeed\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"call should not be pending\00", align 1
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"thread_call_cancel should succeed\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"thread_call_free should not succeed\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"call should be pending\00", align 1
@wait_for_main = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"thread_call_cancel_wait should succeed\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"thread_call_free should succeed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_once_thread_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_once_thread_call() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @LCK_GRP_ATTR_NULL, align 4
  %9 = call i32 @lck_grp_init(i32* @test_lock_grp, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @LCK_ATTR_NULL, align 4
  %11 = call i32 @lck_mtx_init(i32* @test_lock, i32* @test_lock_grp, i32 %10)
  %12 = load i64, i64* @TEST_ARG1, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @THREAD_CALL_PRIORITY_HIGH, align 4
  %15 = load i32, i32* @THREAD_CALL_OPTIONS_ONCE, align 4
  %16 = call i32 @thread_call_allocate_with_options(i32* @test_once_callback, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %1, align 4
  %17 = load i64, i64* @TEST_ARG2, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %2, align 4
  %19 = call i32 @lck_mtx_lock(i32* @test_lock)
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @thread_call_enter1(i32 %20, i32 %21)
  %23 = load i32, i32* @NSEC_PER_SEC, align 4
  %24 = call i32 @clock_interval_to_deadline(i32 10, i32 %23, i32* %3)
  %25 = load i32, i32* @LCK_SLEEP_DEFAULT, align 4
  %26 = load i32, i32* @THREAD_UNINT, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @lck_mtx_sleep_deadline(i32* @test_lock, i32 %25, i32* @wait_for_callback, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @THREAD_AWAKENED, align 4
  %31 = call i32 @T_ASSERT_EQ_INT(i32 %29, i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @lck_mtx_unlock(i32* @test_lock)
  %33 = load i32, i32* @once_callback_counter, align 4
  %34 = call i32 @T_ASSERT_EQ_INT(i32 %33, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @thread_call_cancel(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i32 @T_ASSERT_EQ_INT(i32 %37, i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @thread_call_enter1(i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @T_ASSERT_EQ_INT(i32 %43, i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i32, i32* @NSEC_PER_MSEC, align 4
  %47 = call i32 @delay_for_interval(i32 10, i32 %46)
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @thread_call_cancel(i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @TRUE, align 4
  %52 = call i32 @T_ASSERT_EQ_INT(i32 %50, i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @thread_call_enter1(i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i32 @T_ASSERT_EQ_INT(i32 %56, i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @thread_call_free(i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @FALSE, align 4
  %63 = call i32 @T_ASSERT_EQ_INT(i32 %61, i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @thread_call_enter1(i32 %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i32 @T_ASSERT_EQ_INT(i32 %67, i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %70 = call i32 @thread_wakeup(i32* @wait_for_main)
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @thread_call_cancel_wait(i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @TRUE, align 4
  %75 = call i32 @T_ASSERT_EQ_INT(i32 %73, i32 %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %76 = load i32, i32* %1, align 4
  %77 = call i32 @thread_call_cancel(i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @FALSE, align 4
  %80 = call i32 @T_ASSERT_EQ_INT(i32 %78, i32 %79, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* %1, align 4
  %82 = call i32 @thread_call_free(i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @TRUE, align 4
  %85 = call i32 @T_ASSERT_EQ_INT(i32 %83, i32 %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @lck_grp_init(i32*, i8*, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32*, i32) #1

declare dso_local i32 @thread_call_allocate_with_options(i32*, i32, i32, i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @thread_call_enter1(i32, i32) #1

declare dso_local i32 @clock_interval_to_deadline(i32, i32, i32*) #1

declare dso_local i32 @lck_mtx_sleep_deadline(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @T_ASSERT_EQ_INT(i32, i32, i8*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @thread_call_cancel(i32) #1

declare dso_local i32 @delay_for_interval(i32, i32) #1

declare dso_local i32 @thread_call_free(i32) #1

declare dso_local i32 @thread_wakeup(i32*) #1

declare dso_local i32 @thread_call_cancel_wait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
