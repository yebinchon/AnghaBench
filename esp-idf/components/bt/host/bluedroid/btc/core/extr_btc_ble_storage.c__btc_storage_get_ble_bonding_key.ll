; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c__btc_storage_get_ble_bonding_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c__btc_storage_get_ble_bonding_key.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32)* @_btc_storage_get_ble_bonding_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_btc_storage_get_ble_bonding_key(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @bdaddr_to_string(i32* %14, i32 %15, i32 4)
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %30 [
    i32 129, label %18
    i32 128, label %20
    i32 130, label %22
    i32 132, label %24
    i32 133, label %26
    i32 131, label %28
  ]

18:                                               ; preds = %4
  %19 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_PENC_STR, align 8
  store i8* %19, i8** %11, align 8
  br label %32

20:                                               ; preds = %4
  %21 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_PID_STR, align 8
  store i8* %21, i8** %11, align 8
  br label %32

22:                                               ; preds = %4
  %23 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_PCSRK_STR, align 8
  store i8* %23, i8** %11, align 8
  br label %32

24:                                               ; preds = %4
  %25 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_LENC_STR, align 8
  store i8* %25, i8** %11, align 8
  br label %32

26:                                               ; preds = %4
  %27 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_LCSRK_STR, align 8
  store i8* %27, i8** %11, align 8
  br label %32

28:                                               ; preds = %4
  %29 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_LID_STR, align 8
  store i8* %29, i8** %11, align 8
  br label %30

30:                                               ; preds = %4, %28
  %31 = load i32, i32* @BT_STATUS_FAIL, align 4
  store i32 %31, i32* %5, align 4
  br label %48

32:                                               ; preds = %26, %24, %22, %20, %18
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %12, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = call i32 @btc_config_get_bin(i32 %35, i8* %36, i32* %38, i64* %12)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @BT_STATUS_SUCCESS, align 4
  br label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @BT_STATUS_FAIL, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %30
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @bdaddr_to_string(i32*, i32, i32) #1

declare dso_local i32 @btc_config_get_bin(i32, i8*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
