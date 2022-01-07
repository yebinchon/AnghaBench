; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_event/extr_event_send_compat.inc_esp_event_send_to_default_loop.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_event/extr_event_send_compat.inc_esp_event_send_to_default_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@AP_PROBEREQRECVED = common dso_local global i32 0, align 4
@AP_STACONNECTED = common dso_local global i32 0, align 4
@AP_STADISCONNECTED = common dso_local global i32 0, align 4
@AP_STAIPASSIGNED = common dso_local global i32 0, align 4
@AP_START = common dso_local global i32 0, align 4
@AP_STOP = common dso_local global i32 0, align 4
@ETH = common dso_local global i32 0, align 4
@ETH_CONNECTED = common dso_local global i32 0, align 4
@ETH_DISCONNECTED = common dso_local global i32 0, align 4
@ETH_GOT_IP = common dso_local global i32 0, align 4
@ETH_START = common dso_local global i32 0, align 4
@ETH_STOP = common dso_local global i32 0, align 4
@GOT_IP6 = common dso_local global i32 0, align 4
@IP = common dso_local global i32 0, align 4
@SCAN_DONE = common dso_local global i32 0, align 4
@STA_AUTHMODE_CHANGE = common dso_local global i32 0, align 4
@STA_CONNECTED = common dso_local global i32 0, align 4
@STA_DISCONNECTED = common dso_local global i32 0, align 4
@STA_GOT_IP = common dso_local global i32 0, align 4
@STA_LOST_IP = common dso_local global i32 0, align 4
@STA_START = common dso_local global i32 0, align 4
@STA_STOP = common dso_local global i32 0, align 4
@STA_WPS_ER_FAILED = common dso_local global i32 0, align 4
@STA_WPS_ER_PBC_OVERLAP = common dso_local global i32 0, align 4
@STA_WPS_ER_PIN = common dso_local global i32 0, align 4
@STA_WPS_ER_SUCCESS = common dso_local global i32 0, align 4
@STA_WPS_ER_TIMEOUT = common dso_local global i32 0, align 4
@WIFI = common dso_local global i32 0, align 4
@WIFI_READY = common dso_local global i32 0, align 4
@ap_probereqrecved = common dso_local global i32 0, align 4
@auth_change = common dso_local global i32 0, align 4
@connected = common dso_local global i32 0, align 4
@disconnected = common dso_local global i32 0, align 4
@got_ip = common dso_local global i32 0, align 4
@got_ip6 = common dso_local global i32 0, align 4
@scan_done = common dso_local global i32 0, align 4
@sta_connected = common dso_local global i32 0, align 4
@sta_disconnected = common dso_local global i32 0, align 4
@sta_er_fail_reason = common dso_local global i32 0, align 4
@sta_er_pin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_event_send_to_default_loop(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %7 [
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @ESP_ERR_NOT_SUPPORTED, align 4
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
