; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_privacy.c_btm_ble_vendor_enable_irk_feature.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_privacy.c_btm_ble_vendor_enable_irk_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTM_MODE_UNSUPPORTED = common dso_local global i32 0, align 4
@BTM_BLE_META_IRK_ENABLE = common dso_local global i32 0, align 4
@HCI_VENDOR_BLE_RPA_VSC = common dso_local global i32 0, align 4
@BTM_BLE_IRK_ENABLE_LEN = common dso_local global i32 0, align 4
@btm_ble_resolving_list_vsc_op_cmpl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_ble_vendor_enable_irk_feature(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [20 x i32], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i32, i32* @BTM_MODE_UNSUPPORTED, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  store i32* %7, i32** %4, align 8
  %8 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %9 = call i32 @memset(i32* %8, i32 0, i32 20)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @BTM_BLE_META_IRK_ENABLE, align 4
  %12 = call i32 @UINT8_TO_STREAM(i32* %10, i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load i64, i64* %2, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  %18 = call i32 @UINT8_TO_STREAM(i32* %13, i32 %17)
  %19 = load i32, i32* @HCI_VENDOR_BLE_RPA_VSC, align 4
  %20 = load i32, i32* @BTM_BLE_IRK_ENABLE_LEN, align 4
  %21 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %22 = load i32, i32* @btm_ble_resolving_list_vsc_op_cmpl, align 4
  %23 = call i32 @BTM_VendorSpecificCommand(i32 %19, i32 %20, i32* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #1

declare dso_local i32 @BTM_VendorSpecificCommand(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
