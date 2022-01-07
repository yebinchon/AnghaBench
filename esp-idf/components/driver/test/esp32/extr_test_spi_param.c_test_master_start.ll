; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_param.c_test_master_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_param.c_test_master_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32 }

@HSPI_IOMUX_PIN_NUM_MISO = common dso_local global i32 0, align 4
@HSPI_IOMUX_PIN_NUM_MOSI = common dso_local global i32 0, align 4
@HSPI_IOMUX_PIN_NUM_CLK = common dso_local global i32 0, align 4
@VSPI_IOMUX_PIN_NUM_MISO = common dso_local global i32 0, align 4
@HSPI_IOMUX_PIN_NUM_CS = common dso_local global i32 0, align 4
@HALF_DUPLEX_MISO = common dso_local global i64 0, align 8
@SPI_DEVICE_HALFDUPLEX = common dso_local global i32 0, align 4
@HALF_DUPLEX_MOSI = common dso_local global i64 0, align 8
@SPI_DEVICE_NO_DUMMY = common dso_local global i32 0, align 4
@TEST_SPI_HOST = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_17__*, %struct.TYPE_18__*)* @test_master_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_master_start(i32* %0, i32 %1, %struct.TYPE_17__* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_20__, align 4
  %10 = alloca %struct.TYPE_19__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [328 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %8, align 8
  %17 = call { i64, i64 } (...) @SPI_BUS_TEST_DEFAULT_CONFIG()
  %18 = bitcast %struct.TYPE_20__* %9 to { i64, i64 }*
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  %20 = extractvalue { i64, i64 } %17, 0
  store i64 %20, i64* %19, align 4
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  %22 = extractvalue { i64, i64 } %17, 1
  store i64 %22, i64* %21, align 4
  %23 = load i32, i32* @HSPI_IOMUX_PIN_NUM_MISO, align 4
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @HSPI_IOMUX_PIN_NUM_MOSI, align 4
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @HSPI_IOMUX_PIN_NUM_CLK, align 4
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* @VSPI_IOMUX_PIN_NUM_MISO, align 4
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %4
  call void (%struct.TYPE_19__*, ...) @SPI_DEVICE_TEST_DEFAULT_CONFIG(%struct.TYPE_19__* sret %10)
  %37 = load i32, i32* @HSPI_IOMUX_PIN_NUM_CS, align 4
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 6
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 5
  store i32 %41, i32* %42, align 4
  store i32 15, i32* %11, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HALF_DUPLEX_MISO, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i32 15, i32* %49, align 4
  %50 = load i32, i32* @SPI_DEVICE_HALFDUPLEX, align 4
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %69

54:                                               ; preds = %36
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @HALF_DUPLEX_MOSI, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i32 15, i32* %61, align 4
  %62 = load i32, i32* @SPI_DEVICE_NO_DUMMY, align 4
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %68

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i32 15, i32* %67, align 4
  br label %68

68:                                               ; preds = %66, %60
  br label %69

69:                                               ; preds = %68, %48
  store i32 15, i32* %12, align 4
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  store i32 15, i32* %70, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 4
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  store i32 %75, i32* %76, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %69
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %82, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i32, i32* @SPI_DEVICE_NO_DUMMY, align 4
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %87, %81, %69
  %93 = load i32, i32* @TEST_SPI_HOST, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @spi_bus_initialize(i32 %93, %struct.TYPE_20__* %9, i32 %96)
  %98 = call i32 @TEST_ESP_OK(i32 %97)
  %99 = load i32, i32* @TEST_SPI_HOST, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @spi_bus_add_device(i32 %99, %struct.TYPE_19__* %10, i32* %100)
  %102 = call i32 @TEST_ESP_OK(i32 %101)
  store i32 0, i32* %13, align 4
  br label %103

103:                                              ; preds = %192, %92
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %195

109:                                              ; preds = %103
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @HALF_DUPLEX_MISO, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %109
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %15, align 4
  br label %133

124:                                              ; preds = %109
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %15, align 4
  br label %133

133:                                              ; preds = %124, %115
  %134 = getelementptr inbounds [328 x i32], [328 x i32]* %14, i64 0, i64 0
  store i32* %134, i32** %16, align 8
  %135 = load i32, i32* %15, align 4
  %136 = load i32*, i32** %16, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = load i32*, i32** %16, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %180

158:                                              ; preds = %133
  %159 = load i32*, i32** %16, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %170, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 7
  %178 = sdiv i32 %177, 8
  %179 = call i32 @memcpy(i32* %160, i32* %168, i32 %178)
  br label %180

180:                                              ; preds = %158, %133
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds [328 x i32], [328 x i32]* %14, i64 0, i64 0
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, 7
  %188 = sdiv i32 %187, 8
  %189 = add nsw i32 8, %188
  %190 = load i32, i32* @portMAX_DELAY, align 4
  %191 = call i32 @xRingbufferSend(i32 %184, i32* %185, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %180
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %13, align 4
  br label %103

195:                                              ; preds = %103
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @memset(i32 %198, i32 102, i32 4)
  ret void
}

declare dso_local { i64, i64 } @SPI_BUS_TEST_DEFAULT_CONFIG(...) #1

declare dso_local void @SPI_DEVICE_TEST_DEFAULT_CONFIG(%struct.TYPE_19__* sret, ...) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @spi_bus_initialize(i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @spi_bus_add_device(i32, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @xRingbufferSend(i32, i32*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
