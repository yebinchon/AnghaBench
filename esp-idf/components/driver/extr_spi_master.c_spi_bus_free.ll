; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_master.c_spi_bus_free.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_master.c_spi_bus_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_5__, i32, i32, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }

@SPI_HOST = common dso_local global i64 0, align 8
@VSPI_HOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"invalid host\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@spihost = common dso_local global %struct.TYPE_4__** null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"host not in use\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@NO_CS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"not all CSses freed\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_bus_free(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @SPI_HOST, align 8
  %6 = icmp uge i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @VSPI_HOST, align 8
  %10 = icmp ule i64 %8, %9
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i1 [ false, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %15 = call i32 @SPI_CHECK(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @spihost, align 8
  %17 = load i64, i64* %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %23 = call i32 @SPI_CHECK(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %43, %11
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @NO_CS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @spihost, align 8
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %29, i64 %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32* @atomic_load(i32* %37)
  %39 = icmp eq i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %42 = call i32 @SPI_CHECK(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %24

46:                                               ; preds = %24
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @spihost, align 8
  %48 = load i64, i64* %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %47, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = call i32 @spicommon_bus_free_io_cfg(i32* %51)
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @spihost, align 8
  %54 = load i64, i64* %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i64 %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %46
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @spihost, align 8
  %62 = load i64, i64* %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %61, i64 %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @spicommon_dma_chan_free(i64 %66)
  br label %68

68:                                               ; preds = %60, %46
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @spihost, align 8
  %70 = load i64, i64* %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %69, i64 %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = call i32 @spi_hal_deinit(%struct.TYPE_5__* %73)
  %75 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @spihost, align 8
  %76 = load i64, i64* %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %75, i64 %76
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = call i32 @free(%struct.TYPE_4__* %81)
  %83 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @spihost, align 8
  %84 = load i64, i64* %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %83, i64 %84
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = call i32 @free(%struct.TYPE_4__* %89)
  %91 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @spihost, align 8
  %92 = load i64, i64* %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %91, i64 %92
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @esp_intr_free(i32 %96)
  %98 = load i64, i64* %2, align 8
  %99 = call i32 @spicommon_periph_free(i64 %98)
  %100 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @spihost, align 8
  %101 = load i64, i64* %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %100, i64 %101
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = call i32 @free(%struct.TYPE_4__* %103)
  %105 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @spihost, align 8
  %106 = load i64, i64* %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %105, i64 %106
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %107, align 8
  %108 = load i32, i32* @ESP_OK, align 4
  ret i32 %108
}

declare dso_local i32 @SPI_CHECK(i32, i8*, i32) #1

declare dso_local i32* @atomic_load(i32*) #1

declare dso_local i32 @spicommon_bus_free_io_cfg(i32*) #1

declare dso_local i32 @spicommon_dma_chan_free(i64) #1

declare dso_local i32 @spi_hal_deinit(%struct.TYPE_5__*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i32 @esp_intr_free(i32) #1

declare dso_local i32 @spicommon_periph_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
