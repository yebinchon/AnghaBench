; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_set_batchscan_param.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_set_batchscan_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTM_BLE_BATCH_SCAN_PARAM_CONFIG_LEN = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@BTM_BLE_BATCH_SCAN_SET_PARAMS = common dso_local global i32 0, align 4
@HCI_BLE_BATCH_SCAN_OCF = common dso_local global i32 0, align 4
@btm_ble_batchscan_vsc_cmpl_cback = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"btm_ble_set_batchscan_param %d\00", align 1
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_ble_set_batchscan_param(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @BTM_BLE_BATCH_SCAN_PARAM_CONFIG_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  store i32* %21, i32** %15, align 8
  %22 = load i32, i32* @BTM_BLE_BATCH_SCAN_PARAM_CONFIG_LEN, align 4
  %23 = call i32 @memset(i32* %21, i32 0, i32 %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0, i32 0), align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** %15, align 8
  %26 = load i32, i32* @BTM_BLE_BATCH_SCAN_SET_PARAMS, align 4
  %27 = call i32 @UINT8_TO_STREAM(i32* %25, i32 %26)
  %28 = load i32*, i32** %15, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @UINT8_TO_STREAM(i32* %28, i32 %29)
  %31 = load i32*, i32** %15, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @UINT32_TO_STREAM(i32* %31, i32 %32)
  %34 = load i32*, i32** %15, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @UINT32_TO_STREAM(i32* %34, i32 %35)
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @UINT8_TO_STREAM(i32* %37, i32 %38)
  %40 = load i32*, i32** %15, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @UINT8_TO_STREAM(i32* %40, i32 %41)
  %43 = load i32, i32* @HCI_BLE_BATCH_SCAN_OCF, align 4
  %44 = load i32, i32* @BTM_BLE_BATCH_SCAN_PARAM_CONFIG_LEN, align 4
  %45 = load i32, i32* @btm_ble_batchscan_vsc_cmpl_cback, align 4
  %46 = call i32 @BTM_VendorSpecificCommand(i32 %43, i32 %44, i32* %21, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @BTM_CMD_STARTED, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %5
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %52, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %55

53:                                               ; preds = %5
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #2

declare dso_local i32 @UINT32_TO_STREAM(i32*, i32) #2

declare dso_local i32 @BTM_VendorSpecificCommand(i32, i32, i32*, i32) #2

declare dso_local i32 @BTM_TRACE_ERROR(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
