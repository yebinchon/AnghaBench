; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_i2s.c_i2s_set_clk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_i2s.c_i2s_set_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, double, %struct.TYPE_23__*, %struct.TYPE_23__*, i64, i32 }
%struct.TYPE_23__ = type { i32, i64* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@I2S_NUM_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"i2s_num error\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@I2S_BITS_PER_SAMPLE_32BIT = common dso_local global i32 0, align 4
@I2S_BITS_PER_SAMPLE_16BIT = common dso_local global i32 0, align 4
@I2S_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid bits per sample\00", align 1
@p_i2s_obj = common dso_local global %struct.TYPE_13__** null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Not initialized yet\00", align 1
@I2S_BASE_CLK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"clkmdiv is too large\0D\0A\00", align 1
@I2S_MODE_TX = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i64 0, align 8
@I2S_MODE_RX = common dso_local global i32 0, align 4
@I2S = common dso_local global %struct.TYPE_14__** null, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to create tx dma buffer\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to create rx dma buffer\00", align 1
@I2S_MODE_DAC_BUILT_IN = common dso_local global i32 0, align 4
@I2S_MODE_ADC_BUILT_IN = common dso_local global i32 0, align 4
@I2S_AD_BCK_FACTOR = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"sdm0=%d, sdm1=%d, sdm2=%d, odir=%d\00", align 1
@.str.7 = private unnamed_addr constant [111 x i8] c"APLL: Req RATE: %d, real rate: %0.3f, BITS: %u, CLKM: %u, BCK_M: %u, MCLK: %0.3f, SCLK: %f, diva: %d, divb: %d\00", align 1
@.str.8 = private unnamed_addr constant [111 x i8] c"PLL_D2: Req RATE: %d, real rate: %0.3f, BITS: %u, CLKM: %u, BCK: %u, MCLK: %0.3f, SCLK: %f, diva: %d, divb: %d\00", align 1
@I2S_MODE_PDM = common dso_local global i32 0, align 4
@I2S_PDM_BCK_FACTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i2s_set_clk(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = srem i32 256, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 384, i32 256
  store i32 %36, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store double 1.562500e-02, double* %14, align 8
  store i32 2, i32* %15, align 4
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %16, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %17, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @I2S_NUM_MAX, align 8
  %39 = icmp ult i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  %42 = call i32 @I2S_CHECK(i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* %8, align 4
  %44 = srem i32 %43, 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @I2S_BITS_PER_SAMPLE_32BIT, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @I2S_BITS_PER_SAMPLE_16BIT, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50, %46, %4
  %55 = load i32, i32* @I2S_TAG, align 4
  %56 = call i32 @ESP_LOGE(i32 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %57, i64* %5, align 8
  br label %867

58:                                               ; preds = %50
  %59 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %59, i64 %60
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = icmp eq %struct.TYPE_13__* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @I2S_TAG, align 4
  %66 = call i32 @ESP_LOGE(i32 %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %67, i64* %5, align 8
  br label %867

68:                                               ; preds = %58
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %70, i64 %71
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  store i32 %69, i32* %74, align 8
  %75 = load i32, i32* @I2S_BASE_CLK, align 4
  %76 = sitofp i32 %75 to double
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sitofp i32 %79 to double
  %81 = fdiv double %76, %80
  store double %81, double* %18, align 8
  %82 = load double, double* %18, align 8
  %83 = fcmp ogt double %82, 2.560000e+02
  br i1 %83, label %84, label %88

84:                                               ; preds = %68
  %85 = load i32, i32* @I2S_TAG, align 4
  %86 = call i32 @ESP_LOGE(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %87, i64* %5, align 8
  br label %867

88:                                               ; preds = %68
  %89 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %90 = load i64, i64* %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %89, i64 %90
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @I2S_MODE_TX, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %88
  %99 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %100 = load i64, i64* %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %99, i64 %100
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 9
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %103, align 8
  %105 = icmp ne %struct.TYPE_23__* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %98
  %107 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %107, i64 %108
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 9
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i64, i64* @portMAX_DELAY, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @xSemaphoreTake(i32 %114, i32 %116)
  br label %118

118:                                              ; preds = %106, %98, %88
  %119 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %120 = load i64, i64* %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %119, i64 %120
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @I2S_MODE_RX, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %148

128:                                              ; preds = %118
  %129 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %130 = load i64, i64* %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %129, i64 %130
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %133, align 8
  %135 = icmp ne %struct.TYPE_23__* %134, null
  br i1 %135, label %136, label %148

136:                                              ; preds = %128
  %137 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %138 = load i64, i64* %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %137, i64 %138
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i64, i64* @portMAX_DELAY, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 @xSemaphoreTake(i32 %144, i32 %146)
  br label %148

148:                                              ; preds = %136, %128, %118
  %149 = load i64, i64* %6, align 8
  %150 = call i32 @i2s_stop(i64 %149)
  store i32 0, i32* %19, align 4
  %151 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %152 = load i64, i64* %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %151, i64 %152
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %235

159:                                              ; preds = %148
  %160 = load i32, i32* %9, align 4
  %161 = icmp eq i32 %160, 2
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 2, i32 1
  %164 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %165 = load i64, i64* %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %164, i64 %165
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 2
  store i32 %163, i32* %168, align 8
  %169 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %170 = load i64, i64* %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %169, i64 %170
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 7
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %19, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %178, label %181

178:                                              ; preds = %159
  %179 = load i32, i32* %19, align 4
  %180 = sub nsw i32 %179, 1
  br label %184

181:                                              ; preds = %159
  %182 = load i32, i32* %19, align 4
  %183 = add nsw i32 %182, 1
  br label %184

184:                                              ; preds = %181, %178
  %185 = phi i32 [ %180, %178 ], [ %183, %181 ]
  %186 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %187 = load i64, i64* %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %186, i64 %187
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 7
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  store i32 %185, i32* %191, align 4
  %192 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %193 = load i64, i64* %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %192, i64 %193
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 7
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %19, align 4
  %199 = load i32, i32* %9, align 4
  %200 = icmp eq i32 %199, 2
  br i1 %200, label %201, label %204

201:                                              ; preds = %184
  %202 = load i32, i32* %19, align 4
  %203 = sub nsw i32 %202, 1
  br label %207

204:                                              ; preds = %184
  %205 = load i32, i32* %19, align 4
  %206 = add nsw i32 %205, 1
  br label %207

207:                                              ; preds = %204, %201
  %208 = phi i32 [ %203, %201 ], [ %206, %204 ]
  %209 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %210 = load i64, i64* %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %209, i64 %210
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 7
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 1
  store i32 %208, i32* %214, align 4
  %215 = load i32, i32* %9, align 4
  %216 = icmp eq i32 %215, 2
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 0, i32 1
  %219 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %220 = load i64, i64* %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %219, i64 %220
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 0
  store i32 %218, i32* %224, align 4
  %225 = load i32, i32* %9, align 4
  %226 = icmp eq i32 %225, 2
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i32 0, i32 1
  %229 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %230 = load i64, i64* %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %229, i64 %230
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  store i32 %228, i32* %234, align 4
  br label %235

235:                                              ; preds = %207, %148
  %236 = load i32, i32* %8, align 4
  %237 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %238 = load i64, i64* %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %237, i64 %238
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %236, %242
  br i1 %243, label %244, label %527

244:                                              ; preds = %235
  %245 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %246 = load i64, i64* %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %245, i64 %246
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = icmp sle i32 %250, 16
  br i1 %251, label %252, label %272

252:                                              ; preds = %244
  %253 = load i32, i32* %8, align 4
  %254 = icmp sgt i32 %253, 16
  br i1 %254, label %255, label %272

255:                                              ; preds = %252
  %256 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %257 = load i64, i64* %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %256, i64 %257
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 7
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = add nsw i32 %262, 2
  store i32 %263, i32* %261, align 4
  %264 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %265 = load i64, i64* %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %264, i64 %265
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 7
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, 2
  store i32 %271, i32* %269, align 4
  br label %301

272:                                              ; preds = %252, %244
  %273 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %274 = load i64, i64* %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %273, i64 %274
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = icmp sgt i32 %278, 16
  br i1 %279, label %280, label %300

280:                                              ; preds = %272
  %281 = load i32, i32* %8, align 4
  %282 = icmp sle i32 %281, 16
  br i1 %282, label %283, label %300

283:                                              ; preds = %280
  %284 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %285 = load i64, i64* %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %284, i64 %285
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 7
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = sub nsw i32 %290, 2
  store i32 %291, i32* %289, align 4
  %292 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %293 = load i64, i64* %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %292, i64 %293
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 7
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = sub nsw i32 %298, 2
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %283, %280, %272
  br label %301

301:                                              ; preds = %300, %255
  %302 = load i32, i32* %8, align 4
  %303 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %304 = load i64, i64* %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %303, i64 %304
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 3
  store i32 %302, i32* %307, align 4
  %308 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %309 = load i64, i64* %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %308, i64 %309
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = sdiv i32 %313, 8
  %315 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %316 = load i64, i64* %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %315, i64 %316
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 4
  store i32 %314, i32* %319, align 8
  %320 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %321 = load i64, i64* %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %320, i64 %321
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = add nsw i32 %325, 15
  %327 = sdiv i32 %326, 16
  store i32 %327, i32* %20, align 4
  %328 = load i32, i32* %20, align 4
  %329 = mul nsw i32 %328, 2
  %330 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %331 = load i64, i64* %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %330, i64 %331
  %333 = load %struct.TYPE_13__*, %struct.TYPE_13__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 4
  store i32 %329, i32* %334, align 8
  %335 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %336 = load i64, i64* %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %335, i64 %336
  %338 = load %struct.TYPE_13__*, %struct.TYPE_13__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 5
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %342 = load i64, i64* %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %341, i64 %342
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 8
  %347 = mul nsw i32 %340, %346
  %348 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %349 = load i64, i64* %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %348, i64 %349
  %351 = load %struct.TYPE_13__*, %struct.TYPE_13__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = mul nsw i32 %347, %353
  %355 = icmp sgt i32 %354, 4092
  br i1 %355, label %356, label %376

356:                                              ; preds = %301
  %357 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %358 = load i64, i64* %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %357, i64 %358
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  %363 = sdiv i32 4092, %362
  %364 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %365 = load i64, i64* %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %364, i64 %365
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = sdiv i32 %363, %369
  %371 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %372 = load i64, i64* %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %371, i64 %372
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 5
  store i32 %370, i32* %375, align 4
  br label %376

376:                                              ; preds = %356, %301
  %377 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %378 = load i64, i64* %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %377, i64 %378
  %380 = load %struct.TYPE_13__*, %struct.TYPE_13__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @I2S_MODE_TX, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %451

386:                                              ; preds = %376
  %387 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %388 = load i64, i64* %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %387, i64 %388
  %390 = load %struct.TYPE_13__*, %struct.TYPE_13__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %390, i32 0, i32 9
  %392 = load %struct.TYPE_23__*, %struct.TYPE_23__** %391, align 8
  store %struct.TYPE_23__* %392, %struct.TYPE_23__** %16, align 8
  %393 = load i64, i64* %6, align 8
  %394 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %395 = load i64, i64* %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %394, i64 %395
  %397 = load %struct.TYPE_13__*, %struct.TYPE_13__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %397, i32 0, i32 11
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %401 = load i64, i64* %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %400, i64 %401
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 5
  %405 = load i32, i32* %404, align 4
  %406 = call i8* @i2s_create_dma_queue(i64 %393, i32 %399, i32 %405)
  %407 = bitcast i8* %406 to %struct.TYPE_23__*
  %408 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %409 = load i64, i64* %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %408, i64 %409
  %411 = load %struct.TYPE_13__*, %struct.TYPE_13__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %411, i32 0, i32 9
  store %struct.TYPE_23__* %407, %struct.TYPE_23__** %412, align 8
  %413 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %414 = load i64, i64* %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %413, i64 %414
  %416 = load %struct.TYPE_13__*, %struct.TYPE_13__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %416, i32 0, i32 9
  %418 = load %struct.TYPE_23__*, %struct.TYPE_23__** %417, align 8
  %419 = icmp eq %struct.TYPE_23__* %418, null
  br i1 %419, label %420, label %426

420:                                              ; preds = %386
  %421 = load i32, i32* @I2S_TAG, align 4
  %422 = call i32 @ESP_LOGE(i32 %421, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %423 = load i64, i64* %6, align 8
  %424 = call i32 @i2s_driver_uninstall(i64 %423)
  %425 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %425, i64* %5, align 8
  br label %867

426:                                              ; preds = %386
  %427 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %428 = load i64, i64* %6, align 8
  %429 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %427, i64 %428
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 9
  %432 = load %struct.TYPE_23__*, %struct.TYPE_23__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %432, i32 0, i32 1
  %434 = load i64*, i64** %433, align 8
  %435 = getelementptr inbounds i64, i64* %434, i64 0
  %436 = load i64, i64* %435, align 8
  %437 = trunc i64 %436 to i32
  %438 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %439 = load i64, i64* %6, align 8
  %440 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %438, i64 %439
  %441 = load %struct.TYPE_14__*, %struct.TYPE_14__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %441, i32 0, i32 6
  %443 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %442, i32 0, i32 0
  store i32 %437, i32* %443, align 4
  %444 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %445 = icmp ne %struct.TYPE_23__* %444, null
  br i1 %445, label %446, label %450

446:                                              ; preds = %426
  %447 = load i64, i64* %6, align 8
  %448 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %449 = call i32 @i2s_destroy_dma_queue(i64 %447, %struct.TYPE_23__* %448)
  br label %450

450:                                              ; preds = %446, %426
  br label %451

451:                                              ; preds = %450, %376
  %452 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %453 = load i64, i64* %6, align 8
  %454 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %452, i64 %453
  %455 = load %struct.TYPE_13__*, %struct.TYPE_13__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = load i32, i32* @I2S_MODE_RX, align 4
  %459 = and i32 %457, %458
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %526

461:                                              ; preds = %451
  %462 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %463 = load i64, i64* %6, align 8
  %464 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %462, i64 %463
  %465 = load %struct.TYPE_13__*, %struct.TYPE_13__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %465, i32 0, i32 8
  %467 = load %struct.TYPE_23__*, %struct.TYPE_23__** %466, align 8
  store %struct.TYPE_23__* %467, %struct.TYPE_23__** %17, align 8
  %468 = load i64, i64* %6, align 8
  %469 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %470 = load i64, i64* %6, align 8
  %471 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %469, i64 %470
  %472 = load %struct.TYPE_13__*, %struct.TYPE_13__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %472, i32 0, i32 11
  %474 = load i32, i32* %473, align 8
  %475 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %476 = load i64, i64* %6, align 8
  %477 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %475, i64 %476
  %478 = load %struct.TYPE_13__*, %struct.TYPE_13__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %478, i32 0, i32 5
  %480 = load i32, i32* %479, align 4
  %481 = call i8* @i2s_create_dma_queue(i64 %468, i32 %474, i32 %480)
  %482 = bitcast i8* %481 to %struct.TYPE_23__*
  %483 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %484 = load i64, i64* %6, align 8
  %485 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %483, i64 %484
  %486 = load %struct.TYPE_13__*, %struct.TYPE_13__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %486, i32 0, i32 8
  store %struct.TYPE_23__* %482, %struct.TYPE_23__** %487, align 8
  %488 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %489 = load i64, i64* %6, align 8
  %490 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %488, i64 %489
  %491 = load %struct.TYPE_13__*, %struct.TYPE_13__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %491, i32 0, i32 8
  %493 = load %struct.TYPE_23__*, %struct.TYPE_23__** %492, align 8
  %494 = icmp eq %struct.TYPE_23__* %493, null
  br i1 %494, label %495, label %501

495:                                              ; preds = %461
  %496 = load i32, i32* @I2S_TAG, align 4
  %497 = call i32 @ESP_LOGE(i32 %496, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %498 = load i64, i64* %6, align 8
  %499 = call i32 @i2s_driver_uninstall(i64 %498)
  %500 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %500, i64* %5, align 8
  br label %867

501:                                              ; preds = %461
  %502 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %503 = load i64, i64* %6, align 8
  %504 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %502, i64 %503
  %505 = load %struct.TYPE_13__*, %struct.TYPE_13__** %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %505, i32 0, i32 8
  %507 = load %struct.TYPE_23__*, %struct.TYPE_23__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %507, i32 0, i32 1
  %509 = load i64*, i64** %508, align 8
  %510 = getelementptr inbounds i64, i64* %509, i64 0
  %511 = load i64, i64* %510, align 8
  %512 = trunc i64 %511 to i32
  %513 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %514 = load i64, i64* %6, align 8
  %515 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %513, i64 %514
  %516 = load %struct.TYPE_14__*, %struct.TYPE_14__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %516, i32 0, i32 5
  %518 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %517, i32 0, i32 0
  store i32 %512, i32* %518, align 4
  %519 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %520 = icmp ne %struct.TYPE_23__* %519, null
  br i1 %520, label %521, label %525

521:                                              ; preds = %501
  %522 = load i64, i64* %6, align 8
  %523 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %524 = call i32 @i2s_destroy_dma_queue(i64 %522, %struct.TYPE_23__* %523)
  br label %525

525:                                              ; preds = %521, %501
  br label %526

526:                                              ; preds = %525, %451
  br label %527

527:                                              ; preds = %526, %235
  store i32 8, i32* %26, align 4
  %528 = load i32, i32* %7, align 4
  %529 = load i32, i32* %15, align 4
  %530 = mul nsw i32 %528, %529
  %531 = load i32, i32* %8, align 4
  %532 = mul nsw i32 %530, %531
  %533 = load i32, i32* %26, align 4
  %534 = mul nsw i32 %532, %533
  store i32 %534, i32* %27, align 4
  %535 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %536 = load i64, i64* %6, align 8
  %537 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %535, i64 %536
  %538 = load %struct.TYPE_13__*, %struct.TYPE_13__** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %538, i32 0, i32 1
  %540 = load i32, i32* %539, align 4
  %541 = load i32, i32* @I2S_MODE_DAC_BUILT_IN, align 4
  %542 = load i32, i32* @I2S_MODE_ADC_BUILT_IN, align 4
  %543 = or i32 %541, %542
  %544 = and i32 %540, %543
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %575

546:                                              ; preds = %527
  %547 = load i32, i32* %7, align 4
  %548 = load i32, i32* @I2S_AD_BCK_FACTOR, align 4
  %549 = mul nsw i32 %547, %548
  store i32 %549, i32* %28, align 4
  %550 = load i32, i32* @I2S_AD_BCK_FACTOR, align 4
  %551 = load i32, i32* %27, align 4
  %552 = sdiv i32 %551, %550
  store i32 %552, i32* %27, align 4
  store i32 60, i32* %29, align 4
  %553 = load i32, i32* %28, align 4
  %554 = load i32, i32* %29, align 4
  %555 = mul nsw i32 %553, %554
  %556 = sitofp i32 %555 to double
  store double %556, double* %21, align 8
  %557 = load i32, i32* @I2S_BASE_CLK, align 4
  %558 = sitofp i32 %557 to double
  %559 = load double, double* %21, align 8
  %560 = fdiv double %558, %559
  store double %560, double* %18, align 8
  %561 = load double, double* %18, align 8
  %562 = fptosi double %561 to i32
  store i32 %562, i32* %11, align 4
  %563 = load double, double* %18, align 8
  %564 = load i32, i32* %11, align 4
  %565 = sitofp i32 %564 to double
  %566 = fsub double %563, %565
  %567 = load double, double* %14, align 8
  %568 = fdiv double %566, %567
  %569 = fptosi double %568 to i32
  store i32 %569, i32* %12, align 4
  %570 = load double, double* %21, align 8
  %571 = load i32, i32* %28, align 4
  %572 = sitofp i32 %571 to double
  %573 = fdiv double %570, %572
  %574 = fptosi double %573 to i32
  store i32 %574, i32* %13, align 4
  br label %597

575:                                              ; preds = %527
  %576 = load double, double* %18, align 8
  %577 = fptosi double %576 to i32
  store i32 %577, i32* %11, align 4
  %578 = load double, double* %18, align 8
  %579 = load i32, i32* %11, align 4
  %580 = sitofp i32 %579 to double
  %581 = fsub double %578, %580
  %582 = load double, double* %14, align 8
  %583 = fdiv double %581, %582
  %584 = fptosi double %583 to i32
  store i32 %584, i32* %12, align 4
  %585 = load i32, i32* %11, align 4
  %586 = sitofp i32 %585 to double
  %587 = load double, double* %14, align 8
  %588 = load i32, i32* %12, align 4
  %589 = sitofp i32 %588 to double
  %590 = fmul double %587, %589
  %591 = fadd double %586, %590
  store double %591, double* %21, align 8
  %592 = load i32, i32* %10, align 4
  %593 = load i32, i32* %8, align 4
  %594 = load i32, i32* %15, align 4
  %595 = mul nsw i32 %593, %594
  %596 = sdiv i32 %592, %595
  store i32 %596, i32* %13, align 4
  br label %597

597:                                              ; preds = %575, %546
  %598 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %599 = load i64, i64* %6, align 8
  %600 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %598, i64 %599
  %601 = load %struct.TYPE_13__*, %struct.TYPE_13__** %600, align 8
  %602 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %601, i32 0, i32 10
  %603 = load i64, i64* %602, align 8
  %604 = icmp ne i64 %603, 0
  br i1 %604, label %605, label %627

605:                                              ; preds = %597
  %606 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %607 = load i64, i64* %6, align 8
  %608 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %606, i64 %607
  %609 = load %struct.TYPE_13__*, %struct.TYPE_13__** %608, align 8
  %610 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %609, i32 0, i32 6
  %611 = load i32, i32* %610, align 8
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %627

613:                                              ; preds = %605
  %614 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %615 = load i64, i64* %6, align 8
  %616 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %614, i64 %615
  %617 = load %struct.TYPE_13__*, %struct.TYPE_13__** %616, align 8
  %618 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %617, i32 0, i32 6
  %619 = load i32, i32* %618, align 8
  store i32 %619, i32* %27, align 4
  %620 = load i32, i32* %27, align 4
  %621 = load i32, i32* %8, align 4
  %622 = sdiv i32 %620, %621
  %623 = load i32, i32* %7, align 4
  %624 = sdiv i32 %622, %623
  %625 = load i32, i32* %15, align 4
  %626 = sdiv i32 %624, %625
  store i32 %626, i32* %26, align 4
  br label %627

627:                                              ; preds = %613, %605, %597
  %628 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %629 = load i64, i64* %6, align 8
  %630 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %628, i64 %629
  %631 = load %struct.TYPE_13__*, %struct.TYPE_13__** %630, align 8
  %632 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %631, i32 0, i32 10
  %633 = load i64, i64* %632, align 8
  %634 = icmp ne i64 %633, 0
  br i1 %634, label %635, label %724

635:                                              ; preds = %627
  %636 = load i32, i32* %27, align 4
  %637 = load i32, i32* %8, align 4
  %638 = call i64 @i2s_apll_calculate_fi2s(i32 %636, i32 %637, i32* %22, i32* %23, i32* %24, i32* %25)
  %639 = load i64, i64* @ESP_OK, align 8
  %640 = icmp eq i64 %638, %639
  br i1 %640, label %641, label %724

641:                                              ; preds = %635
  %642 = load i32, i32* @I2S_TAG, align 4
  %643 = load i32, i32* %22, align 4
  %644 = load i32, i32* %23, align 4
  %645 = load i32, i32* %24, align 4
  %646 = load i32, i32* %25, align 4
  %647 = call i32 @ESP_LOGD(i32 %642, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %643, i32 %644, i32 %645, i32 %646)
  %648 = load i32, i32* %22, align 4
  %649 = load i32, i32* %23, align 4
  %650 = load i32, i32* %24, align 4
  %651 = load i32, i32* %25, align 4
  %652 = call i32 @rtc_clk_apll_enable(i32 1, i32 %648, i32 %649, i32 %650, i32 %651)
  %653 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %654 = load i64, i64* %6, align 8
  %655 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %653, i64 %654
  %656 = load %struct.TYPE_14__*, %struct.TYPE_14__** %655, align 8
  %657 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %656, i32 0, i32 2
  %658 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %657, i32 0, i32 0
  store i32 1, i32* %658, align 4
  %659 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %660 = load i64, i64* %6, align 8
  %661 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %659, i64 %660
  %662 = load %struct.TYPE_14__*, %struct.TYPE_14__** %661, align 8
  %663 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %662, i32 0, i32 2
  %664 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %663, i32 0, i32 1
  store i32 0, i32* %664, align 4
  %665 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %666 = load i64, i64* %6, align 8
  %667 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %665, i64 %666
  %668 = load %struct.TYPE_14__*, %struct.TYPE_14__** %667, align 8
  %669 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %668, i32 0, i32 2
  %670 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %669, i32 0, i32 2
  store i32 1, i32* %670, align 4
  %671 = load i32, i32* %26, align 4
  %672 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %673 = load i64, i64* %6, align 8
  %674 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %672, i64 %673
  %675 = load %struct.TYPE_14__*, %struct.TYPE_14__** %674, align 8
  %676 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %675, i32 0, i32 1
  %677 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %676, i32 0, i32 0
  store i32 %671, i32* %677, align 4
  %678 = load i32, i32* %26, align 4
  %679 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %680 = load i64, i64* %6, align 8
  %681 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %679, i64 %680
  %682 = load %struct.TYPE_14__*, %struct.TYPE_14__** %681, align 8
  %683 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %682, i32 0, i32 1
  %684 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %683, i32 0, i32 1
  store i32 %678, i32* %684, align 4
  %685 = load i32, i32* %8, align 4
  %686 = load i32, i32* %22, align 4
  %687 = load i32, i32* %23, align 4
  %688 = load i32, i32* %24, align 4
  %689 = load i32, i32* %25, align 4
  %690 = call double @i2s_apll_get_fi2s(i32 %685, i32 %686, i32 %687, i32 %688, i32 %689)
  store double %690, double* %30, align 8
  %691 = load double, double* %30, align 8
  %692 = load i32, i32* %8, align 4
  %693 = sitofp i32 %692 to double
  %694 = fdiv double %691, %693
  %695 = load i32, i32* %15, align 4
  %696 = sitofp i32 %695 to double
  %697 = fdiv double %694, %696
  %698 = load i32, i32* %26, align 4
  %699 = sitofp i32 %698 to double
  %700 = fdiv double %697, %699
  %701 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %702 = load i64, i64* %6, align 8
  %703 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %701, i64 %702
  %704 = load %struct.TYPE_13__*, %struct.TYPE_13__** %703, align 8
  %705 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %704, i32 0, i32 7
  store double %700, double* %705, align 8
  %706 = load i32, i32* @I2S_TAG, align 4
  %707 = load i32, i32* %7, align 4
  %708 = load double, double* %30, align 8
  %709 = load i32, i32* %8, align 4
  %710 = sitofp i32 %709 to double
  %711 = fdiv double %708, %710
  %712 = load i32, i32* %15, align 4
  %713 = sitofp i32 %712 to double
  %714 = fdiv double %711, %713
  %715 = load i32, i32* %26, align 4
  %716 = sitofp i32 %715 to double
  %717 = fdiv double %714, %716
  %718 = load i32, i32* %8, align 4
  %719 = load i32, i32* %26, align 4
  %720 = load double, double* %30, align 8
  %721 = load double, double* %30, align 8
  %722 = fdiv double %721, 8.000000e+00
  %723 = call i32 @ESP_LOGI(i32 %706, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.7, i64 0, i64 0), i32 %707, double %717, i32 %718, i32 1, i32 %719, double %720, double %722, i32 1, i32 0)
  br label %793

724:                                              ; preds = %635, %627
  %725 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %726 = load i64, i64* %6, align 8
  %727 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %725, i64 %726
  %728 = load %struct.TYPE_14__*, %struct.TYPE_14__** %727, align 8
  %729 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %728, i32 0, i32 2
  %730 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %729, i32 0, i32 2
  store i32 63, i32* %730, align 4
  %731 = load i32, i32* %12, align 4
  %732 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %733 = load i64, i64* %6, align 8
  %734 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %732, i64 %733
  %735 = load %struct.TYPE_14__*, %struct.TYPE_14__** %734, align 8
  %736 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %735, i32 0, i32 2
  %737 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %736, i32 0, i32 1
  store i32 %731, i32* %737, align 4
  %738 = load i32, i32* %11, align 4
  %739 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %740 = load i64, i64* %6, align 8
  %741 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %739, i64 %740
  %742 = load %struct.TYPE_14__*, %struct.TYPE_14__** %741, align 8
  %743 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %742, i32 0, i32 2
  %744 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %743, i32 0, i32 0
  store i32 %738, i32* %744, align 4
  %745 = load i32, i32* %13, align 4
  %746 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %747 = load i64, i64* %6, align 8
  %748 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %746, i64 %747
  %749 = load %struct.TYPE_14__*, %struct.TYPE_14__** %748, align 8
  %750 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %749, i32 0, i32 1
  %751 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %750, i32 0, i32 0
  store i32 %745, i32* %751, align 4
  %752 = load i32, i32* %13, align 4
  %753 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %754 = load i64, i64* %6, align 8
  %755 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %753, i64 %754
  %756 = load %struct.TYPE_14__*, %struct.TYPE_14__** %755, align 8
  %757 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %756, i32 0, i32 1
  %758 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %757, i32 0, i32 1
  store i32 %752, i32* %758, align 4
  %759 = load i32, i32* @I2S_BASE_CLK, align 4
  %760 = load i32, i32* %13, align 4
  %761 = load i32, i32* %8, align 4
  %762 = mul nsw i32 %760, %761
  %763 = load i32, i32* %11, align 4
  %764 = mul nsw i32 %762, %763
  %765 = sdiv i32 %759, %764
  %766 = sdiv i32 %765, 2
  %767 = sitofp i32 %766 to double
  store double %767, double* %31, align 8
  %768 = load double, double* %31, align 8
  %769 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %770 = load i64, i64* %6, align 8
  %771 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %769, i64 %770
  %772 = load %struct.TYPE_13__*, %struct.TYPE_13__** %771, align 8
  %773 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %772, i32 0, i32 7
  store double %768, double* %773, align 8
  %774 = load i32, i32* @I2S_TAG, align 4
  %775 = load i32, i32* %7, align 4
  %776 = load double, double* %31, align 8
  %777 = load i32, i32* %8, align 4
  %778 = load i32, i32* %11, align 4
  %779 = load i32, i32* %13, align 4
  %780 = load i32, i32* @I2S_BASE_CLK, align 4
  %781 = sitofp i32 %780 to double
  %782 = load double, double* %21, align 8
  %783 = fdiv double %781, %782
  %784 = load double, double* %31, align 8
  %785 = load i32, i32* %8, align 4
  %786 = sitofp i32 %785 to double
  %787 = fmul double %784, %786
  %788 = load i32, i32* %15, align 4
  %789 = sitofp i32 %788 to double
  %790 = fmul double %787, %789
  %791 = load i32, i32* %12, align 4
  %792 = call i32 @ESP_LOGI(i32 %774, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.8, i64 0, i64 0), i32 %775, double %776, i32 %777, i32 %778, i32 %779, double %783, double %790, i32 64, i32 %791)
  br label %793

793:                                              ; preds = %724, %641
  %794 = load i32, i32* %8, align 4
  %795 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %796 = load i64, i64* %6, align 8
  %797 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %795, i64 %796
  %798 = load %struct.TYPE_14__*, %struct.TYPE_14__** %797, align 8
  %799 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %798, i32 0, i32 1
  %800 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %799, i32 0, i32 2
  store i32 %794, i32* %800, align 4
  %801 = load i32, i32* %8, align 4
  %802 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @I2S, align 8
  %803 = load i64, i64* %6, align 8
  %804 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %802, i64 %803
  %805 = load %struct.TYPE_14__*, %struct.TYPE_14__** %804, align 8
  %806 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %805, i32 0, i32 1
  %807 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %806, i32 0, i32 3
  store i32 %801, i32* %807, align 4
  %808 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %809 = load i64, i64* %6, align 8
  %810 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %808, i64 %809
  %811 = load %struct.TYPE_13__*, %struct.TYPE_13__** %810, align 8
  %812 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %811, i32 0, i32 1
  %813 = load i32, i32* %812, align 4
  %814 = load i32, i32* @I2S_MODE_TX, align 4
  %815 = and i32 %813, %814
  %816 = icmp ne i32 %815, 0
  br i1 %816, label %817, label %835

817:                                              ; preds = %793
  %818 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %819 = load i64, i64* %6, align 8
  %820 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %818, i64 %819
  %821 = load %struct.TYPE_13__*, %struct.TYPE_13__** %820, align 8
  %822 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %821, i32 0, i32 9
  %823 = load %struct.TYPE_23__*, %struct.TYPE_23__** %822, align 8
  %824 = icmp ne %struct.TYPE_23__* %823, null
  br i1 %824, label %825, label %835

825:                                              ; preds = %817
  %826 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %827 = load i64, i64* %6, align 8
  %828 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %826, i64 %827
  %829 = load %struct.TYPE_13__*, %struct.TYPE_13__** %828, align 8
  %830 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %829, i32 0, i32 9
  %831 = load %struct.TYPE_23__*, %struct.TYPE_23__** %830, align 8
  %832 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %831, i32 0, i32 0
  %833 = load i32, i32* %832, align 8
  %834 = call i32 @xSemaphoreGive(i32 %833)
  br label %835

835:                                              ; preds = %825, %817, %793
  %836 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %837 = load i64, i64* %6, align 8
  %838 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %836, i64 %837
  %839 = load %struct.TYPE_13__*, %struct.TYPE_13__** %838, align 8
  %840 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %839, i32 0, i32 1
  %841 = load i32, i32* %840, align 4
  %842 = load i32, i32* @I2S_MODE_RX, align 4
  %843 = and i32 %841, %842
  %844 = icmp ne i32 %843, 0
  br i1 %844, label %845, label %863

845:                                              ; preds = %835
  %846 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %847 = load i64, i64* %6, align 8
  %848 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %846, i64 %847
  %849 = load %struct.TYPE_13__*, %struct.TYPE_13__** %848, align 8
  %850 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %849, i32 0, i32 8
  %851 = load %struct.TYPE_23__*, %struct.TYPE_23__** %850, align 8
  %852 = icmp ne %struct.TYPE_23__* %851, null
  br i1 %852, label %853, label %863

853:                                              ; preds = %845
  %854 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @p_i2s_obj, align 8
  %855 = load i64, i64* %6, align 8
  %856 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %854, i64 %855
  %857 = load %struct.TYPE_13__*, %struct.TYPE_13__** %856, align 8
  %858 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %857, i32 0, i32 8
  %859 = load %struct.TYPE_23__*, %struct.TYPE_23__** %858, align 8
  %860 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %859, i32 0, i32 0
  %861 = load i32, i32* %860, align 8
  %862 = call i32 @xSemaphoreGive(i32 %861)
  br label %863

863:                                              ; preds = %853, %845, %835
  %864 = load i64, i64* %6, align 8
  %865 = call i32 @i2s_start(i64 %864)
  %866 = load i64, i64* @ESP_OK, align 8
  store i64 %866, i64* %5, align 8
  br label %867

867:                                              ; preds = %863, %495, %420, %84, %64, %54
  %868 = load i64, i64* %5, align 8
  ret i64 %868
}

declare dso_local i32 @I2S_CHECK(i32, i8*, i64) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @i2s_stop(i64) #1

declare dso_local i8* @i2s_create_dma_queue(i64, i32, i32) #1

declare dso_local i32 @i2s_driver_uninstall(i64) #1

declare dso_local i32 @i2s_destroy_dma_queue(i64, %struct.TYPE_23__*) #1

declare dso_local i64 @i2s_apll_calculate_fi2s(i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @rtc_clk_apll_enable(i32, i32, i32, i32, i32) #1

declare dso_local double @i2s_apll_get_fi2s(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, double, i32, i32, i32, double, double, i32, i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @i2s_start(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
