; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_vendor_models/fast_prov_vendor_model/components/extr_esp_fast_prov_operation.c_example_send_fast_prov_self_prov_node_addr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_vendor_models/fast_prov_vendor_model/components/extr_esp_fast_prov_operation.c_example_send_fast_prov_self_prov_node_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.net_buf_simple = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Send node address\00", align 1
@ESP_BLE_MESH_VND_MODEL_OP_FAST_PROV_NODE_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @example_send_fast_prov_self_prov_node_addr(i32* %0, %struct.TYPE_5__* %1, %struct.net_buf_simple* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.net_buf_simple*, align 8
  %8 = alloca %struct.TYPE_6__, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.net_buf_simple* %2, %struct.net_buf_simple** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load %struct.net_buf_simple*, %struct.net_buf_simple** %7, align 8
  %16 = icmp ne %struct.net_buf_simple* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.net_buf_simple*, %struct.net_buf_simple** %7, align 8
  %19 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = srem i32 %20, 2
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17, %14, %11, %3
  %24 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %24, i32* %4, align 4
  br label %62

25:                                               ; preds = %17
  %26 = load %struct.net_buf_simple*, %struct.net_buf_simple** %7, align 8
  %27 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.net_buf_simple*, %struct.net_buf_simple** %7, align 8
  %30 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ESP_LOG_BUFFER_HEX(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %35, align 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %39, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %43, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @ESP_BLE_MESH_VND_MODEL_OP_FAST_PROV_NODE_ADDR, align 4
  %49 = load %struct.net_buf_simple*, %struct.net_buf_simple** %7, align 8
  %50 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.net_buf_simple*, %struct.net_buf_simple** %7, align 8
  %53 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @esp_ble_mesh_client_model_send_msg(i32* %47, %struct.TYPE_6__* %8, i32 %48, i32 %51, i32 %54, i32 %57, i32 1, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %25, %23
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @ESP_LOG_BUFFER_HEX(i8*, i32, i32) #1

declare dso_local i32 @esp_ble_mesh_client_model_send_msg(i32*, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
