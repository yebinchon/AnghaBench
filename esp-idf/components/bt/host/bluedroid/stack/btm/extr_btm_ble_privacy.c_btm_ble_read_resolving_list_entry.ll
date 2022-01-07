; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_privacy.c_btm_ble_read_resolving_list_entry.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_privacy.c_btm_ble_read_resolving_list_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 (...)* }

@BTM_NO_RESOURCES = common dso_local global i64 0, align 8
@BTM_RESOLVING_LIST_BIT = common dso_local global i32 0, align 4
@BTM_WRONG_MODE = common dso_local global i64 0, align 8
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@BTM_BLE_META_READ_IRK_ENTRY = common dso_local global i32 0, align 4
@HCI_VENDOR_BLE_RPA_VSC = common dso_local global i32 0, align 4
@BTM_BLE_META_READ_IRK_LEN = common dso_local global i32 0, align 4
@btm_ble_resolving_list_vsc_op_cmpl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btm_ble_read_resolving_list_entry(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [20 x i32], align 16
  %6 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load i64, i64* @BTM_NO_RESOURCES, align 8
  store i64 %7, i64* %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BTM_RESOLVING_LIST_BIT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* @BTM_WRONG_MODE, align 8
  store i64 %16, i64* %2, align 8
  br label %66

17:                                               ; preds = %1
  %18 = call %struct.TYPE_7__* (...) @controller_get_interface()
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64 (...)*, i64 (...)** %19, align 8
  %21 = call i64 (...) %20()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @btsnd_hcic_ble_read_resolvable_addr_peer(i32 %27, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i64, i64* @BTM_CMD_STARTED, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %34, %23
  br label %54

37:                                               ; preds = %17
  %38 = bitcast [20 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %38, i8 0, i64 80, i1 false)
  %39 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @BTM_BLE_META_READ_IRK_ENTRY, align 4
  %42 = call i32 @UINT8_TO_STREAM(i32* %40, i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @UINT8_TO_STREAM(i32* %43, i32 %47)
  %49 = load i32, i32* @HCI_VENDOR_BLE_RPA_VSC, align 4
  %50 = load i32, i32* @BTM_BLE_META_READ_IRK_LEN, align 4
  %51 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %52 = load i32, i32* @btm_ble_resolving_list_vsc_op_cmpl, align 4
  %53 = call i64 @BTM_VendorSpecificCommand(i32 %49, i32 %50, i32* %51, i32 %52)
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %37, %36
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @BTM_CMD_STARTED, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BTM_BLE_META_READ_IRK_ENTRY, align 4
  %63 = call i32 @btm_ble_enq_resolving_list_pending(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %54
  %65 = load i64, i64* %4, align 8
  store i64 %65, i64* %2, align 8
  br label %66

66:                                               ; preds = %64, %15
  %67 = load i64, i64* %2, align 8
  ret i64 %67
}

declare dso_local %struct.TYPE_7__* @controller_get_interface(...) #1

declare dso_local i64 @btsnd_hcic_ble_read_resolvable_addr_peer(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #1

declare dso_local i64 @BTM_VendorSpecificCommand(i32, i32, i32*, i32) #1

declare dso_local i32 @btm_ble_enq_resolving_list_pending(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
