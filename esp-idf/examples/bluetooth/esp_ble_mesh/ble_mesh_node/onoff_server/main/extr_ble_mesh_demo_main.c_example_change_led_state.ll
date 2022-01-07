; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_node/onoff_server/main/extr_ble_mesh_demo_main.c_example_change_led_state.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_node/onoff_server/main/extr_ble_mesh_demo_main.c_example_change_led_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._led_state = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@led_state = common dso_local global %struct._led_state* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*, i64)* @example_change_led_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @example_change_led_state(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct._led_state*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = call i64 (...) @esp_ble_mesh_get_primary_element_address()
  store i64 %11, i64* %7, align 8
  %12 = call i64 (...) @esp_ble_mesh_get_element_count()
  store i64 %12, i64* %8, align 8
  store %struct._led_state* null, %struct._led_state** %9, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @ESP_BLE_MESH_ADDR_IS_UNICAST(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %41, %18
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %10, align 8
  %29 = add i64 %27, %28
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct._led_state*, %struct._led_state** @led_state, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct._led_state, %struct._led_state* %32, i64 %33
  store %struct._led_state* %34, %struct._led_state** %9, align 8
  %35 = load %struct._led_state*, %struct._led_state** %9, align 8
  %36 = getelementptr inbounds %struct._led_state, %struct._led_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @board_led_operation(i32 %37, i64 %38)
  br label %40

40:                                               ; preds = %31, %23
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %10, align 8
  br label %19

44:                                               ; preds = %19
  br label %96

45:                                               ; preds = %3
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @ESP_BLE_MESH_ADDR_IS_GROUP(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %45
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @esp_ble_mesh_is_model_subscribed_to_group(%struct.TYPE_9__* %52, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load %struct._led_state*, %struct._led_state** @led_state, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = sub nsw i64 %64, %65
  %67 = getelementptr inbounds %struct._led_state, %struct._led_state* %59, i64 %66
  store %struct._led_state* %67, %struct._led_state** %9, align 8
  %68 = load %struct._led_state*, %struct._led_state** %9, align 8
  %69 = getelementptr inbounds %struct._led_state, %struct._led_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @board_led_operation(i32 %70, i64 %71)
  br label %73

73:                                               ; preds = %58, %51
  br label %95

74:                                               ; preds = %45
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 65535
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = load %struct._led_state*, %struct._led_state** @led_state, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = sub nsw i64 %85, %86
  %88 = getelementptr inbounds %struct._led_state, %struct._led_state* %80, i64 %87
  store %struct._led_state* %88, %struct._led_state** %9, align 8
  %89 = load %struct._led_state*, %struct._led_state** %9, align 8
  %90 = getelementptr inbounds %struct._led_state, %struct._led_state* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @board_led_operation(i32 %91, i64 %92)
  br label %94

94:                                               ; preds = %79, %74
  br label %95

95:                                               ; preds = %94, %73
  br label %96

96:                                               ; preds = %95, %44
  ret void
}

declare dso_local i64 @esp_ble_mesh_get_primary_element_address(...) #1

declare dso_local i64 @esp_ble_mesh_get_element_count(...) #1

declare dso_local i64 @ESP_BLE_MESH_ADDR_IS_UNICAST(i64) #1

declare dso_local i32 @board_led_operation(i32, i64) #1

declare dso_local i64 @ESP_BLE_MESH_ADDR_IS_GROUP(i64) #1

declare dso_local i64 @esp_ble_mesh_is_model_subscribed_to_group(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
