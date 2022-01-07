; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_privacy.c_btm_ble_remove_resolving_list_entry.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_privacy.c_btm_ble_remove_resolving_list_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 (...)*, i64 (...)* }

@BTM_WRONG_MODE = common dso_local global i64 0, align 8
@BTM_NO_RESOURCES = common dso_local global i64 0, align 8
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@BTM_BLE_META_REMOVE_IRK_ENTRY = common dso_local global i32 0, align 4
@HCI_VENDOR_BLE_RPA_VSC = common dso_local global i32 0, align 4
@BTM_BLE_META_REMOVE_IRK_LEN = common dso_local global i32 0, align 4
@btm_ble_resolving_list_vsc_op_cmpl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btm_ble_remove_resolving_list_entry(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [20 x i32], align 16
  %6 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = call %struct.TYPE_7__* (...) @controller_get_interface()
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i64 (...)*, i64 (...)** %8, align 8
  %10 = call i64 (...) %9()
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @BTM_WRONG_MODE, align 8
  store i64 %13, i64* %2, align 8
  br label %70

14:                                               ; preds = %1
  %15 = load i64, i64* @BTM_NO_RESOURCES, align 8
  store i64 %15, i64* %4, align 8
  %16 = call %struct.TYPE_7__* (...) @controller_get_interface()
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i64 (...)*, i64 (...)** %17, align 8
  %19 = call i64 (...) %18()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @btsnd_hcic_ble_rm_device_resolving_list(i32 %25, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i64, i64* @BTM_CMD_STARTED, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %32, %21
  br label %58

35:                                               ; preds = %14
  %36 = bitcast [20 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %36, i8 0, i64 80, i1 false)
  %37 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @BTM_BLE_META_REMOVE_IRK_ENTRY, align 4
  %40 = call i32 @UINT8_TO_STREAM(i32* %38, i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @UINT8_TO_STREAM(i32* %41, i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @BDADDR_TO_STREAM(i32* %47, i32 %51)
  %53 = load i32, i32* @HCI_VENDOR_BLE_RPA_VSC, align 4
  %54 = load i32, i32* @BTM_BLE_META_REMOVE_IRK_LEN, align 4
  %55 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %56 = load i32, i32* @btm_ble_resolving_list_vsc_op_cmpl, align 4
  %57 = call i64 @BTM_VendorSpecificCommand(i32 %53, i32 %54, i32* %55, i32 %56)
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %35, %34
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @BTM_CMD_STARTED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BTM_BLE_META_REMOVE_IRK_ENTRY, align 4
  %67 = call i32 @btm_ble_enq_resolving_list_pending(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %58
  %69 = load i64, i64* %4, align 8
  store i64 %69, i64* %2, align 8
  br label %70

70:                                               ; preds = %68, %12
  %71 = load i64, i64* %2, align 8
  ret i64 %71
}

declare dso_local %struct.TYPE_7__* @controller_get_interface(...) #1

declare dso_local i64 @btsnd_hcic_ble_rm_device_resolving_list(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #1

declare dso_local i32 @BDADDR_TO_STREAM(i32*, i32) #1

declare dso_local i64 @BTM_VendorSpecificCommand(i32, i32, i32*, i32) #1

declare dso_local i32 @btm_ble_enq_resolving_list_pending(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
