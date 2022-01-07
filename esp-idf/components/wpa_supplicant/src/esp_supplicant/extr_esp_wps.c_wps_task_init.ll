; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_task_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_task_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_wps_data_lock = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"wps task init: failed to alloc data lock\00", align 1
@s_wps_api_sem = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"wps task init: failed to create api sem\00", align 1
@s_wps_task_create_sem = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"wps task init: failed to create task sem\00", align 1
@s_wps_sig_cnt = common dso_local global i32 0, align 4
@SIG_WPS_NUM = common dso_local global i32 0, align 4
@s_wps_queue = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"wps task init: failed to alloc queue\00", align 1
@wps_task = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"wpsT\00", align 1
@WPS_TASK_STACK_SIZE = common dso_local global i32 0, align 4
@s_wps_task_hdl = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"wps enable: failed to create task\00", align 1
@portMAX_DELAY = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"wifi wps enable: task prio:%d, stack:%d\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_task_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 (...) @wps_task_deinit()
  %4 = call i32 (...) @xSemaphoreCreateRecursiveMutex()
  store i32 %4, i32* @s_wps_data_lock, align 4
  %5 = load i32, i32* @s_wps_data_lock, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @MSG_ERROR, align 4
  %9 = call i32 (i32, i8*, ...) @wpa_printf(i32 %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %57

10:                                               ; preds = %0
  %11 = call i8* @xSemaphoreCreateCounting(i32 1, i32 0)
  store i8* %11, i8** @s_wps_api_sem, align 8
  %12 = load i8*, i8** @s_wps_api_sem, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @MSG_ERROR, align 4
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %57

17:                                               ; preds = %10
  %18 = call i8* @xSemaphoreCreateCounting(i32 1, i32 0)
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** @s_wps_task_create_sem, align 8
  %20 = load i32*, i32** @s_wps_task_create_sem, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @MSG_ERROR, align 4
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %57

25:                                               ; preds = %17
  %26 = load i32, i32* @s_wps_sig_cnt, align 4
  %27 = load i32, i32* @SIG_WPS_NUM, align 4
  %28 = call i32 @os_bzero(i32 %26, i32 %27)
  %29 = load i32, i32* @SIG_WPS_NUM, align 4
  %30 = call i32 @xQueueCreate(i32 %29, i32 8)
  store i32 %30, i32* @s_wps_queue, align 4
  %31 = load i32, i32* @s_wps_queue, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @MSG_ERROR, align 4
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %57

36:                                               ; preds = %25
  %37 = call i32 (...) @wps_rxq_init()
  %38 = load i32, i32* @wps_task, align 4
  %39 = load i32, i32* @WPS_TASK_STACK_SIZE, align 4
  %40 = call i32 @xTaskCreate(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %39, i32* null, i32 2, i32* @s_wps_task_hdl)
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* @pdPASS, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @MSG_ERROR, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %57

47:                                               ; preds = %36
  %48 = load i32*, i32** @s_wps_task_create_sem, align 8
  %49 = load i32, i32* @portMAX_DELAY, align 4
  %50 = call i32 @xSemaphoreTake(i32* %48, i32 %49)
  %51 = load i32*, i32** @s_wps_task_create_sem, align 8
  %52 = call i32 @vSemaphoreDelete(i32* %51)
  store i32* null, i32** @s_wps_task_create_sem, align 8
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = load i32, i32* @WPS_TASK_STACK_SIZE, align 4
  %55 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 2, i32 %54)
  %56 = load i32, i32* @ESP_OK, align 4
  store i32 %56, i32* %1, align 4
  br label %60

57:                                               ; preds = %44, %33, %22, %14, %7
  %58 = call i32 (...) @wps_task_deinit()
  %59 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %59, i32* %1, align 4
  br label %60

60:                                               ; preds = %57, %47
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local i32 @wps_task_deinit(...) #1

declare dso_local i32 @xSemaphoreCreateRecursiveMutex(...) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @xSemaphoreCreateCounting(i32, i32) #1

declare dso_local i32 @os_bzero(i32, i32) #1

declare dso_local i32 @xQueueCreate(i32, i32) #1

declare dso_local i32 @wps_rxq_init(...) #1

declare dso_local i32 @xTaskCreate(i32, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @xSemaphoreTake(i32*, i32) #1

declare dso_local i32 @vSemaphoreDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
