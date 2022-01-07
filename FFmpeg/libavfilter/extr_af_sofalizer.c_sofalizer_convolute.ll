; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sofalizer.c_sofalizer_convolute.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sofalizer.c_sofalizer_convolute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, float, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 (float*, float*, i32)* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32*, i32**, float**, i32*, float**, float**, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i64* }

@AV_SAMPLE_FMT_FLTP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32, i32)* @sofalizer_convolute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sofalizer_convolute(%struct.TYPE_13__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [16 x float*], align 16
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca float*, align 8
  %35 = alloca float*, align 8
  %36 = alloca float*, align 8
  %37 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %9, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = bitcast i8* %41 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %10, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 7
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %11, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %12, align 8
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32* %55, i32** %14, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %15, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load float**, float*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float*, float** %65, i64 %67
  %69 = load float*, float** %68, align 8
  store float* %69, float** %16, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32* %75, i32** %17, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 4
  %78 = load float**, float*** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float*, float** %78, i64 %80
  %82 = load float*, float** %81, align 8
  store float* %82, float** %18, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 5
  %85 = load float**, float*** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float*, float** %85, i64 %87
  %89 = load float*, float** %88, align 8
  store float* %89, float** %19, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %20, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %21, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @AV_SAMPLE_FMT_FLTP, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %22, align 4
  %104 = load i32, i32* %22, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = add nsw i32 1, %107
  store i32 %108, i32* %23, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to float*
  store float* %114, float** %24, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 2
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %22, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %117, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to float*
  store float* %124, float** %25, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %26, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %27, align 4
  %131 = load i32, i32* %27, align 4
  %132 = sub nsw i32 %131, 1
  store i32 %132, i32* %28, align 4
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %30, align 4
  %135 = load i32, i32* %22, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %4
  %138 = load i32, i32* %13, align 4
  %139 = load float*, float** %25, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds float, float* %139, i64 %140
  store float* %141, float** %25, align 8
  br label %142

142:                                              ; preds = %137, %4
  store i32 0, i32* %33, align 4
  br label %143

143:                                              ; preds = %157, %142
  %144 = load i32, i32* %33, align 4
  %145 = load i32, i32* %26, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %143
  %148 = load float*, float** %18, align 8
  %149 = load i32, i32* %33, align 4
  %150 = load i32, i32* %27, align 4
  %151 = mul nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %148, i64 %152
  %154 = load i32, i32* %33, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [16 x float*], [16 x float*]* %29, i64 0, i64 %155
  store float* %153, float** %156, align 8
  br label %157

157:                                              ; preds = %147
  %158 = load i32, i32* %33, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %33, align 4
  br label %143

160:                                              ; preds = %143
  store i32 0, i32* %32, align 4
  br label %161

161:                                              ; preds = %373, %160
  %162 = load i32, i32* %32, align 4
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %376

167:                                              ; preds = %161
  %168 = load float*, float** %16, align 8
  store float* %168, float** %34, align 8
  %169 = load float*, float** %25, align 8
  %170 = getelementptr inbounds float, float* %169, i64 0
  store float 0.000000e+00, float* %170, align 4
  %171 = load i32, i32* %22, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %203

173:                                              ; preds = %167
  store i32 0, i32* %33, align 4
  br label %174

174:                                              ; preds = %199, %173
  %175 = load i32, i32* %33, align 4
  %176 = load i32, i32* %26, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %202

178:                                              ; preds = %174
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 2
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %33, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to float*
  store float* %186, float** %35, align 8
  %187 = load float*, float** %35, align 8
  %188 = load i32, i32* %32, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  %191 = load float, float* %190, align 4
  %192 = load i32, i32* %33, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [16 x float*], [16 x float*]* %29, i64 0, i64 %193
  %195 = load float*, float** %194, align 8
  %196 = load i32, i32* %30, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %195, i64 %197
  store float %191, float* %198, align 4
  br label %199

199:                                              ; preds = %178
  %200 = load i32, i32* %33, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %33, align 4
  br label %174

202:                                              ; preds = %174
  br label %225

203:                                              ; preds = %167
  store i32 0, i32* %33, align 4
  br label %204

204:                                              ; preds = %221, %203
  %205 = load i32, i32* %33, align 4
  %206 = load i32, i32* %26, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %224

208:                                              ; preds = %204
  %209 = load float*, float** %24, align 8
  %210 = load i32, i32* %33, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %209, i64 %211
  %213 = load float, float* %212, align 4
  %214 = load i32, i32* %33, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [16 x float*], [16 x float*]* %29, i64 0, i64 %215
  %217 = load float*, float** %216, align 8
  %218 = load i32, i32* %30, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %217, i64 %219
  store float %213, float* %220, align 4
  br label %221

221:                                              ; preds = %208
  %222 = load i32, i32* %33, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %33, align 4
  br label %204

224:                                              ; preds = %204
  br label %225

225:                                              ; preds = %224, %202
  store i32 0, i32* %33, align 4
  br label %226

226:                                              ; preds = %346, %225
  %227 = load i32, i32* %33, align 4
  %228 = load i32, i32* %26, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %349

230:                                              ; preds = %226
  %231 = load i32, i32* %33, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [16 x float*], [16 x float*]* %29, i64 0, i64 %232
  %234 = load float*, float** %233, align 8
  store float* %234, float** %36, align 8
  %235 = load i32, i32* %33, align 4
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = icmp eq i32 %235, %238
  br i1 %239, label %240, label %263

240:                                              ; preds = %230
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [16 x float*], [16 x float*]* %29, i64 0, i64 %244
  %246 = load float*, float** %245, align 8
  %247 = load i32, i32* %30, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds float, float* %246, i64 %248
  %250 = load float, float* %249, align 4
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 3
  %253 = load float, float* %252, align 4
  %254 = fmul float %250, %253
  %255 = load float*, float** %25, align 8
  %256 = getelementptr inbounds float, float* %255, i64 0
  %257 = load float, float* %256, align 4
  %258 = fadd float %257, %254
  store float %258, float* %256, align 4
  %259 = load i32, i32* %21, align 4
  %260 = load float*, float** %34, align 8
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds float, float* %260, i64 %261
  store float* %262, float** %34, align 8
  br label %346

263:                                              ; preds = %230
  %264 = load i32, i32* %30, align 4
  %265 = load i32*, i32** %15, align 8
  %266 = load i32, i32* %33, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = sub nsw i32 %264, %269
  %271 = load i32, i32* %20, align 4
  %272 = sub nsw i32 %271, 1
  %273 = sub nsw i32 %270, %272
  %274 = load i32, i32* %27, align 4
  %275 = add nsw i32 %273, %274
  %276 = load i32, i32* %28, align 4
  %277 = and i32 %275, %276
  store i32 %277, i32* %31, align 4
  %278 = load i32, i32* %31, align 4
  %279 = load i32, i32* %20, align 4
  %280 = add nsw i32 %278, %279
  %281 = load i32, i32* %27, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %294

283:                                              ; preds = %263
  %284 = load float*, float** %19, align 8
  %285 = load float*, float** %36, align 8
  %286 = load i32, i32* %31, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %285, i64 %287
  %289 = load i32, i32* %20, align 4
  %290 = sext i32 %289 to i64
  %291 = mul i64 %290, 4
  %292 = trunc i64 %291 to i32
  %293 = call i32 @memmove(float* %284, float* %288, i32 %292)
  br label %326

294:                                              ; preds = %263
  %295 = load i32, i32* %21, align 4
  %296 = load i32, i32* %31, align 4
  %297 = load i32, i32* %20, align 4
  %298 = srem i32 %296, %297
  %299 = sub nsw i32 %295, %298
  %300 = load i32, i32* %27, align 4
  %301 = load i32, i32* %31, align 4
  %302 = sub nsw i32 %300, %301
  %303 = call i32 @FFMIN(i32 %299, i32 %302)
  store i32 %303, i32* %37, align 4
  %304 = load float*, float** %19, align 8
  %305 = load float*, float** %36, align 8
  %306 = load i32, i32* %31, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds float, float* %305, i64 %307
  %309 = load i32, i32* %37, align 4
  %310 = sext i32 %309 to i64
  %311 = mul i64 %310, 4
  %312 = trunc i64 %311 to i32
  %313 = call i32 @memmove(float* %304, float* %308, i32 %312)
  %314 = load float*, float** %19, align 8
  %315 = load i32, i32* %37, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds float, float* %314, i64 %316
  %318 = load float*, float** %36, align 8
  %319 = load i32, i32* %21, align 4
  %320 = load i32, i32* %37, align 4
  %321 = sub nsw i32 %319, %320
  %322 = sext i32 %321 to i64
  %323 = mul i64 %322, 4
  %324 = trunc i64 %323 to i32
  %325 = call i32 @memmove(float* %317, float* %318, i32 %324)
  br label %326

326:                                              ; preds = %294, %283
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 4
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 0
  %331 = load i64 (float*, float*, i32)*, i64 (float*, float*, i32)** %330, align 8
  %332 = load float*, float** %34, align 8
  %333 = load float*, float** %19, align 8
  %334 = load i32, i32* %20, align 4
  %335 = call i32 @FFALIGN(i32 %334, i32 32)
  %336 = call i64 %331(float* %332, float* %333, i32 %335)
  %337 = sitofp i64 %336 to float
  %338 = load float*, float** %25, align 8
  %339 = getelementptr inbounds float, float* %338, i64 0
  %340 = load float, float* %339, align 4
  %341 = fadd float %340, %337
  store float %341, float* %339, align 4
  %342 = load i32, i32* %21, align 4
  %343 = load float*, float** %34, align 8
  %344 = sext i32 %342 to i64
  %345 = getelementptr inbounds float, float* %343, i64 %344
  store float* %345, float** %34, align 8
  br label %346

346:                                              ; preds = %326, %240
  %347 = load i32, i32* %33, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %33, align 4
  br label %226

349:                                              ; preds = %226
  %350 = load float*, float** %25, align 8
  %351 = getelementptr inbounds float, float* %350, i64 0
  %352 = load float, float* %351, align 4
  %353 = call i32 @fabsf(float %352)
  %354 = icmp sgt i32 %353, 1
  br i1 %354, label %355, label %360

355:                                              ; preds = %349
  %356 = load i32*, i32** %17, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 0
  %358 = load i32, i32* %357, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %357, align 4
  br label %360

360:                                              ; preds = %355, %349
  %361 = load i32, i32* %23, align 4
  %362 = load float*, float** %25, align 8
  %363 = sext i32 %361 to i64
  %364 = getelementptr inbounds float, float* %362, i64 %363
  store float* %364, float** %25, align 8
  %365 = load i32, i32* %26, align 4
  %366 = load float*, float** %24, align 8
  %367 = sext i32 %365 to i64
  %368 = getelementptr inbounds float, float* %366, i64 %367
  store float* %368, float** %24, align 8
  %369 = load i32, i32* %30, align 4
  %370 = add nsw i32 %369, 1
  %371 = load i32, i32* %28, align 4
  %372 = and i32 %370, %371
  store i32 %372, i32* %30, align 4
  br label %373

373:                                              ; preds = %360
  %374 = load i32, i32* %32, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %32, align 4
  br label %161

376:                                              ; preds = %161
  %377 = load i32, i32* %30, align 4
  %378 = load i32*, i32** %14, align 8
  store i32 %377, i32* %378, align 4
  ret i32 0
}

declare dso_local i32 @memmove(float*, float*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @fabsf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
