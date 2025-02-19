; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gatts_api.c_esp_ble_gatts_send_response.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gatts_api.c_esp_ble_gatts_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32, i32, i32 }

@ESP_BLUEDROID_STATUS_ENABLED = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_GATTS = common dso_local global i32 0, align 4
@BTC_GATTS_ACT_SEND_RESPONSE = common dso_local global i32 0, align 4
@btc_gatts_arg_deep_copy = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_ble_gatts_send_response(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__, align 4
  %12 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* @ESP_BLUEDROID_STATUS_ENABLED, align 4
  %14 = call i32 @ESP_BLUEDROID_STATUS_CHECK(i32 %13)
  %15 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @BTC_PID_GATTS, align 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @BTC_GATTS_ACT_SEND_RESPONSE, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @BTC_GATT_CREATE_CONN_ID(i32 %21, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load i32, i32* @btc_gatts_arg_deep_copy, align 4
  %36 = call i64 @btc_transfer_context(%struct.TYPE_7__* %11, %struct.TYPE_8__* %12, i32 24, i32 %35)
  %37 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %5
  %40 = load i32, i32* @ESP_OK, align 4
  br label %43

41:                                               ; preds = %5
  %42 = load i32, i32* @ESP_FAIL, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  ret i32 %44
}

declare dso_local i32 @ESP_BLUEDROID_STATUS_CHECK(i32) #1

declare dso_local i32 @BTC_GATT_CREATE_CONN_ID(i32, i32) #1

declare dso_local i64 @btc_transfer_context(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
