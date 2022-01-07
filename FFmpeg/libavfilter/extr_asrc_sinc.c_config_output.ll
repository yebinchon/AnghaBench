; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_sinc.c_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_sinc.c_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { float, float, float, i32*, float, i32, i32, float*, i32*, i32*, i32, i32, i32, i32, i32, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"filter frequency must be less than %d/2.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @config_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_output(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca float, align 4
  %7 = alloca [2 x float*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %5, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 8
  %22 = fmul float %21, 5.000000e-01
  store float %22, float* %6, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load float, float* %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store float %25, float* %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 15
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load float, float* %31, align 4
  %33 = load float, float* %6, align 4
  %34 = fcmp oge float %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load float, float* %37, align 8
  %39 = load float, float* %6, align 4
  %40 = fcmp oge float %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35, %1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load float, float* %45, align 8
  %47 = call i32 @av_log(%struct.TYPE_9__* %42, i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), float %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = call i32 @AVERROR(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %296

50:                                               ; preds = %35
  %51 = load float, float* %6, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load float, float* %53, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 14
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 11
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 8
  %70 = call float* @lpf(float %51, float %54, i32 %57, i32* %61, i32 %64, i32* %66, i32 %69)
  %71 = getelementptr inbounds [2 x float*], [2 x float*]* %7, i64 0, i64 0
  store float* %70, float** %71, align 16
  %72 = load float, float* %6, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load float, float* %74, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 13
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 12
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 11
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = call float* @lpf(float %72, float %75, i32 %78, i32* %82, i32 %85, i32* %87, i32 %90)
  %92 = getelementptr inbounds [2 x float*], [2 x float*]* %7, i64 0, i64 1
  store float* %91, float** %92, align 8
  %93 = getelementptr inbounds [2 x float*], [2 x float*]* %7, i64 0, i64 0
  %94 = load float*, float** %93, align 16
  %95 = icmp ne float* %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %50
  %97 = getelementptr inbounds [2 x float*], [2 x float*]* %7, i64 0, i64 0
  %98 = load float*, float** %97, align 16
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @invert(float* %98, i32 %103)
  br label %105

105:                                              ; preds = %96, %50
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %110, %115
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %11, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %9, align 4
  %125 = getelementptr inbounds [2 x float*], [2 x float*]* %7, i64 0, i64 0
  %126 = load float*, float** %125, align 16
  %127 = icmp ne float* %126, null
  br i1 %127, label %128, label %208

128:                                              ; preds = %105
  %129 = getelementptr inbounds [2 x float*], [2 x float*]* %7, i64 0, i64 1
  %130 = load float*, float** %129, align 8
  %131 = icmp ne float* %130, null
  br i1 %131, label %132, label %208

132:                                              ; preds = %128
  store i32 0, i32* %8, align 4
  br label %133

133:                                              ; preds = %181, %132
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %137, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %134, %144
  br i1 %145, label %146, label %184

146:                                              ; preds = %133
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [2 x float*], [2 x float*]* %7, i64 0, i64 %151
  %153 = load float*, float** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %153, i64 %155
  %157 = load float, float* %156, align 4
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [2 x float*], [2 x float*]* %7, i64 0, i64 %159
  %161 = load float*, float** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %166, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %163, %173
  %175 = sdiv i32 %174, 2
  %176 = add nsw i32 %162, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %161, i64 %177
  %179 = load float, float* %178, align 4
  %180 = fadd float %179, %157
  store float %180, float* %178, align 4
  br label %181

181:                                              ; preds = %146
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %8, align 4
  br label %133

184:                                              ; preds = %133
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load float, float* %186, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  %190 = load float, float* %189, align 8
  %191 = fcmp olt float %187, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %184
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [2 x float*], [2 x float*]* %7, i64 0, i64 %194
  %196 = load float*, float** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @invert(float* %196, i32 %197)
  br label %199

199:                                              ; preds = %192, %184
  %200 = load i32, i32* %11, align 4
  %201 = icmp ne i32 %200, 0
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [2 x float*], [2 x float*]* %7, i64 0, i64 %204
  %206 = load float*, float** %205, align 8
  %207 = call i32 @av_free(float* %206)
  br label %208

208:                                              ; preds = %199, %128, %105
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 4
  %211 = load float, float* %210, align 8
  %212 = fcmp une float %211, 5.000000e+01
  br i1 %212, label %213, label %227

213:                                              ; preds = %208
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [2 x float*], [2 x float*]* %7, i64 0, i64 %216
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 4
  %220 = load float, float* %219, align 8
  %221 = call i32 @fir_to_phase(%struct.TYPE_7__* %214, float** %217, i32* %9, i32* %10, float %220)
  store i32 %221, i32* %12, align 4
  %222 = load i32, i32* %12, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %213
  %225 = load i32, i32* %12, align 4
  store i32 %225, i32* %2, align 4
  br label %296

226:                                              ; preds = %213
  br label %230

227:                                              ; preds = %208
  %228 = load i32, i32* %9, align 4
  %229 = ashr i32 %228, 1
  store i32 %229, i32* %10, align 4
  br label %230

230:                                              ; preds = %227, %226
  %231 = load i32, i32* %9, align 4
  %232 = call i32 @av_log2(i32 %231)
  %233 = add nsw i32 %232, 1
  %234 = shl i32 1, %233
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* %9, align 4
  %238 = call i32 @av_log2(i32 %237)
  %239 = shl i32 1, %238
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 6
  store i32 %239, i32* %241, align 8
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = call float* @av_calloc(i32 %244, i32 4)
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 7
  store float* %245, float** %247, align 8
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 7
  %250 = load float*, float** %249, align 8
  %251 = icmp ne float* %250, null
  br i1 %251, label %255, label %252

252:                                              ; preds = %230
  %253 = load i32, i32* @ENOMEM, align 4
  %254 = call i32 @AVERROR(i32 %253)
  store i32 %254, i32* %2, align 4
  br label %296

255:                                              ; preds = %230
  store i32 0, i32* %8, align 4
  br label %256

256:                                              ; preds = %275, %255
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* %9, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %278

260:                                              ; preds = %256
  %261 = load i32, i32* %11, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [2 x float*], [2 x float*]* %7, i64 0, i64 %262
  %264 = load float*, float** %263, align 8
  %265 = load i32, i32* %8, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %264, i64 %266
  %268 = load float, float* %267, align 4
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 7
  %271 = load float*, float** %270, align 8
  %272 = load i32, i32* %8, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float* %271, i64 %273
  store float %268, float* %274, align 4
  br label %275

275:                                              ; preds = %260
  %276 = load i32, i32* %8, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %8, align 4
  br label %256

278:                                              ; preds = %256
  %279 = load i32, i32* %11, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [2 x float*], [2 x float*]* %7, i64 0, i64 %280
  %282 = load float*, float** %281, align 8
  %283 = call i32 @av_free(float* %282)
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 9
  %286 = load i32*, i32** %285, align 8
  %287 = call i32 @av_rdft_end(i32* %286)
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 8
  %290 = load i32*, i32** %289, align 8
  %291 = call i32 @av_rdft_end(i32* %290)
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 8
  store i32* null, i32** %293, align 8
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 9
  store i32* null, i32** %295, align 8
  store i32 0, i32* %2, align 4
  br label %296

296:                                              ; preds = %278, %252, %224, %41
  %297 = load i32, i32* %2, align 4
  ret i32 %297
}

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, float) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local float* @lpf(float, float, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @invert(float*, i32) #1

declare dso_local i32 @av_free(float*) #1

declare dso_local i32 @fir_to_phase(%struct.TYPE_7__*, float**, i32*, i32*, float) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local float* @av_calloc(i32, i32) #1

declare dso_local i32 @av_rdft_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
