; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_hf_ag_api.c_esp_bt_hf_cind_response.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/api/extr_esp_hf_ag_api.c_esp_bt_hf_cind_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ESP_BLUEDROID_STATUS_ENABLED = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_HF = common dso_local global i32 0, align 4
@BTC_HF_CIND_RESPONSE_EVT = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_bt_hf_cind_response(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_8__, align 4
  %19 = alloca %struct.TYPE_9__, align 4
  %20 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = call i64 (...) @esp_bluedroid_get_status()
  %22 = load i64, i64* @ESP_BLUEDROID_STATUS_ENABLED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %25, i32* %9, align 4
  br label %69

26:                                               ; preds = %8
  %27 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @BTC_PID_HF, align 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @BTC_HF_CIND_RESPONSE_EVT, align 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = call i32 @memset(%struct.TYPE_9__* %19, i32 0, i32 32)
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 7
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @memcpy(i32* %35, i32 %36, i32 4)
  %38 = load i32, i32* %11, align 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %12, align 4
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %13, align 4
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %14, align 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %15, align 4
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %16, align 4
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %17, align 4
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = call i64 @btc_transfer_context(%struct.TYPE_8__* %18, %struct.TYPE_9__* %19, i32 32, i32* null)
  store i64 %59, i64* %20, align 8
  %60 = load i64, i64* %20, align 8
  %61 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %26
  %64 = load i32, i32* @ESP_OK, align 4
  br label %67

65:                                               ; preds = %26
  %66 = load i32, i32* @ESP_FAIL, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %67, %24
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local i64 @esp_bluedroid_get_status(...) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @btc_transfer_context(%struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
