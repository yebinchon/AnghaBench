; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_BleSetRandAddress.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_BleSetRandAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@BTM_SET_STATIC_RAND_ADDR_FAIL = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@BTM_BLE_STOP_SCAN = common dso_local global i64 0, align 8
@BTM_BLE_STOP_ADV = common dso_local global i64 0, align 8
@BTM_BLE_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Advertising or scaning now, can't set randaddress %d\00", align 1
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_BLE_GAP_ADDR_BIT_RANDOM = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_BleSetRandAddress(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @BTM_SET_STATIC_RAND_ADDR_FAIL, align 4
  store i32 %7, i32* %2, align 4
  br label %43

8:                                                ; preds = %1
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 1, i32 0), align 8
  %10 = load i64, i64* @BTM_BLE_STOP_SCAN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 1, i32 0), align 8
  %14 = load i64, i64* @BTM_BLE_STOP_ADV, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 1, i32 0), align 8
  %18 = load i64, i64* @BTM_BLE_IDLE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 1, i32 0), align 8
  %22 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @BTM_SET_STATIC_RAND_ADDR_FAIL, align 4
  store i32 %23, i32* %2, align 4
  br label %43

24:                                               ; preds = %16, %12, %8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0, i32 2), align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @BD_ADDR_LEN, align 4
  %28 = call i32 @memcpy(i32 %25, i32* %26, i32 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0, i32 1), align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @BD_ADDR_LEN, align 4
  %32 = call i32 @memcpy(i32 %29, i32* %30, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @btsnd_hcic_ble_set_random_addr(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load i32, i32* @BTM_BLE_GAP_ADDR_BIT_RANDOM, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0, i32 0), align 8
  %39 = or i32 %38, %37
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0, i32 0), align 8
  %40 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %24
  %42 = load i32, i32* @BTM_SET_STATIC_RAND_ADDR_FAIL, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %36, %20, %6
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @BTM_TRACE_ERROR(i8*, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @btsnd_hcic_ble_set_random_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
