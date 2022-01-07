; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_main.c_blecent_on_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_main.c_blecent_on_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_gatt_error = type { i32 }
%struct.ble_gatt_attr = type { i32 }
%struct.peer_dsc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.peer = type { i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Write complete; status=%d conn_handle=%d attr_handle=%d\0A\00", align 1
@BLECENT_SVC_ALERT_UUID = common dso_local global i32 0, align 4
@BLECENT_CHR_UNR_ALERT_STAT_UUID = common dso_local global i32 0, align 4
@BLE_GATT_DSC_CLT_CFG_UUID16 = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Error: Peer lacks a CCCD for the Unread Alert Status characteristic\0A\00", align 1
@blecent_on_subscribe = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Error: Failed to subscribe to characteristic; rc=%d\0A\00", align 1
@BLE_ERR_REM_USER_CONN_TERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ble_gatt_error*, %struct.ble_gatt_attr*, i8*)* @blecent_on_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blecent_on_write(i32 %0, %struct.ble_gatt_error* %1, %struct.ble_gatt_attr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ble_gatt_error*, align 8
  %8 = alloca %struct.ble_gatt_attr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.peer_dsc*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.peer*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.ble_gatt_error* %1, %struct.ble_gatt_error** %7, align 8
  store %struct.ble_gatt_attr* %2, %struct.ble_gatt_attr** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @INFO, align 4
  %15 = load %struct.ble_gatt_error*, %struct.ble_gatt_error** %7, align 8
  %16 = getelementptr inbounds %struct.ble_gatt_error, %struct.ble_gatt_error* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ble_gatt_attr*, %struct.ble_gatt_attr** %8, align 8
  %20 = getelementptr inbounds %struct.ble_gatt_attr, %struct.ble_gatt_attr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %14, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.peer* @peer_find(i32 %23)
  store %struct.peer* %24, %struct.peer** %13, align 8
  %25 = load %struct.peer*, %struct.peer** %13, align 8
  %26 = load i32, i32* @BLECENT_SVC_ALERT_UUID, align 4
  %27 = call i32 @BLE_UUID16_DECLARE(i32 %26)
  %28 = load i32, i32* @BLECENT_CHR_UNR_ALERT_STAT_UUID, align 4
  %29 = call i32 @BLE_UUID16_DECLARE(i32 %28)
  %30 = load i32, i32* @BLE_GATT_DSC_CLT_CFG_UUID16, align 4
  %31 = call i32 @BLE_UUID16_DECLARE(i32 %30)
  %32 = call %struct.peer_dsc* @peer_dsc_find_uuid(%struct.peer* %25, i32 %27, i32 %29, i32 %31)
  store %struct.peer_dsc* %32, %struct.peer_dsc** %10, align 8
  %33 = load %struct.peer_dsc*, %struct.peer_dsc** %10, align 8
  %34 = icmp eq %struct.peer_dsc* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load i32, i32* @ERROR, align 4
  %37 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %36, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  br label %56

38:                                               ; preds = %4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 1, i32* %39, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.peer_dsc*, %struct.peer_dsc** %10, align 8
  %43 = getelementptr inbounds %struct.peer_dsc, %struct.peer_dsc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %47 = load i32, i32* @blecent_on_subscribe, align 4
  %48 = call i32 @ble_gattc_write_flat(i32 %41, i32 %45, i32* %46, i32 8, i32 %47, i32* null)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %52, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %56

55:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %62

56:                                               ; preds = %51, %35
  %57 = load %struct.peer*, %struct.peer** %13, align 8
  %58 = getelementptr inbounds %struct.peer, %struct.peer* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BLE_ERR_REM_USER_CONN_TERM, align 4
  %61 = call i32 @ble_gap_terminate(i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %56, %55
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @MODLOG_DFLT(i32, i8*, ...) #1

declare dso_local %struct.peer* @peer_find(i32) #1

declare dso_local %struct.peer_dsc* @peer_dsc_find_uuid(%struct.peer*, i32, i32, i32) #1

declare dso_local i32 @BLE_UUID16_DECLARE(i32) #1

declare dso_local i32 @ble_gattc_write_flat(i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ble_gap_terminate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
