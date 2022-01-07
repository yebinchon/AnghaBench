; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_BTM_BleReadScanReports.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_BTM_BleReadScanReports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 (...)* }

@BTM_NO_RESOURCES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c" BTM_BleReadScanReports; %d, %d\00", align 1
@BTM_ILLEGAL_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Controller does not support batch scan\00", align 1
@BTM_ERR_PROCESSING = common dso_local global i64 0, align 8
@ble_batchscan_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@BTM_BLE_BATCH_SCAN_MODE_ACTI = common dso_local global i32 0, align 4
@BTM_BLE_BATCH_SCAN_MODE_PASS = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i64 0, align 8
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Illegal read scan params: %d, %d, %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BTM_BleReadScanReports(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i64, i64* @BTM_NO_RESOURCES, align 8
  store i64 %12, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = call %struct.TYPE_6__* (...) @controller_get_interface()
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32 (...)*, i32 (...)** %17, align 8
  %19 = call i32 (...) %18()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i64, i64* @BTM_ILLEGAL_VALUE, align 8
  store i64 %22, i64* %3, align 8
  br label %79

23:                                               ; preds = %2
  %24 = call i32 @BTM_BleGetVendorCapabilities(%struct.TYPE_5__* %7)
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 0, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i64, i64* @BTM_ERR_PROCESSING, align 8
  store i64 %30, i64* %3, align 8
  br label %79

31:                                               ; preds = %23
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ble_batchscan_cb, i32 0, i32 0), align 4
  %33 = load i32, i32* @BTM_BLE_BATCH_SCAN_MODE_ACTI, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 0, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ble_batchscan_cb, i32 0, i32 0), align 4
  %39 = load i32, i32* @BTM_BLE_BATCH_SCAN_MODE_PASS, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %41
  %45 = load i32, i32* @BTM_BLE_BATCH_SCAN_MODE_PASS, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @BTM_BLE_BATCH_SCAN_MODE_ACTI, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @btm_ble_batchscan_enq_rep_q(i32 %53, i32 %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* @BTM_SUCCESS, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @btm_ble_read_batchscan_reports(i32 %60, i32 %61)
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* @BTM_CMD_STARTED, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @btm_ble_batchscan_deq_rep_data(i32 %67, i32* %5, i32* %10, i32** %9, i32* %11)
  br label %69

69:                                               ; preds = %66, %59
  br label %70

70:                                               ; preds = %69, %52
  br label %77

71:                                               ; preds = %48, %41
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ble_batchscan_cb, i32 0, i32 1), align 4
  %75 = call i32 (i8*, ...) @BTM_TRACE_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %73, i32 %74)
  %76 = load i64, i64* @BTM_ILLEGAL_VALUE, align 8
  store i64 %76, i64* %3, align 8
  br label %79

77:                                               ; preds = %70
  %78 = load i64, i64* %6, align 8
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %77, %71, %28, %21
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @controller_get_interface(...) #1

declare dso_local i32 @BTM_BleGetVendorCapabilities(%struct.TYPE_5__*) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*, ...) #1

declare dso_local i64 @btm_ble_batchscan_enq_rep_q(i32, i32) #1

declare dso_local i64 @btm_ble_read_batchscan_reports(i32, i32) #1

declare dso_local i32 @btm_ble_batchscan_deq_rep_data(i32, i32*, i32*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
