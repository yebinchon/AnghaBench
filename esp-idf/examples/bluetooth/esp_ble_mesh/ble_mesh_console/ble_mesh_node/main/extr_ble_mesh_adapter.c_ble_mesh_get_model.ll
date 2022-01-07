; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_node/main/extr_ble_mesh_adapter.c_ble_mesh_get_model.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_node/main/extr_ble_mesh_adapter.c_ble_mesh_get_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_server_models = common dso_local global i32* null, align 8
@config_client_models = common dso_local global i32* null, align 8
@gen_onoff_srv_models = common dso_local global i32* null, align 8
@test_perf_cli_models = common dso_local global i32* null, align 8
@test_perf_srv_models = common dso_local global i32* null, align 8
@gen_onoff_cli_models = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ble_mesh_get_model(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %20 [
    i32 132, label %5
    i32 133, label %8
    i32 130, label %11
    i32 129, label %14
    i32 128, label %17
  ]

5:                                                ; preds = %1
  %6 = load i32*, i32** @config_server_models, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  store i32* %7, i32** %3, align 8
  br label %20

8:                                                ; preds = %1
  %9 = load i32*, i32** @config_client_models, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32* %10, i32** %3, align 8
  br label %20

11:                                               ; preds = %1
  %12 = load i32*, i32** @gen_onoff_srv_models, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32* %13, i32** %3, align 8
  br label %20

14:                                               ; preds = %1
  %15 = load i32*, i32** @test_perf_cli_models, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32* %16, i32** %3, align 8
  br label %20

17:                                               ; preds = %1
  %18 = load i32*, i32** @test_perf_srv_models, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32* %19, i32** %3, align 8
  br label %20

20:                                               ; preds = %1, %17, %14, %11, %8, %5
  %21 = load i32*, i32** %3, align 8
  ret i32* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
