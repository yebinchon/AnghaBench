; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_event/test/extr_test_event.c_performance_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_event/test/extr_test_event.c_performance_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { double, i32, i32 }
%struct.TYPE_8__ = type { i32* }

@__const.performance_test.test_base = private unnamed_addr constant [65 x i8] c"qwertyuiopasdfghjklzxvbnmmnbvcxzqwertyuiopasdfghjklzxvbnmmnbvcxz\00", align 16
@ESP_OK = common dso_local global i32 0, align 4
@test_event_performance_handler = common dso_local global i32 0, align 4
@loop_run_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"loop_run\00", align 1
@portMAX_DELAY = common dso_local global i32 0, align 4
@EVENT_DISPATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EVENT_DISPATCH_PSRAM = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@TEST_CONFIG_BASES = common dso_local global i32 0, align 4
@TEST_CONFIG_IDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @performance_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @performance_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [65 x i8], align 16
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [64 x i32], align 16
  %16 = alloca [32 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %32 = call i32 (...) @rand()
  store i32 %32, i32* %3, align 4
  %33 = call i32 (...) @TEST_SETUP()
  %34 = bitcast [65 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 getelementptr inbounds ([65 x i8], [65 x i8]* @__const.performance_test.test_base, i32 0, i32 0), i64 65, i1 false)
  %35 = call { i64, i32* } (...) @test_event_get_default_loop_args()
  %36 = bitcast %struct.TYPE_9__* %5 to { i64, i32* }*
  %37 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %36, i32 0, i32 0
  %38 = extractvalue { i64, i32* } %35, 0
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %36, i32 0, i32 1
  %40 = extractvalue { i64, i32* } %35, 1
  store i32* %40, i32** %39, align 8
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %43, %1
  %46 = load i32, i32* @ESP_OK, align 4
  %47 = call double @esp_event_loop_create(%struct.TYPE_9__* %5, i64* %6)
  %48 = call i32 @TEST_ASSERT_EQUAL(i32 %46, double %47)
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %73, %45
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 64
  br i1 %52, label %53, label %76

53:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %69, %53
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %56, 32
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load i32, i32* @ESP_OK, align 4
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds [65 x i8], [65 x i8]* %4, i64 0, i64 0
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @test_event_performance_handler, align 4
  %67 = call double @esp_event_handler_register_with(i64 %60, i8* %64, i32 %65, i32 %66, %struct.TYPE_7__* %7)
  %68 = call i32 @TEST_ASSERT_EQUAL(i32 %59, double %67)
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %54

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %49

76:                                               ; preds = %49
  store i32* null, i32** %10, align 8
  %77 = load i32, i32* %2, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @loop_run_task, align 4
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %6, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @xTaskCreate(i32 %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %82, i8* %84, i32 %86, i32** %10)
  br label %88

88:                                               ; preds = %79, %76
  store float 0.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  store i32 1, i32* %13, align 4
  br label %89

89:                                               ; preds = %257, %88
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp ule i64 %91, 64
  br i1 %92, label %93, label %260

93:                                               ; preds = %89
  store i32 1, i32* %14, align 4
  br label %94

94:                                               ; preds = %253, %93
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ule i64 %96, 32
  br i1 %97, label %98, label %256

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store double 0.000000e+00, double* %99, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = mul nsw i32 %100, %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %102, i32* %103, align 8
  %104 = call i32 (...) @xSemaphoreCreateBinary()
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i32 %104, i32* %105, align 4
  store i32 0, i32* %17, align 4
  br label %106

106:                                              ; preds = %115, %98
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %113
  store i32 %111, i32* %114, align 4
  br label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %17, align 4
  br label %106

118:                                              ; preds = %106
  store i32 0, i32* %18, align 4
  br label %119

119:                                              ; preds = %128, %118
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %119
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %126
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %18, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %18, align 4
  br label %119

131:                                              ; preds = %119
  store i32 0, i32* %19, align 4
  br label %132

132:                                              ; preds = %158, %131
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %161

136:                                              ; preds = %132
  %137 = call i32 (...) @rand()
  %138 = load i32, i32* %13, align 4
  %139 = srem i32 %137, %138
  store i32 %139, i32* %20, align 4
  %140 = call i32 (...) @rand()
  %141 = load i32, i32* %13, align 4
  %142 = srem i32 %140, %141
  store i32 %142, i32* %21, align 4
  %143 = load i32, i32* %20, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %22, align 4
  %147 = load i32, i32* %21, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %20, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %152
  store i32 %150, i32* %153, align 4
  %154 = load i32, i32* %22, align 4
  %155 = load i32, i32* %21, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %156
  store i32 %154, i32* %157, align 4
  br label %158

158:                                              ; preds = %136
  %159 = load i32, i32* %19, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %19, align 4
  br label %132

161:                                              ; preds = %132
  store i32 0, i32* %23, align 4
  br label %162

162:                                              ; preds = %188, %161
  %163 = load i32, i32* %23, align 4
  %164 = load i32, i32* %14, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %191

166:                                              ; preds = %162
  %167 = call i32 (...) @rand()
  %168 = load i32, i32* %14, align 4
  %169 = srem i32 %167, %168
  store i32 %169, i32* %24, align 4
  %170 = call i32 (...) @rand()
  %171 = load i32, i32* %14, align 4
  %172 = srem i32 %170, %171
  store i32 %172, i32* %25, align 4
  %173 = load i32, i32* %24, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %26, align 4
  %177 = load i32, i32* %25, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %24, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %182
  store i32 %180, i32* %183, align 4
  %184 = load i32, i32* %26, align 4
  %185 = load i32, i32* %25, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %186
  store i32 %184, i32* %187, align 4
  br label %188

188:                                              ; preds = %166
  %189 = load i32, i32* %23, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %23, align 4
  br label %162

191:                                              ; preds = %162
  %192 = call double (...) @esp_timer_get_time()
  store double %192, double* %27, align 8
  store i32 0, i32* %28, align 4
  br label %193

193:                                              ; preds = %223, %191
  %194 = load i32, i32* %28, align 4
  %195 = load i32, i32* %13, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %226

197:                                              ; preds = %193
  store i32 0, i32* %29, align 4
  br label %198

198:                                              ; preds = %219, %197
  %199 = load i32, i32* %29, align 4
  %200 = load i32, i32* %14, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %222

202:                                              ; preds = %198
  %203 = load i32, i32* @ESP_OK, align 4
  %204 = load i64, i64* %6, align 8
  %205 = getelementptr inbounds [65 x i8], [65 x i8]* %4, i64 0, i64 0
  %206 = load i32, i32* %28, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %205, i64 %210
  %212 = load i32, i32* %29, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @portMAX_DELAY, align 4
  %217 = call double @esp_event_post_to(i64 %204, i8* %211, i32 %215, i32* null, i32 0, i32 %216)
  %218 = call i32 @TEST_ASSERT_EQUAL(i32 %203, double %217)
  br label %219

219:                                              ; preds = %202
  %220 = load i32, i32* %29, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %29, align 4
  br label %198

222:                                              ; preds = %198
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %28, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %28, align 4
  br label %193

226:                                              ; preds = %193
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @portMAX_DELAY, align 4
  %230 = call i32 @xSemaphoreTake(i32 %228, i32 %229)
  %231 = call double (...) @esp_timer_get_time()
  %232 = load double, double* %27, align 8
  %233 = fsub double %231, %232
  store double %233, double* %30, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %237 = load double, double* %236, align 8
  %238 = call i32 @TEST_ASSERT_EQUAL(i32 %235, double %237)
  %239 = load float, float* %12, align 4
  %240 = fadd float %239, 1.000000e+00
  store float %240, float* %12, align 4
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %242 = load double, double* %241, align 8
  %243 = load double, double* %30, align 8
  %244 = fdiv double %243, 1.000000e+06
  %245 = fdiv double %242, %244
  %246 = load float, float* %11, align 4
  %247 = fpext float %246 to double
  %248 = fadd double %247, %245
  %249 = fptrunc double %248 to float
  store float %249, float* %11, align 4
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @vSemaphoreDelete(i32 %251)
  br label %253

253:                                              ; preds = %226
  %254 = load i32, i32* %14, align 4
  %255 = mul nsw i32 %254, 2
  store i32 %255, i32* %14, align 4
  br label %94

256:                                              ; preds = %94
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %13, align 4
  %259 = mul nsw i32 %258, 2
  store i32 %259, i32* %13, align 4
  br label %89

260:                                              ; preds = %89
  %261 = load float, float* %11, align 4
  %262 = load float, float* %12, align 4
  %263 = fdiv float %261, %262
  %264 = fptosi float %263 to i32
  store i32 %264, i32* %31, align 4
  %265 = load i32, i32* %2, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %260
  %268 = load i32*, i32** %10, align 8
  %269 = load i64, i64* %6, align 8
  %270 = inttoptr i64 %269 to %struct.TYPE_8__*
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  store i32* %268, i32** %271, align 8
  br label %272

272:                                              ; preds = %267, %260
  %273 = load i32, i32* @ESP_OK, align 4
  %274 = load i64, i64* %6, align 8
  %275 = call double @esp_event_loop_delete(i64 %274)
  %276 = call i32 @TEST_ASSERT_EQUAL(i32 %273, double %275)
  %277 = call i32 (...) @TEST_TEARDOWN()
  %278 = load i32, i32* @EVENT_DISPATCH, align 4
  %279 = load i32, i32* %31, align 4
  %280 = call i32 @TEST_PERFORMANCE_GREATER_THAN(i32 %278, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %279)
  ret void
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @TEST_SETUP(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i32* } @test_event_get_default_loop_args(...) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, double) #1

declare dso_local double @esp_event_loop_create(%struct.TYPE_9__*, i64*) #1

declare dso_local double @esp_event_handler_register_with(i64, i8*, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @xTaskCreate(i32, i8*, i32, i8*, i32, i32**) #1

declare dso_local i32 @xSemaphoreCreateBinary(...) #1

declare dso_local double @esp_timer_get_time(...) #1

declare dso_local double @esp_event_post_to(i64, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @vSemaphoreDelete(i32) #1

declare dso_local double @esp_event_loop_delete(i64) #1

declare dso_local i32 @TEST_TEARDOWN(...) #1

declare dso_local i32 @TEST_PERFORMANCE_GREATER_THAN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
