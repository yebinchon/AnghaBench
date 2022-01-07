; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_node/main/extr_ble_mesh_adapter.c_ble_mesh_node_statistics_accumultate.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_node/main/extr_ble_mesh_adapter.c_ble_mesh_node_statistics_accumultate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64*, i32, i32 }

@ble_mesh_node_sema = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@ble_mesh_node_statistics = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ble_mesh_node_statistics_accumultate(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 8
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %13, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %9, align 8
  %19 = load i32, i32* @ble_mesh_node_sema, align 4
  %20 = load i32, i32* @portMAX_DELAY, align 4
  %21 = call i32 @xSemaphoreTake(i32 %19, i32 %20)
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %37, %3
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_mesh_node_statistics, i32 0, i32 0), align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_mesh_node_statistics, i32 0, i32 1), align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @ble_mesh_node_sema, align 4
  %35 = call i32 @xSemaphoreGive(i32 %34)
  store i32 1, i32* %4, align 4
  br label %80

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %8, align 8
  br label %22

40:                                               ; preds = %22
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @ble_mesh_node_sema, align 4
  %49 = call i32 @xSemaphoreGive(i32 %48)
  store i32 1, i32* %4, align 4
  br label %80

50:                                               ; preds = %40
  store i64 0, i64* %8, align 8
  br label %51

51:                                               ; preds = %74, %50
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_mesh_node_statistics, i32 0, i32 0), align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %51
  %56 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_mesh_node_statistics, i32 0, i32 1), align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load i64, i64* %9, align 8
  %63 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_mesh_node_statistics, i32 0, i32 1), align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 %62, i64* %65, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_mesh_node_statistics, i32 0, i32 2), align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_mesh_node_statistics, i32 0, i32 2), align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_mesh_node_statistics, i32 0, i32 3), align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_mesh_node_statistics, i32 0, i32 3), align 4
  br label %77

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %8, align 8
  br label %51

77:                                               ; preds = %61, %51
  %78 = load i32, i32* @ble_mesh_node_sema, align 4
  %79 = call i32 @xSemaphoreGive(i32 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %77, %47, %33
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
