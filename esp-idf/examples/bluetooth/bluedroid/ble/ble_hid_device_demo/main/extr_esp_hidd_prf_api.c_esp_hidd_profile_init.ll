; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_hid_device_demo/main/extr_esp_hidd_prf_api.c_esp_hidd_profile_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_hid_device_demo/main/extr_esp_hidd_prf_api.c_esp_hidd_profile_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@hidd_le_env = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@HID_LE_PRF_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"HID device profile already initialized\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_hidd_profile_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @hidd_le_env, i32 0, i32 0), align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @HID_LE_PRF_TAG, align 4
  %6 = call i32 @ESP_LOGE(i32 %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @ESP_FAIL, align 4
  store i32 %7, i32* %1, align 4
  br label %11

8:                                                ; preds = %0
  %9 = call i32 @memset(%struct.TYPE_3__* @hidd_le_env, i32 0, i32 4)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @hidd_le_env, i32 0, i32 0), align 4
  %10 = load i32, i32* @ESP_OK, align 4
  store i32 %10, i32* %1, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = load i32, i32* %1, align 4
  ret i32 %12
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
