; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gap/extr_btc_gap_ble.c_btc_ble_set_scan_params.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gap/extr_btc_gap_ble.c_btc_ble_set_scan_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32 }

@BTM_BLE_SCAN_INT_MIN = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_INT_MAX = common dso_local global i64 0, align 8
@BTM_BLE_SCAN_WIN_MIN = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_WIN_MAX = common dso_local global i64 0, align 8
@BLE_ADDR_TYPE_PUBLIC = common dso_local global i32 0, align 4
@BLE_ADDR_TYPE_RPA_RANDOM = common dso_local global i64 0, align 8
@BLE_SCAN_FILTER_ALLOW_ALL = common dso_local global i32 0, align 4
@BLE_SCAN_FILTER_ALLOW_WLIST_PRA_DIR = common dso_local global i64 0, align 8
@BLE_SCAN_DUPLICATE_DISABLE = common dso_local global i32 0, align 4
@BLE_SCAN_DUPLICATE_MAX = common dso_local global i64 0, align 8
@BTM_BLE_SCAN_MODE_ACTI = common dso_local global i64 0, align 8
@BTM_BLE_SCAN_MODE_PASS = common dso_local global i64 0, align 8
@ESP_DEFAULT_GATT_IF = common dso_local global i32 0, align 4
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @btc_ble_set_scan_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc_ble_set_scan_params(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @BTM_BLE_SCAN_INT_MIN, align 4
  %9 = load i64, i64* @BTM_BLE_SCAN_INT_MAX, align 8
  %10 = call i64 @BLE_ISVALID_PARAM(i32 %7, i32 %8, i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %79

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BTM_BLE_SCAN_WIN_MIN, align 4
  %17 = load i64, i64* @BTM_BLE_SCAN_WIN_MAX, align 8
  %18 = call i64 @BLE_ISVALID_PARAM(i32 %15, i32 %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %79

20:                                               ; preds = %12
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BLE_ADDR_TYPE_PUBLIC, align 4
  %25 = load i64, i64* @BLE_ADDR_TYPE_RPA_RANDOM, align 8
  %26 = call i64 @BLE_ISVALID_PARAM(i32 %23, i32 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BLE_SCAN_FILTER_ALLOW_ALL, align 4
  %33 = load i64, i64* @BLE_SCAN_FILTER_ALLOW_WLIST_PRA_DIR, align 8
  %34 = call i64 @BLE_ISVALID_PARAM(i32 %31, i32 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %79

36:                                               ; preds = %28
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BLE_SCAN_DUPLICATE_DISABLE, align 4
  %41 = load i64, i64* @BLE_SCAN_DUPLICATE_MAX, align 8
  %42 = sub nsw i64 %41, 1
  %43 = call i64 @BLE_ISVALID_PARAM(i32 %39, i32 %40, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %36
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BTM_BLE_SCAN_MODE_ACTI, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BTM_BLE_SCAN_MODE_PASS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %51, %45
  %58 = load i32, i32* @ESP_DEFAULT_GATT_IF, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @BTA_DmSetBleScanFilterParams(i32 %58, i32 %61, i32 %64, i64 %67, i32 %70, i32 %73, i32 %76, i32 %77)
  br label %83

79:                                               ; preds = %51, %36, %28, %20, %12, %2
  %80 = load i32, i32* @ESP_DEFAULT_GATT_IF, align 4
  %81 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  %82 = call i32 @btc_scan_params_callback(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %57
  ret void
}

declare dso_local i64 @BLE_ISVALID_PARAM(i32, i32, i64) #1

declare dso_local i32 @BTA_DmSetBleScanFilterParams(i32, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @btc_scan_params_callback(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
