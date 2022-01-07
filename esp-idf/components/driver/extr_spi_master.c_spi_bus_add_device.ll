; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_master.c_spi_bus_add_device.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_master.c_spi_bus_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i64, i8*, i8*, %struct.TYPE_16__, %struct.TYPE_20__*, i32 }
%struct.TYPE_16__ = type { i32 }

@SPI_HOST = common dso_local global i64 0, align 8
@VSPI_HOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"invalid host\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@spihost = common dso_local global %struct.TYPE_20__** null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"host not initialized\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"spics pin invalid\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"invalid sclk speed\00", align 1
@NO_CS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"no free cs pins for host\00", align 1
@ESP_ERR_NOT_FOUND = common dso_local global i64 0, align 8
@SPI_DEVICE_HALFDUPLEX = common dso_local global i32 0, align 4
@SPI_DEVICE_POSITIVE_CS = common dso_local global i32 0, align 4
@SPI_DEVICE_NO_DUMMY = common dso_local global i32 0, align 4
@SPICOMMON_BUSFLAG_IOMUX_PINS = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"assigned clock speed not supported\00", align 1
@SPI_TAG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"SPI%d: New device added to CS%d, effective clock: %dkHz\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@SPI_DEVICE_CLK_AS_CS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @spi_bus_add_device(i64 %0, %struct.TYPE_19__* %1, %struct.TYPE_18__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @SPI_HOST, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @VSPI_HOST, align 8
  %22 = icmp ule i64 %20, %21
  br label %23

23:                                               ; preds = %19, %3
  %24 = phi i1 [ false, %3 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  %27 = call i32 @SPI_CHECK(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %28, i64 %29
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %32 = icmp ne %struct.TYPE_20__* %31, null
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  %35 = call i32 @SPI_CHECK(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %23
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @GPIO_IS_VALID_OUTPUT_GPIO(i64 %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %40, %23
  %47 = phi i1 [ true, %23 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  %50 = call i32 @SPI_CHECK(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  %57 = call i32 @SPI_CHECK(i32 %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %76, %46
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @NO_CS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  store i8* null, i8** %10, align 8
  %63 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %63, i64 %64
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i64 @atomic_compare_exchange_strong(i32* %71, i8** %10, %struct.TYPE_18__* inttoptr (i64 1 to %struct.TYPE_18__*))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %79

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %58

79:                                               ; preds = %74, %58
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @NO_CS, align 4
  %82 = icmp ne i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* @ESP_ERR_NOT_FOUND, align 8
  %85 = call i32 @SPI_CHECK(i32 %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %84)
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %95

91:                                               ; preds = %79
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  br label %95

95:                                               ; preds = %91, %90
  %96 = phi i32 [ 128, %90 ], [ %94, %91 ]
  store i32 %96, i32* %9, align 4
  %97 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %97, i64 %98
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 2
  store %struct.TYPE_17__* %101, %struct.TYPE_17__** %12, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SPI_DEVICE_HALFDUPLEX, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 1, i32 0
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SPI_DEVICE_POSITIVE_CS, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 1, i32 0
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @SPI_DEVICE_NO_DUMMY, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 1, i32 0
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %138 = load i64, i64* %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %137, i64 %138
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @SPICOMMON_BUSFLAG_IOMUX_PINS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @spi_hal_get_clock_conf(%struct.TYPE_17__* %132, i32 %135, i32 %136, i32 %147, i32 %150, i32* %11, i32* %13)
  store i64 %151, i64* %14, align 8
  %152 = load i64, i64* %14, align 8
  %153 = load i64, i64* @ESP_OK, align 8
  %154 = icmp eq i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load i64, i64* %14, align 8
  %157 = call i32 @SPI_CHECK(i32 %155, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %156)
  %158 = call %struct.TYPE_18__* @malloc(i32 56)
  store %struct.TYPE_18__* %158, %struct.TYPE_18__** %15, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %160 = icmp eq %struct.TYPE_18__* %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %95
  br label %262

162:                                              ; preds = %95
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %164 = call i32 @memset(%struct.TYPE_18__* %163, i32 0, i32 56)
  %165 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %166 = load i64, i64* %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %165, i64 %166
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %175 = call i32 @atomic_store(i32* %173, %struct.TYPE_18__* %174)
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 1
  store i32 0, i32* %180, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 7
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = call i8* @xQueueCreate(i32 %186, i32 4)
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 4
  store i8* %187, i8** %189, align 8
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = call i8* @xQueueCreate(i32 %192, i32 4)
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 3
  store i8* %193, i8** %195, align 8
  %196 = call i64 (...) @xSemaphoreCreateBinary()
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 2
  store i64 %196, i64* %198, align 8
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 4
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %213

203:                                              ; preds = %162
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 3
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %208, %203, %162
  br label %262

214:                                              ; preds = %208
  %215 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %216 = load i64, i64* %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %215, i64 %216
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %217, align 8
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 6
  store %struct.TYPE_20__* %218, %struct.TYPE_20__** %220, align 8
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 5
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %224 = call i32 @memcpy(%struct.TYPE_16__* %222, %struct.TYPE_19__* %223, i32 56)
  %225 = load i32, i32* %9, align 4
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 5
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  store i32 %225, i32* %228, align 8
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp sge i64 %231, 0
  br i1 %232, label %233, label %251

233:                                              ; preds = %214
  %234 = load i64, i64* %5, align 8
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* %8, align 4
  %239 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @spihost, align 8
  %240 = load i64, i64* %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %239, i64 %240
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @SPICOMMON_BUSFLAG_IOMUX_PINS, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  %248 = xor i1 %247, true
  %249 = zext i1 %248 to i32
  %250 = call i32 @spicommon_cs_initialize(i64 %234, i64 %237, i32 %238, i32 %249)
  br label %251

251:                                              ; preds = %233, %214
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %253 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %252, %struct.TYPE_18__** %253, align 8
  %254 = load i32, i32* @SPI_TAG, align 4
  %255 = load i64, i64* %5, align 8
  %256 = add i64 %255, 1
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* %11, align 4
  %259 = sdiv i32 %258, 1000
  %260 = call i32 @ESP_LOGD(i32 %254, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i64 %256, i32 %257, i32 %259)
  %261 = load i64, i64* @ESP_OK, align 8
  store i64 %261, i64* %4, align 8
  br label %300

262:                                              ; preds = %213, %161
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %264 = icmp ne %struct.TYPE_18__* %263, null
  br i1 %264, label %265, label %296

265:                                              ; preds = %262
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 4
  %268 = load i8*, i8** %267, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 4
  %273 = load i8*, i8** %272, align 8
  %274 = call i32 @vQueueDelete(i8* %273)
  br label %275

275:                                              ; preds = %270, %265
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 3
  %278 = load i8*, i8** %277, align 8
  %279 = icmp ne i8* %278, null
  br i1 %279, label %280, label %285

280:                                              ; preds = %275
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 3
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @vQueueDelete(i8* %283)
  br label %285

285:                                              ; preds = %280, %275
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %285
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = call i32 @vSemaphoreDelete(i64 %293)
  br label %295

295:                                              ; preds = %290, %285
  br label %296

296:                                              ; preds = %295, %262
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %298 = call i32 @free(%struct.TYPE_18__* %297)
  %299 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %299, i64* %4, align 8
  br label %300

300:                                              ; preds = %296, %251
  %301 = load i64, i64* %4, align 8
  ret i64 %301
}

declare dso_local i32 @SPI_CHECK(i32, i8*, i64) #1

declare dso_local i64 @GPIO_IS_VALID_OUTPUT_GPIO(i64) #1

declare dso_local i64 @atomic_compare_exchange_strong(i32*, i8**, %struct.TYPE_18__*) #1

declare dso_local i64 @spi_hal_get_clock_conf(%struct.TYPE_17__*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_18__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @atomic_store(i32*, %struct.TYPE_18__*) #1

declare dso_local i8* @xQueueCreate(i32, i32) #1

declare dso_local i64 @xSemaphoreCreateBinary(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @spicommon_cs_initialize(i64, i64, i32, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @vQueueDelete(i8*) #1

declare dso_local i32 @vSemaphoreDelete(i64) #1

declare dso_local i32 @free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
