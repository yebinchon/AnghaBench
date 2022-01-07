; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_btm_ble_update_addr_filter.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_btm_ble_update_addr_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@BTM_BLE_META_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_BLE_ADV_FILT_META_HDR_LENGTH = common dso_local global i32 0, align 4
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@BTM_BLE_META_PF_ADDR = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_COND_ADD = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_COND_DELETE = common dso_local global i32 0, align 4
@HCI_BLE_ADV_FILTER_OCF = common dso_local global i32 0, align 4
@btm_ble_scan_pf_cmpl_cback = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@btm_ble_adv_filt_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"Broadcaster Address Filter Update failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_ble_update_addr_filter(i32 %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %14 = load i32, i32* @BTM_BLE_META_ADDR_LEN, align 4
  %15 = load i32, i32* @BTM_BLE_ADV_FILT_META_HDR_LENGTH, align 4
  %16 = add nsw i32 %14, %15
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = icmp eq %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %27

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi %struct.TYPE_6__* [ null, %23 ], [ %26, %24 ]
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %12, align 8
  %29 = load i32, i32* @BTM_BLE_META_ADDR_LEN, align 4
  %30 = load i32, i32* @BTM_BLE_ADV_FILT_META_HDR_LENGTH, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i32 @memset(i32* %19, i32 0, i32 %31)
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @BTM_BLE_META_PF_ADDR, align 4
  %35 = call i32 @UINT8_TO_STREAM(i32* %33, i32 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @UINT8_TO_STREAM(i32* %36, i32 %37)
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @UINT8_TO_STREAM(i32* %39, i32 %40)
  %42 = load i32, i32* @BTM_BLE_SCAN_COND_ADD, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %27
  %46 = load i32, i32* @BTM_BLE_SCAN_COND_DELETE, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %45, %27
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %51 = icmp eq %struct.TYPE_6__* null, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %80

54:                                               ; preds = %49
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @BDADDR_TO_STREAM(i32* %55, i32 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @UINT8_TO_STREAM(i32* %60, i32 %63)
  br label %65

65:                                               ; preds = %54, %45
  %66 = load i32, i32* @HCI_BLE_ADV_FILTER_OCF, align 4
  %67 = load i32, i32* @BTM_BLE_ADV_FILT_META_HDR_LENGTH, align 4
  %68 = load i32, i32* @BTM_BLE_META_ADDR_LEN, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* @btm_ble_scan_pf_cmpl_cback, align 4
  %71 = call i32 @BTM_VendorSpecificCommand(i32 %66, i32 %69, i32* %19, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* @BTM_NO_RESOURCES, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = call i32 @memset(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_ble_adv_filt_cb, i32 0, i32 0), i32 0, i32 8)
  br label %78

76:                                               ; preds = %65
  %77 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %74
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %80

80:                                               ; preds = %78, %52
  %81 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #2

declare dso_local i32 @BDADDR_TO_STREAM(i32*, i32) #2

declare dso_local i32 @BTM_VendorSpecificCommand(i32, i32, i32*, i32) #2

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
