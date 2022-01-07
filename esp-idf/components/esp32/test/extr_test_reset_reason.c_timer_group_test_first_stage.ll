; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_reset_reason.c_timer_group_test_first_stage.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_reset_reason.c_timer_group_test_first_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POWERON_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Not power on reset\0A\00", align 1
@timer_group_test_first_stage.loop_cnt = internal global i64 0, align 8
@TIMER_GROUP_0 = common dso_local global i32 0, align 4
@TIMER_0 = common dso_local global i32 0, align 4
@TIMER_INTR_T0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @timer_group_test_first_stage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_group_test_first_stage() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 @rtc_get_reset_reason(i32 0)
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @POWERON_RESET, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i64, i64* @POWERON_RESET, align 8
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @TEST_ASSERT_EQUAL(i64 %9, i64 %10)
  %12 = call i32 (...) @timer_group_test_init()
  %13 = load i32, i32* @TIMER_GROUP_0, align 4
  %14 = load i32, i32* @TIMER_0, align 4
  %15 = call i32 @timer_start(i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %28, %8
  %17 = load i32, i32* @TIMER_GROUP_0, align 4
  %18 = call i32 @timer_group_intr_get_in_isr(i32 %17)
  %19 = load i32, i32* @TIMER_INTR_T0, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* @timer_group_test_first_stage.loop_cnt, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* @timer_group_test_first_stage.loop_cnt, align 8
  %25 = icmp slt i64 %23, 100
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i1 [ false, %16 ], [ %25, %22 ]
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = call i32 @vTaskDelay(i32 200)
  br label %16

30:                                               ; preds = %26
  %31 = load i32, i32* @TIMER_GROUP_0, align 4
  %32 = call i32 @timer_group_intr_get_in_isr(i32 %31)
  %33 = load i32, i32* @TIMER_INTR_T0, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @TEST_ASSERT(i32 %34)
  %36 = call i32 (...) @esp_restart()
  ret void
}

declare dso_local i64 @rtc_get_reset_reason(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i64, i64) #1

declare dso_local i32 @timer_group_test_init(...) #1

declare dso_local i32 @timer_start(i32, i32) #1

declare dso_local i32 @timer_group_intr_get_in_isr(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @esp_restart(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
