; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_wifi_coexist/components/iperf/extr_cmd_wifi.c_wifi_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_wifi_coexist/components/iperf/extr_cmd_wifi.c_wifi_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sta scan done\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"L2 connected\00", align 1
@reconnect = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"sta disconnect, reconnect...\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"sta disconnect\00", align 1
@wifi_event_group = common dso_local global i32 0, align 4
@CONNECTED_BIT = common dso_local global i32 0, align 4
@DISCONNECTED_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*)* @wifi_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wifi_event_handler(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %34 [
    i32 130, label %10
    i32 129, label %14
    i32 128, label %17
  ]

10:                                               ; preds = %4
  %11 = call i32 (...) @scan_done_handler()
  %12 = load i32, i32* @TAG, align 4
  %13 = call i32 @ESP_LOGI(i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %35

14:                                               ; preds = %4
  %15 = load i32, i32* @TAG, align 4
  %16 = call i32 @ESP_LOGI(i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %35

17:                                               ; preds = %4
  %18 = load i32, i32* @reconnect, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @TAG, align 4
  %22 = call i32 @ESP_LOGI(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 (...) @esp_wifi_connect()
  br label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @TAG, align 4
  %26 = call i32 @ESP_LOGI(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* @wifi_event_group, align 4
  %29 = load i32, i32* @CONNECTED_BIT, align 4
  %30 = call i32 @xEventGroupClearBits(i32 %28, i32 %29)
  %31 = load i32, i32* @wifi_event_group, align 4
  %32 = load i32, i32* @DISCONNECTED_BIT, align 4
  %33 = call i32 @xEventGroupSetBits(i32 %31, i32 %32)
  br label %35

34:                                               ; preds = %4
  br label %35

35:                                               ; preds = %34, %27, %14, %10
  ret void
}

declare dso_local i32 @scan_done_handler(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @esp_wifi_connect(...) #1

declare dso_local i32 @xEventGroupClearBits(i32, i32) #1

declare dso_local i32 @xEventGroupSetBits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
