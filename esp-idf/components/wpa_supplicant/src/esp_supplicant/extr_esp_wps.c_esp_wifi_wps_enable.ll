; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_esp_wifi_wps_enable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_esp_wifi_wps_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i32 0, align 4
@ESP_ERR_WIFI_MODE = common dso_local global i32 0, align 4
@s_wps_enabled = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"wps enable: already enabled\00", align 1
@SIG_WPS_ENABLE = common dso_local global i32 0, align 4
@WPS_TASK_STACK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_wifi_wps_enable(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @ESP_OK, align 4
  %6 = call i32 (...) @wps_check_wifi_mode()
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ESP_ERR_WIFI_MODE, align 4
  store i32 %9, i32* %2, align 4
  br label %24

10:                                               ; preds = %1
  %11 = call i32 (...) @API_MUTEX_TAKE()
  %12 = load i32, i32* @s_wps_enabled, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = call i32 (...) @API_MUTEX_GIVE()
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ESP_OK, align 4
  store i32 %18, i32* %2, align 4
  br label %24

19:                                               ; preds = %10
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @wifi_wps_enable_internal(i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = call i32 (...) @API_MUTEX_GIVE()
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %19, %14, %8
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @wps_check_wifi_mode(...) #1

declare dso_local i32 @API_MUTEX_TAKE(...) #1

declare dso_local i32 @API_MUTEX_GIVE(...) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wifi_wps_enable_internal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
