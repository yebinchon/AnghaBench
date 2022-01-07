; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_fast_provision/ble_mesh_fast_prov_server/main/extr_ble_mesh_demo_main.c_example_ble_mesh_generic_server_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_fast_provision/ble_mesh_fast_prov_server/main/extr_ble_mesh_demo_main.c_example_ble_mesh_generic_server_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"event 0x%02x, opcode 0x%04x, src 0x%04x, dst 0x%04x\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"ESP_BLE_MESH_GENERIC_SERVER_STATE_CHANGE_EVT\00", align 1
@ESP_BLE_MESH_MODEL_OP_GEN_ONOFF_SET = common dso_local global i32 0, align 4
@ESP_BLE_MESH_MODEL_OP_GEN_ONOFF_SET_UNACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"onoff 0x%02x\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Unknown Generic Server event 0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_11__*)* @example_ble_mesh_generic_server_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @example_ble_mesh_generic_server_cb(i32 %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %5 = load i32, i32* @TAG, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %5, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %10, i32 %14, i32 %18)
  %20 = load i32, i32* %3, align 4
  switch i32 %20, label %54 [
    i32 128, label %21
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @TAG, align 4
  %23 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ESP_BLE_MESH_MODEL_OP_GEN_ONOFF_SET, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %21
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ESP_BLE_MESH_MODEL_OP_GEN_ONOFF_SET_UNACK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %30, %21
  %38 = load i32, i32* @TAG, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @example_change_led_state(i32 %51)
  br label %53

53:                                               ; preds = %37, %30
  br label %58

54:                                               ; preds = %2
  %55 = load i32, i32* @TAG, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @ESP_LOGW(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %53
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @example_change_led_state(i32) #1

declare dso_local i32 @ESP_LOGW(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
