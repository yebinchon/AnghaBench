; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_timeout.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"btm_ble_timeout\00", align 1
@BTM_BLE_LIMITED_DISCOVERABLE = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@BLE_ADDR_RANDOM = common dso_local global i32 0, align 4
@btm_gen_resolve_paddr_low = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_timeout(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %49 [
    i32 130, label %7
    i32 128, label %9
    i32 131, label %11
    i32 132, label %13
    i32 129, label %21
    i32 133, label %47
  ]

7:                                                ; preds = %1
  %8 = call i32 (...) @btm_ble_stop_observe()
  br label %50

9:                                                ; preds = %1
  %10 = call i32 (...) @btm_ble_stop_discover()
  br label %50

11:                                               ; preds = %1
  %12 = call i32 (...) @btm_ble_stop_inquiry()
  br label %50

13:                                               ; preds = %1
  %14 = load i32, i32* @BTM_BLE_LIMITED_DISCOVERABLE, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 1, i32 0), align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 1, i32 0), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 1, i32 1), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 1, i32 0), align 4
  %20 = call i32 @btm_ble_set_adv_flag(i32 %18, i32 %19)
  br label %50

21:                                               ; preds = %1
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @btm_cb, i32 0, i32 0, i32 0, i32 0), align 4
  %23 = load i32, i32* @BLE_ADDR_RANDOM, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = icmp eq i8* null, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64, i64* @btm_gen_resolve_paddr_low, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @btm_gen_resolvable_private_addr(i8* %33)
  br label %45

35:                                               ; preds = %25
  %36 = call i32 (...) @BTM_BleMaxMultiAdvInstanceCount()
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = call i32 @btm_ble_multi_adv_configure_rpa(i32* %42)
  br label %44

44:                                               ; preds = %38, %35
  br label %45

45:                                               ; preds = %44, %31
  br label %46

46:                                               ; preds = %45, %21
  br label %50

47:                                               ; preds = %1
  %48 = call i32 (...) @btm_ble_start_slow_adv()
  br label %50

49:                                               ; preds = %1
  br label %50

50:                                               ; preds = %49, %47, %46, %13, %11, %9, %7
  ret void
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*) #1

declare dso_local i32 @btm_ble_stop_observe(...) #1

declare dso_local i32 @btm_ble_stop_discover(...) #1

declare dso_local i32 @btm_ble_stop_inquiry(...) #1

declare dso_local i32 @btm_ble_set_adv_flag(i32, i32) #1

declare dso_local i32 @btm_gen_resolvable_private_addr(i8*) #1

declare dso_local i32 @BTM_BleMaxMultiAdvInstanceCount(...) #1

declare dso_local i32 @btm_ble_multi_adv_configure_rpa(i32*) #1

declare dso_local i32 @btm_ble_start_slow_adv(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
