; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_hid_device_demo/main/extr_esp_hidd_prf_api.c_esp_hidd_profile_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_hid_device_demo/main/extr_esp_hidd_prf_api.c_esp_hidd_profile_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@hidd_le_env = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@HIDD_LE_IDX_SVC = common dso_local global i64 0, align 8
@HID_LE_PRF_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"HID device profile already initialized\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_hidd_profile_deinit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hidd_le_env, i32 0, i32 2, i32 0), align 8
  %4 = load i64, i64* @HIDD_LE_IDX_SVC, align 8
  %5 = getelementptr inbounds i64, i64* %3, i64 %4
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hidd_le_env, i32 0, i32 1), align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @HID_LE_PRF_TAG, align 4
  %11 = call i32 @ESP_LOGE(i32 %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ESP_OK, align 4
  store i32 %12, i32* %1, align 4
  br label %27

13:                                               ; preds = %0
  %14 = load i64, i64* %2, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @esp_ble_gatts_stop_service(i64 %17)
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @esp_ble_gatts_delete_service(i64 %19)
  br label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @ESP_FAIL, align 4
  store i32 %22, i32* %1, align 4
  br label %27

23:                                               ; preds = %16
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hidd_le_env, i32 0, i32 0), align 8
  %25 = call i32 @esp_ble_gatts_app_unregister(i32 %24)
  %26 = load i32, i32* @ESP_OK, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %23, %21, %9
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_ble_gatts_stop_service(i64) #1

declare dso_local i32 @esp_ble_gatts_delete_service(i64) #1

declare dso_local i32 @esp_ble_gatts_app_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
