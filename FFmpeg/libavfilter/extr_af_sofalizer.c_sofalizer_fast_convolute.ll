; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sofalizer.c_sofalizer_fast_convolute.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sofalizer.c_sofalizer_fast_convolute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, float, i32**, i32**, %struct.TYPE_14__**, %struct.TYPE_14__**, %struct.TYPE_11__, %struct.TYPE_14__** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { float, float }
%struct.TYPE_12__ = type { i32*, i32*, float**, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32, i64* }

@AV_SAMPLE_FMT_FLTP = common dso_local global i64 0, align 8
@AV_SAMPLE_FMT_FLT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32, i32)* @sofalizer_fast_convolute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sofalizer_fast_convolute(%struct.TYPE_16__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_14__*, align 8
  %26 = alloca %struct.TYPE_14__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca float, align 4
  %32 = alloca %struct.TYPE_14__*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca float*, align 8
  %38 = alloca %struct.TYPE_14__*, align 8
  %39 = alloca float, align 4
  %40 = alloca float, align 4
  %41 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %9, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = bitcast i8* %45 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %10, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %11, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %12, align 8
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %13, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32* %59, i32** %14, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 10
  %62 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %62, i64 %64
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %15, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32* %72, i32** %16, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load float**, float*** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float*, float** %75, i64 %77
  %79 = load float*, float** %78, align 8
  store float* %79, float** %17, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 9
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %18, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AV_SAMPLE_FMT_FLTP, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %19, align 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = add nsw i32 1, %93
  store i32 %94, i32* %20, align 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %19, align 4
  %100 = mul nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %97, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to float*
  store float* %104, float** %21, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %22, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %23, align 4
  %111 = load i32, i32* %23, align 4
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %24, align 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 8
  %115 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %115, i64 %117
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  store %struct.TYPE_14__* %119, %struct.TYPE_14__** %25, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 7
  %122 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %122, i64 %124
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  store %struct.TYPE_14__* %126, %struct.TYPE_14__** %26, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 6
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  %133 = load i32*, i32** %132, align 8
  store i32* %133, i32** %27, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 5
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  store i32* %140, i32** %28, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %29, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %30, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = sitofp i32 %149 to float
  %151 = fdiv float 1.000000e+00, %150
  store float %151, float* %31, align 4
  %152 = load i32*, i32** %14, align 8
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %33, align 4
  %154 = load i32, i32* %19, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %4
  %157 = load i32, i32* %13, align 4
  %158 = load float*, float** %21, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds float, float* %158, i64 %159
  store float* %160, float** %21, align 8
  br label %161

161:                                              ; preds = %156, %4
  %162 = load i32, i32* %18, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @FFMIN(i32 %162, i32 %165)
  store i32 %166, i32* %34, align 4
  store i32 0, i32* %36, align 4
  br label %167

167:                                              ; preds = %191, %161
  %168 = load i32, i32* %36, align 4
  %169 = load i32, i32* %34, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %194

171:                                              ; preds = %167
  %172 = load float*, float** %17, align 8
  %173 = load i32, i32* %33, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %172, i64 %174
  %176 = load float, float* %175, align 4
  %177 = load float*, float** %21, align 8
  %178 = load i32, i32* %20, align 4
  %179 = load i32, i32* %36, align 4
  %180 = mul nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds float, float* %177, i64 %181
  store float %176, float* %182, align 4
  %183 = load float*, float** %17, align 8
  %184 = load i32, i32* %33, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %183, i64 %185
  store float 0.000000e+00, float* %186, align 4
  %187 = load i32, i32* %33, align 4
  %188 = add nsw i32 %187, 1
  %189 = load i32, i32* %24, align 4
  %190 = and i32 %188, %189
  store i32 %190, i32* %33, align 4
  br label %191

191:                                              ; preds = %171
  %192 = load i32, i32* %36, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %36, align 4
  br label %167

194:                                              ; preds = %167
  %195 = load i32, i32* %34, align 4
  store i32 %195, i32* %36, align 4
  br label %196

196:                                              ; preds = %209, %194
  %197 = load i32, i32* %36, align 4
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %212

202:                                              ; preds = %196
  %203 = load float*, float** %21, align 8
  %204 = load i32, i32* %20, align 4
  %205 = load i32, i32* %36, align 4
  %206 = mul nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %203, i64 %207
  store float 0.000000e+00, float* %208, align 4
  br label %209

209:                                              ; preds = %202
  %210 = load i32, i32* %36, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %36, align 4
  br label %196

212:                                              ; preds = %196
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %214 = load i32, i32* %30, align 4
  %215 = sext i32 %214 to i64
  %216 = mul i64 8, %215
  %217 = trunc i64 %216 to i32
  %218 = call i32 @memset(%struct.TYPE_14__* %213, i32 0, i32 %217)
  store i32 0, i32* %35, align 4
  br label %219

219:                                              ; preds = %440, %212
  %220 = load i32, i32* %35, align 4
  %221 = load i32, i32* %29, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %443

223:                                              ; preds = %219
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 2
  %226 = load i64*, i64** %225, align 8
  %227 = load i32, i32* %35, align 4
  %228 = load i32, i32* %19, align 4
  %229 = mul nsw i32 %227, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %226, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = inttoptr i64 %232 to float*
  store float* %233, float** %37, align 8
  %234 = load i32, i32* %35, align 4
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %234, %237
  br i1 %238, label %239, label %305

239:                                              ; preds = %223
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @AV_SAMPLE_FMT_FLT, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %277

245:                                              ; preds = %239
  store i32 0, i32* %36, align 4
  br label %246

246:                                              ; preds = %273, %245
  %247 = load i32, i32* %36, align 4
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %276

252:                                              ; preds = %246
  %253 = load float*, float** %37, align 8
  %254 = load i32, i32* %35, align 4
  %255 = load i32, i32* %36, align 4
  %256 = load i32, i32* %22, align 4
  %257 = mul nsw i32 %255, %256
  %258 = add nsw i32 %254, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds float, float* %253, i64 %259
  %261 = load float, float* %260, align 4
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 4
  %264 = load float, float* %263, align 8
  %265 = fmul float %261, %264
  %266 = load float*, float** %21, align 8
  %267 = load i32, i32* %36, align 4
  %268 = mul nsw i32 2, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds float, float* %266, i64 %269
  %271 = load float, float* %270, align 4
  %272 = fadd float %271, %265
  store float %272, float* %270, align 4
  br label %273

273:                                              ; preds = %252
  %274 = load i32, i32* %36, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %36, align 4
  br label %246

276:                                              ; preds = %246
  br label %304

277:                                              ; preds = %239
  store i32 0, i32* %36, align 4
  br label %278

278:                                              ; preds = %300, %277
  %279 = load i32, i32* %36, align 4
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = icmp slt i32 %279, %282
  br i1 %283, label %284, label %303

284:                                              ; preds = %278
  %285 = load float*, float** %37, align 8
  %286 = load i32, i32* %36, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %285, i64 %287
  %289 = load float, float* %288, align 4
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 4
  %292 = load float, float* %291, align 8
  %293 = fmul float %289, %292
  %294 = load float*, float** %21, align 8
  %295 = load i32, i32* %36, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds float, float* %294, i64 %296
  %298 = load float, float* %297, align 4
  %299 = fadd float %298, %293
  store float %299, float* %297, align 4
  br label %300

300:                                              ; preds = %284
  %301 = load i32, i32* %36, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %36, align 4
  br label %278

303:                                              ; preds = %278
  br label %304

304:                                              ; preds = %303, %276
  br label %440

305:                                              ; preds = %223
  %306 = load i32, i32* %35, align 4
  %307 = load i32, i32* %30, align 4
  %308 = mul nsw i32 %306, %307
  store i32 %308, i32* %13, align 4
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %310 = load i32, i32* %13, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i64 %311
  store %struct.TYPE_14__* %312, %struct.TYPE_14__** %32, align 8
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %314 = load i32, i32* %30, align 4
  %315 = sext i32 %314 to i64
  %316 = mul i64 8, %315
  %317 = trunc i64 %316 to i32
  %318 = call i32 @memset(%struct.TYPE_14__* %313, i32 0, i32 %317)
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @AV_SAMPLE_FMT_FLT, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %350

324:                                              ; preds = %305
  store i32 0, i32* %36, align 4
  br label %325

325:                                              ; preds = %346, %324
  %326 = load i32, i32* %36, align 4
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 8
  %330 = icmp slt i32 %326, %329
  br i1 %330, label %331, label %349

331:                                              ; preds = %325
  %332 = load float*, float** %37, align 8
  %333 = load i32, i32* %36, align 4
  %334 = load i32, i32* %22, align 4
  %335 = mul nsw i32 %333, %334
  %336 = load i32, i32* %35, align 4
  %337 = add nsw i32 %335, %336
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds float, float* %332, i64 %338
  %340 = load float, float* %339, align 4
  %341 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %342 = load i32, i32* %36, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 0
  store float %340, float* %345, align 4
  br label %346

346:                                              ; preds = %331
  %347 = load i32, i32* %36, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %36, align 4
  br label %325

349:                                              ; preds = %325
  br label %372

350:                                              ; preds = %305
  store i32 0, i32* %36, align 4
  br label %351

351:                                              ; preds = %368, %350
  %352 = load i32, i32* %36, align 4
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = icmp slt i32 %352, %355
  br i1 %356, label %357, label %371

357:                                              ; preds = %351
  %358 = load float*, float** %37, align 8
  %359 = load i32, i32* %36, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds float, float* %358, i64 %360
  %362 = load float, float* %361, align 4
  %363 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %364 = load i32, i32* %36, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 0
  store float %362, float* %367, align 4
  br label %368

368:                                              ; preds = %357
  %369 = load i32, i32* %36, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %36, align 4
  br label %351

371:                                              ; preds = %351
  br label %372

372:                                              ; preds = %371, %349
  %373 = load i32*, i32** %28, align 8
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %375 = call i32 @av_fft_permute(i32* %373, %struct.TYPE_14__* %374)
  %376 = load i32*, i32** %28, align 8
  %377 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %378 = call i32 @av_fft_calc(i32* %376, %struct.TYPE_14__* %377)
  store i32 0, i32* %36, align 4
  br label %379

379:                                              ; preds = %436, %372
  %380 = load i32, i32* %36, align 4
  %381 = load i32, i32* %30, align 4
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %383, label %439

383:                                              ; preds = %379
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %385 = load i32, i32* %36, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i64 %386
  store %struct.TYPE_14__* %387, %struct.TYPE_14__** %38, align 8
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %389 = load i32, i32* %36, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %391, i32 0, i32 0
  %393 = load float, float* %392, align 4
  store float %393, float* %39, align 4
  %394 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %395 = load i32, i32* %36, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %397, i32 0, i32 1
  %399 = load float, float* %398, align 4
  store float %399, float* %40, align 4
  %400 = load float, float* %39, align 4
  %401 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %402 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %401, i32 0, i32 0
  %403 = load float, float* %402, align 4
  %404 = fmul float %400, %403
  %405 = load float, float* %40, align 4
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 1
  %408 = load float, float* %407, align 4
  %409 = fmul float %405, %408
  %410 = fsub float %404, %409
  %411 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %412 = load i32, i32* %36, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i32 0, i32 0
  %416 = load float, float* %415, align 4
  %417 = fadd float %416, %410
  store float %417, float* %415, align 4
  %418 = load float, float* %39, align 4
  %419 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %420 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %419, i32 0, i32 1
  %421 = load float, float* %420, align 4
  %422 = fmul float %418, %421
  %423 = load float, float* %40, align 4
  %424 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %425 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %424, i32 0, i32 0
  %426 = load float, float* %425, align 4
  %427 = fmul float %423, %426
  %428 = fadd float %422, %427
  %429 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %430 = load i32, i32* %36, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %429, i64 %431
  %433 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %432, i32 0, i32 1
  %434 = load float, float* %433, align 4
  %435 = fadd float %434, %428
  store float %435, float* %433, align 4
  br label %436

436:                                              ; preds = %383
  %437 = load i32, i32* %36, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %36, align 4
  br label %379

439:                                              ; preds = %379
  br label %440

440:                                              ; preds = %439, %304
  %441 = load i32, i32* %35, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %35, align 4
  br label %219

443:                                              ; preds = %219
  %444 = load i32*, i32** %27, align 8
  %445 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %446 = call i32 @av_fft_permute(i32* %444, %struct.TYPE_14__* %445)
  %447 = load i32*, i32** %27, align 8
  %448 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %449 = call i32 @av_fft_calc(i32* %447, %struct.TYPE_14__* %448)
  store i32 0, i32* %36, align 4
  br label %450

450:                                              ; preds = %473, %443
  %451 = load i32, i32* %36, align 4
  %452 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %453 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 8
  %455 = icmp slt i32 %451, %454
  br i1 %455, label %456, label %476

456:                                              ; preds = %450
  %457 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %458 = load i32, i32* %36, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %457, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %460, i32 0, i32 0
  %462 = load float, float* %461, align 4
  %463 = load float, float* %31, align 4
  %464 = fmul float %462, %463
  %465 = load float*, float** %21, align 8
  %466 = load i32, i32* %20, align 4
  %467 = load i32, i32* %36, align 4
  %468 = mul nsw i32 %466, %467
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds float, float* %465, i64 %469
  %471 = load float, float* %470, align 4
  %472 = fadd float %471, %464
  store float %472, float* %470, align 4
  br label %473

473:                                              ; preds = %456
  %474 = load i32, i32* %36, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %36, align 4
  br label %450

476:                                              ; preds = %450
  store i32 0, i32* %36, align 4
  br label %477

477:                                              ; preds = %506, %476
  %478 = load i32, i32* %36, align 4
  %479 = load i32, i32* %18, align 4
  %480 = sub nsw i32 %479, 1
  %481 = icmp slt i32 %478, %480
  br i1 %481, label %482, label %509

482:                                              ; preds = %477
  %483 = load i32, i32* %33, align 4
  %484 = load i32, i32* %36, align 4
  %485 = add nsw i32 %483, %484
  %486 = load i32, i32* %24, align 4
  %487 = and i32 %485, %486
  store i32 %487, i32* %41, align 4
  %488 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %489 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %490 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 8
  %492 = load i32, i32* %36, align 4
  %493 = add nsw i32 %491, %492
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %488, i64 %494
  %496 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %495, i32 0, i32 0
  %497 = load float, float* %496, align 4
  %498 = load float, float* %31, align 4
  %499 = fmul float %497, %498
  %500 = load float*, float** %17, align 8
  %501 = load i32, i32* %41, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds float, float* %500, i64 %502
  %504 = load float, float* %503, align 4
  %505 = fadd float %504, %499
  store float %505, float* %503, align 4
  br label %506

506:                                              ; preds = %482
  %507 = load i32, i32* %36, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %36, align 4
  br label %477

509:                                              ; preds = %477
  store i32 0, i32* %35, align 4
  br label %510

510:                                              ; preds = %532, %509
  %511 = load i32, i32* %35, align 4
  %512 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %513 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %512, i32 0, i32 1
  %514 = load i32, i32* %513, align 8
  %515 = icmp slt i32 %511, %514
  br i1 %515, label %516, label %535

516:                                              ; preds = %510
  %517 = load float*, float** %21, align 8
  %518 = load i32, i32* %35, align 4
  %519 = load i32, i32* %20, align 4
  %520 = mul nsw i32 %518, %519
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds float, float* %517, i64 %521
  %523 = load float, float* %522, align 4
  %524 = call i32 @fabsf(float %523)
  %525 = icmp sgt i32 %524, 1
  br i1 %525, label %526, label %531

526:                                              ; preds = %516
  %527 = load i32*, i32** %16, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 0
  %529 = load i32, i32* %528, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %528, align 4
  br label %531

531:                                              ; preds = %526, %516
  br label %532

532:                                              ; preds = %531
  %533 = load i32, i32* %35, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %35, align 4
  br label %510

535:                                              ; preds = %510
  %536 = load i32, i32* %33, align 4
  %537 = load i32*, i32** %14, align 8
  store i32 %536, i32* %537, align 4
  ret i32 0
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @av_fft_permute(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @av_fft_calc(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @fabsf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
