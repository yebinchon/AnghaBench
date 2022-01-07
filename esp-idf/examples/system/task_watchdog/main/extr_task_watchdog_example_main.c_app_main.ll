; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/task_watchdog/main/extr_task_watchdog_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/task_watchdog/main/extr_task_watchdog_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Initialize TWDT\0A\00", align 1
@TWDT_TIMEOUT_S = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@portNUM_PROCESSORS = common dso_local global i32 0, align 4
@reset_task = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"reset task\00", align 1
@task_handles = common dso_local global i32** null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Delay for 10 seconds\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Unsubscribing and deleting tasks\0A\00", align 1
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @TWDT_TIMEOUT_S, align 4
  %5 = call i32 @esp_task_wdt_init(i32 %4, i32 0)
  %6 = load i32, i32* @ESP_OK, align 4
  %7 = call i32 @CHECK_ERROR_CODE(i32 %5, i32 %6)
  %8 = call i32* @xTaskGetIdleTaskHandleForCPU(i32 0)
  %9 = call i32 @esp_task_wdt_add(i32* %8)
  %10 = call i32* @xTaskGetIdleTaskHandleForCPU(i32 1)
  %11 = call i32 @esp_task_wdt_add(i32* %10)
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %24, %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @portNUM_PROCESSORS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32, i32* @reset_task, align 4
  %18 = load i32**, i32*** @task_handles, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @xTaskCreatePinnedToCore(i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1024, i32* null, i32 10, i32** %21, i32 %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %12

27:                                               ; preds = %12
  %28 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @pdMS_TO_TICKS(i32 10000)
  %30 = call i32 @vTaskDelay(i32 %29)
  %31 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %69, %27
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @portNUM_PROCESSORS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %32
  %37 = load i32**, i32*** @task_handles, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @vTaskDelete(i32* %41)
  %43 = load i32**, i32*** @task_handles, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @esp_task_wdt_delete(i32* %47)
  %49 = load i32, i32* @ESP_OK, align 4
  %50 = call i32 @CHECK_ERROR_CODE(i32 %48, i32 %49)
  %51 = load i32**, i32*** @task_handles, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @esp_task_wdt_status(i32* %55)
  %57 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  %58 = call i32 @CHECK_ERROR_CODE(i32 %56, i32 %57)
  %59 = load i32, i32* %2, align 4
  %60 = call i32* @xTaskGetIdleTaskHandleForCPU(i32 %59)
  %61 = call i32 @esp_task_wdt_delete(i32* %60)
  %62 = load i32, i32* @ESP_OK, align 4
  %63 = call i32 @CHECK_ERROR_CODE(i32 %61, i32 %62)
  %64 = load i32, i32* %2, align 4
  %65 = call i32* @xTaskGetIdleTaskHandleForCPU(i32 %64)
  %66 = call i32 @esp_task_wdt_status(i32* %65)
  %67 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  %68 = call i32 @CHECK_ERROR_CODE(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %36
  %70 = load i32, i32* %2, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %2, align 4
  br label %32

72:                                               ; preds = %32
  %73 = call i32 (...) @esp_task_wdt_deinit()
  %74 = load i32, i32* @ESP_OK, align 4
  %75 = call i32 @CHECK_ERROR_CODE(i32 %73, i32 %74)
  %76 = call i32 @esp_task_wdt_status(i32* null)
  %77 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %78 = call i32 @CHECK_ERROR_CODE(i32 %76, i32 %77)
  %79 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @CHECK_ERROR_CODE(i32, i32) #1

declare dso_local i32 @esp_task_wdt_init(i32, i32) #1

declare dso_local i32 @esp_task_wdt_add(i32*) #1

declare dso_local i32* @xTaskGetIdleTaskHandleForCPU(i32) #1

declare dso_local i32 @xTaskCreatePinnedToCore(i32, i8*, i32, i32*, i32, i32**, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

declare dso_local i32 @esp_task_wdt_delete(i32*) #1

declare dso_local i32 @esp_task_wdt_status(i32*) #1

declare dso_local i32 @esp_task_wdt_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
