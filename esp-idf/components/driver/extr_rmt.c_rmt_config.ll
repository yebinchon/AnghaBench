; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_config.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__*, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i64, i32, i64, i32, i32, i32, i32 }

@RMT_CHANNEL_MAX = common dso_local global i32 0, align 4
@RMT_CHANNEL_ERROR_STR = common dso_local global i8* null, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@RMT_GPIO_ERROR_STR = common dso_local global i8* null, align 8
@RMT_MEM_CNT_ERROR_STR = common dso_local global i8* null, align 8
@RMT_CLK_DIV_ERROR_STR = common dso_local global i8* null, align 8
@RMT_MODE_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"RMT carrier frequency can't be zero\00", align 1
@rmt_config.rmt_enable = internal global i32 0, align 4
@PERIPH_RMT_MODULE = common dso_local global i32 0, align 4
@RMT = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@RMT_DATA_MODE_MEM = common dso_local global i32 0, align 4
@rmt_spinlock = common dso_local global i32 0, align 4
@RMT_MEM_OWNER_TX = common dso_local global i32 0, align 4
@RMT_BASECLK_APB = common dso_local global i8* null, align 8
@RMT_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Rmt Tx Channel %u|Gpio %u|Sclk_Hz %u|Div %u|Carrier_Hz %u|Duty %u\00", align 1
@RMT_MODE_RX = common dso_local global i32 0, align 4
@RMT_MEM_OWNER_RX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"Rmt Rx Channel %u|Gpio %u|Sclk_Hz %u|Div %u|Thresold %u|Filter %u\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmt_config(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %3, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @RMT_CHANNEL_MAX, align 4
  %45 = icmp slt i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i8*, i8** @RMT_CHANNEL_ERROR_STR, align 8
  %48 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %49 = call i32 @RMT_CHECK(i32 %46, i8* %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @GPIO_IS_VALID_GPIO(i32 %50)
  %52 = load i8*, i8** @RMT_GPIO_ERROR_STR, align 8
  %53 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %54 = call i32 @RMT_CHECK(i32 %51, i8* %52, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %55, %56
  %58 = icmp sle i32 %57, 8
  br i1 %58, label %59, label %62

59:                                               ; preds = %1
  %60 = load i32, i32* %6, align 4
  %61 = icmp sgt i32 %60, 0
  br label %62

62:                                               ; preds = %59, %1
  %63 = phi i1 [ false, %1 ], [ %61, %59 ]
  %64 = zext i1 %63 to i32
  %65 = load i8*, i8** @RMT_MEM_CNT_ERROR_STR, align 8
  %66 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %67 = call i32 @RMT_CHECK(i32 %64, i8* %65, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = icmp sgt i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = load i8*, i8** @RMT_CLK_DIV_ERROR_STR, align 8
  %72 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %73 = call i32 @RMT_CHECK(i32 %70, i8* %71, i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @RMT_MODE_TX, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %62
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, i64* %8, align 8
  %82 = icmp sgt i64 %81, 0
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i1 [ true, %77 ], [ %82, %80 ]
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %87 = call i32 @RMT_CHECK(i32 %85, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %83, %62
  %89 = load i32, i32* @rmt_config.rmt_enable, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* @PERIPH_RMT_MODULE, align 4
  %93 = call i32 @periph_module_reset(i32 %92)
  store i32 1, i32* @rmt_config.rmt_enable, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* @PERIPH_RMT_MODULE, align 4
  %96 = call i32 @periph_module_enable(i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  store i32 %97, i32* %103, align 8
  %104 = load i32, i32* @RMT_DATA_MODE_MEM, align 4
  %105 = call i32 @rmt_set_data_mode(i32 %104)
  %106 = call i32 @portENTER_CRITICAL(i32* @rmt_spinlock)
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  %119 = call i32 @portEXIT_CRITICAL(i32* @rmt_spinlock)
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @RMT_MODE_TX, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %254

123:                                              ; preds = %94
  store i64 0, i64* %10, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %11, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %12, align 4
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %13, align 4
  %136 = call i32 @portENTER_CRITICAL(i32* @rmt_spinlock)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 8
  store i32 %140, i32* %146, align 4
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  store i32 %147, i32* %153, align 4
  %154 = load i32, i32* @RMT_MEM_OWNER_TX, align 4
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 5
  store i32 %154, i32* %160, align 4
  %161 = load i8*, i8** @RMT_BASECLK_APB, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %163 = load i32, i32* %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 6
  store i8* %161, i8** %167, align 8
  %168 = load i8*, i8** @RMT_BASECLK_APB, align 8
  %169 = call i64 @RMT_SOURCE_CLK(i8* %168)
  store i64 %169, i64* %10, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 6
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 7
  store i32 %173, i32* %179, align 8
  %180 = load i32, i32* %13, align 4
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  store i32 %180, i32* %186, align 8
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 2
  store i32 %187, i32* %193, align 8
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %226

196:                                              ; preds = %123
  %197 = load i64, i64* %10, align 8
  %198 = load i64, i64* %8, align 8
  %199 = sdiv i64 %197, %198
  store i64 %199, i64* %14, align 8
  %200 = load i64, i64* %14, align 8
  %201 = load i64, i64* %11, align 8
  %202 = mul nsw i64 %200, %201
  %203 = sdiv i64 %202, 100
  store i64 %203, i64* %15, align 8
  %204 = load i64, i64* %14, align 8
  %205 = load i64, i64* %15, align 8
  %206 = sub nsw i64 %204, %205
  store i64 %206, i64* %16, align 8
  %207 = load i32, i32* %12, align 4
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %209 = load i32, i32* %4, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 3
  store i32 %207, i32* %213, align 4
  %214 = load i64, i64* %15, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 1), align 8
  %216 = load i32, i32* %4, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  store i64 %214, i64* %219, align 8
  %220 = load i64, i64* %16, align 8
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 1), align 8
  %222 = load i32, i32* %4, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  store i64 %220, i64* %225, align 8
  br label %243

226:                                              ; preds = %123
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %228 = load i32, i32* %4, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 3
  store i32 0, i32* %232, align 4
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 1), align 8
  %234 = load i32, i32* %4, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 1
  store i64 0, i64* %237, align 8
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 1), align 8
  %239 = load i32, i32* %4, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  store i64 0, i64* %242, align 8
  br label %243

243:                                              ; preds = %226, %196
  %244 = call i32 @portEXIT_CRITICAL(i32* @rmt_spinlock)
  %245 = load i32, i32* @RMT_TAG, align 4
  %246 = load i32, i32* %4, align 4
  %247 = load i32, i32* %5, align 4
  %248 = load i64, i64* %10, align 8
  %249 = load i32, i32* %7, align 4
  %250 = load i64, i64* %8, align 8
  %251 = load i64, i64* %11, align 8
  %252 = trunc i64 %251 to i32
  %253 = call i32 @ESP_LOGD(i32 %245, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %246, i32 %247, i64 %248, i32 %249, i64 %250, i32 %252)
  br label %325

254:                                              ; preds = %94
  %255 = load i32, i32* @RMT_MODE_RX, align 4
  %256 = load i32, i32* %3, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %324

258:                                              ; preds = %254
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 5
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  store i32 %262, i32* %17, align 4
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 5
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %18, align 8
  %267 = call i32 @portENTER_CRITICAL(i32* @rmt_spinlock)
  %268 = load i8*, i8** @RMT_BASECLK_APB, align 8
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %270 = load i32, i32* %4, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 6
  store i8* %268, i8** %274, align 8
  %275 = load i8*, i8** @RMT_BASECLK_APB, align 8
  %276 = call i64 @RMT_SOURCE_CLK(i8* %275)
  store i64 %276, i64* %19, align 8
  %277 = load i32, i32* %6, align 4
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %279 = load i32, i32* %4, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 1
  store i32 %277, i32* %283, align 4
  %284 = load i32, i32* @RMT_MEM_OWNER_RX, align 4
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %286 = load i32, i32* %4, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 5
  store i32 %284, i32* %290, align 4
  %291 = load i64, i64* %18, align 8
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %293 = load i32, i32* %4, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 4
  store i64 %291, i64* %297, align 8
  %298 = load i32, i32* %17, align 4
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %300 = load i32, i32* %4, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 3
  store i32 %298, i32* %304, align 4
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 5
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @RMT, i32 0, i32 0), align 8
  %310 = load i32, i32* %4, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 4
  store i32 %308, i32* %314, align 8
  %315 = call i32 @portEXIT_CRITICAL(i32* @rmt_spinlock)
  %316 = load i32, i32* @RMT_TAG, align 4
  %317 = load i32, i32* %4, align 4
  %318 = load i32, i32* %5, align 4
  %319 = load i64, i64* %19, align 8
  %320 = load i32, i32* %7, align 4
  %321 = load i64, i64* %18, align 8
  %322 = load i32, i32* %17, align 4
  %323 = call i32 @ESP_LOGD(i32 %316, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %317, i32 %318, i64 %319, i32 %320, i64 %321, i32 %322)
  br label %324

324:                                              ; preds = %258, %254
  br label %325

325:                                              ; preds = %324, %243
  %326 = load i32, i32* %4, align 4
  %327 = load i32, i32* %3, align 4
  %328 = load i32, i32* %5, align 4
  %329 = call i32 @rmt_set_pin(i32 %326, i32 %327, i32 %328)
  %330 = load i32, i32* @ESP_OK, align 4
  ret i32 %330
}

declare dso_local i32 @RMT_CHECK(i32, i8*, i32) #1

declare dso_local i32 @GPIO_IS_VALID_GPIO(i32) #1

declare dso_local i32 @periph_module_reset(i32) #1

declare dso_local i32 @periph_module_enable(i32) #1

declare dso_local i32 @rmt_set_data_mode(i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

declare dso_local i64 @RMT_SOURCE_CLK(i8*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32, i32, i64, i32, i64, i32) #1

declare dso_local i32 @rmt_set_pin(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
