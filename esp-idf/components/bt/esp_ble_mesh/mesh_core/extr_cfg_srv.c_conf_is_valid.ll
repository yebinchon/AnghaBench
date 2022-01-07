; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_conf_is_valid.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_conf_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_cfg_srv = type { i32, i32, i64 }

@BLE_MESH_TTL_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_mesh_cfg_srv*)* @conf_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_is_valid(%struct.bt_mesh_cfg_srv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bt_mesh_cfg_srv*, align 8
  store %struct.bt_mesh_cfg_srv* %0, %struct.bt_mesh_cfg_srv** %3, align 8
  %4 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %3, align 8
  %5 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp sgt i32 %6, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %3, align 8
  %11 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %23

15:                                               ; preds = %9
  %16 = load %struct.bt_mesh_cfg_srv*, %struct.bt_mesh_cfg_srv** %3, align 8
  %17 = getelementptr inbounds %struct.bt_mesh_cfg_srv, %struct.bt_mesh_cfg_srv* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BLE_MESH_TTL_MAX, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %23

22:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %21, %14, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
