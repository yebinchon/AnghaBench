; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_node/onoff_server/main/extr_ble_mesh_demo_main.c_example_ble_mesh_provisioning_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_node/onoff_server/main/extr_ble_mesh_demo_main.c_example_ble_mesh_provisioning_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_14__ = type { i8* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"ESP_BLE_MESH_PROV_REGISTER_COMP_EVT, err_code %d\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"ESP_BLE_MESH_NODE_PROV_ENABLE_COMP_EVT, err_code %d\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"ESP_BLE_MESH_NODE_PROV_LINK_OPEN_EVT, bearer %s\00", align 1
@ESP_BLE_MESH_PROV_ADV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"PB-ADV\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"PB-GATT\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"ESP_BLE_MESH_NODE_PROV_LINK_CLOSE_EVT, bearer %s\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"ESP_BLE_MESH_NODE_PROV_COMPLETE_EVT\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"ESP_BLE_MESH_NODE_PROV_RESET_EVT\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"ESP_BLE_MESH_NODE_SET_UNPROV_DEV_NAME_COMP_EVT, err_code %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_15__*)* @example_ble_mesh_provisioning_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @example_ble_mesh_provisioning_cb(i32 %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %72 [
    i32 128, label %6
    i32 133, label %13
    i32 131, label %20
    i32 132, label %31
    i32 134, label %42
    i32 130, label %62
    i32 129, label %65
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @TAG, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %7, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %73

13:                                               ; preds = %2
  %14 = load i32, i32* @TAG, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %14, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %73

20:                                               ; preds = %2
  %21 = load i32, i32* @TAG, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ESP_BLE_MESH_PROV_ADV, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %30 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %73

31:                                               ; preds = %2
  %32 = load i32, i32* @TAG, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ESP_BLE_MESH_PROV_ADV, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %41 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  br label %73

42:                                               ; preds = %2
  %43 = load i32, i32* @TAG, align 4
  %44 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @prov_complete(i32 %48, i32 %52, i32 %56, i32 %60)
  br label %73

62:                                               ; preds = %2
  %63 = load i32, i32* @TAG, align 4
  %64 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %73

65:                                               ; preds = %2
  %66 = load i32, i32* @TAG, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %66, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i8* %70)
  br label %73

72:                                               ; preds = %2
  br label %73

73:                                               ; preds = %72, %65, %62, %42, %31, %20, %13, %6
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @prov_complete(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
