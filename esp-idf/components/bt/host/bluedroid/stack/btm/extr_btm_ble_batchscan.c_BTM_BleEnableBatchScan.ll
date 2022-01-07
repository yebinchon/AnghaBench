; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_BTM_BleEnableBatchScan.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_BTM_BleEnableBatchScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i8*, i8*, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 (...)* }

@BTM_NO_RESOURCES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c" BTM_BleEnableBatchScan: %d, %d, %d, %d, %d, %d\00", align 1
@BTM_ILLEGAL_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Controller does not support batch scan\00", align 1
@BTM_ERR_PROCESSING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"BTM_BleEnableBatchScan: %d, %x, %x, %d, %d\00", align 1
@ble_batchscan_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@BTM_BLE_SCAN_INT_MIN = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_INT_MAX = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_WIN_MIN = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_WIN_MAX = common dso_local global i32 0, align 4
@BTM_BLE_BATCH_SCAN_MODE_PASS = common dso_local global i64 0, align 8
@BTM_BLE_BATCH_SCAN_MODE_ACTI = common dso_local global i64 0, align 8
@BTM_BLE_BATCH_SCAN_MODE_PASS_ACTI = common dso_local global i64 0, align 8
@BTM_BLE_DISCARD_OLD_ITEMS = common dso_local global i64 0, align 8
@BTM_BLE_DISCARD_LOWER_RSSI_ITEMS = common dso_local global i64 0, align 8
@BTM_BLE_SCAN_INVALID_STATE = common dso_local global i64 0, align 8
@BTM_BLE_SCAN_DISABLED_STATE = common dso_local global i64 0, align 8
@BTM_BLE_SCAN_DISABLE_CALLED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEATURE = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_ENABLE_CALLED = common dso_local global i64 0, align 8
@BTM_BLE_BATCH_SCAN_SET_PARAMS = common dso_local global i32 0, align 4
@BTM_BLE_BATCH_SCAN_ENABLE_EVT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Illegal enable scan params\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BTM_BleEnableBatchScan(i64 %0, i8* %1, i8* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_5__, align 8
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i64, i64* @BTM_NO_RESOURCES, align 8
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i64, i64* %12, align 8
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %17, i8* %18, i8* %19, i32 %20, i64 %21, i32 %22)
  %24 = call %struct.TYPE_6__* (...) @controller_get_interface()
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32 (...)*, i32 (...)** %25, align 8
  %27 = call i32 (...) %26()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %6
  %30 = load i64, i64* @BTM_ILLEGAL_VALUE, align 8
  store i64 %30, i64* %7, align 8
  br label %130

31:                                               ; preds = %6
  %32 = call i32 @BTM_BleGetVendorCapabilities(%struct.TYPE_5__* %15)
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 0, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i64, i64* @BTM_ERR_PROCESSING, align 8
  store i64 %38, i64* %7, align 8
  br label %130

39:                                               ; preds = %31
  %40 = load i64, i64* %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ble_batchscan_cb, i32 0, i32 0), align 8
  %45 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %40, i8* %41, i8* %42, i64 %43, i64 %44)
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* @BTM_BLE_SCAN_INT_MIN, align 4
  %48 = load i32, i32* @BTM_BLE_SCAN_INT_MAX, align 4
  %49 = call i64 @BTM_BLE_ISVALID_PARAM(i8* %46, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %39
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* @BTM_BLE_SCAN_WIN_MIN, align 4
  %54 = load i32, i32* @BTM_BLE_SCAN_WIN_MAX, align 4
  %55 = call i64 @BTM_BLE_ISVALID_PARAM(i8* %52, i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %125

57:                                               ; preds = %51, %39
  %58 = load i64, i64* @BTM_BLE_BATCH_SCAN_MODE_PASS, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* @BTM_BLE_BATCH_SCAN_MODE_ACTI, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* @BTM_BLE_BATCH_SCAN_MODE_PASS_ACTI, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %125

69:                                               ; preds = %65, %61, %57
  %70 = load i64, i64* @BTM_BLE_DISCARD_OLD_ITEMS, align 8
  %71 = load i64, i64* %12, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* @BTM_BLE_DISCARD_LOWER_RSSI_ITEMS, align 8
  %75 = load i64, i64* %12, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %125

77:                                               ; preds = %73, %69
  %78 = load i64, i64* @BTM_BLE_SCAN_INVALID_STATE, align 8
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ble_batchscan_cb, i32 0, i32 0), align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* @BTM_BLE_SCAN_DISABLED_STATE, align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ble_batchscan_cb, i32 0, i32 0), align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* @BTM_BLE_SCAN_DISABLE_CALLED, align 8
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ble_batchscan_cb, i32 0, i32 0), align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %85, %81, %77
  %90 = load i32, i32* @TRUE, align 4
  %91 = call i64 @btm_ble_enable_disable_batchscan(i32 %90)
  store i64 %91, i64* %14, align 8
  %92 = load i64, i64* @BTM_CMD_STARTED, align 8
  %93 = load i64, i64* %14, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i64, i64* %14, align 8
  store i64 %96, i64* %7, align 8
  br label %130

97:                                               ; preds = %89
  %98 = load i32, i32* @BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEATURE, align 4
  %99 = load i64, i64* @BTM_BLE_SCAN_ENABLE_CALLED, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @btm_ble_batchscan_enq_op_q(i32 %98, i64 %99, i32 0, i32 %100)
  br label %102

102:                                              ; preds = %97, %85
  %103 = load i64, i64* %8, align 8
  store i64 %103, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ble_batchscan_cb, i32 0, i32 5), align 8
  %104 = load i8*, i8** %9, align 8
  store i8* %104, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ble_batchscan_cb, i32 0, i32 4), align 8
  %105 = load i8*, i8** %10, align 8
  store i8* %105, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ble_batchscan_cb, i32 0, i32 3), align 8
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ble_batchscan_cb, i32 0, i32 2), align 8
  %107 = load i64, i64* %12, align 8
  store i64 %107, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ble_batchscan_cb, i32 0, i32 1), align 8
  %108 = load i64, i64* %8, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i64, i64* %12, align 8
  %113 = call i64 @btm_ble_set_batchscan_param(i64 %108, i8* %109, i8* %110, i32 %111, i64 %112)
  store i64 %113, i64* %14, align 8
  %114 = load i64, i64* @BTM_CMD_STARTED, align 8
  %115 = load i64, i64* %14, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %102
  %118 = load i64, i64* %14, align 8
  store i64 %118, i64* %7, align 8
  br label %130

119:                                              ; preds = %102
  %120 = load i32, i32* @BTM_BLE_BATCH_SCAN_SET_PARAMS, align 4
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ble_batchscan_cb, i32 0, i32 0), align 8
  %122 = load i32, i32* @BTM_BLE_BATCH_SCAN_ENABLE_EVT, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @btm_ble_batchscan_enq_op_q(i32 %120, i64 %121, i32 %122, i32 %123)
  br label %128

125:                                              ; preds = %73, %65, %51
  %126 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i64, i64* @BTM_ILLEGAL_VALUE, align 8
  store i64 %127, i64* %7, align 8
  br label %130

128:                                              ; preds = %119
  %129 = load i64, i64* %14, align 8
  store i64 %129, i64* %7, align 8
  br label %130

130:                                              ; preds = %128, %125, %117, %95, %36, %29
  %131 = load i64, i64* %7, align 8
  ret i64 %131
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i64, i8*, i8*, i32, i64, i32) #1

declare dso_local %struct.TYPE_6__* @controller_get_interface(...) #1

declare dso_local i32 @BTM_BleGetVendorCapabilities(%struct.TYPE_5__*) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i64, i8*, i8*, i64, i64) #1

declare dso_local i64 @BTM_BLE_ISVALID_PARAM(i8*, i32, i32) #1

declare dso_local i64 @btm_ble_enable_disable_batchscan(i32) #1

declare dso_local i32 @btm_ble_batchscan_enq_op_q(i32, i64, i32, i32) #1

declare dso_local i64 @btm_ble_set_batchscan_param(i64, i8*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
