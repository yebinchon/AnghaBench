; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/esp32/extr_test_wifi.c_start_wifi_as_softap.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/esp32/extr_test_wifi.c_start_wifi_as_softap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@WIFI_AUTH_WPA2_PSK = common dso_local global i32 0, align 4
@DEFAULT_PWD = common dso_local global i32 0, align 4
@DEFAULT_SSID = common dso_local global i32 0, align 4
@wifi_events = common dso_local global i32* null, align 8
@WIFI_MODE_AP = common dso_local global i32 0, align 4
@WIFI_IF_AP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_wifi_as_softap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_wifi_as_softap() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca %struct.TYPE_9__, align 4
  %3 = call i32 (...) @WIFI_INIT_CONFIG_DEFAULT()
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i32 %3, i32* %4, align 4
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32 4, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  store i32 100, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %12 = load i32, i32* @WIFI_AUTH_WPA2_PSK, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 5
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 6
  %15 = load i32, i32* @DEFAULT_PWD, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 7
  %17 = load i32, i32* @DEFAULT_SSID, align 4
  store i32 %17, i32* %16, align 4
  %18 = call i32 (...) @event_init()
  %19 = call i32 (...) @unity_reset_leak_checks()
  %20 = load i32*, i32** @wifi_events, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = call i32* (...) @xEventGroupCreate()
  store i32* %23, i32** @wifi_events, align 8
  br label %24

24:                                               ; preds = %22, %0
  %25 = call i32 @esp_wifi_init(%struct.TYPE_8__* %1)
  %26 = call i32 @TEST_ESP_OK(i32 %25)
  %27 = load i32, i32* @WIFI_MODE_AP, align 4
  %28 = call i32 @esp_wifi_set_mode(i32 %27)
  %29 = call i32 @TEST_ESP_OK(i32 %28)
  %30 = load i32, i32* @WIFI_IF_AP, align 4
  %31 = call i32 @esp_wifi_set_config(i32 %30, %struct.TYPE_9__* %2)
  %32 = call i32 @TEST_ESP_OK(i32 %31)
  %33 = call i32 (...) @esp_wifi_start()
  %34 = call i32 @TEST_ESP_OK(i32 %33)
  ret void
}

declare dso_local i32 @WIFI_INIT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @event_init(...) #1

declare dso_local i32 @unity_reset_leak_checks(...) #1

declare dso_local i32* @xEventGroupCreate(...) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @esp_wifi_init(%struct.TYPE_8__*) #1

declare dso_local i32 @esp_wifi_set_mode(i32) #1

declare dso_local i32 @esp_wifi_set_config(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @esp_wifi_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
