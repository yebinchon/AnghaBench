; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wifi_station_wps_timeout_internal.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wifi_station_wps_timeout_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_sm = type { i32 }

@gWpsSm = common dso_local global %struct.wps_sm* null, align 8
@WPS_STATUS_DISABLE = common dso_local global i32 0, align 4
@WIFI_EVENT = common dso_local global i32 0, align 4
@WIFI_EVENT_STA_WPS_ER_TIMEOUT = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wifi_station_wps_timeout_internal() #0 {
  %1 = alloca %struct.wps_sm*, align 8
  %2 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  store %struct.wps_sm* %2, %struct.wps_sm** %1, align 8
  %3 = load %struct.wps_sm*, %struct.wps_sm** %1, align 8
  %4 = icmp ne %struct.wps_sm* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %14

6:                                                ; preds = %0
  %7 = call i32 (...) @esp_wifi_disarm_sta_connection_timer_internal()
  %8 = load i32, i32* @WPS_STATUS_DISABLE, align 4
  %9 = call i32 @wps_set_status(i32 %8)
  %10 = load i32, i32* @WIFI_EVENT, align 4
  %11 = load i32, i32* @WIFI_EVENT_STA_WPS_ER_TIMEOUT, align 4
  %12 = load i32, i32* @portMAX_DELAY, align 4
  %13 = call i32 @esp_event_send_internal(i32 %10, i32 %11, i32 0, i32 0, i32 %12)
  br label %14

14:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @esp_wifi_disarm_sta_connection_timer_internal(...) #1

declare dso_local i32 @wps_set_status(i32) #1

declare dso_local i32 @esp_event_send_internal(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
