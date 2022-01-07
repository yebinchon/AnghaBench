; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/test/extr_test_freertos_get_state.c_test_task_get_state.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/test/extr_test_freertos_get_state.c_test_task_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eRunning = common dso_local global i64 0, align 8
@eReady = common dso_local global i64 0, align 8
@blocked_task_handle = common dso_local global i32 0, align 4
@eBlocked = common dso_local global i64 0, align 8
@suspended_task_handle = common dso_local global i32 0, align 4
@eSuspended = common dso_local global i64 0, align 8
@done_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_task_get_state(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (...) @xTaskGetCurrentTaskHandle()
  %4 = call i64 @eTaskGetState(i32 %3)
  %5 = load i64, i64* @eRunning, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @TEST_ASSERT(i32 %7)
  %9 = call i32 (...) @xTaskGetIdleTaskHandle()
  %10 = call i64 @eTaskGetState(i32 %9)
  %11 = load i64, i64* @eReady, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @TEST_ASSERT(i32 %13)
  %15 = load i32, i32* @blocked_task_handle, align 4
  %16 = call i64 @eTaskGetState(i32 %15)
  %17 = load i64, i64* @eBlocked, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @TEST_ASSERT(i32 %19)
  %21 = load i32, i32* @suspended_task_handle, align 4
  %22 = call i64 @eTaskGetState(i32 %21)
  %23 = load i64, i64* @eSuspended, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @TEST_ASSERT(i32 %25)
  %27 = load i32, i32* @done_sem, align 4
  %28 = call i32 @xSemaphoreGive(i32 %27)
  %29 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i64 @eTaskGetState(i32) #1

declare dso_local i32 @xTaskGetCurrentTaskHandle(...) #1

declare dso_local i32 @xTaskGetIdleTaskHandle(...) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
