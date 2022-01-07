; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/api/models/extr_esp_ble_mesh_time_scene_model_api.c_esp_ble_mesh_time_scene_client_get_state.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/api/models/extr_esp_ble_mesh_time_scene_model_api.c_esp_ble_mesh_time_scene_client_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_BLE_HOST_STATUS_ENABLED = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_TIME_SCENE_CLIENT = common dso_local global i32 0, align 4
@BTC_BLE_MESH_ACT_TIME_SCENE_CLIENT_GET_STATE = common dso_local global i32 0, align 4
@btc_ble_mesh_time_scene_client_arg_deep_copy = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_ble_mesh_time_scene_client_get_state(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = bitcast %struct.TYPE_12__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %17, %12, %2
  %27 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %27, i32* %3, align 4
  br label %53

28:                                               ; preds = %23
  %29 = load i32, i32* @ESP_BLE_HOST_STATUS_ENABLED, align 4
  %30 = call i32 @ESP_BLE_HOST_STATUS_CHECK(i32 %29)
  %31 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @BTC_PID_TIME_SCENE_CLIENT, align 4
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @BTC_BLE_MESH_ACT_TIME_SCENE_CLIENT_GET_STATE, align 4
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %39, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load i32, i32* @btc_ble_mesh_time_scene_client_arg_deep_copy, align 4
  %44 = call i64 @btc_transfer_context(%struct.TYPE_12__* %7, %struct.TYPE_13__* %6, i32 24, i32 %43)
  %45 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %28
  %48 = load i32, i32* @ESP_OK, align 4
  br label %51

49:                                               ; preds = %28
  %50 = load i32, i32* @ESP_FAIL, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %26
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ESP_BLE_HOST_STATUS_CHECK(i32) #2

declare dso_local i64 @btc_transfer_context(%struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
