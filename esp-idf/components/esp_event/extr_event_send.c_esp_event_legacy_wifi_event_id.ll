; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_event/extr_event_send.c_esp_event_legacy_wifi_event_id.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_event/extr_event_send.c_esp_event_legacy_wifi_event_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSTEM_EVENT_WIFI_READY = common dso_local global i32 0, align 4
@SYSTEM_EVENT_SCAN_DONE = common dso_local global i32 0, align 4
@SYSTEM_EVENT_STA_START = common dso_local global i32 0, align 4
@SYSTEM_EVENT_STA_STOP = common dso_local global i32 0, align 4
@SYSTEM_EVENT_STA_CONNECTED = common dso_local global i32 0, align 4
@SYSTEM_EVENT_STA_DISCONNECTED = common dso_local global i32 0, align 4
@SYSTEM_EVENT_STA_AUTHMODE_CHANGE = common dso_local global i32 0, align 4
@SYSTEM_EVENT_STA_WPS_ER_SUCCESS = common dso_local global i32 0, align 4
@SYSTEM_EVENT_STA_WPS_ER_FAILED = common dso_local global i32 0, align 4
@SYSTEM_EVENT_STA_WPS_ER_TIMEOUT = common dso_local global i32 0, align 4
@SYSTEM_EVENT_STA_WPS_ER_PIN = common dso_local global i32 0, align 4
@SYSTEM_EVENT_STA_WPS_ER_PBC_OVERLAP = common dso_local global i32 0, align 4
@SYSTEM_EVENT_AP_START = common dso_local global i32 0, align 4
@SYSTEM_EVENT_AP_STOP = common dso_local global i32 0, align 4
@SYSTEM_EVENT_AP_STACONNECTED = common dso_local global i32 0, align 4
@SYSTEM_EVENT_AP_STADISCONNECTED = common dso_local global i32 0, align 4
@SYSTEM_EVENT_AP_PROBEREQRECVED = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid wifi event id %d\00", align 1
@SYSTEM_EVENT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @esp_event_legacy_wifi_event_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_event_legacy_wifi_event_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %39 [
    i32 128, label %5
    i32 139, label %7
    i32 135, label %9
    i32 134, label %11
    i32 137, label %13
    i32 136, label %15
    i32 138, label %17
    i32 130, label %19
    i32 133, label %21
    i32 129, label %23
    i32 131, label %25
    i32 132, label %27
    i32 141, label %29
    i32 140, label %31
    i32 143, label %33
    i32 142, label %35
    i32 144, label %37
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @SYSTEM_EVENT_WIFI_READY, align 4
  store i32 %6, i32* %2, align 4
  br label %44

7:                                                ; preds = %1
  %8 = load i32, i32* @SYSTEM_EVENT_SCAN_DONE, align 4
  store i32 %8, i32* %2, align 4
  br label %44

9:                                                ; preds = %1
  %10 = load i32, i32* @SYSTEM_EVENT_STA_START, align 4
  store i32 %10, i32* %2, align 4
  br label %44

11:                                               ; preds = %1
  %12 = load i32, i32* @SYSTEM_EVENT_STA_STOP, align 4
  store i32 %12, i32* %2, align 4
  br label %44

13:                                               ; preds = %1
  %14 = load i32, i32* @SYSTEM_EVENT_STA_CONNECTED, align 4
  store i32 %14, i32* %2, align 4
  br label %44

15:                                               ; preds = %1
  %16 = load i32, i32* @SYSTEM_EVENT_STA_DISCONNECTED, align 4
  store i32 %16, i32* %2, align 4
  br label %44

17:                                               ; preds = %1
  %18 = load i32, i32* @SYSTEM_EVENT_STA_AUTHMODE_CHANGE, align 4
  store i32 %18, i32* %2, align 4
  br label %44

19:                                               ; preds = %1
  %20 = load i32, i32* @SYSTEM_EVENT_STA_WPS_ER_SUCCESS, align 4
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %1
  %22 = load i32, i32* @SYSTEM_EVENT_STA_WPS_ER_FAILED, align 4
  store i32 %22, i32* %2, align 4
  br label %44

23:                                               ; preds = %1
  %24 = load i32, i32* @SYSTEM_EVENT_STA_WPS_ER_TIMEOUT, align 4
  store i32 %24, i32* %2, align 4
  br label %44

25:                                               ; preds = %1
  %26 = load i32, i32* @SYSTEM_EVENT_STA_WPS_ER_PIN, align 4
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %1
  %28 = load i32, i32* @SYSTEM_EVENT_STA_WPS_ER_PBC_OVERLAP, align 4
  store i32 %28, i32* %2, align 4
  br label %44

29:                                               ; preds = %1
  %30 = load i32, i32* @SYSTEM_EVENT_AP_START, align 4
  store i32 %30, i32* %2, align 4
  br label %44

31:                                               ; preds = %1
  %32 = load i32, i32* @SYSTEM_EVENT_AP_STOP, align 4
  store i32 %32, i32* %2, align 4
  br label %44

33:                                               ; preds = %1
  %34 = load i32, i32* @SYSTEM_EVENT_AP_STACONNECTED, align 4
  store i32 %34, i32* %2, align 4
  br label %44

35:                                               ; preds = %1
  %36 = load i32, i32* @SYSTEM_EVENT_AP_STADISCONNECTED, align 4
  store i32 %36, i32* %2, align 4
  br label %44

37:                                               ; preds = %1
  %38 = load i32, i32* @SYSTEM_EVENT_AP_PROBEREQRECVED, align 4
  store i32 %38, i32* %2, align 4
  br label %44

39:                                               ; preds = %1
  %40 = load i32, i32* @TAG, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @ESP_LOGE(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @SYSTEM_EVENT_MAX, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
