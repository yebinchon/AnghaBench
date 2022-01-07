; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gap_ble_api.c_esp_ble_gap_config_local_icon.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gap_ble_api.c_esp_ble_gap_config_local_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ESP_BLUEDROID_STATUS_ENABLED = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_GAP_BLE = common dso_local global i32 0, align 4
@BTC_GAP_BLE_ACT_CONFIG_LOCAL_ICON = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_ble_gap_config_local_icon(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @ESP_BLUEDROID_STATUS_ENABLED, align 4
  %7 = call i32 @ESP_BLUEDROID_STATUS_CHECK(i32 %6)
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %28 [
    i32 161, label %9
    i32 175, label %9
    i32 159, label %9
    i32 157, label %9
    i32 132, label %9
    i32 169, label %9
    i32 153, label %9
    i32 177, label %9
    i32 185, label %9
    i32 184, label %9
    i32 160, label %9
    i32 135, label %9
    i32 134, label %9
    i32 170, label %9
    i32 154, label %9
    i32 156, label %9
    i32 130, label %9
    i32 128, label %9
    i32 129, label %9
    i32 155, label %9
    i32 133, label %9
    i32 171, label %9
    i32 172, label %9
    i32 165, label %9
    i32 178, label %9
    i32 152, label %9
    i32 168, label %9
    i32 146, label %9
    i32 145, label %9
    i32 147, label %9
    i32 148, label %9
    i32 149, label %9
    i32 151, label %9
    i32 150, label %9
    i32 131, label %9
    i32 176, label %9
    i32 158, label %9
    i32 166, label %9
    i32 173, label %9
    i32 182, label %9
    i32 180, label %9
    i32 183, label %9
    i32 181, label %9
    i32 179, label %9
    i32 162, label %9
    i32 136, label %9
    i32 141, label %9
    i32 174, label %9
    i32 167, label %9
    i32 143, label %9
    i32 142, label %9
    i32 144, label %9
    i32 164, label %9
    i32 163, label %9
    i32 140, label %9
    i32 139, label %9
    i32 138, label %9
    i32 137, label %9
  ]

9:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %10 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @BTC_PID_GAP_BLE, align 4
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @BTC_GAP_BLE_ACT_CONFIG_LOCAL_ICON, align 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %2, align 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = call i32 @btc_transfer_context(%struct.TYPE_7__* %4, %struct.TYPE_8__* %5, i32 4, i32* null)
  %20 = load i32, i32* @BT_STATUS_SUCCESS, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %9
  %23 = load i32, i32* @ESP_OK, align 4
  br label %26

24:                                               ; preds = %9
  %25 = load i32, i32* @ESP_FAIL, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @ESP_BLUEDROID_STATUS_CHECK(i32) #1

declare dso_local i32 @btc_transfer_context(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
