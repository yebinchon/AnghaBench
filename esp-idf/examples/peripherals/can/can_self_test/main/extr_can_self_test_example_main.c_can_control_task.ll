; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_self_test/main/extr_can_self_test_example_main.c_can_control_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_self_test/main/extr_can_self_test_example_main.c_can_control_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctrl_sem = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@NO_OF_ITERS = common dso_local global i32 0, align 4
@EXAMPLE_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Driver started\00", align 1
@rx_sem = common dso_local global i32 0, align 4
@tx_sem = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Driver stopped\00", align 1
@done_sem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @can_control_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @can_control_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @ctrl_sem, align 4
  %5 = load i32, i32* @portMAX_DELAY, align 4
  %6 = call i32 @xSemaphoreTake(i32 %4, i32 %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @NO_OF_ITERS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = call i32 (...) @can_start()
  %13 = call i32 @ESP_ERROR_CHECK(i32 %12)
  %14 = load i32, i32* @EXAMPLE_TAG, align 4
  %15 = call i32 @ESP_LOGI(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @rx_sem, align 4
  %17 = call i32 @xSemaphoreGive(i32 %16)
  %18 = load i32, i32* @tx_sem, align 4
  %19 = call i32 @xSemaphoreGive(i32 %18)
  %20 = load i32, i32* @ctrl_sem, align 4
  %21 = load i32, i32* @portMAX_DELAY, align 4
  %22 = call i32 @xSemaphoreTake(i32 %20, i32 %21)
  %23 = call i32 (...) @can_stop()
  %24 = call i32 @ESP_ERROR_CHECK(i32 %23)
  %25 = load i32, i32* @EXAMPLE_TAG, align 4
  %26 = call i32 @ESP_LOGI(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @pdMS_TO_TICKS(i32 100)
  %28 = call i32 @vTaskDelay(i32 %27)
  br label %29

29:                                               ; preds = %11
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %7

32:                                               ; preds = %7
  %33 = load i32, i32* @done_sem, align 4
  %34 = call i32 @xSemaphoreGive(i32 %33)
  %35 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @can_start(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @can_stop(...) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
