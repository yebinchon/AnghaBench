; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/api/core/extr_esp_ble_mesh_provisioning_api.c_esp_ble_mesh_node_input_string.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/api/core/extr_esp_ble_mesh_provisioning_api.c_esp_ble_mesh_node_input_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_BLE_HOST_STATUS_ENABLED = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_PROV = common dso_local global i32 0, align 4
@BTC_BLE_MESH_ACT_INPUT_STRING = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_ble_mesh_node_input_string(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  store i8* %0, i8** %3, align 8
  %6 = bitcast %struct.TYPE_8__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 16, i1 false)
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %11, i32* %2, align 4
  br label %41

12:                                               ; preds = %1
  %13 = load i32, i32* @ESP_BLE_HOST_STATUS_ENABLED, align 4
  %14 = call i32 @ESP_BLE_HOST_STATUS_CHECK(i32 %13)
  %15 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @BTC_PID_PROV, align 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @BTC_BLE_MESH_ACT_INPUT_STRING, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memset(i32 %23, i32 0, i32 4)
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = call i32 @strncpy(i32 %27, i8* %28, i32 %30)
  %32 = call i64 @btc_transfer_context(%struct.TYPE_7__* %5, %struct.TYPE_8__* %4, i32 8, i32* null)
  %33 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %12
  %36 = load i32, i32* @ESP_OK, align 4
  br label %39

37:                                               ; preds = %12
  %38 = load i32, i32* @ESP_FAIL, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ESP_BLE_HOST_STATUS_CHECK(i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @strncpy(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @btc_transfer_context(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
