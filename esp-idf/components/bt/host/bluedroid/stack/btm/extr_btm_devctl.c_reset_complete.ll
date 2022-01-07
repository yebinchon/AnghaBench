; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_reset_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_reset_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32*, i32, i32 }
%struct.TYPE_10__ = type { i32, i8*, i32, i32, i8*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i64 (...)*, i32 (...)*, %struct.TYPE_14__* (i32)*, i32 (...)*, i32 (...)*, i64 (...)*, i64 (...)*, i32 (...)*, i32 (...)* }
%struct.TYPE_14__ = type { i32 }

@BTM_SEC_MAX_DEVICE_RECORDS = common dso_local global i32 0, align 4
@BTM_SEC_STATE_IDLE = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@HCI_DEF_INQUIRYSCAN_WINDOW = common dso_local global i32 0, align 4
@HCI_DEF_INQUIRYSCAN_INTERVAL = common dso_local global i32 0, align 4
@HCI_DEF_SCAN_TYPE = common dso_local global i8* null, align 8
@HCI_DEF_PAGESCAN_WINDOW = common dso_local global i32 0, align 4
@HCI_DEF_PAGESCAN_INTERVAL = common dso_local global i32 0, align 4
@BLE_CONN_IDLE = common dso_local global i32 0, align 4
@BTM_BLE_CONN_NONE = common dso_local global i32 0, align 4
@BTM_DEV_STATUS_UP = common dso_local global i32 0, align 4
@BTM_BLE_PRIVATE_ADDR_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reset_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_complete() #0 {
  %1 = alloca %struct.TYPE_13__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call %struct.TYPE_13__* (...) @controller_get_interface()
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %1, align 8
  %5 = call i32 (...) @l2cu_device_reset()
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %17, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @BTM_SEC_MAX_DEVICE_RECORDS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i32, i32* @BTM_SEC_STATE_IDLE, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 3), align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i32 %11, i32* %16, align 4
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %6

20:                                               ; preds = %6
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 2, i32 0), align 8
  %21 = load i32, i32* @HCI_DEF_INQUIRYSCAN_WINDOW, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 2, i32 6), align 4
  %22 = load i32, i32* @HCI_DEF_INQUIRYSCAN_INTERVAL, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 2, i32 5), align 8
  %23 = load i8*, i8** @HCI_DEF_SCAN_TYPE, align 8
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 2, i32 4), align 8
  %24 = load i32, i32* @HCI_DEF_PAGESCAN_WINDOW, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 2, i32 3), align 4
  %25 = load i32, i32* @HCI_DEF_PAGESCAN_INTERVAL, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 2, i32 2), align 8
  %26 = load i8*, i8** @HCI_DEF_SCAN_TYPE, align 8
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 2, i32 1), align 8
  %27 = load i32, i32* @BLE_CONN_IDLE, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 1, i32 2), align 4
  %28 = load i32, i32* @BTM_BLE_CONN_NONE, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 1, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 1, i32 0), align 8
  %29 = call i32 (...) @gatt_reset_bgdev_list()
  %30 = call i32 (...) @btm_ble_multi_adv_init()
  %31 = call i32 (...) @btm_pm_reset()
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 8
  %34 = load i32 (...)*, i32 (...)** %33, align 8
  %35 = call i32 (...) %34()
  %36 = call i32 @l2c_link_processs_num_bufs(i32 %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 7
  %39 = load i32 (...)*, i32 (...)** %38, align 8
  %40 = call i32 (...) %39()
  %41 = call i32 @btm_sco_process_num_bufs(i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 5
  %44 = load i64 (...)*, i64 (...)** %43, align 8
  %45 = call i64 (...) %44()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %20
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 4
  %50 = load i32 (...)*, i32 (...)** %49, align 8
  %51 = call i32 (...) %50()
  %52 = call i32 @btm_ble_white_list_init(i32 %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 3
  %55 = load i32 (...)*, i32 (...)** %54, align 8
  %56 = call i32 (...) %55()
  %57 = call i32 @l2c_link_processs_ble_num_bufs(i32 %56)
  br label %58

58:                                               ; preds = %47, %20
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 2), align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1), align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %62 = call i32 @BTM_SetPinType(i32 %59, i32 %60, i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %80, %58
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load i32 (...)*, i32 (...)** %66, align 8
  %68 = call i32 (...) %67()
  %69 = icmp sle i32 %64, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_14__* (i32)*, %struct.TYPE_14__* (i32)** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call %struct.TYPE_14__* %74(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @btm_decode_ext_features_page(i32 %71, i32 %78)
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %63

83:                                               ; preds = %63
  %84 = load i32, i32* @BTM_DEV_STATUS_UP, align 4
  %85 = call i32 @btm_report_device_status(i32 %84)
  ret void
}

declare dso_local %struct.TYPE_13__* @controller_get_interface(...) #1

declare dso_local i32 @l2cu_device_reset(...) #1

declare dso_local i32 @gatt_reset_bgdev_list(...) #1

declare dso_local i32 @btm_ble_multi_adv_init(...) #1

declare dso_local i32 @btm_pm_reset(...) #1

declare dso_local i32 @l2c_link_processs_num_bufs(i32) #1

declare dso_local i32 @btm_sco_process_num_bufs(i32) #1

declare dso_local i32 @btm_ble_white_list_init(i32) #1

declare dso_local i32 @l2c_link_processs_ble_num_bufs(i32) #1

declare dso_local i32 @BTM_SetPinType(i32, i32, i32) #1

declare dso_local i32 @btm_decode_ext_features_page(i32, i32) #1

declare dso_local i32 @btm_report_device_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
