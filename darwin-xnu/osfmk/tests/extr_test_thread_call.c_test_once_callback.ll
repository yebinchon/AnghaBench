; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_test_thread_call.c_test_once_callback.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_test_thread_call.c_test_once_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_ARG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"param0 is correct\00", align 1
@TEST_ARG2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"param1 is correct\00", align 1
@once_callback_counter = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"only one callback\00", align 1
@test_lock = common dso_local global i32 0, align 4
@wait_for_callback = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@LCK_SLEEP_DEFAULT = common dso_local global i32 0, align 4
@wait_for_main = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c" callback woken by main function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @test_once_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_once_callback(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @TEST_ARG1, align 4
  %10 = call i32 @T_ASSERT_EQ_INT(i32 %8, i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %4, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @TEST_ARG2, align 4
  %14 = call i32 @T_ASSERT_EQ_INT(i32 %12, i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @once_callback_counter, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @once_callback_counter, align 4
  %17 = load i32, i32* @once_callback_counter, align 4
  %18 = call i32 @T_ASSERT_EQ_INT(i32 %17, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @lck_mtx_lock(i32* @test_lock)
  %20 = call i32 @thread_wakeup(i32* @wait_for_callback)
  %21 = load i32, i32* @NSEC_PER_SEC, align 4
  %22 = call i32 @clock_interval_to_deadline(i32 10, i32 %21, i32* %5)
  %23 = load i32, i32* @LCK_SLEEP_DEFAULT, align 4
  %24 = load i32, i32* @THREAD_UNINT, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @lck_mtx_sleep_deadline(i32* @test_lock, i32 %23, i32* @wait_for_main, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @THREAD_AWAKENED, align 4
  %29 = call i32 @T_ASSERT_EQ_INT(i32 %27, i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32 @lck_mtx_unlock(i32* @test_lock)
  %31 = load i32, i32* @NSEC_PER_SEC, align 4
  %32 = call i32 @delay_for_interval(i32 1, i32 %31)
  ret void
}

declare dso_local i32 @T_ASSERT_EQ_INT(i32, i32, i8*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @thread_wakeup(i32*) #1

declare dso_local i32 @clock_interval_to_deadline(i32, i32, i32*) #1

declare dso_local i32 @lck_mtx_sleep_deadline(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @delay_for_interval(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
