; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/esp32/extr_test_wifi.c_start_wifi_as_sta.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/esp32/extr_test_wifi.c_start_wifi_as_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@EVENT_HANDLER_FLAG_DO_NOT_AUTO_RECONNECT = common dso_local global i32 0, align 4
@wifi_event_handler_flag = common dso_local global i32 0, align 4
@wifi_events = common dso_local global i32* null, align 8
@WIFI_MODE_STA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_wifi_as_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_wifi_as_sta() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = call i32 (...) @WIFI_INIT_CONFIG_DEFAULT()
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %2, i32* %3, align 4
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @EVENT_HANDLER_FLAG_DO_NOT_AUTO_RECONNECT, align 4
  %6 = load i32, i32* @wifi_event_handler_flag, align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* @wifi_event_handler_flag, align 4
  %8 = call i32 (...) @event_init()
  %9 = call i32 (...) @unity_reset_leak_checks()
  %10 = load i32*, i32** @wifi_events, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32* (...) @xEventGroupCreate()
  store i32* %13, i32** @wifi_events, align 8
  br label %17

14:                                               ; preds = %0
  %15 = load i32*, i32** @wifi_events, align 8
  %16 = call i32 @xEventGroupClearBits(i32* %15, i32 16777215)
  br label %17

17:                                               ; preds = %14, %12
  %18 = call i32 @esp_wifi_init(%struct.TYPE_4__* %1)
  %19 = call i32 @TEST_ESP_OK(i32 %18)
  %20 = load i32, i32* @WIFI_MODE_STA, align 4
  %21 = call i32 @esp_wifi_set_mode(i32 %20)
  %22 = call i32 @TEST_ESP_OK(i32 %21)
  %23 = call i32 (...) @esp_wifi_start()
  %24 = call i32 @TEST_ESP_OK(i32 %23)
  ret void
}

declare dso_local i32 @WIFI_INIT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @event_init(...) #1

declare dso_local i32 @unity_reset_leak_checks(...) #1

declare dso_local i32* @xEventGroupCreate(...) #1

declare dso_local i32 @xEventGroupClearBits(i32*, i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @esp_wifi_init(%struct.TYPE_4__*) #1

declare dso_local i32 @esp_wifi_set_mode(i32) #1

declare dso_local i32 @esp_wifi_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
