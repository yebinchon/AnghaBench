; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gap_bt_api.c_esp_bt_gap_cancel_discovery.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_gap_bt_api.c_esp_bt_gap_cancel_discovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@ESP_BLUEDROID_STATUS_ENABLED = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_GAP_BT = common dso_local global i32 0, align 4
@BTC_GAP_BT_ACT_CANCEL_DISCOVERY = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_bt_gap_cancel_discovery() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = call i64 (...) @esp_bluedroid_get_status()
  %4 = load i64, i64* @ESP_BLUEDROID_STATUS_ENABLED, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %7, i32* %1, align 4
  br label %24

8:                                                ; preds = %0
  %9 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @BTC_PID_GAP_BT, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @BTC_GAP_BT_ACT_CANCEL_DISCOVERY, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = call i64 @btc_transfer_context(%struct.TYPE_3__* %2, i32* null, i32 0, i32* null)
  %16 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  %19 = load i32, i32* @ESP_OK, align 4
  br label %22

20:                                               ; preds = %8
  %21 = load i32, i32* @ESP_FAIL, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %22, %6
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i64 @esp_bluedroid_get_status(...) #1

declare dso_local i64 @btc_transfer_context(%struct.TYPE_3__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
