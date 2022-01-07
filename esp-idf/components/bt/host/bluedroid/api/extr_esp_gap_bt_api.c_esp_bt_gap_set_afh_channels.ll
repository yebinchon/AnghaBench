; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gap_bt_api.c_esp_bt_gap_set_afh_channels.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gap_bt_api.c_esp_bt_gap_set_afh_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@ESP_BLUEDROID_STATUS_ENABLED = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_GAP_BT = common dso_local global i32 0, align 4
@BTC_GAP_BT_ACT_SET_AFH_CHANNELS = common dso_local global i32 0, align 4
@ESP_BT_GAP_AFH_CHANNELS_LEN = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_bt_gap_set_afh_channels(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %3, align 4
  %6 = call i64 (...) @esp_bluedroid_get_status()
  %7 = load i64, i64* @ESP_BLUEDROID_STATUS_ENABLED, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %10, i32* %2, align 4
  br label %41

11:                                               ; preds = %1
  %12 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @BTC_PID_GAP_BT, align 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @BTC_GAP_BT_ACT_SET_AFH_CHANNELS, align 4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @ESP_BT_GAP_AFH_CHANNELS_LEN, align 4
  %22 = call i32 @memcpy(i32** %19, i32 %20, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @ESP_BT_GAP_AFH_CHANNELS_LEN, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 127
  store i32 %31, i32* %29, align 4
  %32 = call i64 @btc_transfer_context(%struct.TYPE_7__* %4, %struct.TYPE_8__* %5, i32 8, i32* null)
  %33 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %11
  %36 = load i32, i32* @ESP_OK, align 4
  br label %39

37:                                               ; preds = %11
  %38 = load i32, i32* @ESP_FAIL, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @esp_bluedroid_get_status(...) #1

declare dso_local i32 @memcpy(i32**, i32, i32) #1

declare dso_local i64 @btc_transfer_context(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
