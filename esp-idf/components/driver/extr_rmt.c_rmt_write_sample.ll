; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_write_sample.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_write_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32, i32, i32, i32, i32*, i64, i64, i32, i32, i32 (i8*, i32, i64, i32, i64*, i64*)* }
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
@RMT_TRANSLATOR_UNINIT_STR = common dso_local global i32 0, align 4
@RMT = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@RMT_MEM_ITEM_NUM = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@RMTMEM = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_IRAM = common dso_local global i32 0, align 4
@RMT_PSRAM_BUFFER_WARN_STR = common dso_local global i32 0, align 4
@RMT_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmt_write_sample(i64 %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
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
  %30 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_rmt_obj, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %30, i64 %31
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 11
  %35 = load i32 (i8*, i32, i64, i32, i64*, i64*)*, i32 (i8*, i32, i64, i32, i64*, i64*)** %34, align 8
  %36 = icmp ne i32 (i8*, i32, i64, i32, i64*, i64*)* %35, null
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* @RMT_TRANSLATOR_UNINIT_STR, align 4
  %39 = load i32, i32* @ESP_FAIL, align 4
  %40 = call i32 @RMT_CHECK(i32 %37, i32 %38, i32 %39)
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %41 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_rmt_obj, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %41, i64 %42
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %11, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @RMT, i32 0, i32 0), align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RMT_MEM_ITEM_NUM, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sdiv i32 %53, 2
  store i32 %54, i32* %13, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @portMAX_DELAY, align 4
  %59 = call i32 @xSemaphoreTake(i32 %57, i32 %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 11
  %62 = load i32 (i8*, i32, i64, i32, i64*, i64*)*, i32 (i8*, i32, i64, i32, i64*, i64*)** %61, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 %62(i8* %64, i32 %67, i64 %68, i32 %69, i64* %10, i64* %9)
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %10, align 8
  %73 = sub i64 %71, %72
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 6
  store i32* %78, i32** %80, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @rmt_fill_memory(i64 %81, i32 %84, i64 %85, i32 0)
  %87 = load i64, i64* %9, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp eq i64 %87, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %4
  %92 = load i64, i64* %5, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @rmt_set_tx_thr_intr_en(i64 %92, i32 1, i32 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 10
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 8
  store i64 0, i64* %101, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  store i32 1, i32* %106, align 4
  br label %122

107:                                              ; preds = %4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @RMTMEM, i32 0, i32 0), align 8
  %109 = load i64, i64* %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 7
  store i64 0, i64* %117, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 6
  store i32* null, i32** %119, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 3
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %107, %91
  %123 = load i64, i64* %5, align 8
  %124 = call i32 @rmt_tx_start(i64 %123, i32 1)
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %122
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @portMAX_DELAY, align 4
  %135 = call i32 @xSemaphoreTake(i32 %133, i32 %134)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @xSemaphoreGive(i32 %138)
  br label %140

140:                                              ; preds = %130, %122
  %141 = load i32, i32* @ESP_OK, align 4
  ret i32 %141
}

declare dso_local i32 @RMT_CHECK(i32, i32, i32) #1

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @rmt_fill_memory(i64, i32, i64, i32) #1

declare dso_local i32 @rmt_set_tx_thr_intr_en(i64, i32, i32) #1

declare dso_local i32 @rmt_tx_start(i64, i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
