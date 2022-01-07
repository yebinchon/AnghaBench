; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/hci/controller_vhci_ble_adv/main/extr_app_bt.c_make_cmd_ble_set_adv_param.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/hci/controller_vhci_ble_adv/main/extr_app_bt.c_make_cmd_ble_set_adv_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H4_TYPE_COMMAND = common dso_local global i64 0, align 8
@HCI_BLE_WRITE_ADV_PARAMS = common dso_local global i64 0, align 8
@HCIC_PARAM_SIZE_BLE_WRITE_ADV_PARAMS = common dso_local global i64 0, align 8
@HCI_H4_CMD_PREAMBLE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i64, i64, i64, i64, i32, i64, i64)* @make_cmd_ble_set_adv_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @make_cmd_ble_set_adv_param(i64* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6, i64 %7, i64 %8) #0 {
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64* %0, i64** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  store i64 %8, i64* %18, align 8
  %19 = load i64*, i64** %10, align 8
  %20 = load i64, i64* @H4_TYPE_COMMAND, align 8
  %21 = call i32 @UINT8_TO_STREAM(i64* %19, i64 %20)
  %22 = load i64*, i64** %10, align 8
  %23 = load i64, i64* @HCI_BLE_WRITE_ADV_PARAMS, align 8
  %24 = call i32 @UINT16_TO_STREAM(i64* %22, i64 %23)
  %25 = load i64*, i64** %10, align 8
  %26 = load i64, i64* @HCIC_PARAM_SIZE_BLE_WRITE_ADV_PARAMS, align 8
  %27 = call i32 @UINT8_TO_STREAM(i64* %25, i64 %26)
  %28 = load i64*, i64** %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @UINT16_TO_STREAM(i64* %28, i64 %29)
  %31 = load i64*, i64** %10, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @UINT16_TO_STREAM(i64* %31, i64 %32)
  %34 = load i64*, i64** %10, align 8
  %35 = load i64, i64* %13, align 8
  %36 = call i32 @UINT8_TO_STREAM(i64* %34, i64 %35)
  %37 = load i64*, i64** %10, align 8
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @UINT8_TO_STREAM(i64* %37, i64 %38)
  %40 = load i64*, i64** %10, align 8
  %41 = load i64, i64* %15, align 8
  %42 = call i32 @UINT8_TO_STREAM(i64* %40, i64 %41)
  %43 = load i64*, i64** %10, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @BDADDR_TO_STREAM(i64* %43, i32 %44)
  %46 = load i64*, i64** %10, align 8
  %47 = load i64, i64* %17, align 8
  %48 = call i32 @UINT8_TO_STREAM(i64* %46, i64 %47)
  %49 = load i64*, i64** %10, align 8
  %50 = load i64, i64* %18, align 8
  %51 = call i32 @UINT8_TO_STREAM(i64* %49, i64 %50)
  %52 = load i64, i64* @HCI_H4_CMD_PREAMBLE_SIZE, align 8
  %53 = load i64, i64* @HCIC_PARAM_SIZE_BLE_WRITE_ADV_PARAMS, align 8
  %54 = add nsw i64 %52, %53
  ret i64 %54
}

declare dso_local i32 @UINT8_TO_STREAM(i64*, i64) #1

declare dso_local i32 @UINT16_TO_STREAM(i64*, i64) #1

declare dso_local i32 @BDADDR_TO_STREAM(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
