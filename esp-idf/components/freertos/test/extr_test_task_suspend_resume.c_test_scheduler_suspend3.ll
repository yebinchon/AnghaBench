; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/test/extr_test_task_suspend_resume.c_test_scheduler_suspend3.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/test/extr_test_task_suspend_resume.c_test_scheduler_suspend3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@duration_timer_ms = common dso_local global i32 0, align 4
@duration_ctrl_task_ms = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Test for CPU%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"count_time\00", align 1
@pdTRUE = common dso_local global i32 0, align 4
@timer_callback = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@control_task = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"control_task\00", align 1
@waiting_ms = common dso_local global i32 0, align 4
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Finish duration_timer_ms=%d ms\0A\00", align 1
@delta_ms = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_scheduler_suspend3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_scheduler_suspend3(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* @duration_timer_ms, align 4
  store i32 0, i32* @duration_ctrl_task_ms, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* @pdTRUE, align 4
  %7 = load i32, i32* @timer_callback, align 4
  %8 = call i32 @xTimerCreate(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %6, i32* null, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @portMAX_DELAY, align 4
  %11 = call i32 @xTimerStart(i32 %9, i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @xTaskCreatePinnedToCore(i32* @control_task, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 8192, i32* null, i32 5, i32* null, i32 %12)
  %14 = load i32, i32* @waiting_ms, align 4
  %15 = mul nsw i32 %14, 2
  %16 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %17 = sdiv i32 %15, %16
  %18 = call i32 @vTaskDelay(i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @portMAX_DELAY, align 4
  %21 = call i32 @xTimerDelete(i32 %19, i32 %20)
  %22 = load i32, i32* @duration_timer_ms, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @waiting_ms, align 4
  %25 = mul nsw i32 %24, 2
  %26 = load i32, i32* @duration_timer_ms, align 4
  %27 = call i32 @TEST_ASSERT_INT_WITHIN(i32 2, i32 %25, i32 %26)
  %28 = load i32, i32* @waiting_ms, align 4
  %29 = load i32, i32* @delta_ms, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* @duration_ctrl_task_ms, align 4
  %32 = call i32 @TEST_ASSERT_INT_WITHIN(i32 5, i32 %30, i32 %31)
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @xTimerCreate(i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @xTimerStart(i32, i32) #1

declare dso_local i32 @xTaskCreatePinnedToCore(i32*, i8*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @xTimerDelete(i32, i32) #1

declare dso_local i32 @TEST_ASSERT_INT_WITHIN(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
