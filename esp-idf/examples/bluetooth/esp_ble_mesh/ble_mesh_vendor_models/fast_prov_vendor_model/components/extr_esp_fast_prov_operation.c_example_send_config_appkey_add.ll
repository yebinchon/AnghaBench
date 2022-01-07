; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_vendor_models/fast_prov_vendor_model/components/extr_esp_fast_prov_operation.c_example_send_config_appkey_add.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_vendor_models/fast_prov_vendor_model/components/extr_esp_fast_prov_operation.c_example_send_config_appkey_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__, i32*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@ESP_BLE_MESH_MODEL_OP_APP_KEY_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @example_send_config_appkey_add(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca %struct.TYPE_15__, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  %11 = bitcast %struct.TYPE_14__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 48, i1 false)
  %12 = bitcast %struct.TYPE_15__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 16, i1 false)
  store i32* null, i32** %10, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = icmp ne %struct.TYPE_13__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %19, i32* %4, align 4
  br label %92

20:                                               ; preds = %15
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %22 = icmp ne %struct.TYPE_16__* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @memcpy(i32 %36, i32* %39, i32 16)
  br label %62

41:                                               ; preds = %20
  %42 = load i32*, i32** %10, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @ESP_FAIL, align 4
  store i32 %45, i32* %4, align 4
  br label %92

46:                                               ; preds = %41
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @memcpy(i32 %59, i32* %60, i32 16)
  br label %62

62:                                               ; preds = %46, %23
  %63 = load i32, i32* @ESP_BLE_MESH_MODEL_OP_APP_KEY_ADD, align 4
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 4
  store i32 %63, i32* %64, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 3
  store i32* %65, i32** %66, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  store i32 %89, i32* %90, align 8
  %91 = call i32 @esp_ble_mesh_config_client_set_state(%struct.TYPE_14__* %8, %struct.TYPE_15__* %9)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %62, %44, %18
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @esp_ble_mesh_config_client_set_state(%struct.TYPE_14__*, %struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
