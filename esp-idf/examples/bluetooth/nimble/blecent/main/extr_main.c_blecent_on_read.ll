; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_main.c_blecent_on_read.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_main.c_blecent_on_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_gatt_error = type { i64 }
%struct.ble_gatt_attr = type { i32, i32 }
%struct.peer_chr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.peer = type { i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Read complete; status=%d conn_handle=%d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c" attr_handle=%d value=\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@BLECENT_SVC_ALERT_UUID = common dso_local global i32 0, align 4
@BLECENT_CHR_ALERT_NOT_CTRL_PT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [81 x i8] c"Error: Peer doesn't support the Alert Notification Control Point characteristic\0A\00", align 1
@blecent_on_write = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Error: Failed to write characteristic; rc=%d\0A\00", align 1
@BLE_ERR_REM_USER_CONN_TERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ble_gatt_error*, %struct.ble_gatt_attr*, i8*)* @blecent_on_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blecent_on_read(i32 %0, %struct.ble_gatt_error* %1, %struct.ble_gatt_attr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ble_gatt_error*, align 8
  %8 = alloca %struct.ble_gatt_attr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.peer_chr*, align 8
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
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %18)
  %20 = load %struct.ble_gatt_error*, %struct.ble_gatt_error** %7, align 8
  %21 = getelementptr inbounds %struct.ble_gatt_error, %struct.ble_gatt_error* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = load i32, i32* @INFO, align 4
  %26 = load %struct.ble_gatt_attr*, %struct.ble_gatt_attr** %8, align 8
  %27 = getelementptr inbounds %struct.ble_gatt_attr, %struct.ble_gatt_attr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.ble_gatt_attr*, %struct.ble_gatt_attr** %8, align 8
  %31 = getelementptr inbounds %struct.ble_gatt_attr, %struct.ble_gatt_attr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @print_mbuf(i32 %32)
  br label %34

34:                                               ; preds = %24, %4
  %35 = load i32, i32* @INFO, align 4
  %36 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.peer* @peer_find(i32 %37)
  store %struct.peer* %38, %struct.peer** %13, align 8
  %39 = load %struct.peer*, %struct.peer** %13, align 8
  %40 = load i32, i32* @BLECENT_SVC_ALERT_UUID, align 4
  %41 = call i32 @BLE_UUID16_DECLARE(i32 %40)
  %42 = load i32, i32* @BLECENT_CHR_ALERT_NOT_CTRL_PT, align 4
  %43 = call i32 @BLE_UUID16_DECLARE(i32 %42)
  %44 = call %struct.peer_chr* @peer_chr_find_uuid(%struct.peer* %39, i32 %41, i32 %43)
  store %struct.peer_chr* %44, %struct.peer_chr** %10, align 8
  %45 = load %struct.peer_chr*, %struct.peer_chr** %10, align 8
  %46 = icmp eq %struct.peer_chr* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load i32, i32* @ERROR, align 4
  %49 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %48, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0))
  br label %68

50:                                               ; preds = %34
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 99, i32* %51, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 100, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.peer_chr*, %struct.peer_chr** %10, align 8
  %55 = getelementptr inbounds %struct.peer_chr, %struct.peer_chr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %59 = load i32, i32* @blecent_on_write, align 4
  %60 = call i32 @ble_gattc_write_flat(i32 %53, i32 %57, i32* %58, i32 8, i32 %59, i32* null)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %50
  %64 = load i32, i32* @ERROR, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  br label %68

67:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %74

68:                                               ; preds = %63, %47
  %69 = load %struct.peer*, %struct.peer** %13, align 8
  %70 = getelementptr inbounds %struct.peer, %struct.peer* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BLE_ERR_REM_USER_CONN_TERM, align 4
  %73 = call i32 @ble_gap_terminate(i32 %71, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %68, %67
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @MODLOG_DFLT(i32, i8*, ...) #1

declare dso_local i32 @print_mbuf(i32) #1

declare dso_local %struct.peer* @peer_find(i32) #1

declare dso_local %struct.peer_chr* @peer_chr_find_uuid(%struct.peer*, i32, i32) #1

declare dso_local i32 @BLE_UUID16_DECLARE(i32) #1

declare dso_local i32 @ble_gattc_write_flat(i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ble_gap_terminate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
