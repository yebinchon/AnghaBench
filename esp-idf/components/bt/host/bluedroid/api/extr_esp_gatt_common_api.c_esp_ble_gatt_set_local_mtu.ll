; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gatt_common_api.c_esp_ble_gatt_set_local_mtu.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gatt_common_api.c_esp_ble_gatt_set_local_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@ESP_BLUEDROID_STATUS_ENABLED = common dso_local global i32 0, align 4
@ESP_GATT_DEF_BLE_MTU_SIZE = common dso_local global i64 0, align 8
@ESP_GATT_MAX_MTU_SIZE = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_SIZE = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_GATT_COMMON = common dso_local global i32 0, align 4
@BTC_GATT_ACT_SET_LOCAL_MTU = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_ble_gatt_set_local_mtu(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_8__, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @ESP_BLUEDROID_STATUS_ENABLED, align 4
  %7 = call i32 @ESP_BLUEDROID_STATUS_CHECK(i32 %6)
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @ESP_GATT_DEF_BLE_MTU_SIZE, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @ESP_GATT_MAX_MTU_SIZE, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %1
  %16 = load i32, i32* @ESP_ERR_INVALID_SIZE, align 4
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %11
  %18 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @BTC_PID_GATT_COMMON, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @BTC_GATT_ACT_SET_LOCAL_MTU, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = call i64 @btc_transfer_context(%struct.TYPE_7__* %4, %struct.TYPE_8__* %5, i32 8, i32* null)
  %28 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i32, i32* @ESP_OK, align 4
  br label %34

32:                                               ; preds = %17
  %33 = load i32, i32* @ESP_FAIL, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @ESP_BLUEDROID_STATUS_CHECK(i32) #1

declare dso_local i64 @btc_transfer_context(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
