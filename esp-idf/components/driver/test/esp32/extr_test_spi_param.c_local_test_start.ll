; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_param.c_local_test_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_param.c_local_test_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i8*, i32 }

@VSPI_IOMUX_PIN_NUM_MISO = common dso_local global i32 0, align 4
@VSPI_IOMUX_PIN_NUM_MOSI = common dso_local global i32 0, align 4
@VSPI_IOMUX_PIN_NUM_CLK = common dso_local global i32 0, align 4
@VSPI_IOMUX_PIN_NUM_CS = common dso_local global i8* null, align 8
@HSPI_IOMUX_PIN_NUM_MISO = common dso_local global i32 0, align 4
@HSPI_IOMUX_PIN_NUM_MOSI = common dso_local global i32 0, align 4
@HSPI_IOMUX_PIN_NUM_CLK = common dso_local global i32 0, align 4
@HSPI_IOMUX_PIN_NUM_CS = common dso_local global i8* null, align 8
@HALF_DUPLEX_MISO = common dso_local global i64 0, align 8
@SPI_DEVICE_HALFDUPLEX = common dso_local global i32 0, align 4
@HALF_DUPLEX_MOSI = common dso_local global i64 0, align 8
@SPI_DEVICE_NO_DUMMY = common dso_local global i32 0, align 4
@TEST_SPI_HOST = common dso_local global i32 0, align 4
@TEST_SLAVE_HOST = common dso_local global i32 0, align 4
@FUNC_SPI = common dso_local global i32 0, align 4
@HSPID_OUT_IDX = common dso_local global i32 0, align 4
@FUNC_GPIO = common dso_local global i32 0, align 4
@VSPIQ_OUT_IDX = common dso_local global i32 0, align 4
@HSPICS0_OUT_IDX = common dso_local global i32 0, align 4
@HSPICLK_OUT_IDX = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_18__*, %struct.TYPE_19__*)* @local_test_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @local_test_start(i32* %0, i32 %1, %struct.TYPE_18__* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_22__, align 4
  %10 = alloca %struct.TYPE_21__, align 4
  %11 = alloca %struct.TYPE_20__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %8, align 8
  %15 = call { i64, i64 } (...) @SPI_BUS_TEST_DEFAULT_CONFIG()
  %16 = bitcast %struct.TYPE_22__* %9 to { i64, i64 }*
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  %18 = extractvalue { i64, i64 } %15, 0
  store i64 %18, i64* %17, align 4
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  %20 = extractvalue { i64, i64 } %15, 1
  store i64 %20, i64* %19, align 4
  call void (%struct.TYPE_21__*, ...) @SPI_DEVICE_TEST_DEFAULT_CONFIG(%struct.TYPE_21__* sret %10)
  %21 = call { i8*, i32 } (...) @SPI_SLAVE_TEST_DEFAULT_CONFIG()
  %22 = bitcast %struct.TYPE_20__* %11 to { i8*, i32 }*
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %22, i32 0, i32 0
  %24 = extractvalue { i8*, i32 } %21, 0
  store i8* %24, i8** %23, align 8
  %25 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %22, i32 0, i32 1
  %26 = extractvalue { i8*, i32 } %21, 1
  store i32 %26, i32* %25, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %31, %4
  %38 = phi i1 [ true, %4 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load i32, i32* @VSPI_IOMUX_PIN_NUM_MISO, align 4
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @VSPI_IOMUX_PIN_NUM_MOSI, align 4
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @VSPI_IOMUX_PIN_NUM_CLK, align 4
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load i8*, i8** @VSPI_IOMUX_PIN_NUM_CS, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load i8*, i8** @VSPI_IOMUX_PIN_NUM_CS, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  br label %69

57:                                               ; preds = %37
  %58 = load i32, i32* @HSPI_IOMUX_PIN_NUM_MISO, align 4
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @HSPI_IOMUX_PIN_NUM_MOSI, align 4
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @HSPI_IOMUX_PIN_NUM_CLK, align 4
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  store i32 %62, i32* %63, align 4
  %64 = load i8*, i8** @HSPI_IOMUX_PIN_NUM_CS, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load i8*, i8** @HSPI_IOMUX_PIN_NUM_CS, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i8* %67, i8** %68, align 8
  br label %69

69:                                               ; preds = %57, %45
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @VSPI_IOMUX_PIN_NUM_MISO, align 4
  br label %82

81:                                               ; preds = %74, %69
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ -1, %81 ]
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 3
  store i32 %83, i32* %84, align 4
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 6
  store i32 %87, i32* %88, align 4
  store i32 15, i32* %12, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @HALF_DUPLEX_MISO, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  store i32 15, i32* %95, align 4
  %96 = load i32, i32* @SPI_DEVICE_HALFDUPLEX, align 4
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 4
  br label %115

100:                                              ; preds = %82
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @HALF_DUPLEX_MOSI, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  store i32 15, i32* %107, align 4
  %108 = load i32, i32* @SPI_DEVICE_NO_DUMMY, align 4
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %108
  store i32 %111, i32* %109, align 4
  br label %114

112:                                              ; preds = %100
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  store i32 15, i32* %113, align 4
  br label %114

114:                                              ; preds = %112, %106
  br label %115

115:                                              ; preds = %114, %94
  store i32 15, i32* %13, align 4
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  store i32 15, i32* %116, align 4
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 5
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %6, align 4
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 3
  store i32 %121, i32* %122, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %115
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp sgt i32 %128, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load i32, i32* @SPI_DEVICE_NO_DUMMY, align 4
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %134
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %133, %127, %115
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  store i32 %141, i32* %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @slave_pull_up(%struct.TYPE_22__* %9, i8* %144)
  %146 = load i32, i32* @TEST_SPI_HOST, align 4
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @spi_bus_initialize(i32 %146, %struct.TYPE_22__* %9, i32 %149)
  %151 = call i32 @TEST_ESP_OK(i32 %150)
  %152 = load i32, i32* @TEST_SPI_HOST, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @spi_bus_add_device(i32 %152, %struct.TYPE_21__* %10, i32* %153)
  %155 = call i32 @TEST_ESP_OK(i32 %154)
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 3
  store i32 -1, i32* %156, align 4
  %157 = load i32, i32* @TEST_SLAVE_HOST, align 4
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @spi_slave_initialize(i32 %157, %struct.TYPE_22__* %9, %struct.TYPE_20__* %11, i32 %160)
  %162 = call i32 @TEST_ESP_OK(i32 %161)
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %188

167:                                              ; preds = %138
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @FUNC_SPI, align 4
  %171 = load i32, i32* @HSPID_OUT_IDX, align 4
  %172 = call i32 @spitest_gpio_output_sel(i32 %169, i32 %170, i32 %171)
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @FUNC_GPIO, align 4
  %176 = load i32, i32* @VSPIQ_OUT_IDX, align 4
  %177 = call i32 @spitest_gpio_output_sel(i32 %174, i32 %175, i32 %176)
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @FUNC_SPI, align 4
  %181 = load i32, i32* @HSPICS0_OUT_IDX, align 4
  %182 = call i32 @spitest_gpio_output_sel(i32 %179, i32 %180, i32 %181)
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @FUNC_SPI, align 4
  %186 = load i32, i32* @HSPICLK_OUT_IDX, align 4
  %187 = call i32 @spitest_gpio_output_sel(i32 %184, i32 %185, i32 %186)
  br label %236

188:                                              ; preds = %138
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %214

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @FUNC_GPIO, align 4
  %197 = load i32, i32* @HSPID_OUT_IDX, align 4
  %198 = call i32 @spitest_gpio_output_sel(i32 %195, i32 %196, i32 %197)
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @FUNC_SPI, align 4
  %202 = load i32, i32* @VSPIQ_OUT_IDX, align 4
  %203 = call i32 @spitest_gpio_output_sel(i32 %200, i32 %201, i32 %202)
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @FUNC_GPIO, align 4
  %207 = load i32, i32* @HSPICS0_OUT_IDX, align 4
  %208 = call i32 @spitest_gpio_output_sel(i32 %205, i32 %206, i32 %207)
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @FUNC_GPIO, align 4
  %212 = load i32, i32* @HSPICLK_OUT_IDX, align 4
  %213 = call i32 @spitest_gpio_output_sel(i32 %210, i32 %211, i32 %212)
  br label %235

214:                                              ; preds = %188
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @FUNC_GPIO, align 4
  %218 = load i32, i32* @HSPID_OUT_IDX, align 4
  %219 = call i32 @spitest_gpio_output_sel(i32 %216, i32 %217, i32 %218)
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @FUNC_GPIO, align 4
  %223 = load i32, i32* @VSPIQ_OUT_IDX, align 4
  %224 = call i32 @spitest_gpio_output_sel(i32 %221, i32 %222, i32 %223)
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @FUNC_GPIO, align 4
  %228 = load i32, i32* @HSPICS0_OUT_IDX, align 4
  %229 = call i32 @spitest_gpio_output_sel(i32 %226, i32 %227, i32 %228)
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @FUNC_GPIO, align 4
  %233 = load i32, i32* @HSPICLK_OUT_IDX, align 4
  %234 = call i32 @spitest_gpio_output_sel(i32 %231, i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %214, %193
  br label %236

236:                                              ; preds = %235, %167
  store i32 0, i32* %14, align 4
  br label %237

237:                                              ; preds = %256, %236
  %238 = load i32, i32* %14, align 4
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = icmp slt i32 %238, %241
  br i1 %242, label %243, label %259

243:                                              ; preds = %237
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* @portMAX_DELAY, align 4
  %255 = call i32 @xQueueSend(i32 %247, i32* %253, i32 %254)
  br label %256

256:                                              ; preds = %243
  %257 = load i32, i32* %14, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %14, align 4
  br label %237

259:                                              ; preds = %237
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @memset(i32 %262, i32 102, i32 4)
  ret void
}

declare dso_local { i64, i64 } @SPI_BUS_TEST_DEFAULT_CONFIG(...) #1

declare dso_local void @SPI_DEVICE_TEST_DEFAULT_CONFIG(%struct.TYPE_21__* sret, ...) #1

declare dso_local { i8*, i32 } @SPI_SLAVE_TEST_DEFAULT_CONFIG(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @slave_pull_up(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @spi_bus_initialize(i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @spi_bus_add_device(i32, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @spi_slave_initialize(i32, %struct.TYPE_22__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @spitest_gpio_output_sel(i32, i32, i32) #1

declare dso_local i32 @xQueueSend(i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
