; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_esp_wifi_wps_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_esp_wifi_wps_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i64 0, align 8
@ESP_ERR_WIFI_MODE = common dso_local global i32 0, align 4
@s_wps_enabled = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"wps start: wps not enabled\00", align 1
@ESP_ERR_WIFI_WPS_SM = common dso_local global i32 0, align 4
@WPS_TYPE_DISABLE = common dso_local global i64 0, align 8
@WPS_STATUS_DISABLE = common dso_local global i64 0, align 8
@WPS_STATUS_SCANNING = common dso_local global i64 0, align 8
@ESP_ERR_WIFI_WPS_TYPE = common dso_local global i32 0, align 4
@ESP_ERR_WIFI_STATE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"wps scan\00", align 1
@SIG_PP_WPS = common dso_local global i32 0, align 4
@SIG_WPS_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_wifi_wps_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @ESP_OK, align 8
  %5 = call i64 (...) @wps_check_wifi_mode()
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @ESP_ERR_WIFI_MODE, align 4
  store i32 %8, i32* %2, align 4
  br label %47

9:                                                ; preds = %1
  %10 = call i32 (...) @API_MUTEX_TAKE()
  %11 = load i32, i32* @s_wps_enabled, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @MSG_ERROR, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @API_MUTEX_GIVE()
  %17 = load i32, i32* @ESP_ERR_WIFI_WPS_SM, align 4
  store i32 %17, i32* %2, align 4
  br label %47

18:                                               ; preds = %9
  %19 = call i64 (...) @wps_get_type()
  %20 = load i64, i64* @WPS_TYPE_DISABLE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = call i64 (...) @wps_get_status()
  %24 = load i64, i64* @WPS_STATUS_DISABLE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = call i64 (...) @wps_get_status()
  %28 = load i64, i64* @WPS_STATUS_SCANNING, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %18
  %31 = call i32 (...) @API_MUTEX_GIVE()
  %32 = load i32, i32* @ESP_ERR_WIFI_WPS_TYPE, align 4
  store i32 %32, i32* %2, align 4
  br label %47

33:                                               ; preds = %26, %22
  %34 = call i64 (...) @esp_wifi_get_user_init_flag_internal()
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = call i32 (...) @API_MUTEX_GIVE()
  %38 = load i32, i32* @ESP_ERR_WIFI_STATE, align 4
  store i32 %38, i32* %2, align 4
  br label %47

39:                                               ; preds = %33
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @SIG_PP_WPS, align 4
  %43 = call i32 @ic_pp_post(i32 %42, i32 0)
  %44 = call i32 (...) @API_MUTEX_GIVE()
  %45 = load i64, i64* @ESP_OK, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %39, %36, %30, %13, %7
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @wps_check_wifi_mode(...) #1

declare dso_local i32 @API_MUTEX_TAKE(...) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @API_MUTEX_GIVE(...) #1

declare dso_local i64 @wps_get_type(...) #1

declare dso_local i64 @wps_get_status(...) #1

declare dso_local i64 @esp_wifi_get_user_init_flag_internal(...) #1

declare dso_local i32 @ic_pp_post(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
