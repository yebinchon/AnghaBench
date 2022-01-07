; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_esp_wifi_wps_disable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_esp_wifi_wps_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i32 0, align 4
@ESP_ERR_WIFI_MODE = common dso_local global i32 0, align 4
@s_wps_enabled = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"wps disable: already disabled\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"wifi_wps_disable\0A\00", align 1
@WPS_TYPE_DISABLE = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"wps disable: failed to disable wps, ret=%d\00", align 1
@SIG_WPS_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_wifi_wps_disable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @ESP_OK, align 4
  %4 = call i32 (...) @wps_check_wifi_mode()
  %5 = icmp ne i32 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @ESP_ERR_WIFI_MODE, align 4
  store i32 %7, i32* %1, align 4
  br label %37

8:                                                ; preds = %0
  %9 = call i32 (...) @API_MUTEX_TAKE()
  %10 = load i32, i32* @s_wps_enabled, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = call i32 (i32, i8*, ...) @wpa_printf(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @API_MUTEX_GIVE()
  %16 = load i32, i32* @ESP_OK, align 4
  store i32 %16, i32* %1, align 4
  br label %37

17:                                               ; preds = %8
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @WPS_TYPE_DISABLE, align 4
  %21 = call i32 @wps_set_type(i32 %20)
  %22 = call i32 (...) @wps_delete_timer()
  %23 = call i32 (...) @wifi_wps_disable_internal()
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* @ESP_OK, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i32, i32* @MSG_ERROR, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %17
  %32 = call i32 (...) @esp_wifi_disconnect()
  %33 = call i32 @esp_wifi_set_wps_start_flag_internal(i32 0)
  %34 = call i32 (...) @wps_task_deinit()
  store i32 0, i32* @s_wps_enabled, align 4
  %35 = call i32 (...) @API_MUTEX_GIVE()
  %36 = load i32, i32* @ESP_OK, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %31, %12, %6
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @wps_check_wifi_mode(...) #1

declare dso_local i32 @API_MUTEX_TAKE(...) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @API_MUTEX_GIVE(...) #1

declare dso_local i32 @wps_set_type(i32) #1

declare dso_local i32 @wps_delete_timer(...) #1

declare dso_local i32 @wifi_wps_disable_internal(...) #1

declare dso_local i32 @esp_wifi_disconnect(...) #1

declare dso_local i32 @esp_wifi_set_wps_start_flag_internal(i32) #1

declare dso_local i32 @wps_task_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
