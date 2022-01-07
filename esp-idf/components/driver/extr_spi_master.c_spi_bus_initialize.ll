; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_master.c_spi_bus_initialize.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_master.c_spi_bus_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_13__, i64, i32, i8*, i8*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, i32, i32 }

@ESP_OK = common dso_local global i64 0, align 8
@SPI_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SPI1 is not supported\00", align 1
@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@VSPI_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid host\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_HIGH = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_EDGE = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_INTRDISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"intr flag not allowed\00", align 1
@ESP_INTR_FLAG_IRAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [85 x i8] c"ESP_INTR_FLAG_IRAM should be disabled when CONFIG_SPI_MASTER_ISR_IN_IRAM is not set.\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"spi master\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"host already in use\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"dma channel already in use\00", align 1
@spihost = common dso_local global %struct.TYPE_12__** null, align 8
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@SPICOMMON_BUSFLAG_MASTER = common dso_local global i32 0, align 4
@SOC_SPI_MAXIMUM_BUFFER_SIZE = common dso_local global i32 0, align 4
@LLDESC_MAX_NUM_PER_DESC = common dso_local global i32 0, align 4
@spi_intr = common dso_local global i32 0, align 4
@NO_CS = common dso_local global i8* null, align 8
@MALLOC_CAP_DMA = common dso_local global i32 0, align 4
@ESP_PM_APB_FREQ_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @spi_bus_initialize(i32 %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i64, i64* @ESP_OK, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SPI_HOST, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @ESP_ERR_NOT_SUPPORTED, align 4
  %20 = call i32 @SPI_CHECK(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SPI_HOST, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @VSPI_HOST, align 4
  %27 = icmp sle i32 %25, %26
  br label %28

28:                                               ; preds = %24, %3
  %29 = phi i1 [ false, %3 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %32 = call i32 @SPI_CHECK(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ESP_INTR_FLAG_HIGH, align 4
  %37 = load i32, i32* @ESP_INTR_FLAG_EDGE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @ESP_INTR_FLAG_INTRDISABLED, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %35, %40
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %45 = call i32 @SPI_CHECK(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ESP_INTR_FLAG_IRAM, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %54 = call i32 @SPI_CHECK(i32 %52, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @spicommon_periph_claim(i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %59 = call i32 @SPI_CHECK(i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %28
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @spicommon_dma_chan_claim(i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @spicommon_periph_free(i32 %68)
  %70 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %71 = call i32 @SPI_CHECK(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %28
  %74 = call %struct.TYPE_12__* @malloc(i32 4)
  %75 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %75, i64 %77
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %78, align 8
  %79 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %79, i64 %81
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = icmp eq %struct.TYPE_12__* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %86, i64* %10, align 8
  br label %315

87:                                               ; preds = %73
  %88 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %88, i64 %90
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = call i32 @memset(%struct.TYPE_12__* %92, i32 0, i32 4)
  %94 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %94, i64 %96
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 13
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %101 = call i32 @memcpy(i32* %99, %struct.TYPE_11__* %100, i32 12)
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @SPICOMMON_BUSFLAG_MASTER, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %105, %108
  %110 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %110, i64 %112
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 12
  %116 = call i64 @spicommon_bus_initialize_io(i32 %102, %struct.TYPE_11__* %103, i32 %104, i32 %109, i32* %115)
  store i64 %116, i64* %11, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* @ESP_OK, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %87
  %121 = load i64, i64* %11, align 8
  store i64 %121, i64* %10, align 8
  br label %315

122:                                              ; preds = %87
  store i32 0, i32* %12, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %124, i64 %126
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  store i32 %123, i32* %129, align 8
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %122
  %133 = load i32, i32* @SOC_SPI_MAXIMUM_BUFFER_SIZE, align 4
  %134 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %134, i64 %136
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  store i32 %133, i32* %139, align 4
  br label %158

140:                                              ; preds = %122
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @lldesc_get_required_num(i32 %143)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  store i32 1, i32* %12, align 4
  br label %148

148:                                              ; preds = %147, %140
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @LLDESC_MAX_NUM_PER_DESC, align 4
  %151 = mul nsw i32 %149, %150
  %152 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %152, i64 %154
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  store i32 %151, i32* %157, align 4
  br label %158

158:                                              ; preds = %148, %132
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @ESP_INTR_FLAG_INTRDISABLED, align 4
  %163 = or i32 %161, %162
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @spicommon_irqsource_for_host(i32 %164)
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* @spi_intr, align 4
  %168 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %168, i64 %170
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = bitcast %struct.TYPE_12__* %172 to i8*
  %174 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %174, i64 %176
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 11
  %180 = call i64 @esp_intr_alloc(i32 %165, i32 %166, i32 %167, i8* %173, i32* %179)
  store i64 %180, i64* %11, align 8
  %181 = load i64, i64* %11, align 8
  %182 = load i64, i64* @ESP_OK, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %158
  %185 = load i64, i64* %11, align 8
  store i64 %185, i64* %10, align 8
  br label %315

186:                                              ; preds = %158
  %187 = load i32, i32* %5, align 4
  %188 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %188, i64 %190
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 2
  store i32 %187, i32* %193, align 8
  %194 = load i8*, i8** @NO_CS, align 8
  %195 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %195, i64 %197
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 10
  store i8* %194, i8** %200, align 8
  %201 = load i8*, i8** @NO_CS, align 8
  %202 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %202, i64 %204
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 9
  store i8* %201, i8** %207, align 8
  %208 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %208, i64 %210
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 8
  %214 = load i8*, i8** @NO_CS, align 8
  %215 = call i32 @atomic_store(i32* %213, i8* %214)
  %216 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %217 = load i32, i32* %5, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %216, i64 %218
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 3
  store i32 0, i32* %221, align 4
  %222 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %223 = load i32, i32* %5, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %222, i64 %224
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 4
  store i32 1, i32* %227, align 8
  %228 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %228, i64 %230
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 5
  store i32 0, i32* %233, align 4
  %234 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %234, i64 %236
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 6
  %240 = load i32, i32* %5, align 4
  %241 = call i32 @spi_hal_init(%struct.TYPE_13__* %239, i32 %240)
  %242 = load i32, i32* %7, align 4
  %243 = icmp ne i32 %242, 0
  %244 = zext i1 %243 to i32
  %245 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %245, i64 %247
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 6
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  store i32 %244, i32* %251, align 8
  %252 = load i32, i32* %12, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %305

254:                                              ; preds = %186
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = mul i64 4, %256
  %258 = trunc i64 %257 to i32
  %259 = load i32, i32* @MALLOC_CAP_DMA, align 4
  %260 = call i8* @heap_caps_malloc(i32 %258, i32 %259)
  %261 = bitcast i8* %260 to %struct.TYPE_12__*
  %262 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %263 = load i32, i32* %5, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %262, i64 %264
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 6
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 2
  store %struct.TYPE_12__* %261, %struct.TYPE_12__** %268, align 8
  %269 = load i32, i32* %12, align 4
  %270 = sext i32 %269 to i64
  %271 = mul i64 4, %270
  %272 = trunc i64 %271 to i32
  %273 = load i32, i32* @MALLOC_CAP_DMA, align 4
  %274 = call i8* @heap_caps_malloc(i32 %272, i32 %273)
  %275 = bitcast i8* %274 to %struct.TYPE_12__*
  %276 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %277 = load i32, i32* %5, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %276, i64 %278
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 6
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 3
  store %struct.TYPE_12__* %275, %struct.TYPE_12__** %282, align 8
  %283 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %284 = load i32, i32* %5, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %283, i64 %285
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 6
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %289, align 8
  %291 = icmp ne %struct.TYPE_12__* %290, null
  br i1 %291, label %292, label %302

292:                                              ; preds = %254
  %293 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %294 = load i32, i32* %5, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %293, i64 %295
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 6
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 3
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %299, align 8
  %301 = icmp ne %struct.TYPE_12__* %300, null
  br i1 %301, label %304, label %302

302:                                              ; preds = %292, %254
  %303 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %303, i64* %10, align 8
  br label %315

304:                                              ; preds = %292
  br label %305

305:                                              ; preds = %304, %186
  %306 = load i32, i32* %12, align 4
  %307 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %308 = load i32, i32* %5, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %307, i64 %309
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 6
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 1
  store i32 %306, i32* %313, align 4
  %314 = load i64, i64* @ESP_OK, align 8
  store i64 %314, i64* %4, align 8
  br label %368

315:                                              ; preds = %302, %184, %120, %85
  %316 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %317 = load i32, i32* %5, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %316, i64 %318
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %319, align 8
  %321 = icmp ne %struct.TYPE_12__* %320, null
  br i1 %321, label %322, label %348

322:                                              ; preds = %315
  %323 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %324 = load i32, i32* %5, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %323, i64 %325
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 6
  %329 = call i32 @spi_hal_deinit(%struct.TYPE_13__* %328)
  %330 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %331 = load i32, i32* %5, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %330, i64 %332
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 6
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 3
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %336, align 8
  %338 = call i32 @free(%struct.TYPE_12__* %337)
  %339 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %340 = load i32, i32* %5, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %339, i64 %341
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 6
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 2
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %345, align 8
  %347 = call i32 @free(%struct.TYPE_12__* %346)
  br label %348

348:                                              ; preds = %322, %315
  %349 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %350 = load i32, i32* %5, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %349, i64 %351
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %352, align 8
  %354 = call i32 @free(%struct.TYPE_12__* %353)
  %355 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @spihost, align 8
  %356 = load i32, i32* %5, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %355, i64 %357
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %358, align 8
  %359 = load i32, i32* %5, align 4
  %360 = call i32 @spicommon_periph_free(i32 %359)
  %361 = load i32, i32* %7, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %366

363:                                              ; preds = %348
  %364 = load i32, i32* %7, align 4
  %365 = call i32 @spicommon_dma_chan_free(i32 %364)
  br label %366

366:                                              ; preds = %363, %348
  %367 = load i64, i64* %10, align 8
  store i64 %367, i64* %4, align 8
  br label %368

368:                                              ; preds = %366, %305
  %369 = load i64, i64* %4, align 8
  ret i64 %369
}

declare dso_local i32 @SPI_CHECK(i32, i8*, i32) #1

declare dso_local i32 @spicommon_periph_claim(i32, i8*) #1

declare dso_local i32 @spicommon_dma_chan_claim(i32) #1

declare dso_local i32 @spicommon_periph_free(i32) #1

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @spicommon_bus_initialize_io(i32, %struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i32 @lldesc_get_required_num(i32) #1

declare dso_local i64 @esp_intr_alloc(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @spicommon_irqsource_for_host(i32) #1

declare dso_local i32 @atomic_store(i32*, i8*) #1

declare dso_local i32 @spi_hal_init(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @heap_caps_malloc(i32, i32) #1

declare dso_local i32 @spi_hal_deinit(%struct.TYPE_13__*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @spicommon_dma_chan_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
