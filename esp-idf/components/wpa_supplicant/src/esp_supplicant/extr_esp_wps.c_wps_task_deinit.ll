; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_task_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_task_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"wps task deinit\00", align 1
@s_wps_api_sem = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"wps task deinit: free api sem\00", align 1
@s_wps_task_create_sem = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"wps task deinit: free task create sem\00", align 1
@s_wps_queue = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"wps task deinit: free queue\00", align 1
@s_wps_task_hdl = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"wps task deinit: free task\00", align 1
@s_wps_rxq = common dso_local global i32 0, align 4
@s_wps_data_lock = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"wps task deinit: free data lock\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_task_deinit() #0 {
  %1 = load i32, i32* @MSG_DEBUG, align 4
  %2 = call i32 @wpa_printf(i32 %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %3 = load i32*, i32** @s_wps_api_sem, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load i32*, i32** @s_wps_api_sem, align 8
  %7 = call i32 @vSemaphoreDelete(i32* %6)
  store i32* null, i32** @s_wps_api_sem, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 @wpa_printf(i32 %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %5, %0
  %11 = load i32*, i32** @s_wps_task_create_sem, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32*, i32** @s_wps_task_create_sem, align 8
  %15 = call i32 @vSemaphoreDelete(i32* %14)
  store i32* null, i32** @s_wps_task_create_sem, align 8
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %13, %10
  %19 = load i32*, i32** @s_wps_queue, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32*, i32** @s_wps_queue, align 8
  %23 = call i32 @vQueueDelete(i32* %22)
  store i32* null, i32** @s_wps_queue, align 8
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32*, i32** @s_wps_task_hdl, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32*, i32** @s_wps_task_hdl, align 8
  %31 = call i32 @vTaskDelete(i32* %30)
  store i32* null, i32** @s_wps_task_hdl, align 8
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %26
  %35 = call i32* @STAILQ_FIRST(i32* @s_wps_rxq)
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @wps_rxq_deinit()
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32*, i32** @s_wps_data_lock, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32*, i32** @s_wps_data_lock, align 8
  %44 = call i32 @vSemaphoreDelete(i32* %43)
  store i32* null, i32** @s_wps_data_lock, align 8
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* @ESP_OK, align 4
  ret i32 %48
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @vSemaphoreDelete(i32*) #1

declare dso_local i32 @vQueueDelete(i32*) #1

declare dso_local i32 @vTaskDelete(i32*) #1

declare dso_local i32* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @wps_rxq_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
