; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_enable_disable_batchscan.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_enable_disable_batchscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTM_BLE_BATCH_SCAN_ENB_DISB_LEN = common dso_local global i32 0, align 4
@BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEATURE = common dso_local global i32 0, align 4
@HCI_BLE_BATCH_SCAN_OCF = common dso_local global i32 0, align 4
@btm_ble_batchscan_vsc_cmpl_cback = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@BTM_MODE_UNSUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"btm_ble_enable_disable_batchscan %d\00", align 1
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@BTM_BLE_BATCH_SCAN_MODE_DISABLE = common dso_local global i32 0, align 4
@ble_batchscan_cb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@BTM_BLE_SCAN_ENABLE_CALLED = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_DISABLE_CALLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_ble_enable_disable_batchscan(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %10 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %10, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %11 = load i32, i32* @BTM_BLE_BATCH_SCAN_ENB_DISB_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %17, %1
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  store i32* %14, i32** %8, align 8
  %22 = load i32, i32* @BTM_BLE_BATCH_SCAN_ENB_DISB_LEN, align 4
  %23 = call i32 @memset(i32* %14, i32 0, i32 %22)
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEATURE, align 4
  %26 = call i32 @UINT8_TO_STREAM(i32* %24, i32 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @UINT8_TO_STREAM(i32* %27, i32 %28)
  %30 = load i32, i32* @HCI_BLE_BATCH_SCAN_OCF, align 4
  %31 = load i32, i32* @BTM_BLE_BATCH_SCAN_ENB_DISB_LEN, align 4
  %32 = load i32, i32* @btm_ble_batchscan_vsc_cmpl_cback, align 4
  %33 = call i32 @BTM_VendorSpecificCommand(i32 %30, i32 %31, i32* %14, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @BTM_CMD_STARTED, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load i32, i32* @BTM_MODE_UNSUPPORTED, align 4
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %66

41:                                               ; preds = %21
  br label %57

42:                                               ; preds = %18
  %43 = load i32, i32* @BTM_BLE_BATCH_SCAN_MODE_DISABLE, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_batchscan_cb, i32 0, i32 4), align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_batchscan_cb, i32 0, i32 3), align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_batchscan_cb, i32 0, i32 2), align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_batchscan_cb, i32 0, i32 1), align 4
  %48 = call i32 @btm_ble_set_batchscan_param(i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @BTM_CMD_STARTED, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load i32, i32* @BTM_MODE_UNSUPPORTED, align 4
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %66

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %41
  %58 = load i64, i64* %3, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @BTM_BLE_SCAN_ENABLE_CALLED, align 4
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_batchscan_cb, i32 0, i32 0), align 4
  br label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @BTM_BLE_SCAN_DISABLE_CALLED, align 4
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_batchscan_cb, i32 0, i32 0), align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %64, %51, %36
  %67 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #2

declare dso_local i32 @BTM_VendorSpecificCommand(i32, i32, i32*, i32) #2

declare dso_local i32 @BTM_TRACE_ERROR(i8*, i32) #2

declare dso_local i32 @btm_ble_set_batchscan_param(i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
