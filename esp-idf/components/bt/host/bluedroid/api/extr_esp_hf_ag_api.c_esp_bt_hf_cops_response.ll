; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_hf_ag_api.c_esp_bt_hf_cops_response.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_hf_ag_api.c_esp_bt_hf_cops_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }

@ESP_BLUEDROID_STATUS_ENABLED = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_HF = common dso_local global i32 0, align 4
@BTC_HF_COPS_RESPONSE_EVT = common dso_local global i32 0, align 4
@btc_hf_arg_deep_copy = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_bt_hf_cops_response(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = call i64 (...) @esp_bluedroid_get_status()
  %10 = load i64, i64* @ESP_BLUEDROID_STATUS_ENABLED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %13, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @BTC_PID_HF, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @BTC_HF_COPS_RESPONSE_EVT, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = call i32 @memset(%struct.TYPE_9__* %7, i32 0, i32 16)
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @memcpy(i32* %23, i32 %24, i32 4)
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @btc_hf_arg_deep_copy, align 4
  %30 = call i64 @btc_transfer_context(%struct.TYPE_8__* %6, %struct.TYPE_9__* %7, i32 16, i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = load i32, i32* @ESP_OK, align 4
  br label %38

36:                                               ; preds = %14
  %37 = load i32, i32* @ESP_FAIL, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @esp_bluedroid_get_status(...) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @btc_transfer_context(%struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
