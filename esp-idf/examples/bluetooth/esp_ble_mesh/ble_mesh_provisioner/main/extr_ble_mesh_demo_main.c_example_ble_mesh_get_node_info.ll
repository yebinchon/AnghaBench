; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_provisioner/main/extr_ble_mesh_demo_main.c_example_ble_mesh_get_node_info.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_provisioner/main/extr_ble_mesh_demo_main.c_example_ble_mesh_get_node_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@nodes = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i64)* @example_ble_mesh_get_node_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @example_ble_mesh_get_node_info(i64 %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @ESP_BLE_MESH_ADDR_IS_UNICAST(i64 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %50

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %46, %9
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nodes, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nodes, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %15
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nodes, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nodes, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %30, %36
  %38 = load i64, i64* %3, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %24
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nodes, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %2, align 8
  br label %50

45:                                               ; preds = %24, %15
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %10

49:                                               ; preds = %10
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %50

50:                                               ; preds = %49, %40, %8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %51
}

declare dso_local i32 @ESP_BLE_MESH_ADDR_IS_UNICAST(i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
