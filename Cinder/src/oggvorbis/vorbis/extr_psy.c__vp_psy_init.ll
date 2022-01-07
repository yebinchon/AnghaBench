; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c__vp_psy_init.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c__vp_psy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float, i32, i32, i64, float*, i32*, i64*, i32, i64, i32, i32**, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64, float, i64, float, i32**, i32, i32, i32 }
%struct.TYPE_9__ = type { float }

@MAX_ATH = common dso_local global i32 0, align 4
@ATH = common dso_local global float* null, align 8
@P_NOISECURVES = common dso_local global i32 0, align 4
@P_BANDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_vp_psy_init(%struct.TYPE_8__* %0, %struct.TYPE_10__* %1, %struct.TYPE_9__* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i64 -99, i64* %13, align 8
  store i64 1, i64* %14, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = call i32 @memset(%struct.TYPE_8__* %23, i32 0, i32 96)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store float %27, float* %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load float, float* %31, align 4
  %33 = fmul float %32, 8.000000e+00
  %34 = call i32 @log(float %33)
  %35 = call i32 @log(float 2.000000e+00)
  %36 = sdiv i32 %34, %35
  %37 = call i32 @rint(i32 %36)
  %38 = sub nsw i32 %37, 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i64, i64* %10, align 8
  %42 = sitofp i64 %41 to float
  %43 = fmul float 2.500000e-01, %42
  %44 = fpext float %43 to double
  %45 = fmul double %44, 5.000000e-01
  %46 = load i32, i32* %9, align 4
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %45, %47
  %49 = fptosi double %48 to i64
  %50 = call i32 @toOC(i64 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  %55 = shl i32 1, %54
  %56 = mul nsw i32 %50, %55
  %57 = sitofp i32 %56 to float
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load float, float* %59, align 4
  %61 = fsub float %57, %60
  %62 = fptosi float %61 to i32
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sitofp i32 %65 to float
  %67 = fadd float %66, 2.500000e-01
  %68 = load i64, i64* %10, align 8
  %69 = sitofp i64 %68 to float
  %70 = fmul float %67, %69
  %71 = fpext float %70 to double
  %72 = fmul double %71, 5.000000e-01
  %73 = load i32, i32* %9, align 4
  %74 = sitofp i32 %73 to double
  %75 = fdiv double %72, %74
  %76 = fptosi double %75 to i64
  %77 = call i32 @toOC(i64 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  %82 = shl i32 1, %81
  %83 = mul nsw i32 %77, %82
  %84 = sitofp i32 %83 to float
  %85 = fadd float %84, 5.000000e-01
  %86 = fptosi float %85 to i64
  store i64 %86, i64* %15, align 8
  %87 = load i64, i64* %15, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = sub nsw i64 %87, %91
  %93 = add nsw i64 %92, 1
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i8* @_ogg_malloc(i32 %99)
  %101 = bitcast i8* %100 to float*
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 4
  store float* %101, float** %103, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 4
  %107 = trunc i64 %106 to i32
  %108 = call i8* @_ogg_malloc(i32 %107)
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 5
  store i32* %109, i32** %111, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 8
  %115 = trunc i64 %114 to i32
  %116 = call i8* @_ogg_malloc(i32 %115)
  %117 = bitcast i8* %116 to i64*
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 6
  store i64* %117, i64** %119, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 11
  store %struct.TYPE_10__* %120, %struct.TYPE_10__** %122, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 7
  store i32 %123, i32* %125, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 8
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 9
  store i32 1, i32* %130, align 8
  %131 = load i64, i64* %10, align 8
  %132 = icmp slt i64 %131, 26000
  br i1 %132, label %133, label %136

133:                                              ; preds = %5
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 9
  store i32 0, i32* %135, align 8
  br label %150

136:                                              ; preds = %5
  %137 = load i64, i64* %10, align 8
  %138 = icmp slt i64 %137, 38000
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 9
  store i32 0, i32* %141, align 8
  br label %149

142:                                              ; preds = %136
  %143 = load i64, i64* %10, align 8
  %144 = icmp sgt i64 %143, 46000
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 9
  store i32 1, i32* %147, align 8
  br label %148

148:                                              ; preds = %145, %142
  br label %149

149:                                              ; preds = %148, %139
  br label %150

150:                                              ; preds = %149, %133
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %151

151:                                              ; preds = %225, %150
  %152 = load i64, i64* %11, align 8
  %153 = load i32, i32* @MAX_ATH, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = icmp slt i64 %152, %155
  br i1 %156, label %157, label %228

157:                                              ; preds = %151
  %158 = load i64, i64* %11, align 8
  %159 = add nsw i64 %158, 1
  %160 = sitofp i64 %159 to double
  %161 = fmul double %160, 1.250000e-01
  %162 = fsub double %161, 2.000000e+00
  %163 = fptosi double %162 to i64
  %164 = call i32 @fromOC(i64 %163)
  %165 = mul nsw i32 %164, 2
  %166 = load i32, i32* %9, align 4
  %167 = mul nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = load i64, i64* %10, align 8
  %170 = sdiv i64 %168, %169
  %171 = trunc i64 %170 to i32
  %172 = call i32 @rint(i32 %171)
  store i32 %172, i32* %16, align 4
  %173 = load float*, float** @ATH, align 8
  %174 = load i64, i64* %11, align 8
  %175 = getelementptr inbounds float, float* %173, i64 %174
  %176 = load float, float* %175, align 4
  store float %176, float* %17, align 4
  %177 = load i64, i64* %12, align 8
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = icmp slt i64 %177, %179
  br i1 %180, label %181, label %224

181:                                              ; preds = %157
  %182 = load float*, float** @ATH, align 8
  %183 = load i64, i64* %11, align 8
  %184 = add nsw i64 %183, 1
  %185 = getelementptr inbounds float, float* %182, i64 %184
  %186 = load float, float* %185, align 4
  %187 = load float, float* %17, align 4
  %188 = fsub float %186, %187
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* %12, align 8
  %192 = sub nsw i64 %190, %191
  %193 = sitofp i64 %192 to float
  %194 = fdiv float %188, %193
  store float %194, float* %18, align 4
  br label %195

195:                                              ; preds = %220, %181
  %196 = load i64, i64* %12, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = icmp slt i64 %196, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load i64, i64* %12, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = icmp slt i64 %201, %203
  br label %205

205:                                              ; preds = %200, %195
  %206 = phi i1 [ false, %195 ], [ %204, %200 ]
  br i1 %206, label %207, label %223

207:                                              ; preds = %205
  %208 = load float, float* %17, align 4
  %209 = fpext float %208 to double
  %210 = fadd double %209, 1.000000e+02
  %211 = fptrunc double %210 to float
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 4
  %214 = load float*, float** %213, align 8
  %215 = load i64, i64* %12, align 8
  %216 = getelementptr inbounds float, float* %214, i64 %215
  store float %211, float* %216, align 4
  %217 = load float, float* %18, align 4
  %218 = load float, float* %17, align 4
  %219 = fadd float %218, %217
  store float %219, float* %17, align 4
  br label %220

220:                                              ; preds = %207
  %221 = load i64, i64* %12, align 8
  %222 = add nsw i64 %221, 1
  store i64 %222, i64* %12, align 8
  br label %195

223:                                              ; preds = %205
  br label %224

224:                                              ; preds = %223, %157
  br label %225

225:                                              ; preds = %224
  %226 = load i64, i64* %11, align 8
  %227 = add nsw i64 %226, 1
  store i64 %227, i64* %11, align 8
  br label %151

228:                                              ; preds = %151
  br label %229

229:                                              ; preds = %247, %228
  %230 = load i64, i64* %12, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = icmp slt i64 %230, %232
  br i1 %233, label %234, label %250

234:                                              ; preds = %229
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 4
  %237 = load float*, float** %236, align 8
  %238 = load i64, i64* %12, align 8
  %239 = sub nsw i64 %238, 1
  %240 = getelementptr inbounds float, float* %237, i64 %239
  %241 = load float, float* %240, align 4
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 4
  %244 = load float*, float** %243, align 8
  %245 = load i64, i64* %12, align 8
  %246 = getelementptr inbounds float, float* %244, i64 %245
  store float %241, float* %246, align 4
  br label %247

247:                                              ; preds = %234
  %248 = load i64, i64* %12, align 8
  %249 = add nsw i64 %248, 1
  store i64 %249, i64* %12, align 8
  br label %229

250:                                              ; preds = %229
  store i64 0, i64* %11, align 8
  br label %251

251:                                              ; preds = %343, %250
  %252 = load i64, i64* %11, align 8
  %253 = load i32, i32* %9, align 4
  %254 = sext i32 %253 to i64
  %255 = icmp slt i64 %252, %254
  br i1 %255, label %256, label %346

256:                                              ; preds = %251
  %257 = load i64, i64* %10, align 8
  %258 = load i32, i32* %9, align 4
  %259 = mul nsw i32 2, %258
  %260 = sext i32 %259 to i64
  %261 = sdiv i64 %257, %260
  %262 = load i64, i64* %11, align 8
  %263 = mul nsw i64 %261, %262
  %264 = call float @toBARK(i64 %263)
  store float %264, float* %19, align 4
  br label %265

265:                                              ; preds = %291, %256
  %266 = load i64, i64* %13, align 8
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %266, %269
  %271 = load i64, i64* %11, align 8
  %272 = icmp slt i64 %270, %271
  br i1 %272, label %273, label %288

273:                                              ; preds = %265
  %274 = load i64, i64* %10, align 8
  %275 = load i32, i32* %9, align 4
  %276 = mul nsw i32 2, %275
  %277 = sext i32 %276 to i64
  %278 = sdiv i64 %274, %277
  %279 = load i64, i64* %13, align 8
  %280 = mul nsw i64 %278, %279
  %281 = call float @toBARK(i64 %280)
  %282 = load float, float* %19, align 4
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 1
  %285 = load float, float* %284, align 8
  %286 = fsub float %282, %285
  %287 = fcmp olt float %281, %286
  br label %288

288:                                              ; preds = %273, %265
  %289 = phi i1 [ false, %265 ], [ %287, %273 ]
  br i1 %289, label %290, label %294

290:                                              ; preds = %288
  br label %291

291:                                              ; preds = %290
  %292 = load i64, i64* %13, align 8
  %293 = add nsw i64 %292, 1
  store i64 %293, i64* %13, align 8
  br label %265

294:                                              ; preds = %288
  br label %295

295:                                              ; preds = %328, %294
  %296 = load i64, i64* %14, align 8
  %297 = load i32, i32* %9, align 4
  %298 = sext i32 %297 to i64
  %299 = icmp sle i64 %296, %298
  br i1 %299, label %300, label %325

300:                                              ; preds = %295
  %301 = load i64, i64* %14, align 8
  %302 = load i64, i64* %11, align 8
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = add nsw i64 %302, %305
  %307 = icmp slt i64 %301, %306
  br i1 %307, label %323, label %308

308:                                              ; preds = %300
  %309 = load i64, i64* %10, align 8
  %310 = load i32, i32* %9, align 4
  %311 = mul nsw i32 2, %310
  %312 = sext i32 %311 to i64
  %313 = sdiv i64 %309, %312
  %314 = load i64, i64* %14, align 8
  %315 = mul nsw i64 %313, %314
  %316 = call float @toBARK(i64 %315)
  %317 = load float, float* %19, align 4
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 3
  %320 = load float, float* %319, align 8
  %321 = fadd float %317, %320
  %322 = fcmp olt float %316, %321
  br label %323

323:                                              ; preds = %308, %300
  %324 = phi i1 [ true, %300 ], [ %322, %308 ]
  br label %325

325:                                              ; preds = %323, %295
  %326 = phi i1 [ false, %295 ], [ %324, %323 ]
  br i1 %326, label %327, label %331

327:                                              ; preds = %325
  br label %328

328:                                              ; preds = %327
  %329 = load i64, i64* %14, align 8
  %330 = add nsw i64 %329, 1
  store i64 %330, i64* %14, align 8
  br label %295

331:                                              ; preds = %325
  %332 = load i64, i64* %13, align 8
  %333 = sub nsw i64 %332, 1
  %334 = shl i64 %333, 16
  %335 = load i64, i64* %14, align 8
  %336 = sub nsw i64 %335, 1
  %337 = add nsw i64 %334, %336
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 6
  %340 = load i64*, i64** %339, align 8
  %341 = load i64, i64* %11, align 8
  %342 = getelementptr inbounds i64, i64* %340, i64 %341
  store i64 %337, i64* %342, align 8
  br label %343

343:                                              ; preds = %331
  %344 = load i64, i64* %11, align 8
  %345 = add nsw i64 %344, 1
  store i64 %345, i64* %11, align 8
  br label %251

346:                                              ; preds = %251
  store i64 0, i64* %11, align 8
  br label %347

347:                                              ; preds = %380, %346
  %348 = load i64, i64* %11, align 8
  %349 = load i32, i32* %9, align 4
  %350 = sext i32 %349 to i64
  %351 = icmp slt i64 %348, %350
  br i1 %351, label %352, label %383

352:                                              ; preds = %347
  %353 = load i64, i64* %11, align 8
  %354 = sitofp i64 %353 to float
  %355 = fadd float %354, 2.500000e-01
  %356 = fpext float %355 to double
  %357 = fmul double %356, 5.000000e-01
  %358 = load i64, i64* %10, align 8
  %359 = sitofp i64 %358 to double
  %360 = fmul double %357, %359
  %361 = load i32, i32* %9, align 4
  %362 = sitofp i32 %361 to double
  %363 = fdiv double %360, %362
  %364 = fptosi double %363 to i64
  %365 = call i32 @toOC(i64 %364)
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %368, 1
  %370 = shl i32 1, %369
  %371 = mul nsw i32 %365, %370
  %372 = sitofp i32 %371 to float
  %373 = fadd float %372, 5.000000e-01
  %374 = fptosi float %373 to i32
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 5
  %377 = load i32*, i32** %376, align 8
  %378 = load i64, i64* %11, align 8
  %379 = getelementptr inbounds i32, i32* %377, i64 %378
  store i32 %374, i32* %379, align 4
  br label %380

380:                                              ; preds = %352
  %381 = load i64, i64* %11, align 8
  %382 = add nsw i64 %381, 1
  store i64 %382, i64* %11, align 8
  br label %347

383:                                              ; preds = %347
  %384 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 7
  %386 = load i32, i32* %385, align 8
  %387 = load i64, i64* %10, align 8
  %388 = sitofp i64 %387 to double
  %389 = fmul double %388, 5.000000e-01
  %390 = load i32, i32* %9, align 4
  %391 = sitofp i32 %390 to double
  %392 = fdiv double %389, %391
  %393 = fptosi double %392 to i64
  %394 = load i32, i32* %9, align 4
  %395 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i32 0, i32 6
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 5
  %400 = load i32, i32* %399, align 8
  %401 = call i32 @setup_tone_curves(i32 %386, i64 %393, i32 %394, i32 %397, i32 %400)
  %402 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i32 0, i32 12
  store i32 %401, i32* %403, align 8
  %404 = load i32, i32* @P_NOISECURVES, align 4
  %405 = sext i32 %404 to i64
  %406 = mul i64 %405, 8
  %407 = trunc i64 %406 to i32
  %408 = call i8* @_ogg_malloc(i32 %407)
  %409 = bitcast i8* %408 to i32**
  %410 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i32 0, i32 10
  store i32** %409, i32*** %411, align 8
  store i64 0, i64* %11, align 8
  br label %412

412:                                              ; preds = %429, %383
  %413 = load i64, i64* %11, align 8
  %414 = load i32, i32* @P_NOISECURVES, align 4
  %415 = sext i32 %414 to i64
  %416 = icmp slt i64 %413, %415
  br i1 %416, label %417, label %432

417:                                              ; preds = %412
  %418 = load i32, i32* %9, align 4
  %419 = sext i32 %418 to i64
  %420 = mul i64 %419, 4
  %421 = trunc i64 %420 to i32
  %422 = call i8* @_ogg_malloc(i32 %421)
  %423 = bitcast i8* %422 to i32*
  %424 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %425 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i32 0, i32 10
  %426 = load i32**, i32*** %425, align 8
  %427 = load i64, i64* %11, align 8
  %428 = getelementptr inbounds i32*, i32** %426, i64 %427
  store i32* %423, i32** %428, align 8
  br label %429

429:                                              ; preds = %417
  %430 = load i64, i64* %11, align 8
  %431 = add nsw i64 %430, 1
  store i64 %431, i64* %11, align 8
  br label %412

432:                                              ; preds = %412
  store i64 0, i64* %11, align 8
  br label %433

433:                                              ; preds = %528, %432
  %434 = load i64, i64* %11, align 8
  %435 = load i32, i32* %9, align 4
  %436 = sext i32 %435 to i64
  %437 = icmp slt i64 %434, %436
  br i1 %437, label %438, label %531

438:                                              ; preds = %433
  %439 = load i64, i64* %11, align 8
  %440 = sitofp i64 %439 to double
  %441 = fadd double %440, 5.000000e-01
  %442 = load i64, i64* %10, align 8
  %443 = sitofp i64 %442 to double
  %444 = fmul double %441, %443
  %445 = load i32, i32* %9, align 4
  %446 = sitofp i32 %445 to double
  %447 = fmul double 2.000000e+00, %446
  %448 = fdiv double %444, %447
  %449 = fptosi double %448 to i64
  %450 = call i32 @toOC(i64 %449)
  %451 = sitofp i32 %450 to double
  %452 = fmul double %451, 2.000000e+00
  %453 = fptrunc double %452 to float
  store float %453, float* %20, align 4
  %454 = load float, float* %20, align 4
  %455 = fcmp olt float %454, 0.000000e+00
  br i1 %455, label %456, label %457

456:                                              ; preds = %438
  store float 0.000000e+00, float* %20, align 4
  br label %457

457:                                              ; preds = %456, %438
  %458 = load float, float* %20, align 4
  %459 = load i32, i32* @P_BANDS, align 4
  %460 = sub nsw i32 %459, 1
  %461 = sitofp i32 %460 to float
  %462 = fcmp oge float %458, %461
  br i1 %462, label %463, label %467

463:                                              ; preds = %457
  %464 = load i32, i32* @P_BANDS, align 4
  %465 = sub nsw i32 %464, 1
  %466 = sitofp i32 %465 to float
  store float %466, float* %20, align 4
  br label %467

467:                                              ; preds = %463, %457
  %468 = load float, float* %20, align 4
  %469 = fptosi float %468 to i32
  store i32 %469, i32* %21, align 4
  %470 = load float, float* %20, align 4
  %471 = load i32, i32* %21, align 4
  %472 = sitofp i32 %471 to float
  %473 = fsub float %470, %472
  store float %473, float* %22, align 4
  store i64 0, i64* %12, align 8
  br label %474

474:                                              ; preds = %524, %467
  %475 = load i64, i64* %12, align 8
  %476 = load i32, i32* @P_NOISECURVES, align 4
  %477 = sext i32 %476 to i64
  %478 = icmp slt i64 %475, %477
  br i1 %478, label %479, label %527

479:                                              ; preds = %474
  %480 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %481 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %480, i32 0, i32 11
  %482 = load %struct.TYPE_10__*, %struct.TYPE_10__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %482, i32 0, i32 4
  %484 = load i32**, i32*** %483, align 8
  %485 = load i64, i64* %12, align 8
  %486 = getelementptr inbounds i32*, i32** %484, i64 %485
  %487 = load i32*, i32** %486, align 8
  %488 = load i32, i32* %21, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %487, i64 %489
  %491 = load i32, i32* %490, align 4
  %492 = sitofp i32 %491 to double
  %493 = load float, float* %22, align 4
  %494 = fpext float %493 to double
  %495 = fsub double 1.000000e+00, %494
  %496 = fmul double %492, %495
  %497 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %498 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %497, i32 0, i32 11
  %499 = load %struct.TYPE_10__*, %struct.TYPE_10__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %499, i32 0, i32 4
  %501 = load i32**, i32*** %500, align 8
  %502 = load i64, i64* %12, align 8
  %503 = getelementptr inbounds i32*, i32** %501, i64 %502
  %504 = load i32*, i32** %503, align 8
  %505 = load i32, i32* %21, align 4
  %506 = add nsw i32 %505, 1
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %504, i64 %507
  %509 = load i32, i32* %508, align 4
  %510 = sitofp i32 %509 to float
  %511 = load float, float* %22, align 4
  %512 = fmul float %510, %511
  %513 = fpext float %512 to double
  %514 = fadd double %496, %513
  %515 = fptosi double %514 to i32
  %516 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %517 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %516, i32 0, i32 10
  %518 = load i32**, i32*** %517, align 8
  %519 = load i64, i64* %12, align 8
  %520 = getelementptr inbounds i32*, i32** %518, i64 %519
  %521 = load i32*, i32** %520, align 8
  %522 = load i64, i64* %11, align 8
  %523 = getelementptr inbounds i32, i32* %521, i64 %522
  store i32 %515, i32* %523, align 4
  br label %524

524:                                              ; preds = %479
  %525 = load i64, i64* %12, align 8
  %526 = add nsw i64 %525, 1
  store i64 %526, i64* %12, align 8
  br label %474

527:                                              ; preds = %474
  br label %528

528:                                              ; preds = %527
  %529 = load i64, i64* %11, align 8
  %530 = add nsw i64 %529, 1
  store i64 %530, i64* %11, align 8
  br label %433

531:                                              ; preds = %433
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @rint(i32) #1

declare dso_local i32 @log(float) #1

declare dso_local i32 @toOC(i64) #1

declare dso_local i8* @_ogg_malloc(i32) #1

declare dso_local i32 @fromOC(i64) #1

declare dso_local float @toBARK(i64) #1

declare dso_local i32 @setup_tone_curves(i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
