; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_param.c_timing_slave_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_param.c_timing_slave_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@VSPI_IOMUX_PIN_NUM_MISO = common dso_local global i32 0, align 4
@VSPI_IOMUX_PIN_NUM_MOSI = common dso_local global i32 0, align 4
@VSPI_IOMUX_PIN_NUM_CLK = common dso_local global i32 0, align 4
@HSPI_IOMUX_PIN_NUM_CLK = common dso_local global i32 0, align 4
@VSPI_IOMUX_PIN_NUM_CS = common dso_local global i32 0, align 4
@TEST_SLAVE_HOST = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@HALF_DUPLEX_MISO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_16__*, %struct.TYPE_17__*)* @timing_slave_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timing_slave_start(i32 %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_19__, align 4
  %8 = alloca %struct.TYPE_18__, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %10 = call { i64, i64 } (...) @SPI_BUS_TEST_DEFAULT_CONFIG()
  %11 = bitcast %struct.TYPE_19__* %7 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  %13 = extractvalue { i64, i64 } %10, 0
  store i64 %13, i64* %12, align 4
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %15 = extractvalue { i64, i64 } %10, 1
  store i64 %15, i64* %14, align 4
  %16 = load i32, i32* @VSPI_IOMUX_PIN_NUM_MISO, align 4
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @VSPI_IOMUX_PIN_NUM_MOSI, align 4
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @VSPI_IOMUX_PIN_NUM_CLK, align 4
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @HSPI_IOMUX_PIN_NUM_CLK, align 4
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %3
  %30 = call i64 (...) @SPI_SLAVE_TEST_DEFAULT_CONFIG()
  %31 = bitcast %struct.TYPE_18__* %8 to i64*
  store i64 %30, i64* %31, align 4
  %32 = load i32, i32* @VSPI_IOMUX_PIN_NUM_CS, align 4
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @slave_pull_up(%struct.TYPE_19__* %7, i32 %39)
  %41 = load i32, i32* @TEST_SLAVE_HOST, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @spi_slave_initialize(i32 %41, %struct.TYPE_19__* %7, %struct.TYPE_18__* %8, i32 %44)
  %46 = call i32 @TEST_ESP_OK(i32 %45)
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %123, %29
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %126

53:                                               ; preds = %47
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FULL_DUPLEX, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %87

59:                                               ; preds = %53
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 7
  %85 = sdiv i32 %84, 8
  %86 = call i32 @memcpy(i32 %67, i32 %75, i32 %85)
  br label %122

87:                                               ; preds = %53
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @HALF_DUPLEX_MISO, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %121

93:                                               ; preds = %87
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 7
  %119 = sdiv i32 %118, 8
  %120 = call i32 @memcpy(i32 %101, i32 %109, i32 %119)
  br label %121

121:                                              ; preds = %93, %87
  br label %122

122:                                              ; preds = %121, %59
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %47

126:                                              ; preds = %47
  ret void
}

declare dso_local { i64, i64 } @SPI_BUS_TEST_DEFAULT_CONFIG(...) #1

declare dso_local i64 @SPI_SLAVE_TEST_DEFAULT_CONFIG(...) #1

declare dso_local i32 @slave_pull_up(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @spi_slave_initialize(i32, %struct.TYPE_19__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
