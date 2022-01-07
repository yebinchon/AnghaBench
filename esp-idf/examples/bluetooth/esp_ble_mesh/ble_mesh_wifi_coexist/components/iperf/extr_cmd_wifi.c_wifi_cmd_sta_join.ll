; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_wifi_coexist/components/iperf/extr_cmd_wifi.c_wifi_cmd_sta_join.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_wifi_coexist/components/iperf/extr_cmd_wifi.c_wifi_cmd_sta_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@wifi_event_group = common dso_local global i32 0, align 4
@CONNECTED_BIT = common dso_local global i32 0, align 4
@reconnect = common dso_local global i32 0, align 4
@DISCONNECTED_BIT = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@ESP_IF_WIFI_STA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @wifi_cmd_sta_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wifi_cmd_sta_join(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @wifi_event_group, align 4
  %8 = load i32, i32* @CONNECTED_BIT, align 4
  %9 = call i32 @xEventGroupWaitBits(i32 %7, i32 %8, i32 0, i32 1, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strlcpy(i8* %14, i8* %15, i32 8)
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strncpy(i8* %23, i8* %24, i32 8)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @CONNECTED_BIT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  store i32 0, i32* @reconnect, align 4
  %32 = load i32, i32* @wifi_event_group, align 4
  %33 = load i32, i32* @CONNECTED_BIT, align 4
  %34 = call i32 @xEventGroupClearBits(i32 %32, i32 %33)
  %35 = call i32 (...) @esp_wifi_disconnect()
  %36 = call i32 @ESP_ERROR_CHECK(i32 %35)
  %37 = load i32, i32* @wifi_event_group, align 4
  %38 = load i32, i32* @DISCONNECTED_BIT, align 4
  %39 = load i32, i32* @portTICK_RATE_MS, align 4
  %40 = call i32 @xEventGroupWaitBits(i32 %37, i32 %38, i32 0, i32 1, i32 %39)
  br label %41

41:                                               ; preds = %31, %26
  store i32 1, i32* @reconnect, align 4
  %42 = call i32 (...) @esp_wifi_disconnect()
  %43 = load i32, i32* @ESP_IF_WIFI_STA, align 4
  %44 = call i32 @esp_wifi_set_config(i32 %43, %struct.TYPE_5__* %6)
  %45 = call i32 @ESP_ERROR_CHECK(i32 %44)
  %46 = call i32 (...) @esp_wifi_connect()
  %47 = call i32 @ESP_ERROR_CHECK(i32 %46)
  %48 = load i32, i32* @wifi_event_group, align 4
  %49 = load i32, i32* @CONNECTED_BIT, align 4
  %50 = load i32, i32* @portTICK_RATE_MS, align 4
  %51 = sdiv i32 5000, %50
  %52 = call i32 @xEventGroupWaitBits(i32 %48, i32 %49, i32 0, i32 1, i32 %51)
  ret i32 1
}

declare dso_local i32 @xEventGroupWaitBits(i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @xEventGroupClearBits(i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_wifi_disconnect(...) #1

declare dso_local i32 @esp_wifi_set_config(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @esp_wifi_connect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
