; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/esp_event/default_event_loop/main/extr_main.c_task_event_source.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/esp_event/default_event_loop/main/extr_main.c_task_event_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TASK_ITERATIONS_COUNT = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s:%s: posting to default loop, %d out of %d\00", align 1
@TASK_EVENTS = common dso_local global i32 0, align 4
@TASK_ITERATION_EVENT = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@TASK_ITERATIONS_UNREGISTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%s:%s: unregistering task_iteration_handler\00", align 1
@task_iteration_handler = common dso_local global i32 0, align 4
@TASK_PERIOD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%s:%s: deleting task event source\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @task_event_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_event_source(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %3, align 4
  br label %4

4:                                                ; preds = %41, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @TASK_ITERATIONS_COUNT, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %44

8:                                                ; preds = %4
  %9 = load i32, i32* @TAG, align 4
  %10 = load i32, i32* @TASK_EVENTS, align 4
  %11 = load i32, i32* @TASK_EVENTS, align 4
  %12 = load i32, i32* @TASK_ITERATION_EVENT, align 4
  %13 = call i32 @get_id_string(i32 %11, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @TASK_ITERATIONS_COUNT, align 4
  %16 = call i32 (i32, i8*, i32, i32, ...) @ESP_LOGI(i32 %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @TASK_EVENTS, align 4
  %18 = load i32, i32* @TASK_ITERATION_EVENT, align 4
  %19 = load i32, i32* @portMAX_DELAY, align 4
  %20 = call i32 @esp_event_post(i32 %17, i32 %18, i32* %3, i32 4, i32 %19)
  %21 = call i32 @ESP_ERROR_CHECK(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @TASK_ITERATIONS_UNREGISTER, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %8
  %26 = load i32, i32* @TAG, align 4
  %27 = load i32, i32* @TASK_EVENTS, align 4
  %28 = load i32, i32* @TASK_EVENTS, align 4
  %29 = load i32, i32* @TASK_ITERATION_EVENT, align 4
  %30 = call i32 @get_id_string(i32 %28, i32 %29)
  %31 = call i32 (i32, i8*, i32, i32, ...) @ESP_LOGI(i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load i32, i32* @TASK_EVENTS, align 4
  %33 = load i32, i32* @TASK_ITERATION_EVENT, align 4
  %34 = load i32, i32* @task_iteration_handler, align 4
  %35 = call i32 @esp_event_handler_unregister(i32 %32, i32 %33, i32 %34)
  %36 = call i32 @ESP_ERROR_CHECK(i32 %35)
  br label %37

37:                                               ; preds = %25, %8
  %38 = load i32, i32* @TASK_PERIOD, align 4
  %39 = call i32 @pdMS_TO_TICKS(i32 %38)
  %40 = call i32 @vTaskDelay(i32 %39)
  br label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %4

44:                                               ; preds = %4
  %45 = load i32, i32* @TASK_PERIOD, align 4
  %46 = call i32 @pdMS_TO_TICKS(i32 %45)
  %47 = call i32 @vTaskDelay(i32 %46)
  %48 = load i32, i32* @TAG, align 4
  %49 = load i32, i32* @TASK_EVENTS, align 4
  %50 = load i32, i32* @TASK_EVENTS, align 4
  %51 = load i32, i32* @TASK_ITERATION_EVENT, align 4
  %52 = call i32 @get_id_string(i32 %50, i32 %51)
  %53 = call i32 (i32, i8*, i32, i32, ...) @ESP_LOGI(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %52)
  %54 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @get_id_string(i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_event_post(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @esp_event_handler_unregister(i32, i32, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
