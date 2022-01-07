; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c__btc_storage_add_ble_local_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c__btc_storage_add_ble_local_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTC_BLE_STORAGE_LE_LOCAL_KEY_IR_STR = common dso_local global i8* null, align 8
@BTC_BLE_STORAGE_LE_LOCAL_KEY_IRK_STR = common dso_local global i8* null, align 8
@BTC_BLE_STORAGE_LE_LOCAL_KEY_DHK_STR = common dso_local global i8* null, align 8
@BTC_BLE_STORAGE_LE_LOCAL_KEY_ER_STR = common dso_local global i8* null, align 8
@BT_STATUS_FAIL = common dso_local global i32 0, align 4
@BTC_BLE_STORAGE_LOCAL_ADAPTER_STR = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @_btc_storage_add_ble_local_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_btc_storage_add_ble_local_key(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %19 [
    i32 129, label %11
    i32 128, label %13
    i32 131, label %15
    i32 130, label %17
  ]

11:                                               ; preds = %3
  %12 = load i8*, i8** @BTC_BLE_STORAGE_LE_LOCAL_KEY_IR_STR, align 8
  store i8* %12, i8** %8, align 8
  br label %21

13:                                               ; preds = %3
  %14 = load i8*, i8** @BTC_BLE_STORAGE_LE_LOCAL_KEY_IRK_STR, align 8
  store i8* %14, i8** %8, align 8
  br label %21

15:                                               ; preds = %3
  %16 = load i8*, i8** @BTC_BLE_STORAGE_LE_LOCAL_KEY_DHK_STR, align 8
  store i8* %16, i8** %8, align 8
  br label %21

17:                                               ; preds = %3
  %18 = load i8*, i8** @BTC_BLE_STORAGE_LE_LOCAL_KEY_ER_STR, align 8
  store i8* %18, i8** %8, align 8
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @BT_STATUS_FAIL, align 4
  store i32 %20, i32* %4, align 4
  br label %37

21:                                               ; preds = %17, %15, %13, %11
  %22 = load i32, i32* @BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @btc_config_set_bin(i32 %22, i8* %23, i32* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = call i32 (...) @_btc_storage_save()
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @BT_STATUS_SUCCESS, align 4
  br label %35

33:                                               ; preds = %21
  %34 = load i32, i32* @BT_STATUS_FAIL, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @btc_config_set_bin(i32, i8*, i32*, i32) #1

declare dso_local i32 @_btc_storage_save(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
