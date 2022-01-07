; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_hf_ag_api.c_esp_bt_hf_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_hf_ag_api.c_esp_bt_hf_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@ESP_BLUEDROID_STATUS_ENABLED = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_HF = common dso_local global i32 0, align 4
@BTC_HF_DEINIT_EVT = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_bt_hf_deinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = call i64 (...) @esp_bluedroid_get_status()
  %8 = load i64, i64* @ESP_BLUEDROID_STATUS_ENABLED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %11, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @BTC_PID_HF, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @BTC_HF_DEINIT_EVT, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = call i32 @memset(%struct.TYPE_7__* %5, i32 0, i32 4)
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @memcpy(i32* %20, i32 %21, i32 4)
  %23 = call i64 @btc_transfer_context(%struct.TYPE_6__* %4, %struct.TYPE_7__* %5, i32 4, i32* null)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %12
  %28 = load i32, i32* @ESP_OK, align 4
  br label %31

29:                                               ; preds = %12
  %30 = load i32, i32* @ESP_FAIL, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @esp_bluedroid_get_status(...) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @btc_transfer_context(%struct.TYPE_6__*, %struct.TYPE_7__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
