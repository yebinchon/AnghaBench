; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_provisioner/main/extr_ble_mesh_adapter.c_ble_mesh_test_performance_client_model_accumulate_time.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_provisioner/main/extr_ble_mesh_adapter.c_ble_mesh_test_performance_client_model_accumulate_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64*, i64, i64* }

@ble_mesh_test_perf_sema = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@test_perf_statistics = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@VENDOR_MODEL_PERF_OPERATION_TYPE_SET = common dso_local global i32 0, align 4
@VENDOR_MODEL_PERF_OPERATION_TYPE_SET_UNACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ble_mesh_test_performance_client_model_accumulate_time(i64 %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @ble_mesh_test_perf_sema, align 4
  %14 = load i32, i32* @portMAX_DELAY, align 4
  %15 = call i32 @xSemaphoreTake(i32 %13, i32 %14)
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_perf_statistics, i32 0, i32 0), align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ble_mesh_test_perf_sema, align 4
  %21 = call i32 @xSemaphoreGive(i32 %20)
  store i32 1, i32* %5, align 4
  br label %125

22:                                               ; preds = %4
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %11, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @VENDOR_MODEL_PERF_OPERATION_TYPE_SET, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %40, %25
  br label %46

46:                                               ; preds = %45, %22
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %62, %46
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_perf_statistics, i32 0, i32 1), align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_perf_statistics, i32 0, i32 2), align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @ble_mesh_test_perf_sema, align 4
  %60 = call i32 @xSemaphoreGive(i32 %59)
  store i32 1, i32* %5, align 4
  br label %125

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %10, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %10, align 8
  br label %47

65:                                               ; preds = %47
  store i64 0, i64* %10, align 8
  br label %66

66:                                               ; preds = %119, %65
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_perf_statistics, i32 0, i32 1), align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %122

70:                                               ; preds = %66
  %71 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_perf_statistics, i32 0, i32 2), align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %118

76:                                               ; preds = %70
  %77 = load i64, i64* %11, align 8
  %78 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_perf_statistics, i32 0, i32 2), align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64 %77, i64* %80, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @VENDOR_MODEL_PERF_OPERATION_TYPE_SET, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %76
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_perf_statistics, i32 0, i32 3), align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_perf_statistics, i32 0, i32 3), align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i64, i64* %6, align 8
  %97 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_perf_statistics, i32 0, i32 4), align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  store i64 %96, i64* %99, align 8
  br label %104

100:                                              ; preds = %90, %86
  %101 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_perf_statistics, i32 0, i32 4), align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %100, %95
  br label %117

105:                                              ; preds = %76
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @VENDOR_MODEL_PERF_OPERATION_TYPE_SET_UNACK, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load i64, i64* %6, align 8
  %113 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_perf_statistics, i32 0, i32 4), align 8
  %114 = load i64, i64* %10, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  store i64 %112, i64* %115, align 8
  br label %116

116:                                              ; preds = %111, %105
  br label %117

117:                                              ; preds = %116, %104
  br label %122

118:                                              ; preds = %70
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %10, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %10, align 8
  br label %66

122:                                              ; preds = %117, %66
  %123 = load i32, i32* @ble_mesh_test_perf_sema, align 4
  %124 = call i32 @xSemaphoreGive(i32 %123)
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %122, %58, %19
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
