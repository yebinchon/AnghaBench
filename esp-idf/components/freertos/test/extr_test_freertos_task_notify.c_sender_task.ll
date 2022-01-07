; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/test/extr_test_freertos_task_notify.c_sender_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/test/extr_test_freertos_task_notify.c_sender_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trigger_send_semphr = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@notifs_sent = common dso_local global i32 0, align 4
@rec_task_handle = common dso_local global i32 0, align 4
@MESSAGE = common dso_local global i32 0, align 4
@eSetValueWithOverwrite = common dso_local global i32 0, align 4
@isr_give = common dso_local global i32 0, align 4
@TIMER_GROUP_0 = common dso_local global i32 0, align 4
@task_delete_semphr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sender_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sender_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @xPortGetCoreID()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @trigger_send_semphr, align 4
  %6 = load i32, i32* @portMAX_DELAY, align 4
  %7 = call i32 @xSemaphoreTake(i32 %5, i32 %6)
  %8 = load i32, i32* @notifs_sent, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @notifs_sent, align 4
  %10 = load i32, i32* @rec_task_handle, align 4
  %11 = load i32, i32* @MESSAGE, align 4
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* @eSetValueWithOverwrite, align 4
  %15 = call i32 @xTaskNotify(i32 %10, i32 %13, i32 %14)
  %16 = load i32, i32* @trigger_send_semphr, align 4
  %17 = load i32, i32* @portMAX_DELAY, align 4
  %18 = call i32 @xSemaphoreTake(i32 %16, i32 %17)
  %19 = load i32, i32* @notifs_sent, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @notifs_sent, align 4
  %21 = load i32, i32* @rec_task_handle, align 4
  %22 = call i32 @xTaskNotifyGive(i32 %21)
  %23 = load i32, i32* @trigger_send_semphr, align 4
  %24 = load i32, i32* @portMAX_DELAY, align 4
  %25 = call i32 @xSemaphoreTake(i32 %23, i32 %24)
  store i32 0, i32* @isr_give, align 4
  %26 = load i32, i32* @TIMER_GROUP_0, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @timer_start(i32 %26, i32 %27)
  %29 = load i32, i32* @trigger_send_semphr, align 4
  %30 = load i32, i32* @portMAX_DELAY, align 4
  %31 = call i32 @xSemaphoreTake(i32 %29, i32 %30)
  store i32 1, i32* @isr_give, align 4
  %32 = load i32, i32* @TIMER_GROUP_0, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @timer_start(i32 %32, i32 %33)
  %35 = load i32, i32* @task_delete_semphr, align 4
  %36 = call i32 @xSemaphoreGive(i32 %35)
  %37 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @xPortGetCoreID(...) #1

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @xTaskNotify(i32, i32, i32) #1

declare dso_local i32 @xTaskNotifyGive(i32) #1

declare dso_local i32 @timer_start(i32, i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
