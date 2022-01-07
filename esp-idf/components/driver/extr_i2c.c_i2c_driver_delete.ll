; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_i2c.c_i2c_driver_delete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_i2c.c_i2c_driver_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32*, i64, i32*, i64, i32*, i64, i64, i32*, i64, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@I2C_NUM_MAX = common dso_local global i64 0, align 8
@I2C_NUM_ERROR_STR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@p_i2c_obj = common dso_local global %struct.TYPE_7__** null, align 8
@I2C_DRIVER_ERR_STR = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@I2C = common dso_local global %struct.TYPE_8__** null, align 8
@portMAX_DELAY = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_driver_delete(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @I2C_NUM_MAX, align 8
  %6 = icmp ult i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* @I2C_NUM_ERROR_STR, align 4
  %9 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %10 = call i32 @I2C_CHECK(i32 %7, i32 %8, i32 %9)
  %11 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @p_i2c_obj, align 8
  %12 = load i64, i64* %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %11, i64 %12
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* @I2C_DRIVER_ERR_STR, align 4
  %18 = load i32, i32* @ESP_FAIL, align 4
  %19 = call i32 @I2C_CHECK(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @p_i2c_obj, align 8
  %21 = load i64, i64* %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %20, i64 %21
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %3, align 8
  %24 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @I2C, align 8
  %25 = load i64, i64* %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %24, i64 %25
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 10
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @esp_intr_free(i32* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 10
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 9
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @portMAX_DELAY, align 4
  %45 = call i32 @xSemaphoreTake(i64 %43, i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 9
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @vSemaphoreDelete(i64 %48)
  br label %50

50:                                               ; preds = %40, %1
  %51 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @p_i2c_obj, align 8
  %52 = load i64, i64* %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %51, i64 %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 8
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %50
  %59 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @p_i2c_obj, align 8
  %60 = load i64, i64* %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %59, i64 %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 8
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @vQueueDelete(i32* %64)
  %66 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @p_i2c_obj, align 8
  %67 = load i64, i64* %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %66, i64 %67
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 8
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %58, %50
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @vSemaphoreDelete(i64 %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @vSemaphoreDelete(i64 %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 5
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @vRingbufferDelete(i32* %99)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 5
  store i32* null, i32** %102, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 4
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %96, %91
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %105
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @vRingbufferDelete(i32* %113)
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  store i32* null, i32** %116, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %110, %105
  %120 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @p_i2c_obj, align 8
  %121 = load i64, i64* %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %120, i64 %121
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = call i32 @free(%struct.TYPE_7__* %123)
  %125 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @p_i2c_obj, align 8
  %126 = load i64, i64* %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %125, i64 %126
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %127, align 8
  %128 = load i64, i64* %2, align 8
  %129 = call i32 @i2c_hw_disable(i64 %128)
  %130 = load i32, i32* @ESP_OK, align 4
  ret i32 %130
}

declare dso_local i32 @I2C_CHECK(i32, i32, i32) #1

declare dso_local i32 @esp_intr_free(i32*) #1

declare dso_local i32 @xSemaphoreTake(i64, i32) #1

declare dso_local i32 @vSemaphoreDelete(i64) #1

declare dso_local i32 @vQueueDelete(i32*) #1

declare dso_local i32 @vRingbufferDelete(i32*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @i2c_hw_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
