; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_provisioner/main/extr_ble_mesh_adapter.c_ble_mesh_get_component.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_provisioner/main/extr_ble_mesh_adapter.c_ble_mesh_get_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_server_comp = common dso_local global i32 0, align 4
@config_client_comp = common dso_local global i32 0, align 4
@gen_onoff_srv_comp = common dso_local global i32 0, align 4
@test_perf_cli_comp = common dso_local global i32 0, align 4
@test_perf_srv_comp = common dso_local global i32 0, align 4
@gen_onoff_cli_comp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ble_mesh_get_component(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %10 [
    i32 132, label %5
    i32 133, label %6
    i32 130, label %7
    i32 129, label %8
    i32 128, label %9
  ]

5:                                                ; preds = %1
  store i32* @config_server_comp, i32** %3, align 8
  br label %10

6:                                                ; preds = %1
  store i32* @config_client_comp, i32** %3, align 8
  br label %10

7:                                                ; preds = %1
  store i32* @gen_onoff_srv_comp, i32** %3, align 8
  br label %10

8:                                                ; preds = %1
  store i32* @test_perf_cli_comp, i32** %3, align 8
  br label %10

9:                                                ; preds = %1
  store i32* @test_perf_srv_comp, i32** %3, align 8
  br label %10

10:                                               ; preds = %1, %9, %8, %7, %6, %5
  %11 = load i32*, i32** %3, align 8
  ret i32* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
