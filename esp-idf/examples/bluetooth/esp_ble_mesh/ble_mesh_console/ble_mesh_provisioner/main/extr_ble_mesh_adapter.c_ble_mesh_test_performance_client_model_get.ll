; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_provisioner/main/extr_ble_mesh_adapter.c_ble_mesh_test_performance_client_model_get.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_provisioner/main/extr_ble_mesh_adapter.c_ble_mesh_test_performance_client_model_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64*, i32 }

@ble_mesh_test_perf_sema = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@test_perf_statistics = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"VendorModel:Statistics,%d,%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ble_mesh_test_performance_client_model_get() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  %4 = load i32, i32* @ble_mesh_test_perf_sema, align 4
  %5 = load i32, i32* @portMAX_DELAY, align 4
  %6 = call i32 @xSemaphoreTake(i32 %4, i32 %5)
  store i64 0, i64* %1, align 8
  store i64 0, i64* %2, align 8
  br label %7

7:                                                ; preds = %34, %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_perf_statistics, i32 0, i32 0), align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_perf_statistics, i32 0, i32 1), align 8
  %13 = load i64, i64* %1, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_perf_statistics, i32 0, i32 1), align 8
  %19 = load i64, i64* %1, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %2, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %2, align 8
  br label %27

26:                                               ; preds = %11
  br label %34

27:                                               ; preds = %17
  %28 = load i64, i64* %2, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_perf_statistics, i32 0, i32 0), align 8
  %30 = sub i64 %29, 1
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %37

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i64, i64* %1, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %1, align 8
  br label %7

37:                                               ; preds = %32, %7
  %38 = load i32, i32* @TAG, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_perf_statistics, i32 0, i32 2), align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* %2, align 8
  %42 = add i64 %41, 1
  %43 = udiv i64 %40, %42
  %44 = call i32 @ESP_LOGI(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %43)
  %45 = load i32, i32* @ble_mesh_test_perf_sema, align 4
  %46 = call i32 @xSemaphoreGive(i32 %45)
  ret void
}

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i64) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
