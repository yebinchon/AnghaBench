; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_slave.c_spi_slave_free.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_slave.c_spi_slave_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [13 x i8] c"invalid host\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@spihost = common dso_local global %struct.TYPE_7__** null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"host not slave\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_slave_free(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call %struct.TYPE_7__* @VALID_HOST(i64 %3)
  %5 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %6 = call i32 @SPI_CHECK(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @spihost, align 8
  %8 = load i64, i64* %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %7, i64 %8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %12 = call i32 @SPI_CHECK(%struct.TYPE_7__* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @spihost, align 8
  %14 = load i64, i64* %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %13, i64 %14
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @spihost, align 8
  %22 = load i64, i64* %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %21, i64 %22
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @vQueueDelete(i64 %26)
  br label %28

28:                                               ; preds = %20, %1
  %29 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @spihost, align 8
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %29, i64 %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @spihost, align 8
  %38 = load i64, i64* %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %37, i64 %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @vQueueDelete(i64 %42)
  br label %44

44:                                               ; preds = %36, %28
  %45 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @spihost, align 8
  %46 = load i64, i64* %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %45, i64 %46
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @spihost, align 8
  %54 = load i64, i64* %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %53, i64 %54
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @spicommon_dma_chan_free(i64 %58)
  br label %60

60:                                               ; preds = %52, %44
  %61 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @spihost, align 8
  %62 = load i64, i64* %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %61, i64 %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = call i32 @free(%struct.TYPE_7__* %67)
  %69 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @spihost, align 8
  %70 = load i64, i64* %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %69, i64 %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = call i32 @free(%struct.TYPE_7__* %75)
  %77 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @spihost, align 8
  %78 = load i64, i64* %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %77, i64 %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @esp_intr_free(i32 %82)
  %84 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @spihost, align 8
  %85 = load i64, i64* %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %84, i64 %85
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = call i32 @free(%struct.TYPE_7__* %87)
  %89 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @spihost, align 8
  %90 = load i64, i64* %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %89, i64 %90
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %91, align 8
  %92 = load i64, i64* %2, align 8
  %93 = call i32 @spicommon_periph_free(i64 %92)
  %94 = load i32, i32* @ESP_OK, align 4
  ret i32 %94
}

declare dso_local i32 @SPI_CHECK(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @VALID_HOST(i64) #1

declare dso_local i32 @vQueueDelete(i64) #1

declare dso_local i32 @spicommon_dma_chan_free(i64) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @esp_intr_free(i32) #1

declare dso_local i32 @spicommon_periph_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
