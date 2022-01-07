; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_write_items.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_write_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i64, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@RMT_CHANNEL_MAX = common dso_local global i64 0, align 8
@RMT_CHANNEL_ERROR_STR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@p_rmt_obj = common dso_local global %struct.TYPE_13__** null, align 8
@RMT_DRIVER_ERROR_STR = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@RMT_ADDR_ERROR_STR = common dso_local global i32 0, align 4
@RMT_DRIVER_LENGTH_ERROR_STR = common dso_local global i32 0, align 4
@RMT = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@RMT_MEM_ITEM_NUM = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@RMTMEM = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_IRAM = common dso_local global i32 0, align 4
@RMT_PSRAM_BUFFER_WARN_STR = common dso_local global i32 0, align 4
@RMT_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmt_write_items(i64 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @RMT_CHANNEL_MAX, align 8
  %16 = icmp ult i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @RMT_CHANNEL_ERROR_STR, align 4
  %19 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %20 = call i32 @RMT_CHECK(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_rmt_obj, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %21, i64 %22
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = icmp ne %struct.TYPE_13__* %24, null
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* @RMT_DRIVER_ERROR_STR, align 4
  %28 = load i32, i32* @ESP_FAIL, align 4
  %29 = call i32 @RMT_CHECK(i32 %26, i32 %27, i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* @RMT_ADDR_ERROR_STR, align 4
  %34 = load i32, i32* @ESP_FAIL, align 4
  %35 = call i32 @RMT_CHECK(i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @RMT_DRIVER_LENGTH_ERROR_STR, align 4
  %40 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %41 = call i32 @RMT_CHECK(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_rmt_obj, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %42, i64 %43
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %9, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @RMT, i32 0, i32 0), align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @RMT_MEM_ITEM_NUM, align 4
  %54 = mul nsw i32 %52, %53
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @RMT_MEM_ITEM_NUM, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sdiv i32 %57, 2
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %13, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @portMAX_DELAY, align 4
  %64 = call i32 @xSemaphoreTake(i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %95

68:                                               ; preds = %4
  %69 = load i64, i64* %5, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @rmt_fill_memory(i64 %69, i32* %70, i32 %71, i32 0)
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %13, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %13, align 4
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @rmt_set_tx_loop_mode(i64 %76, i32 0)
  %78 = load i64, i64* %5, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @rmt_set_tx_thr_intr_en(i64 %78, i32 1, i32 %79)
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 6
  store i32* %84, i32** %86, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 5
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  br label %111

95:                                               ; preds = %4
  %96 = load i64, i64* %5, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @rmt_fill_memory(i64 %96, i32* %97, i32 %98, i32 0)
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @RMTMEM, i32 0, i32 0), align 8
  %101 = load i64, i64* %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %95, %68
  %112 = load i64, i64* %5, align 8
  %113 = call i32 @rmt_tx_start(i64 %112, i32 1)
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %111
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @portMAX_DELAY, align 4
  %124 = call i32 @xSemaphoreTake(i32 %122, i32 %123)
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @xSemaphoreGive(i32 %127)
  br label %129

129:                                              ; preds = %119, %111
  %130 = load i32, i32* @ESP_OK, align 4
  ret i32 %130
}

declare dso_local i32 @RMT_CHECK(i32, i32, i32) #1

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @rmt_fill_memory(i64, i32*, i32, i32) #1

declare dso_local i32 @rmt_set_tx_loop_mode(i64, i32) #1

declare dso_local i32 @rmt_set_tx_thr_intr_en(i64, i32, i32) #1

declare dso_local i32 @rmt_tx_start(i64, i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
