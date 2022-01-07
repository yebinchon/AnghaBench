; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_start_scan.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_start_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }

@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@scan_enable_lock = common dso_local global i32 0, align 4
@OSI_MUTEX_MAX_TIMEOUT = common dso_local global i32 0, align 4
@BTM_BLE_DUPLICATE_MAX = common dso_local global i64 0, align 8
@BTM_BLE_DUPLICATE_DISABLE = common dso_local global i64 0, align 8
@BTM_BLE_SCAN_ENABLE = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@scan_enable_sem = common dso_local global i32 0, align 4
@OSI_SEM_MAX_TIMEOUT = common dso_local global i32 0, align 4
@scan_enable_status = common dso_local global i64 0, align 8
@BTM_SUCCESS = common dso_local global i64 0, align 8
@BTM_BLE_SCANNING = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_MODE_ACTI = common dso_local global i64 0, align 8
@BTM_BLE_STATE_ACTIVE_SCAN_BIT = common dso_local global i32 0, align 4
@BTM_BLE_STATE_PASSIVE_SCAN_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_ble_start_scan() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  store %struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), %struct.TYPE_5__** %1, align 8
  %3 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @OSI_MUTEX_MAX_TIMEOUT, align 4
  %5 = call i32 @osi_mutex_lock(i32* @scan_enable_lock, i32 %4)
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BTM_BLE_DUPLICATE_MAX, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i64, i64* @BTM_BLE_DUPLICATE_DISABLE, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  br label %15

15:                                               ; preds = %11, %0
  %16 = load i32, i32* @BTM_BLE_SCAN_ENABLE, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @btsnd_hcic_ble_set_scan_enable(i32 %16, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %15
  %25 = load i32, i32* @OSI_SEM_MAX_TIMEOUT, align 4
  %26 = call i32 @osi_sem_take(i32* @scan_enable_sem, i32 %25)
  %27 = load i64, i64* @scan_enable_status, align 8
  %28 = load i64, i64* @BTM_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* @BTM_BLE_SCANNING, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0, i32 2), align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BTM_BLE_SCAN_MODE_ACTI, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @BTM_BLE_STATE_ACTIVE_SCAN_BIT, align 4
  %41 = call i32 @btm_ble_set_topology_mask(i32 %40)
  br label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @BTM_BLE_STATE_PASSIVE_SCAN_BIT, align 4
  %44 = call i32 @btm_ble_set_topology_mask(i32 %43)
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %22
  %47 = call i32 @osi_mutex_unlock(i32* @scan_enable_lock)
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @osi_mutex_lock(i32*, i32) #1

declare dso_local i32 @btsnd_hcic_ble_set_scan_enable(i32, i64) #1

declare dso_local i32 @osi_sem_take(i32*, i32) #1

declare dso_local i32 @btm_ble_set_topology_mask(i32) #1

declare dso_local i32 @osi_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
