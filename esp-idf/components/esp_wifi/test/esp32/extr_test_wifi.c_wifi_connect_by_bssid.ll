; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/esp32/extr_test_wifi.c_wifi_connect_by_bssid.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/esp32/extr_test_wifi.c_wifi_connect_by_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@DEFAULT_PWD = common dso_local global i32 0, align 4
@DEFAULT_SSID = common dso_local global i32 0, align 4
@WIFI_IF_STA = common dso_local global i32 0, align 4
@wifi_events = common dso_local global i32 0, align 4
@GOT_IP_EVENT = common dso_local global i64 0, align 8
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @wifi_connect_by_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wifi_connect_by_bssid(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  store i32* %0, i32** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %9 = load i32, i32* @DEFAULT_PWD, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %11 = load i32, i32* @DEFAULT_SSID, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @memcpy(i32 %14, i32* %15, i32 6)
  %17 = load i32, i32* @WIFI_IF_STA, align 4
  %18 = call i32 @esp_wifi_set_config(i32 %17, %struct.TYPE_5__* %4)
  %19 = call i32 @TEST_ESP_OK(i32 %18)
  %20 = call i32 (...) @esp_wifi_connect()
  %21 = call i32 @TEST_ESP_OK(i32 %20)
  %22 = load i32, i32* @wifi_events, align 4
  %23 = load i64, i64* @GOT_IP_EVENT, align 8
  %24 = load i32, i32* @portTICK_RATE_MS, align 4
  %25 = sdiv i32 5000, %24
  %26 = call i64 @xEventGroupWaitBits(i32 %22, i64 %23, i32 1, i32 0, i32 %25)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @GOT_IP_EVENT, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @TEST_ASSERT(i32 %30)
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @esp_wifi_set_config(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @esp_wifi_connect(...) #1

declare dso_local i64 @xEventGroupWaitBits(i32, i64, i32, i32, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
