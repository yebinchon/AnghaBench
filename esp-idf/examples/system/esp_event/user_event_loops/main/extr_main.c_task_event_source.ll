; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/esp_event/user_event_loops/main/extr_main.c_task_event_source.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/esp_event/user_event_loops/main/extr_main.c_task_event_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TASK_ITERATIONS_COUNT = common dso_local global i32 0, align 4
@loop_with_task = common dso_local global i64 0, align 8
@loop_without_task = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"posting %s:%s to %s, iteration %d out of %d\00", align 1
@TASK_EVENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"TASK_ITERATION_EVENT\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"loop_with_task\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"loop_without_task\00", align 1
@TASK_ITERATION_EVENT = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@TASK_PERIOD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"deleting task event source\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @task_event_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_event_source(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %3, align 4
  br label %5

5:                                                ; preds = %37, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @TASK_ITERATIONS_COUNT, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %40

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = srem i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i64, i64* @loop_with_task, align 8
  store i64 %14, i64* %4, align 8
  br label %17

15:                                               ; preds = %9
  %16 = load i64, i64* @loop_without_task, align 8
  store i64 %16, i64* %4, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i32, i32* @TAG, align 4
  %19 = load i32, i32* @TASK_EVENTS, align 4
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @loop_with_task, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @TASK_ITERATIONS_COUNT, align 4
  %27 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %25, i32 %26)
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* @TASK_EVENTS, align 4
  %30 = load i32, i32* @TASK_ITERATION_EVENT, align 4
  %31 = load i32, i32* @portMAX_DELAY, align 4
  %32 = call i32 @esp_event_post_to(i64 %28, i32 %29, i32 %30, i32* %3, i32 4, i32 %31)
  %33 = call i32 @ESP_ERROR_CHECK(i32 %32)
  %34 = load i32, i32* @TASK_PERIOD, align 4
  %35 = call i32 @pdMS_TO_TICKS(i32 %34)
  %36 = call i32 @vTaskDelay(i32 %35)
  br label %37

37:                                               ; preds = %17
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %5

40:                                               ; preds = %5
  %41 = load i32, i32* @TASK_PERIOD, align 4
  %42 = call i32 @pdMS_TO_TICKS(i32 %41)
  %43 = call i32 @vTaskDelay(i32 %42)
  %44 = load i32, i32* @TAG, align 4
  %45 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %46 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_event_post_to(i64, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
