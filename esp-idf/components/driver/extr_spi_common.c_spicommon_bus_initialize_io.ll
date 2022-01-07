; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_common.c_spicommon_bus_initialize_io.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_common.c_spicommon_bus_initialize_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64 }

@SPICOMMON_BUSFLAG_MASTER = common dso_local global i32 0, align 4
@SPICOMMON_BUSFLAG_DUAL = common dso_local global i32 0, align 4
@SPICOMMON_BUSFLAG_SCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wp\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"hd\00", align 1
@SPICOMMON_BUSFLAG_WPHD = common dso_local global i32 0, align 4
@SPICOMMON_BUSFLAG_MOSI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"mosi\00", align 1
@SPICOMMON_BUSFLAG_MISO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"miso\00", align 1
@SPICOMMON_BUSFLAG_IOMUX_PINS = common dso_local global i32 0, align 4
@SPI_TAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"sclk pin required.\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"mosi pin required.\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"miso pin required.\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"not both mosi and miso output capable\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"both wp and hd required.\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"not using iomux pins\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"not all required capabilities satisfied.\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"SPI%d use iomux pins.\00", align 1
@spi_periph_signal = common dso_local global %struct.TYPE_6__* null, align 8
@.str.13 = private unnamed_addr constant [23 x i8] c"SPI%d use gpio matrix.\00", align 1
@GPIO_MODE_INPUT_OUTPUT = common dso_local global i32 0, align 4
@GPIO_MODE_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_MUX_REG = common dso_local global i32* null, align 8
@FUNC_GPIO = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@DPORT_SPI_DMA_CHAN_SEL_REG = common dso_local global i32 0, align 4
@DPORT_SPI_SHARED_DMA_SEL_M = common dso_local global i32 0, align 4
@VSPI_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spicommon_bus_initialize_io(i32 %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @SPICOMMON_BUSFLAG_MASTER, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @SPICOMMON_BUSFLAG_DUAL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  store i32 %29, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %37

30:                                               ; preds = %5
  store i32 1, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @SPICOMMON_BUSFLAG_DUAL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  store i32 %36, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %30, %23
  store i32 1, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp uge i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load i32, i32* @SPICOMMON_BUSFLAG_SCLK, align 4
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @SPI_CHECK_PIN(i64 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %42, %37
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp uge i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @SPI_CHECK_PIN(i64 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp uge i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @SPI_CHECK_PIN(i64 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp uge i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp uge i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @SPICOMMON_BUSFLAG_WPHD, align 4
  %83 = load i32, i32* %11, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %81, %76, %71
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp uge i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load i32, i32* @SPICOMMON_BUSFLAG_MOSI, align 4
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %11, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @SPI_CHECK_PIN(i64 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %90, %85
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp uge i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load i32, i32* @SPICOMMON_BUSFLAG_MISO, align 4
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @SPI_CHECK_PIN(i64 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %104, %99
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ult i64 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @GPIO_IS_VALID_OUTPUT_GPIO(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %118, %113
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ult i64 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %124
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @GPIO_IS_VALID_OUTPUT_GPIO(i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129, %124
  %136 = load i32, i32* @SPICOMMON_BUSFLAG_DUAL, align 4
  %137 = load i32, i32* %11, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %11, align 4
  br label %139

139:                                              ; preds = %135, %129, %118
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %142 = call i32 @bus_uses_iomux_pins(i32 %140, %struct.TYPE_5__* %141)
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %17, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load i32, i32* @SPICOMMON_BUSFLAG_IOMUX_PINS, align 4
  %147 = load i32, i32* %11, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %11, align 4
  br label %149

149:                                              ; preds = %145, %139
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %11, align 4
  %152 = xor i32 %151, -1
  %153 = and i32 %150, %152
  store i32 %153, i32* %18, align 4
  %154 = load i32, i32* @SPICOMMON_BUSFLAG_MASTER, align 4
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %18, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %18, align 4
  %158 = load i32, i32* %18, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %214

160:                                              ; preds = %149
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* @SPICOMMON_BUSFLAG_SCLK, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i32, i32* @SPI_TAG, align 4
  %167 = call i32 @ESP_LOGE(i32 %166, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %160
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* @SPICOMMON_BUSFLAG_MOSI, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load i32, i32* @SPI_TAG, align 4
  %175 = call i32 @ESP_LOGE(i32 %174, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %168
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* @SPICOMMON_BUSFLAG_MISO, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i32, i32* @SPI_TAG, align 4
  %183 = call i32 @ESP_LOGE(i32 %182, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %176
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* @SPICOMMON_BUSFLAG_DUAL, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load i32, i32* @SPI_TAG, align 4
  %191 = call i32 @ESP_LOGE(i32 %190, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %184
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* @SPICOMMON_BUSFLAG_WPHD, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i32, i32* @SPI_TAG, align 4
  %199 = call i32 @ESP_LOGE(i32 %198, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %200

200:                                              ; preds = %197, %192
  %201 = load i32, i32* %18, align 4
  %202 = load i32, i32* @SPICOMMON_BUSFLAG_IOMUX_PINS, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load i32, i32* @SPI_TAG, align 4
  %207 = call i32 @ESP_LOGE(i32 %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %208

208:                                              ; preds = %205, %200
  %209 = load i32, i32* %18, align 4
  %210 = icmp eq i32 %209, 0
  %211 = zext i1 %210 to i32
  %212 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %213 = call i32 @SPI_CHECK(i32 %211, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %212)
  br label %214

214:                                              ; preds = %208, %149
  %215 = load i32, i32* %17, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %305

217:                                              ; preds = %214
  %218 = load i32, i32* @SPI_TAG, align 4
  %219 = load i32, i32* %6, align 4
  %220 = add nsw i32 %219, 1
  %221 = call i32 @ESP_LOGD(i32 %218, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %220)
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = icmp uge i64 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %217
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spi_periph_signal, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 8
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @gpio_iomux_in(i64 %229, i32 %235)
  br label %237

237:                                              ; preds = %226, %217
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = icmp uge i64 %240, 0
  br i1 %241, label %242, label %253

242:                                              ; preds = %237
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 4
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spi_periph_signal, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @gpio_iomux_in(i64 %245, i32 %251)
  br label %253

253:                                              ; preds = %242, %237
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp uge i64 %256, 0
  br i1 %257, label %258, label %269

258:                                              ; preds = %253
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spi_periph_signal, align 8
  %263 = load i32, i32* %6, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @gpio_iomux_in(i64 %261, i32 %267)
  br label %269

269:                                              ; preds = %258, %253
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = icmp uge i64 %272, 0
  br i1 %273, label %274, label %285

274:                                              ; preds = %269
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spi_periph_signal, align 8
  %279 = load i32, i32* %6, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @gpio_iomux_in(i64 %277, i32 %283)
  br label %285

285:                                              ; preds = %274, %269
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp uge i64 %288, 0
  br i1 %289, label %290, label %301

290:                                              ; preds = %285
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spi_periph_signal, align 8
  %295 = load i32, i32* %6, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @gpio_iomux_in(i64 %293, i32 %299)
  br label %301

301:                                              ; preds = %290, %285
  %302 = load i32, i32* @SPICOMMON_BUSFLAG_IOMUX_PINS, align 4
  %303 = load i32, i32* %11, align 4
  %304 = or i32 %303, %302
  store i32 %304, i32* %11, align 4
  br label %545

305:                                              ; preds = %214
  %306 = load i32, i32* @SPI_TAG, align 4
  %307 = load i32, i32* %6, align 4
  %308 = add nsw i32 %307, 1
  %309 = call i32 @ESP_LOGD(i32 %306, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %308)
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = icmp uge i64 %312, 0
  br i1 %313, label %314, label %363

314:                                              ; preds = %305
  %315 = load i32, i32* %13, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %322, label %317

317:                                              ; preds = %314
  %318 = load i32, i32* %11, align 4
  %319 = load i32, i32* @SPICOMMON_BUSFLAG_DUAL, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %338

322:                                              ; preds = %317, %314
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 3
  %325 = load i64, i64* %324, align 8
  %326 = load i32, i32* @GPIO_MODE_INPUT_OUTPUT, align 4
  %327 = call i32 @gpio_set_direction(i64 %325, i32 %326)
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 3
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spi_periph_signal, align 8
  %332 = load i32, i32* %6, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 9
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @gpio_matrix_out(i64 %330, i32 %336, i32 0, i32 0)
  br label %344

338:                                              ; preds = %317
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 3
  %341 = load i64, i64* %340, align 8
  %342 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %343 = call i32 @gpio_set_direction(i64 %341, i32 %342)
  br label %344

344:                                              ; preds = %338, %322
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 3
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spi_periph_signal, align 8
  %349 = load i32, i32* %6, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 8
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @gpio_matrix_in(i64 %347, i32 %353, i32 0)
  %355 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 3
  %358 = load i64, i64* %357, align 8
  %359 = getelementptr inbounds i32, i32* %355, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @FUNC_GPIO, align 4
  %362 = call i32 @PIN_FUNC_SELECT(i32 %360, i32 %361)
  br label %363

363:                                              ; preds = %344, %305
  %364 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 4
  %366 = load i64, i64* %365, align 8
  %367 = icmp uge i64 %366, 0
  br i1 %367, label %368, label %417

368:                                              ; preds = %363
  %369 = load i32, i32* %12, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %376, label %371

371:                                              ; preds = %368
  %372 = load i32, i32* %11, align 4
  %373 = load i32, i32* @SPICOMMON_BUSFLAG_DUAL, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %392

376:                                              ; preds = %371, %368
  %377 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 4
  %379 = load i64, i64* %378, align 8
  %380 = load i32, i32* @GPIO_MODE_INPUT_OUTPUT, align 4
  %381 = call i32 @gpio_set_direction(i64 %379, i32 %380)
  %382 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i32 0, i32 4
  %384 = load i64, i64* %383, align 8
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spi_periph_signal, align 8
  %386 = load i32, i32* %6, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 7
  %390 = load i32, i32* %389, align 4
  %391 = call i32 @gpio_matrix_out(i64 %384, i32 %390, i32 0, i32 0)
  br label %398

392:                                              ; preds = %371
  %393 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i32 0, i32 4
  %395 = load i64, i64* %394, align 8
  %396 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %397 = call i32 @gpio_set_direction(i64 %395, i32 %396)
  br label %398

398:                                              ; preds = %392, %376
  %399 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %400 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %399, i32 0, i32 4
  %401 = load i64, i64* %400, align 8
  %402 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spi_periph_signal, align 8
  %403 = load i32, i32* %6, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i32 0, i32 6
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @gpio_matrix_in(i64 %401, i32 %407, i32 0)
  %409 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %410 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %410, i32 0, i32 4
  %412 = load i64, i64* %411, align 8
  %413 = getelementptr inbounds i32, i32* %409, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* @FUNC_GPIO, align 4
  %416 = call i32 @PIN_FUNC_SELECT(i32 %414, i32 %415)
  br label %417

417:                                              ; preds = %398, %363
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i32 0, i32 1
  %420 = load i64, i64* %419, align 8
  %421 = icmp uge i64 %420, 0
  br i1 %421, label %422, label %456

422:                                              ; preds = %417
  %423 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %424 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %423, i32 0, i32 1
  %425 = load i64, i64* %424, align 8
  %426 = load i32, i32* @GPIO_MODE_INPUT_OUTPUT, align 4
  %427 = call i32 @gpio_set_direction(i64 %425, i32 %426)
  %428 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %428, i32 0, i32 1
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spi_periph_signal, align 8
  %432 = load i32, i32* %6, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %431, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 5
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @gpio_matrix_out(i64 %430, i32 %436, i32 0, i32 0)
  %438 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %439 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %438, i32 0, i32 1
  %440 = load i64, i64* %439, align 8
  %441 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spi_periph_signal, align 8
  %442 = load i32, i32* %6, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %441, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %444, i32 0, i32 4
  %446 = load i32, i32* %445, align 4
  %447 = call i32 @gpio_matrix_in(i64 %440, i32 %446, i32 0)
  %448 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %449 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %449, i32 0, i32 1
  %451 = load i64, i64* %450, align 8
  %452 = getelementptr inbounds i32, i32* %448, i64 %451
  %453 = load i32, i32* %452, align 4
  %454 = load i32, i32* @FUNC_GPIO, align 4
  %455 = call i32 @PIN_FUNC_SELECT(i32 %453, i32 %454)
  br label %456

456:                                              ; preds = %422, %417
  %457 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %458 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %457, i32 0, i32 2
  %459 = load i64, i64* %458, align 8
  %460 = icmp uge i64 %459, 0
  br i1 %460, label %461, label %495

461:                                              ; preds = %456
  %462 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %463 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %462, i32 0, i32 2
  %464 = load i64, i64* %463, align 8
  %465 = load i32, i32* @GPIO_MODE_INPUT_OUTPUT, align 4
  %466 = call i32 @gpio_set_direction(i64 %464, i32 %465)
  %467 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %468 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %467, i32 0, i32 2
  %469 = load i64, i64* %468, align 8
  %470 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spi_periph_signal, align 8
  %471 = load i32, i32* %6, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %470, i64 %472
  %474 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %473, i32 0, i32 3
  %475 = load i32, i32* %474, align 4
  %476 = call i32 @gpio_matrix_out(i64 %469, i32 %475, i32 0, i32 0)
  %477 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %478 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %477, i32 0, i32 2
  %479 = load i64, i64* %478, align 8
  %480 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spi_periph_signal, align 8
  %481 = load i32, i32* %6, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %480, i64 %482
  %484 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %483, i32 0, i32 2
  %485 = load i32, i32* %484, align 4
  %486 = call i32 @gpio_matrix_in(i64 %479, i32 %485, i32 0)
  %487 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %488 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %489 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %488, i32 0, i32 2
  %490 = load i64, i64* %489, align 8
  %491 = getelementptr inbounds i32, i32* %487, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* @FUNC_GPIO, align 4
  %494 = call i32 @PIN_FUNC_SELECT(i32 %492, i32 %493)
  br label %495

495:                                              ; preds = %461, %456
  %496 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %497 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %496, i32 0, i32 0
  %498 = load i64, i64* %497, align 8
  %499 = icmp uge i64 %498, 0
  br i1 %499, label %500, label %544

500:                                              ; preds = %495
  %501 = load i32, i32* %14, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %519

503:                                              ; preds = %500
  %504 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %505 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %504, i32 0, i32 0
  %506 = load i64, i64* %505, align 8
  %507 = load i32, i32* @GPIO_MODE_INPUT_OUTPUT, align 4
  %508 = call i32 @gpio_set_direction(i64 %506, i32 %507)
  %509 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %510 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %509, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spi_periph_signal, align 8
  %513 = load i32, i32* %6, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %512, i64 %514
  %516 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 4
  %518 = call i32 @gpio_matrix_out(i64 %511, i32 %517, i32 0, i32 0)
  br label %525

519:                                              ; preds = %500
  %520 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %521 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %520, i32 0, i32 0
  %522 = load i64, i64* %521, align 8
  %523 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %524 = call i32 @gpio_set_direction(i64 %522, i32 %523)
  br label %525

525:                                              ; preds = %519, %503
  %526 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %527 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %526, i32 0, i32 0
  %528 = load i64, i64* %527, align 8
  %529 = load %struct.TYPE_6__*, %struct.TYPE_6__** @spi_periph_signal, align 8
  %530 = load i32, i32* %6, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %529, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = call i32 @gpio_matrix_in(i64 %528, i32 %534, i32 0)
  %536 = load i32*, i32** @GPIO_PIN_MUX_REG, align 8
  %537 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %538 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %537, i32 0, i32 0
  %539 = load i64, i64* %538, align 8
  %540 = getelementptr inbounds i32, i32* %536, i64 %539
  %541 = load i32, i32* %540, align 4
  %542 = load i32, i32* @FUNC_GPIO, align 4
  %543 = call i32 @PIN_FUNC_SELECT(i32 %541, i32 %542)
  br label %544

544:                                              ; preds = %525, %495
  br label %545

545:                                              ; preds = %544, %301
  %546 = load i32*, i32** %10, align 8
  %547 = icmp ne i32* %546, null
  br i1 %547, label %548, label %551

548:                                              ; preds = %545
  %549 = load i32, i32* %11, align 4
  %550 = load i32*, i32** %10, align 8
  store i32 %549, i32* %550, align 4
  br label %551

551:                                              ; preds = %548, %545
  %552 = load i32, i32* @ESP_OK, align 4
  ret i32 %552
}

declare dso_local i32 @SPI_CHECK_PIN(i64, i8*, i32) #1

declare dso_local i64 @GPIO_IS_VALID_OUTPUT_GPIO(i64) #1

declare dso_local i32 @bus_uses_iomux_pins(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @SPI_CHECK(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @gpio_iomux_in(i64, i32) #1

declare dso_local i32 @gpio_set_direction(i64, i32) #1

declare dso_local i32 @gpio_matrix_out(i64, i32, i32, i32) #1

declare dso_local i32 @gpio_matrix_in(i64, i32, i32) #1

declare dso_local i32 @PIN_FUNC_SELECT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
