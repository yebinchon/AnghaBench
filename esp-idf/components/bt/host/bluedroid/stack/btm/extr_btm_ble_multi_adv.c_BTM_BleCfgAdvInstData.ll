; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_BTM_BleCfgAdvInstData.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_BTM_BleCfgAdvInstData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@BTM_BLE_MULTI_ADV_WRITE_DATA_LEN = common dso_local global i32 0, align 4
@BTM_BLE_MULTI_ADV_WRITE_SCAN_RSP_DATA = common dso_local global i64 0, align 8
@BTM_BLE_MULTI_ADV_WRITE_ADV_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Controller does not support Multi ADV\00", align 1
@BTM_ERR_PROCESSING = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"BTM_BleCfgAdvInstData called with inst_id:%d\00", align 1
@BTM_BLE_MULTI_ADV_MAX = common dso_local global i64 0, align 8
@BTM_BLE_MULTI_ADV_DEFAULT_STD = common dso_local global i64 0, align 8
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@HCI_BLE_MULTI_ADV_OCF = common dso_local global i32 0, align 4
@btm_ble_multi_adv_vsc_cmpl_cback = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@BTM_BLE_MULTI_ADV_DATA_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_BleCfgAdvInstData(i64 %0, i64 %1, i32 %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca %struct.TYPE_9__, align 8
  %18 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %19 = load i32, i32* @BTM_BLE_MULTI_ADV_WRITE_DATA_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  store i64* %22, i64** %12, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i64, i64* @BTM_BLE_MULTI_ADV_WRITE_SCAN_RSP_DATA, align 8
  br label %29

27:                                               ; preds = %4
  %28 = load i64, i64* @BTM_BLE_MULTI_ADV_WRITE_ADV_DATA, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i64 [ %26, %25 ], [ %28, %27 ]
  store i64 %30, i64* %13, align 8
  %31 = load i32, i32* @BTM_BLE_MULTI_ADV_WRITE_DATA_LEN, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %22, i64 %32
  %34 = getelementptr inbounds i64, i64* %33, i64 -1
  store i64* %34, i64** %16, align 8
  %35 = call i32 @BTM_BleGetVendorCapabilities(%struct.TYPE_9__* %17)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 0, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @BTM_ERR_PROCESSING, align 4
  store i32 %41, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %93

42:                                               ; preds = %29
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 0, i32 1), align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 0, i32 0), align 4
  %47 = call i32 @btm_ble_update_dmt_flag_bits(i32* %44, i32 %45, i32 %46)
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @BTM_BLE_MULTI_ADV_MAX, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %42
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @BTM_BLE_MULTI_ADV_DEFAULT_STD, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %42
  %58 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %58, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %93

59:                                               ; preds = %53
  %60 = load i32, i32* @BTM_BLE_MULTI_ADV_WRITE_DATA_LEN, align 4
  %61 = call i32 @memset(i64* %22, i32 0, i32 %60)
  %62 = load i64*, i64** %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @UINT8_TO_STREAM(i64* %62, i64 %63)
  %65 = load i64*, i64** %12, align 8
  %66 = getelementptr inbounds i64, i64* %65, i32 1
  store i64* %66, i64** %12, align 8
  store i64* %65, i64** %14, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = call i32 @btm_ble_build_adv_data(i32* %8, i64** %12, %struct.TYPE_10__* %67)
  %69 = load i64*, i64** %12, align 8
  %70 = ptrtoint i64* %69 to i64
  %71 = ptrtoint i64* %22 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 8
  %74 = sub nsw i64 %73, 2
  %75 = load i64*, i64** %14, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i64*, i64** %16, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @UINT8_TO_STREAM(i64* %76, i64 %77)
  %79 = load i32, i32* @HCI_BLE_MULTI_ADV_OCF, align 4
  %80 = load i32, i32* @BTM_BLE_MULTI_ADV_WRITE_DATA_LEN, align 4
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* @btm_ble_multi_adv_vsc_cmpl_cback, align 4
  %83 = call i32 @BTM_VendorSpecificCommand(i32 %79, i64 %81, i64* %22, i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* @BTM_CMD_STARTED, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %59
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i32, i32* @BTM_BLE_MULTI_ADV_DATA_EVT, align 4
  %90 = call i32 @btm_ble_multi_adv_enq_op_q(i64 %87, i64 %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %59
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %93

93:                                               ; preds = %91, %57, %39
  %94 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BTM_BleGetVendorCapabilities(%struct.TYPE_9__*) #2

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #2

declare dso_local i32 @btm_ble_update_dmt_flag_bits(i32*, i32, i32) #2

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i64) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @UINT8_TO_STREAM(i64*, i64) #2

declare dso_local i32 @btm_ble_build_adv_data(i32*, i64**, %struct.TYPE_10__*) #2

declare dso_local i32 @BTM_VendorSpecificCommand(i32, i64, i64*, i32) #2

declare dso_local i32 @btm_ble_multi_adv_enq_op_q(i64, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
