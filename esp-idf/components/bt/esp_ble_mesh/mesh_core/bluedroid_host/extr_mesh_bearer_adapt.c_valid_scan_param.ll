; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/bluedroid_host/extr_mesh_bearer_adapt.c_valid_scan_param.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/bluedroid_host/extr_mesh_bearer_adapt.c_valid_scan_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_scan_param = type { i64, i64, i32, i32 }

@BLE_MESH_SCAN_PASSIVE = common dso_local global i64 0, align 8
@BLE_MESH_SCAN_ACTIVE = common dso_local global i64 0, align 8
@BLE_MESH_SCAN_FILTER_DUP_DISABLE = common dso_local global i64 0, align 8
@BLE_MESH_SCAN_FILTER_DUP_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_mesh_scan_param*)* @valid_scan_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_scan_param(%struct.bt_mesh_scan_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bt_mesh_scan_param*, align 8
  store %struct.bt_mesh_scan_param* %0, %struct.bt_mesh_scan_param** %3, align 8
  %4 = load %struct.bt_mesh_scan_param*, %struct.bt_mesh_scan_param** %3, align 8
  %5 = getelementptr inbounds %struct.bt_mesh_scan_param, %struct.bt_mesh_scan_param* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BLE_MESH_SCAN_PASSIVE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.bt_mesh_scan_param*, %struct.bt_mesh_scan_param** %3, align 8
  %11 = getelementptr inbounds %struct.bt_mesh_scan_param, %struct.bt_mesh_scan_param* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BLE_MESH_SCAN_ACTIVE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %61

16:                                               ; preds = %9, %1
  %17 = load %struct.bt_mesh_scan_param*, %struct.bt_mesh_scan_param** %3, align 8
  %18 = getelementptr inbounds %struct.bt_mesh_scan_param, %struct.bt_mesh_scan_param* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BLE_MESH_SCAN_FILTER_DUP_DISABLE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.bt_mesh_scan_param*, %struct.bt_mesh_scan_param** %3, align 8
  %24 = getelementptr inbounds %struct.bt_mesh_scan_param, %struct.bt_mesh_scan_param* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BLE_MESH_SCAN_FILTER_DUP_ENABLE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %61

29:                                               ; preds = %22, %16
  %30 = load %struct.bt_mesh_scan_param*, %struct.bt_mesh_scan_param** %3, align 8
  %31 = getelementptr inbounds %struct.bt_mesh_scan_param, %struct.bt_mesh_scan_param* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.bt_mesh_scan_param*, %struct.bt_mesh_scan_param** %3, align 8
  %36 = getelementptr inbounds %struct.bt_mesh_scan_param, %struct.bt_mesh_scan_param* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 16384
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29
  store i32 0, i32* %2, align 4
  br label %61

40:                                               ; preds = %34
  %41 = load %struct.bt_mesh_scan_param*, %struct.bt_mesh_scan_param** %3, align 8
  %42 = getelementptr inbounds %struct.bt_mesh_scan_param, %struct.bt_mesh_scan_param* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.bt_mesh_scan_param*, %struct.bt_mesh_scan_param** %3, align 8
  %47 = getelementptr inbounds %struct.bt_mesh_scan_param, %struct.bt_mesh_scan_param* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 16384
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %40
  store i32 0, i32* %2, align 4
  br label %61

51:                                               ; preds = %45
  %52 = load %struct.bt_mesh_scan_param*, %struct.bt_mesh_scan_param** %3, align 8
  %53 = getelementptr inbounds %struct.bt_mesh_scan_param, %struct.bt_mesh_scan_param* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bt_mesh_scan_param*, %struct.bt_mesh_scan_param** %3, align 8
  %56 = getelementptr inbounds %struct.bt_mesh_scan_param, %struct.bt_mesh_scan_param* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %61

60:                                               ; preds = %51
  store i32 1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %59, %50, %39, %28, %15
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
