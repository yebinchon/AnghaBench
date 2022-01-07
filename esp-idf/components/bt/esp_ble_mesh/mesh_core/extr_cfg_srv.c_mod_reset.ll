; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_mod_reset.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_mod_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { i32 }
%struct.bt_mesh_elem = type { i32 }

@CONFIG_BLE_MESH_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt_mesh_model*, %struct.bt_mesh_elem*, i32, i32, i8*)* @mod_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mod_reset(%struct.bt_mesh_model* %0, %struct.bt_mesh_elem* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.bt_mesh_model*, align 8
  %7 = alloca %struct.bt_mesh_elem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %6, align 8
  store %struct.bt_mesh_elem* %1, %struct.bt_mesh_elem** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %13 = call i64 @mod_sub_list_clear(%struct.bt_mesh_model* %12)
  store i64 %13, i64* %11, align 8
  %14 = load i32, i32* @CONFIG_BLE_MESH_SETTINGS, align 4
  %15 = call i64 @IS_ENABLED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i64, i64* %11, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %22 = call i32 @bt_mesh_store_mod_sub(%struct.bt_mesh_model* %21)
  br label %23

23:                                               ; preds = %20, %17, %5
  ret void
}

declare dso_local i64 @mod_sub_list_clear(%struct.bt_mesh_model*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @bt_mesh_store_mod_sub(%struct.bt_mesh_model*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
