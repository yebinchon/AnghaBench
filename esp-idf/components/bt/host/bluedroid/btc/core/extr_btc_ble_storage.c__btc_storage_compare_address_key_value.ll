; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c__btc_storage_compare_address_key_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c__btc_storage_compare_address_key_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTC_BLE_STORAGE_LE_KEY_PENC_STR = common dso_local global i8* null, align 8
@BTC_BLE_STORAGE_LE_KEY_PID_STR = common dso_local global i8* null, align 8
@BTC_BLE_STORAGE_LE_KEY_PCSRK_STR = common dso_local global i8* null, align 8
@BTC_BLE_STORAGE_LE_KEY_LENC_STR = common dso_local global i8* null, align 8
@BTC_BLE_STORAGE_LE_KEY_LCSRK_STR = common dso_local global i8* null, align 8
@BTC_BLE_STORAGE_LE_KEY_LID_STR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_btc_storage_compare_address_key_value(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %10, align 4
  %14 = call i32 @bdaddr_to_string(i32* %12, i32 %13, i32 4)
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %28 [
    i32 129, label %16
    i32 128, label %18
    i32 130, label %20
    i32 132, label %22
    i32 133, label %24
    i32 131, label %26
  ]

16:                                               ; preds = %4
  %17 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_PENC_STR, align 8
  store i8* %17, i8** %11, align 8
  br label %29

18:                                               ; preds = %4
  %19 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_PID_STR, align 8
  store i8* %19, i8** %11, align 8
  br label %29

20:                                               ; preds = %4
  %21 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_PCSRK_STR, align 8
  store i8* %21, i8** %11, align 8
  br label %29

22:                                               ; preds = %4
  %23 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_LENC_STR, align 8
  store i8* %23, i8** %11, align 8
  br label %29

24:                                               ; preds = %4
  %25 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_LCSRK_STR, align 8
  store i8* %25, i8** %11, align 8
  br label %29

26:                                               ; preds = %4
  %27 = load i8*, i8** @BTC_BLE_STORAGE_LE_KEY_LID_STR, align 8
  store i8* %27, i8** %11, align 8
  br label %28

28:                                               ; preds = %4, %26
  store i32 0, i32* %5, align 4
  br label %35

29:                                               ; preds = %24, %22, %20, %18, %16
  %30 = load i32, i32* %10, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @btc_compare_address_key_value(i32 %30, i8* %31, i8* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %29, %28
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @bdaddr_to_string(i32*, i32, i32) #1

declare dso_local i32 @btc_compare_address_key_value(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
