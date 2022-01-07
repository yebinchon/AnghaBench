; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c__btc_storage_remove_ble_local_keys.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c__btc_storage_remove_ble_local_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTC_BLE_STORAGE_LOCAL_ADAPTER_STR = common dso_local global i32 0, align 4
@BTC_BLE_STORAGE_LE_LOCAL_KEY_IR_STR = common dso_local global i32 0, align 4
@BTC_BLE_STORAGE_LE_LOCAL_KEY_IRK_STR = common dso_local global i32 0, align 4
@BTC_BLE_STORAGE_LE_LOCAL_KEY_DHK_STR = common dso_local global i32 0, align 4
@BTC_BLE_STORAGE_LE_LOCAL_KEY_ER_STR = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@BT_STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @_btc_storage_remove_ble_local_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_btc_storage_remove_ble_local_keys() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %2 = load i32, i32* @BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, align 4
  %3 = load i32, i32* @BTC_BLE_STORAGE_LE_LOCAL_KEY_IR_STR, align 4
  %4 = call i64 @btc_config_exist(i32 %2, i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, align 4
  %8 = load i32, i32* @BTC_BLE_STORAGE_LE_LOCAL_KEY_IR_STR, align 4
  %9 = call i32 @btc_config_remove(i32 %7, i32 %8)
  %10 = load i32, i32* %1, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %6, %0
  %13 = load i32, i32* @BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, align 4
  %14 = load i32, i32* @BTC_BLE_STORAGE_LE_LOCAL_KEY_IRK_STR, align 4
  %15 = call i64 @btc_config_exist(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i32, i32* @BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, align 4
  %19 = load i32, i32* @BTC_BLE_STORAGE_LE_LOCAL_KEY_IRK_STR, align 4
  %20 = call i32 @btc_config_remove(i32 %18, i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %17, %12
  %24 = load i32, i32* @BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, align 4
  %25 = load i32, i32* @BTC_BLE_STORAGE_LE_LOCAL_KEY_DHK_STR, align 4
  %26 = call i64 @btc_config_exist(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* @BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, align 4
  %30 = load i32, i32* @BTC_BLE_STORAGE_LE_LOCAL_KEY_DHK_STR, align 4
  %31 = call i32 @btc_config_remove(i32 %29, i32 %30)
  %32 = load i32, i32* %1, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i32, i32* @BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, align 4
  %36 = load i32, i32* @BTC_BLE_STORAGE_LE_LOCAL_KEY_ER_STR, align 4
  %37 = call i64 @btc_config_exist(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, align 4
  %41 = load i32, i32* @BTC_BLE_STORAGE_LE_LOCAL_KEY_ER_STR, align 4
  %42 = call i32 @btc_config_remove(i32 %40, i32 %41)
  %43 = load i32, i32* %1, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %39, %34
  %46 = call i32 (...) @_btc_storage_save()
  %47 = load i32, i32* %1, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @BT_STATUS_SUCCESS, align 4
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @BT_STATUS_FAIL, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  ret i32 %54
}

declare dso_local i64 @btc_config_exist(i32, i32) #1

declare dso_local i32 @btc_config_remove(i32, i32) #1

declare dso_local i32 @_btc_storage_save(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
