; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_BleClearRandAddress.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_BleClearRandAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@btm_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@BLE_ADDR_RANDOM = common dso_local global i64 0, align 8
@BTM_BLE_STOP_SCAN = common dso_local global i64 0, align 8
@BTM_BLE_STOP_ADV = common dso_local global i64 0, align 8
@BTM_BLE_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Advertising or scaning now, can't restore public address \00", align 1
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_BLE_GAP_ADDR_BIT_RANDOM = common dso_local global i32 0, align 4
@BLE_ADDR_PUBLIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTM_BleClearRandAddress() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0), %struct.TYPE_7__** %1, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0, i32 0), align 8
  %3 = load i64, i64* @BLE_ADDR_RANDOM, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %28

5:                                                ; preds = %0
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BTM_BLE_STOP_SCAN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %28, label %12

12:                                               ; preds = %5
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BTM_BLE_STOP_ADV, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BTM_BLE_IDLE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %37

28:                                               ; preds = %19, %12, %5, %0
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0, i32 2), align 4
  %30 = load i32, i32* @BD_ADDR_LEN, align 4
  %31 = call i32 @memset(i32 %29, i32 0, i32 %30)
  %32 = load i32, i32* @BTM_BLE_GAP_ADDR_BIT_RANDOM, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0, i32 1), align 8
  %35 = and i32 %34, %33
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0, i32 1), align 8
  %36 = load i64, i64* @BLE_ADDR_PUBLIC, align 8
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0, i32 0), align 8
  br label %37

37:                                               ; preds = %28, %26
  ret void
}

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
