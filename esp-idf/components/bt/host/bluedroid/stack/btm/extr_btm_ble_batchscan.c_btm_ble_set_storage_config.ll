; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_set_storage_config.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_set_storage_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTM_BLE_BATCH_SCAN_STORAGE_CFG_LEN = common dso_local global i32 0, align 4
@BTM_BLE_BATCH_SCAN_SET_STORAGE_PARAM = common dso_local global i32 0, align 4
@HCI_BLE_BATCH_SCAN_OCF = common dso_local global i32 0, align 4
@btm_ble_batchscan_vsc_cmpl_cback = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"btm_ble_set_storage_config %d\00", align 1
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_ble_set_storage_config(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @BTM_BLE_BATCH_SCAN_STORAGE_CFG_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i32, i32* @BTM_BLE_BATCH_SCAN_STORAGE_CFG_LEN, align 4
  %19 = call i32 @memset(i32* %17, i32 0, i32 %18)
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* @BTM_BLE_BATCH_SCAN_SET_STORAGE_PARAM, align 4
  %22 = call i32 @UINT8_TO_STREAM(i32* %20, i32 %21)
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @UINT8_TO_STREAM(i32* %23, i32 %24)
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @UINT8_TO_STREAM(i32* %26, i32 %27)
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @UINT8_TO_STREAM(i32* %29, i32 %30)
  %32 = load i32, i32* @HCI_BLE_BATCH_SCAN_OCF, align 4
  %33 = load i32, i32* @BTM_BLE_BATCH_SCAN_STORAGE_CFG_LEN, align 4
  %34 = load i32, i32* @btm_ble_batchscan_vsc_cmpl_cback, align 4
  %35 = call i32 @BTM_VendorSpecificCommand(i32 %32, i32 %33, i32* %17, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @BTM_CMD_STARTED, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %44

42:                                               ; preds = %3
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #2

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
