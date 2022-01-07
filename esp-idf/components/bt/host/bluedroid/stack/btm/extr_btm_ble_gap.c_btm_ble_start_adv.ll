; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_start_adv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_start_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i8*, i32 }

@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BTM_NO_RESOURCES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"btm_ble_start_adv\0A\00", align 1
@btm_ble_topology_check = common dso_local global i32 0, align 4
@BTM_WRONG_MODE = common dso_local global i64 0, align 8
@adv_enable_lock = common dso_local global i32 0, align 4
@OSI_MUTEX_MAX_TIMEOUT = common dso_local global i32 0, align 4
@AP_SCAN_CONN_ALL = common dso_local global i64 0, align 8
@BTM_BLE_WL_ADV = common dso_local global i32 0, align 4
@BTM_BLE_ADV_ENABLE = common dso_local global i8* null, align 8
@BTM_BLE_ADVERTISING = common dso_local global i32 0, align 4
@btm_ble_set_topology_mask = common dso_local global i32 0, align 4
@adv_enable_sem = common dso_local global i32 0, align 4
@OSI_SEM_MAX_TIMEOUT = common dso_local global i32 0, align 4
@adv_enable_status = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"BTM_SUCCESS\0A\00", align 1
@BTM_BLE_ADV_DISABLE = common dso_local global i8* null, align 8
@btm_ble_clear_topology_mask = common dso_local global i32 0, align 4
@HCI_SUCCESS = common dso_local global i64 0, align 8
@BTM_BLE_CONNECT_DIR_EVT = common dso_local global i64 0, align 8
@BTM_BLE_CONNECT_LO_DUTY_DIR_EVT = common dso_local global i64 0, align 8
@BTM_BLE_RL_ADV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btm_ble_start_adv() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 1), %struct.TYPE_5__** %2, align 8
  %6 = load i64, i64* @BTM_NO_RESOURCES, align 8
  store i64 %6, i64* %3, align 8
  %7 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @btm_ble_topology_check, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @btm_ble_adv_states_operation(i32 %8, i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = load i64, i64* @BTM_WRONG_MODE, align 8
  store i64 %15, i64* %1, align 8
  br label %85

16:                                               ; preds = %0
  %17 = load i32, i32* @OSI_MUTEX_MAX_TIMEOUT, align 4
  %18 = call i32 @osi_mutex_lock(i32* @adv_enable_lock, i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AP_SCAN_CONN_ALL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = call i32 (...) @btm_execute_wl_dev_operation()
  %26 = load i32, i32* @BTM_BLE_WL_ADV, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %28 = or i32 %27, %26
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  br label %29

29:                                               ; preds = %24, %16
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %4, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** @BTM_BLE_ADV_ENABLE, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @BTM_BLE_ADVERTISING, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @btm_ble_set_topology_mask, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @btm_ble_adv_states_operation(i32 %42, i64 %45)
  %47 = load i8*, i8** @BTM_BLE_ADV_ENABLE, align 8
  %48 = call i64 @btsnd_hcic_ble_set_adv_enable(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %29
  %51 = load i32, i32* @OSI_SEM_MAX_TIMEOUT, align 4
  %52 = call i32 @osi_sem_take(i32* @adv_enable_sem, i32 %51)
  %53 = load i64, i64* @adv_enable_status, align 8
  store i64 %53, i64* %3, align 8
  %54 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %74

55:                                               ; preds = %29
  %56 = load i8*, i8** @BTM_BLE_ADV_DISABLE, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @btm_ble_clear_topology_mask, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @btm_ble_adv_states_operation(i32 %65, i64 %68)
  %70 = load i32, i32* @BTM_BLE_WL_ADV, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %73 = and i32 %72, %71
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  br label %74

74:                                               ; preds = %55, %50
  %75 = load i64, i64* @adv_enable_status, align 8
  %76 = load i64, i64* @HCI_SUCCESS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8*, i8** %5, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = call i32 @osi_mutex_unlock(i32* @adv_enable_lock)
  %84 = load i64, i64* %3, align 8
  store i64 %84, i64* %1, align 8
  br label %85

85:                                               ; preds = %82, %14
  %86 = load i64, i64* %1, align 8
  ret i64 %86
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*) #1

declare dso_local i32 @btm_ble_adv_states_operation(i32, i64) #1

declare dso_local i32 @osi_mutex_lock(i32*, i32) #1

declare dso_local i32 @btm_execute_wl_dev_operation(...) #1

declare dso_local i64 @btsnd_hcic_ble_set_adv_enable(i8*) #1

declare dso_local i32 @osi_sem_take(i32*, i32) #1

declare dso_local i32 @osi_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
