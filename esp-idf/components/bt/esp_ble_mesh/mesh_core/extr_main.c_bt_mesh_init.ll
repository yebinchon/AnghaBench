; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_main.c_bt_mesh_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_main.c_bt_mesh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_prov = type { i32 }
%struct.bt_mesh_comp = type { i32 }

@CONFIG_BLE_MESH_PROV = common dso_local global i32 0, align 4
@CONFIG_BLE_MESH_PROXY = common dso_local global i32 0, align 4
@CONFIG_BLE_MESH_GATT_PROXY_SERVER = common dso_local global i32 0, align 4
@CONFIG_BLE_MESH_PB_GATT = common dso_local global i32 0, align 4
@CONFIG_BLE_MESH_SETTINGS = common dso_local global i32 0, align 4
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_init(%struct.bt_mesh_prov* %0, %struct.bt_mesh_comp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bt_mesh_prov*, align 8
  %5 = alloca %struct.bt_mesh_comp*, align 8
  %6 = alloca i32, align 4
  store %struct.bt_mesh_prov* %0, %struct.bt_mesh_prov** %4, align 8
  store %struct.bt_mesh_comp* %1, %struct.bt_mesh_comp** %5, align 8
  %7 = call i32 (...) @bt_mesh_k_init()
  %8 = call i32 (...) @bt_mesh_hci_init()
  %9 = call i32 (...) @bt_mesh_adapt_init()
  %10 = load %struct.bt_mesh_comp*, %struct.bt_mesh_comp** %5, align 8
  %11 = call i32 @bt_mesh_comp_register(%struct.bt_mesh_comp* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %31

16:                                               ; preds = %2
  %17 = call i32 (...) @bt_mesh_gatt_init()
  %18 = load i32, i32* @CONFIG_BLE_MESH_PROV, align 4
  %19 = call i64 @IS_ENABLED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %16
  %23 = call i32 (...) @bt_mesh_net_init()
  %24 = call i32 (...) @bt_mesh_trans_init()
  %25 = call i32 (...) @bt_mesh_adv_init()
  %26 = load i32, i32* @CONFIG_BLE_MESH_PROXY, align 4
  %27 = call i64 @IS_ENABLED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %22
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @bt_mesh_k_init(...) #1

declare dso_local i32 @bt_mesh_hci_init(...) #1

declare dso_local i32 @bt_mesh_adapt_init(...) #1

declare dso_local i32 @bt_mesh_comp_register(%struct.bt_mesh_comp*) #1

declare dso_local i32 @bt_mesh_gatt_init(...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @bt_mesh_net_init(...) #1

declare dso_local i32 @bt_mesh_trans_init(...) #1

declare dso_local i32 @bt_mesh_adv_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
