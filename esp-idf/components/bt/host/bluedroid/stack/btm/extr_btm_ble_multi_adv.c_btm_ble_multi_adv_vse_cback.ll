; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_btm_ble_multi_adv_vse_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_btm_ble_multi_adv_vse_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"btm_ble_multi_adv_vse_cback called with event:%d\00", align 1
@HCI_VSE_SUBCODE_BLE_MULTI_ADV_ST_CHG = common dso_local global i64 0, align 8
@MAX_L2CAP_LINKS = common dso_local global i64 0, align 8
@BTM_BLE_MULTI_ADV_DEFAULT_STD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"btm_ble_multi_adv_reenable called\00", align 1
@btm_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@BTM_BLE_CONNECTABLE = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_BLE_MULTI_ADV_MAX = common dso_local global i64 0, align 8
@BTM_PRIVACY_NONE = common dso_local global i64 0, align 8
@btm_multi_adv_cb = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_multi_adv_vse_cback(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = call i32 @STREAM_TO_UINT8(i64 %9, i64* %10)
  %12 = load i64, i64* %3, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 (i8*, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @HCI_VSE_SUBCODE_BLE_MULTI_ADV_ST_CHG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %2
  %20 = load i64, i64* %3, align 8
  %21 = icmp sge i64 %20, 4
  br i1 %21, label %22, label %62

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = call i32 @STREAM_TO_UINT8(i64 %23, i64* %24)
  %26 = load i64*, i64** %4, align 8
  %27 = getelementptr inbounds i64, i64* %26, i32 1
  store i64* %27, i64** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i64*, i64** %4, align 8
  %30 = call i32 @STREAM_TO_UINT16(i32 %28, i64* %29)
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @btm_handle_to_acl_index(i32 %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* @MAX_L2CAP_LINKS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %22
  %37 = load i64, i64* %6, align 8
  %38 = call i64 (...) @BTM_BleMaxMultiAdvInstanceCount()
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @BTM_BLE_MULTI_ADV_DEFAULT_STD, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = call i32 (i8*, ...) @BTM_TRACE_EVENT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @btm_ble_multi_adv_reenable(i64 %46)
  br label %61

48:                                               ; preds = %40, %36
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @BTM_BLE_MULTI_ADV_DEFAULT_STD, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 0, i32 1, i32 0), align 8
  %54 = load i64, i64* @BTM_BLE_CONNECTABLE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @btm_cb, i32 0, i32 0, i32 1, i32 0), align 8
  %58 = call i32 @btm_ble_set_connectability(i64 %57)
  br label %59

59:                                               ; preds = %56, %52
  br label %60

60:                                               ; preds = %59, %48
  br label %61

61:                                               ; preds = %60, %44
  br label %62

62:                                               ; preds = %61, %19, %2
  ret void
}

declare dso_local i32 @STREAM_TO_UINT8(i64, i64*) #1

declare dso_local i32 @BTM_TRACE_EVENT(i8*, ...) #1

declare dso_local i32 @STREAM_TO_UINT16(i32, i64*) #1

declare dso_local i64 @btm_handle_to_acl_index(i32) #1

declare dso_local i64 @BTM_BleMaxMultiAdvInstanceCount(...) #1

declare dso_local i32 @btm_ble_multi_adv_reenable(i64) #1

declare dso_local i32 @btm_ble_set_connectability(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
