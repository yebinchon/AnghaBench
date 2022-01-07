; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_slave.c_spi_slave_initialize.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_slave.c_spi_slave_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_18__, i64, i8*, i8*, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_20__*, %struct.TYPE_20__*, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }

@ESP_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"invalid host\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_HIGH = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_EDGE = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_INTRDISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"intr flag not allowed\00", align 1
@ESP_INTR_FLAG_IRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [84 x i8] c"ESP_INTR_FLAG_IRAM should be disabled when CONFIG_SPI_SLAVE_ISR_IN_IRAM is not set.\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"spi slave\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"host already in use\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"dma channel already in use\00", align 1
@spihost = common dso_local global %struct.TYPE_20__** null, align 8
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@SPICOMMON_BUSFLAG_SLAVE = common dso_local global i32 0, align 4
@SPI_MAX_DMA_LEN = common dso_local global i32 0, align 4
@SOC_SPI_MAXIMUM_BUFFER_SIZE = common dso_local global i32 0, align 4
@spi_intr = common dso_local global i32 0, align 4
@MALLOC_CAP_DMA = common dso_local global i32 0, align 4
@SPI_SLAVE_RXBIT_LSBFIRST = common dso_local global i32 0, align 4
@SPI_SLAVE_TXBIT_LSBFIRST = common dso_local global i32 0, align 4
@ESP_PM_APB_FREQ_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @spi_slave_initialize(i32 %0, %struct.TYPE_19__* %1, %struct.TYPE_17__* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_18__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i64, i64* @ESP_OK, align 8
  store i64 %18, i64* %12, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @VALID_HOST(i32 %19)
  %21 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %22 = call i32 @SPI_CHECK(i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ESP_INTR_FLAG_HIGH, align 4
  %27 = load i32, i32* @ESP_INTR_FLAG_EDGE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ESP_INTR_FLAG_INTRDISABLED, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %25, %30
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %35 = call i32 @SPI_CHECK(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ESP_INTR_FLAG_IRAM, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %44 = call i32 @SPI_CHECK(i32 %42, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @spicommon_periph_claim(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %49 = call i32 @SPI_CHECK(i32 %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @spicommon_dma_chan_claim(i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @spicommon_periph_free(i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %65 = call i32 @SPI_CHECK(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %55
  br label %67

67:                                               ; preds = %66, %4
  %68 = call %struct.TYPE_20__* @malloc(i32 4)
  %69 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %69, i64 %71
  store %struct.TYPE_20__* %68, %struct.TYPE_20__** %72, align 8
  %73 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %73, i64 %75
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = icmp eq %struct.TYPE_20__* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %80, i64* %12, align 8
  br label %333

81:                                               ; preds = %67
  %82 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %82, i64 %84
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = call i32 @memset(%struct.TYPE_20__* %86, i32 0, i32 4)
  %88 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %88, i64 %90
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 9
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %95 = call i32 @memcpy(i32* %93, %struct.TYPE_17__* %94, i32 16)
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %97, i64 %99
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  store i32 %96, i32* %102, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @SPICOMMON_BUSFLAG_SLAVE, align 4
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %106, %109
  %111 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %111, i64 %113
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 8
  %117 = call i64 @spicommon_bus_initialize_io(i32 %103, %struct.TYPE_19__* %104, i32 %105, i32 %110, i32* %116)
  store i64 %117, i64* %13, align 8
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* @ESP_OK, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %81
  %122 = load i64, i64* %13, align 8
  store i64 %122, i64* %12, align 8
  br label %333

123:                                              ; preds = %81
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %128, i64 %130
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %131, align 8
  %133 = call i32 @bus_is_iomux(%struct.TYPE_20__* %132)
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i32 @spicommon_cs_initialize(i32 %124, i32 %127, i32 0, i32 %136)
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %123
  %141 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %141, i64 %143
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %144, align 8
  %146 = call i32 @freeze_cs(%struct.TYPE_20__* %145)
  br label %147

147:                                              ; preds = %140, %123
  store i32 0, i32* %15, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %149, i64 %151
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 1
  store i32 %148, i32* %154, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %179

157:                                              ; preds = %147
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @SPI_MAX_DMA_LEN, align 4
  %162 = add nsw i32 %160, %161
  %163 = sub nsw i32 %162, 1
  %164 = load i32, i32* @SPI_MAX_DMA_LEN, align 4
  %165 = sdiv i32 %163, %164
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  store i32 1, i32* %15, align 4
  br label %169

169:                                              ; preds = %168, %157
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* @SPI_MAX_DMA_LEN, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %173, i64 %175
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 2
  store i32 %172, i32* %178, align 8
  br label %187

179:                                              ; preds = %147
  %180 = load i32, i32* @SOC_SPI_MAXIMUM_BUFFER_SIZE, align 4
  %181 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %181, i64 %183
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 2
  store i32 %180, i32* %186, align 8
  br label %187

187:                                              ; preds = %179, %169
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @xQueueCreate(i32 %190, i32 8)
  %192 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %192, i64 %194
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 6
  store i8* %191, i8** %197, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = call i8* @xQueueCreate(i32 %200, i32 8)
  %202 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %202, i64 %204
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 5
  store i8* %201, i8** %207, align 8
  %208 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %208, i64 %210
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 6
  %214 = load i8*, i8** %213, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %225

216:                                              ; preds = %187
  %217 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %217, i64 %219
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 5
  %223 = load i8*, i8** %222, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %227, label %225

225:                                              ; preds = %216, %187
  %226 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %226, i64* %12, align 8
  br label %333

227:                                              ; preds = %216
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @ESP_INTR_FLAG_INTRDISABLED, align 4
  %232 = or i32 %230, %231
  store i32 %232, i32* %16, align 4
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @spicommon_irqsource_for_host(i32 %233)
  %235 = load i32, i32* %16, align 4
  %236 = load i32, i32* @spi_intr, align 4
  %237 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %237, i64 %239
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %240, align 8
  %242 = bitcast %struct.TYPE_20__* %241 to i8*
  %243 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %243, i64 %245
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 7
  %249 = call i64 @esp_intr_alloc(i32 %234, i32 %235, i32 %236, i8* %242, i32* %248)
  store i64 %249, i64* %13, align 8
  %250 = load i64, i64* %13, align 8
  %251 = load i64, i64* @ESP_OK, align 8
  %252 = icmp ne i64 %250, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %227
  %254 = load i64, i64* %13, align 8
  store i64 %254, i64* %12, align 8
  br label %333

255:                                              ; preds = %227
  %256 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %256, i64 %258
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 3
  store %struct.TYPE_18__* %261, %struct.TYPE_18__** %17, align 8
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %263 = load i32, i32* %6, align 4
  %264 = call i32 @spi_slave_hal_init(%struct.TYPE_18__* %262, i32 %263)
  %265 = load i32, i32* %15, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %298

267:                                              ; preds = %255
  %268 = load i32, i32* %15, align 4
  %269 = sext i32 %268 to i64
  %270 = mul i64 4, %269
  %271 = trunc i64 %270 to i32
  %272 = load i32, i32* @MALLOC_CAP_DMA, align 4
  %273 = call i8* @heap_caps_malloc(i32 %271, i32 %272)
  %274 = bitcast i8* %273 to %struct.TYPE_20__*
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 5
  store %struct.TYPE_20__* %274, %struct.TYPE_20__** %276, align 8
  %277 = load i32, i32* %15, align 4
  %278 = sext i32 %277 to i64
  %279 = mul i64 4, %278
  %280 = trunc i64 %279 to i32
  %281 = load i32, i32* @MALLOC_CAP_DMA, align 4
  %282 = call i8* @heap_caps_malloc(i32 %280, i32 %281)
  %283 = bitcast i8* %282 to %struct.TYPE_20__*
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 4
  store %struct.TYPE_20__* %283, %struct.TYPE_20__** %285, align 8
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 5
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %287, align 8
  %289 = icmp ne %struct.TYPE_20__* %288, null
  br i1 %289, label %290, label %295

290:                                              ; preds = %267
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 4
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %292, align 8
  %294 = icmp ne %struct.TYPE_20__* %293, null
  br i1 %294, label %297, label %295

295:                                              ; preds = %290, %267
  %296 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %296, i64* %12, align 8
  br label %333

297:                                              ; preds = %290
  br label %298

298:                                              ; preds = %297, %255
  %299 = load i32, i32* %15, align 4
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 0
  store i32 %299, i32* %301, align 8
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @SPI_SLAVE_RXBIT_LSBFIRST, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  %308 = zext i1 %307 to i64
  %309 = select i1 %307, i32 1, i32 0
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 4
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @SPI_SLAVE_TXBIT_LSBFIRST, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  %318 = zext i1 %317 to i64
  %319 = select i1 %317, i32 1, i32 0
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 2
  store i32 %319, i32* %321, align 8
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 6
  store i32 %324, i32* %326, align 8
  %327 = load i32, i32* %14, align 4
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 3
  store i32 %327, i32* %329, align 4
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %331 = call i32 @spi_slave_hal_setup_device(%struct.TYPE_18__* %330)
  %332 = load i64, i64* @ESP_OK, align 8
  store i64 %332, i64* %5, align 8
  br label %418

333:                                              ; preds = %295, %253, %225, %121, %79
  %334 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %335 = load i32, i32* %6, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %334, i64 %336
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %337, align 8
  %339 = icmp ne %struct.TYPE_20__* %338, null
  br i1 %339, label %340, label %395

340:                                              ; preds = %333
  %341 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %342 = load i32, i32* %6, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %341, i64 %343
  %345 = load %struct.TYPE_20__*, %struct.TYPE_20__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %345, i32 0, i32 6
  %347 = load i8*, i8** %346, align 8
  %348 = icmp ne i8* %347, null
  br i1 %348, label %349, label %358

349:                                              ; preds = %340
  %350 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %351 = load i32, i32* %6, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %350, i64 %352
  %354 = load %struct.TYPE_20__*, %struct.TYPE_20__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %354, i32 0, i32 6
  %356 = load i8*, i8** %355, align 8
  %357 = call i32 @vQueueDelete(i8* %356)
  br label %358

358:                                              ; preds = %349, %340
  %359 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %360 = load i32, i32* %6, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %359, i64 %361
  %363 = load %struct.TYPE_20__*, %struct.TYPE_20__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i32 0, i32 5
  %365 = load i8*, i8** %364, align 8
  %366 = icmp ne i8* %365, null
  br i1 %366, label %367, label %376

367:                                              ; preds = %358
  %368 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %369 = load i32, i32* %6, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %368, i64 %370
  %372 = load %struct.TYPE_20__*, %struct.TYPE_20__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %372, i32 0, i32 5
  %374 = load i8*, i8** %373, align 8
  %375 = call i32 @vQueueDelete(i8* %374)
  br label %376

376:                                              ; preds = %367, %358
  %377 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %378 = load i32, i32* %6, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %377, i64 %379
  %381 = load %struct.TYPE_20__*, %struct.TYPE_20__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %381, i32 0, i32 3
  %383 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %382, i32 0, i32 5
  %384 = load %struct.TYPE_20__*, %struct.TYPE_20__** %383, align 8
  %385 = call i32 @free(%struct.TYPE_20__* %384)
  %386 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %387 = load i32, i32* %6, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %386, i64 %388
  %390 = load %struct.TYPE_20__*, %struct.TYPE_20__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %390, i32 0, i32 3
  %392 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %391, i32 0, i32 4
  %393 = load %struct.TYPE_20__*, %struct.TYPE_20__** %392, align 8
  %394 = call i32 @free(%struct.TYPE_20__* %393)
  br label %395

395:                                              ; preds = %376, %333
  %396 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %397 = load i32, i32* %6, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %396, i64 %398
  %400 = load %struct.TYPE_20__*, %struct.TYPE_20__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 3
  %402 = call i32 @spi_slave_hal_deinit(%struct.TYPE_18__* %401)
  %403 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %404 = load i32, i32* %6, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %403, i64 %405
  %407 = load %struct.TYPE_20__*, %struct.TYPE_20__** %406, align 8
  %408 = call i32 @free(%struct.TYPE_20__* %407)
  %409 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %410 = load i32, i32* %6, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %409, i64 %411
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %412, align 8
  %413 = load i32, i32* %6, align 4
  %414 = call i32 @spicommon_periph_free(i32 %413)
  %415 = load i32, i32* %9, align 4
  %416 = call i32 @spicommon_dma_chan_free(i32 %415)
  %417 = load i64, i64* %12, align 8
  store i64 %417, i64* %5, align 8
  br label %418

418:                                              ; preds = %395, %298
  %419 = load i64, i64* %5, align 8
  ret i64 %419
}

declare dso_local i32 @SPI_CHECK(i32, i8*, i32) #1

declare dso_local i32 @VALID_HOST(i32) #1

declare dso_local i32 @spicommon_periph_claim(i32, i8*) #1

declare dso_local i32 @spicommon_dma_chan_claim(i32) #1

declare dso_local i32 @spicommon_periph_free(i32) #1

declare dso_local %struct.TYPE_20__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @spicommon_bus_initialize_io(i32, %struct.TYPE_19__*, i32, i32, i32*) #1

declare dso_local i32 @spicommon_cs_initialize(i32, i32, i32, i32) #1

declare dso_local i32 @bus_is_iomux(%struct.TYPE_20__*) #1

declare dso_local i32 @freeze_cs(%struct.TYPE_20__*) #1

declare dso_local i8* @xQueueCreate(i32, i32) #1

declare dso_local i64 @esp_intr_alloc(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @spicommon_irqsource_for_host(i32) #1

declare dso_local i32 @spi_slave_hal_init(%struct.TYPE_18__*, i32) #1

declare dso_local i8* @heap_caps_malloc(i32, i32) #1

declare dso_local i32 @spi_slave_hal_setup_device(%struct.TYPE_18__*) #1

declare dso_local i32 @vQueueDelete(i8*) #1

declare dso_local i32 @free(%struct.TYPE_20__*) #1

declare dso_local i32 @spi_slave_hal_deinit(%struct.TYPE_18__*) #1

declare dso_local i32 @spicommon_dma_chan_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
