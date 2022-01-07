; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_stop_adv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_stop_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }

@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BTM_SUCCESS = common dso_local global i64 0, align 8
@BTM_BLE_ADV_ENABLE = common dso_local global i64 0, align 8
@adv_enable_lock = common dso_local global i32 0, align 4
@OSI_MUTEX_MAX_TIMEOUT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BTM_BLE_ADV_DISABLE = common dso_local global i64 0, align 8
@BTM_BLE_STOP_ADV = common dso_local global i32 0, align 4
@BTM_BLE_WL_ADV = common dso_local global i32 0, align 4
@BTM_BLE_STATE_ALL_ADV_MASK = common dso_local global i32 0, align 4
@adv_enable_sem = common dso_local global i32 0, align 4
@OSI_SEM_MAX_TIMEOUT = common dso_local global i32 0, align 4
@adv_enable_status = common dso_local global i64 0, align 8
@BTM_NO_RESOURCES = common dso_local global i64 0, align 8
@HCI_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btm_ble_stop_adv() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 1), %struct.TYPE_5__** %1, align 8
  %8 = load i64, i64* @BTM_SUCCESS, align 8
  store i64 %8, i64* %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BTM_BLE_ADV_ENABLE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %77

14:                                               ; preds = %0
  %15 = load i32, i32* @OSI_MUTEX_MAX_TIMEOUT, align 4
  %16 = call i32 @osi_mutex_lock(i32* @adv_enable_lock, i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %3, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  store i32 %27, i32* %6, align 4
  %28 = call i32 (...) @btm_ble_get_topology_mask()
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* @BTM_BLE_ADV_DISABLE, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @BTM_BLE_STOP_ADV, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @BTM_BLE_WL_ADV, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %41 = and i32 %40, %39
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %42 = load i32, i32* @BTM_BLE_STATE_ALL_ADV_MASK, align 4
  %43 = call i32 @btm_ble_clear_topology_mask(i32 %42)
  %44 = load i64, i64* @BTM_BLE_ADV_DISABLE, align 8
  %45 = call i64 @btsnd_hcic_ble_set_adv_enable(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %14
  %48 = load i32, i32* @OSI_SEM_MAX_TIMEOUT, align 4
  %49 = call i32 @osi_sem_take(i32* @adv_enable_sem, i32 %48)
  %50 = load i64, i64* @adv_enable_status, align 8
  store i64 %50, i64* %2, align 8
  br label %66

51:                                               ; preds = %14
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i8*, i8** %3, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @btm_ble_set_topology_mask(i32 %63)
  %65 = load i64, i64* @BTM_NO_RESOURCES, align 8
  store i64 %65, i64* %2, align 8
  br label %66

66:                                               ; preds = %51, %47
  %67 = load i64, i64* @adv_enable_status, align 8
  %68 = load i64, i64* @HCI_SUCCESS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i8*, i8** %3, align 8
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %70, %66
  %76 = call i32 @osi_mutex_unlock(i32* @adv_enable_lock)
  br label %77

77:                                               ; preds = %75, %0
  %78 = load i64, i64* %2, align 8
  ret i64 %78
}

declare dso_local i32 @osi_mutex_lock(i32*, i32) #1

declare dso_local i32 @btm_ble_get_topology_mask(...) #1

declare dso_local i32 @btm_ble_clear_topology_mask(i32) #1

declare dso_local i64 @btsnd_hcic_ble_set_adv_enable(i64) #1

declare dso_local i32 @osi_sem_take(i32*, i32) #1

declare dso_local i32 @btm_ble_set_topology_mask(i32) #1

declare dso_local i32 @osi_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
