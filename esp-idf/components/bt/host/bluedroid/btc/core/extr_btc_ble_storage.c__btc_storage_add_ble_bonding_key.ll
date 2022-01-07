; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c__btc_storage_add_ble_bonding_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c__btc_storage_add_ble_bonding_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTC_BLE_STORAGE_LE_KEY_PENC_STR = common dso_local global i8* null, align 8
@BTC_BLE_STORAGE_LE_KEY_PID_STR = common dso_local global i8* null, align 8
@BTC_BLE_STORAGE_LE_KEY_PCSRK_STR = common dso_local global i8* null, align 8
@BTC_BLE_STORAGE_LE_KEY_LENC_STR = common dso_local global i8* null, align 8
@BTC_BLE_STORAGE_LE_KEY_LCSRK_STR = common dso_local global i8* null, align 8
@BTC_BLE_STORAGE_LE_KEY_LID_STR = common dso_local global i8* null, align 8
@BT_STATUS_FAIL = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @_btc_storage_add_ble_bonding_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_btc_storage_add_ble_bonding_key(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @bdaddr_to_string(i32* %13, i32 %14, i32 4)
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %29 [
    i32 129, label %17
    i32 128, label %19
    i32 130, label %21
    i32 132, label %23
    i32 133, label %25
    i32 131, label %27
  ]

17:                                               ; preds = %4
  %18 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_PENC_STR, align 8
  store i8* %18, i8** %11, align 8
  br label %31

19:                                               ; preds = %4
  %20 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_PID_STR, align 8
  store i8* %20, i8** %11, align 8
  br label %31

21:                                               ; preds = %4
  %22 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_PCSRK_STR, align 8
  store i8* %22, i8** %11, align 8
  br label %31

23:                                               ; preds = %4
  %24 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_LENC_STR, align 8
  store i8* %24, i8** %11, align 8
  br label %31

25:                                               ; preds = %4
  %26 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_LCSRK_STR, align 8
  store i8* %26, i8** %11, align 8
  br label %31

27:                                               ; preds = %4
  %28 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_LID_STR, align 8
  store i8* %28, i8** %11, align 8
  br label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @BT_STATUS_FAIL, align 4
  store i32 %30, i32* %5, align 4
  br label %47

31:                                               ; preds = %27, %25, %23, %21, %19, %17
  %32 = load i32, i32* %10, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @btc_config_set_bin(i32 %32, i8* %33, i32* %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = call i32 (...) @_btc_storage_save()
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @BT_STATUS_SUCCESS, align 4
  br label %45

43:                                               ; preds = %31
  %44 = load i32, i32* @BT_STATUS_FAIL, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %29
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @bdaddr_to_string(i32*, i32, i32) #1

declare dso_local i32 @btc_config_set_bin(i32, i8*, i32*, i32) #1

declare dso_local i32 @_btc_storage_save(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
