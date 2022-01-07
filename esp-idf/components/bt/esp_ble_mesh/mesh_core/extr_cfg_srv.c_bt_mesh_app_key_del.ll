; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_bt_mesh_app_key_del.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c_bt_mesh_app_key_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_app_key = type { i32, i32, i32 }
%struct.unbind_data = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"AppIdx 0x%03x store %u\00", align 1
@_mod_unbind = common dso_local global i32 0, align 4
@CONFIG_BLE_MESH_SETTINGS = common dso_local global i32 0, align 4
@BLE_MESH_KEY_UNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt_mesh_app_key_del(%struct.bt_mesh_app_key* %0, i32 %1) #0 {
  %3 = alloca %struct.bt_mesh_app_key*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.unbind_data, align 4
  store %struct.bt_mesh_app_key* %0, %struct.bt_mesh_app_key** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.unbind_data, %struct.unbind_data* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.unbind_data, %struct.unbind_data* %5, i32 0, i32 1
  %9 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %3, align 8
  %10 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %3, align 8
  %13 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* @_mod_unbind, align 4
  %18 = call i32 @bt_mesh_model_foreach(i32 %17, %struct.unbind_data* %5)
  %19 = load i32, i32* @CONFIG_BLE_MESH_SETTINGS, align 4
  %20 = call i64 @IS_ENABLED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %3, align 8
  %27 = call i32 @bt_mesh_clear_app_key(%struct.bt_mesh_app_key* %26)
  br label %28

28:                                               ; preds = %25, %22, %2
  %29 = load i32, i32* @BLE_MESH_KEY_UNUSED, align 4
  %30 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %3, align 8
  %31 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.bt_mesh_app_key*, %struct.bt_mesh_app_key** %3, align 8
  %33 = getelementptr inbounds %struct.bt_mesh_app_key, %struct.bt_mesh_app_key* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memset(i32 %34, i32 0, i32 4)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @bt_mesh_model_foreach(i32, %struct.unbind_data*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @bt_mesh_clear_app_key(%struct.bt_mesh_app_key*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
