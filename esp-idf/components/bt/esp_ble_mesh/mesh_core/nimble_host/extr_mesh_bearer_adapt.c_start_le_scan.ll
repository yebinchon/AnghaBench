; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/nimble_host/extr_mesh_bearer_adapt.c_start_le_scan.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/nimble_host/extr_mesh_bearer_adapt.c_start_le_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i64 }
%struct.TYPE_5__ = type { i32 }

@scan_param = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BLE_MESH_SCAN_PASSIVE = common dso_local global i64 0, align 8
@BLE_OWN_ADDR_PUBLIC = common dso_local global i32 0, align 4
@BLE_HS_FOREVER = common dso_local global i32 0, align 4
@disc_cb = common dso_local global i32 0, align 4
@BLE_MESH_DEV_ACTIVE_SCAN = common dso_local global i32 0, align 4
@BLE_MESH_SCAN_ACTIVE = common dso_local global i64 0, align 8
@bt_mesh_dev = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i8*, i64)* @start_le_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_le_scan(i64 %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scan_param, i32 0, i32 3), align 8
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scan_param, i32 0, i32 2), align 8
  %11 = load i8*, i8** %7, align 8
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scan_param, i32 0, i32 1), align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @BLE_MESH_SCAN_PASSIVE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scan_param, i32 0, i32 0), align 8
  br label %17

16:                                               ; preds = %4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scan_param, i32 0, i32 0), align 8
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32, i32* @BLE_OWN_ADDR_PUBLIC, align 4
  %19 = load i32, i32* @BLE_HS_FOREVER, align 4
  %20 = load i32, i32* @disc_cb, align 4
  %21 = call i32 @ble_gap_disc(i32 %18, i32 %19, %struct.TYPE_4__* @scan_param, i32 %20, i32* null)
  ret i32 0
}

declare dso_local i32 @ble_gap_disc(i32, i32, %struct.TYPE_4__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
