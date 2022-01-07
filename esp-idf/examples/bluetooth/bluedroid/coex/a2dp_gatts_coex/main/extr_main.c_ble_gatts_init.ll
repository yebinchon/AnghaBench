; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/coex/a2dp_gatts_coex/main/extr_main.c_ble_gatts_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/coex/a2dp_gatts_coex/main/extr_main.c_ble_gatts_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gatts_event_handler = common dso_local global i32 0, align 4
@BT_BLE_COEX_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"gatts register error, error code = 0x%x\00", align 1
@gap_event_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"gap register error, error code = 0x%x\00", align 1
@PROFILE_A_APP_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"gatts app register error, error code = 0x%x\00", align 1
@PROFILE_B_APP_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"set local  MTU failed, error code = 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ble_gatts_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ble_gatts_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @gatts_event_handler, align 4
  %4 = call i64 @esp_ble_gatts_register_callback(i32 %3)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @ESP_LOGE(i32 %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %9)
  br label %46

11:                                               ; preds = %0
  %12 = load i32, i32* @gap_event_handler, align 4
  %13 = call i64 @esp_ble_gap_register_callback(i32 %12)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @ESP_LOGE(i32 %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  br label %46

20:                                               ; preds = %11
  %21 = load i32, i32* @PROFILE_A_APP_ID, align 4
  %22 = call i64 @esp_ble_gatts_app_register(i32 %21)
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %27 = load i64, i64* %1, align 8
  %28 = call i32 @ESP_LOGE(i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %27)
  br label %46

29:                                               ; preds = %20
  %30 = load i32, i32* @PROFILE_B_APP_ID, align 4
  %31 = call i64 @esp_ble_gatts_app_register(i32 %30)
  store i64 %31, i64* %1, align 8
  %32 = load i64, i64* %1, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @ESP_LOGE(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  br label %46

38:                                               ; preds = %29
  %39 = call i64 @esp_ble_gatt_set_local_mtu(i32 500)
  store i64 %39, i64* %2, align 8
  %40 = load i64, i64* %2, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @BT_BLE_COEX_TAG, align 4
  %44 = load i64, i64* %2, align 8
  %45 = call i32 @ESP_LOGE(i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %7, %16, %25, %34, %42, %38
  ret void
}

declare dso_local i64 @esp_ble_gatts_register_callback(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i64) #1

declare dso_local i64 @esp_ble_gap_register_callback(i32) #1

declare dso_local i64 @esp_ble_gatts_app_register(i32) #1

declare dso_local i64 @esp_ble_gatt_set_local_mtu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
