; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_vendor_models/fast_prov_vendor_model/components/extr_esp_fast_prov_operation.c_example_delete_fast_prov_group_address.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_vendor_models/fast_prov_vendor_model/components/extr_esp_fast_prov_operation.c_example_delete_fast_prov_group_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i64* }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@ESP_BLE_MESH_ADDR_UNASSIGNED = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @example_delete_fast_prov_group_address(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  store i32* null, i32** %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @ESP_BLE_MESH_ADDR_IS_GROUP(i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %15, i32* %3, align 4
  br label %78

16:                                               ; preds = %2
  %17 = call %struct.TYPE_6__* (...) @esp_ble_mesh_get_composition_data()
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = icmp eq %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @ESP_FAIL, align 4
  store i32 %21, i32* %3, align 4
  br label %78

22:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %73, %22
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %76

29:                                               ; preds = %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call %struct.TYPE_5__* @esp_ble_mesh_find_sig_model(i32* %36, i64 %37)
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %8, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = icmp eq %struct.TYPE_5__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %73

42:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %69, %42
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = call i32 @ARRAY_SIZE(i64* %47)
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %43
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = load i64, i64* @ESP_BLE_MESH_ADDR_UNASSIGNED, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 %61, i64* %67, align 8
  br label %72

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %43

72:                                               ; preds = %60, %43
  br label %73

73:                                               ; preds = %72, %41
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %23

76:                                               ; preds = %23
  %77 = load i32, i32* @ESP_OK, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %20, %14
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @ESP_BLE_MESH_ADDR_IS_GROUP(i64) #1

declare dso_local %struct.TYPE_6__* @esp_ble_mesh_get_composition_data(...) #1

declare dso_local %struct.TYPE_5__* @esp_ble_mesh_find_sig_model(i32*, i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
