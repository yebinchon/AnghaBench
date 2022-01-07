; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_blufi_api.c_esp_blufi_send_wifi_list.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_blufi_api.c_esp_blufi_send_wifi_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32 }

@ESP_BLUEDROID_STATUS_ENABLED = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_BLUFI = common dso_local global i32 0, align 4
@BTC_BLUFI_ACT_SEND_WIFI_LIST = common dso_local global i32 0, align 4
@btc_blufi_call_deep_copy = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_blufi_send_wifi_list(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = call i64 (...) @esp_bluedroid_get_status()
  %9 = load i64, i64* @ESP_BLUEDROID_STATUS_ENABLED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %12, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @BTC_PID_BLUFI, align 4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @BTC_BLUFI_ACT_SEND_WIFI_LIST, align 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* @btc_blufi_call_deep_copy, align 4
  %27 = call i64 @btc_transfer_context(%struct.TYPE_7__* %6, %struct.TYPE_8__* %7, i32 16, i32 %26)
  %28 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %13
  %31 = load i32, i32* @ESP_OK, align 4
  br label %34

32:                                               ; preds = %13
  %33 = load i32, i32* @ESP_FAIL, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @esp_bluedroid_get_status(...) #1

declare dso_local i64 @btc_transfer_context(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
