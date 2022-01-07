; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_privacy.c_btm_ble_clear_resolving_list.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_privacy.c_btm_ble_clear_resolving_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (...)* }

@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i32 0, align 4
@BTM_BLE_META_CLEAR_IRK_LIST = common dso_local global i32 0, align 4
@HCI_VENDOR_BLE_RPA_VSC = common dso_local global i32 0, align 4
@BTM_BLE_META_CLEAR_IRK_LEN = common dso_local global i32 0, align 4
@btm_ble_resolving_list_vsc_op_cmpl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_ble_clear_resolving_list() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i32], align 16
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %4, i32* %1, align 4
  %5 = call %struct.TYPE_2__* (...) @controller_get_interface()
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64 (...)*, i64 (...)** %6, align 8
  %8 = call i64 (...) %7()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = call i64 (...) @btsnd_hcic_ble_clear_resolving_list()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %13, %10
  br label %27

16:                                               ; preds = %0
  %17 = bitcast [20 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 80, i1 false)
  %18 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @BTM_BLE_META_CLEAR_IRK_LIST, align 4
  %21 = call i32 @UINT8_TO_STREAM(i32* %19, i32 %20)
  %22 = load i32, i32* @HCI_VENDOR_BLE_RPA_VSC, align 4
  %23 = load i32, i32* @BTM_BLE_META_CLEAR_IRK_LEN, align 4
  %24 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %25 = load i32, i32* @btm_ble_resolving_list_vsc_op_cmpl, align 4
  %26 = call i32 @BTM_VendorSpecificCommand(i32 %22, i32 %23, i32* %24, i32 %25)
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %16, %15
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local %struct.TYPE_2__* @controller_get_interface(...) #1

declare dso_local i64 @btsnd_hcic_ble_clear_resolving_list(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #1

declare dso_local i32 @BTM_VendorSpecificCommand(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
