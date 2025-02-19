; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c_btc_storage_get_num_ble_bond_devices.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_ble_storage.c_btc_storage_get_num_ble_bond_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTC_BLE_STORAGE_DEV_TYPE_STR = common dso_local global i32 0, align 4
@BT_DEVICE_TYPE_BLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_storage_get_num_ble_bond_devices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %5 = call i32 (...) @btc_config_lock()
  %6 = call i32* (...) @btc_config_section_begin()
  store i32* %6, i32** %3, align 8
  br label %7

7:                                                ; preds = %31, %0
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* (...) @btc_config_section_end()
  %10 = icmp ne i32* %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @btc_config_section_name(i32* %12)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @string_is_bdaddr(i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @BTC_BLE_STORAGE_DEV_TYPE_STR, align 4
  %20 = call i32 @btc_config_get_int(i8* %18, i32 %19, i32* %2)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @BT_DEVICE_TYPE_BLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %17, %11
  br label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %28, %27
  %32 = load i32*, i32** %3, align 8
  %33 = call i32* @btc_config_section_next(i32* %32)
  store i32* %33, i32** %3, align 8
  br label %7

34:                                               ; preds = %7
  %35 = call i32 (...) @btc_config_unlock()
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @btc_config_lock(...) #1

declare dso_local i32* @btc_config_section_begin(...) #1

declare dso_local i32* @btc_config_section_end(...) #1

declare dso_local i8* @btc_config_section_name(i32*) #1

declare dso_local i32 @string_is_bdaddr(i8*) #1

declare dso_local i32 @btc_config_get_int(i8*, i32, i32*) #1

declare dso_local i32* @btc_config_section_next(i32*) #1

declare dso_local i32 @btc_config_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
