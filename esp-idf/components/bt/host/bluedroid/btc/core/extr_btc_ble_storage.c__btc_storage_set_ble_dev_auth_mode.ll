; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c__btc_storage_set_ble_dev_auth_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c__btc_storage_set_ble_dev_auth_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTC_BLE_STORAGE_LE_AUTH_MODE_STR = common dso_local global i32 0, align 4
@BT_STATUS_FAIL = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32)* @_btc_storage_set_ble_dev_auth_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_btc_storage_set_ble_dev_auth_mode(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %9, align 4
  %12 = call i32 @bdaddr_to_string(i32* %10, i32 %11, i32 4)
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @BTC_BLE_STORAGE_LE_AUTH_MODE_STR, align 4
  %15 = load i64, i64* %6, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @btc_config_set_int(i32 %13, i32 %14, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @BT_STATUS_FAIL, align 4
  store i32 %21, i32* %4, align 4
  br label %29

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (...) @_btc_storage_save()
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32, i32* @BT_STATUS_SUCCESS, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %20
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @bdaddr_to_string(i32*, i32, i32) #1

declare dso_local i32 @btc_config_set_int(i32, i32, i32) #1

declare dso_local i32 @_btc_storage_save(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
