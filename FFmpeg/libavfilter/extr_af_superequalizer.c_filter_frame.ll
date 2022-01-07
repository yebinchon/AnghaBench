; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_superequalizer.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_superequalizer.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__**, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { float*, float*, i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64* }
%struct.TYPE_15__ = type { i32, i32, i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %6, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %7, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %27, i64 0
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %8, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load float*, float** %31, align 8
  store float* %32, float** %9, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load float*, float** %34, align 8
  store float* %35, float** %10, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.TYPE_15__* @ff_get_audio_buffer(%struct.TYPE_16__* %36, i32 %39)
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %13, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %42 = icmp ne %struct.TYPE_15__* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %2
  %44 = call i32 @av_frame_free(%struct.TYPE_15__** %5)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = call i32 @AVERROR(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %341

47:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %328, %47
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %331

54:                                               ; preds = %48
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 3
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to float*
  store float* %62, float** %16, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 6
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to float*
  store float* %72, float** %15, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 3
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to float*
  store float* %80, float** %14, align 8
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %97, %54
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load float*, float** %14, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %88, i64 %90
  %92 = load float, float* %91, align 4
  %93 = load float*, float** %10, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %93, i64 %95
  store float %92, float* %96, align 4
  br label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %81

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %112, %100
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load float*, float** %10, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %108, i64 %110
  store float 0.000000e+00, float* %111, align 4
  br label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %101

115:                                              ; preds = %101
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load float*, float** %10, align 8
  %120 = call i32 @av_rdft_calc(i32 %118, float* %119)
  %121 = load float*, float** %9, align 8
  %122 = getelementptr inbounds float, float* %121, i64 0
  %123 = load float, float* %122, align 4
  %124 = load float*, float** %10, align 8
  %125 = getelementptr inbounds float, float* %124, i64 0
  %126 = load float, float* %125, align 4
  %127 = fmul float %123, %126
  %128 = load float*, float** %10, align 8
  %129 = getelementptr inbounds float, float* %128, i64 0
  store float %127, float* %129, align 4
  %130 = load float*, float** %9, align 8
  %131 = getelementptr inbounds float, float* %130, i64 1
  %132 = load float, float* %131, align 4
  %133 = load float*, float** %10, align 8
  %134 = getelementptr inbounds float, float* %133, i64 1
  %135 = load float, float* %134, align 4
  %136 = fmul float %132, %135
  %137 = load float*, float** %10, align 8
  %138 = getelementptr inbounds float, float* %137, i64 1
  store float %136, float* %138, align 4
  store i32 1, i32* %12, align 4
  br label %139

139:                                              ; preds = %218, %115
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = sdiv i32 %143, 2
  %145 = icmp slt i32 %140, %144
  br i1 %145, label %146, label %221

146:                                              ; preds = %139
  %147 = load float*, float** %9, align 8
  %148 = load i32, i32* %12, align 4
  %149 = mul nsw i32 %148, 2
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %147, i64 %150
  %152 = load float, float* %151, align 4
  %153 = load float*, float** %10, align 8
  %154 = load i32, i32* %12, align 4
  %155 = mul nsw i32 %154, 2
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %153, i64 %156
  %158 = load float, float* %157, align 4
  %159 = fmul float %152, %158
  %160 = load float*, float** %9, align 8
  %161 = load i32, i32* %12, align 4
  %162 = mul nsw i32 %161, 2
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %160, i64 %164
  %166 = load float, float* %165, align 4
  %167 = load float*, float** %10, align 8
  %168 = load i32, i32* %12, align 4
  %169 = mul nsw i32 %168, 2
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %167, i64 %171
  %173 = load float, float* %172, align 4
  %174 = fmul float %166, %173
  %175 = fsub float %159, %174
  store float %175, float* %17, align 4
  %176 = load float*, float** %9, align 8
  %177 = load i32, i32* %12, align 4
  %178 = mul nsw i32 %177, 2
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %176, i64 %180
  %182 = load float, float* %181, align 4
  %183 = load float*, float** %10, align 8
  %184 = load i32, i32* %12, align 4
  %185 = mul nsw i32 %184, 2
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %183, i64 %186
  %188 = load float, float* %187, align 4
  %189 = fmul float %182, %188
  %190 = load float*, float** %9, align 8
  %191 = load i32, i32* %12, align 4
  %192 = mul nsw i32 %191, 2
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %190, i64 %193
  %195 = load float, float* %194, align 4
  %196 = load float*, float** %10, align 8
  %197 = load i32, i32* %12, align 4
  %198 = mul nsw i32 %197, 2
  %199 = add nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %196, i64 %200
  %202 = load float, float* %201, align 4
  %203 = fmul float %195, %202
  %204 = fadd float %189, %203
  store float %204, float* %18, align 4
  %205 = load float, float* %17, align 4
  %206 = load float*, float** %10, align 8
  %207 = load i32, i32* %12, align 4
  %208 = mul nsw i32 %207, 2
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %206, i64 %209
  store float %205, float* %210, align 4
  %211 = load float, float* %18, align 4
  %212 = load float*, float** %10, align 8
  %213 = load i32, i32* %12, align 4
  %214 = mul nsw i32 %213, 2
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %212, i64 %216
  store float %211, float* %217, align 4
  br label %218

218:                                              ; preds = %146
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %12, align 4
  br label %139

221:                                              ; preds = %139
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = load float*, float** %10, align 8
  %226 = call i32 @av_rdft_calc(i32 %224, float* %225)
  store i32 0, i32* %12, align 4
  br label %227

227:                                              ; preds = %251, %221
  %228 = load i32, i32* %12, align 4
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %254

233:                                              ; preds = %227
  %234 = load float*, float** %10, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %234, i64 %236
  %238 = load float, float* %237, align 4
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = sitofp i32 %241 to float
  %243 = fdiv float %238, %242
  %244 = fmul float %243, 2.000000e+00
  %245 = load float*, float** %15, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %245, i64 %247
  %249 = load float, float* %248, align 4
  %250 = fadd float %249, %244
  store float %250, float* %248, align 4
  br label %251

251:                                              ; preds = %233
  %252 = load i32, i32* %12, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %12, align 4
  br label %227

254:                                              ; preds = %227
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  store i32 %257, i32* %12, align 4
  br label %258

258:                                              ; preds = %280, %254
  %259 = load i32, i32* %12, align 4
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = icmp slt i32 %259, %262
  br i1 %263, label %264, label %283

264:                                              ; preds = %258
  %265 = load float*, float** %10, align 8
  %266 = load i32, i32* %12, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %265, i64 %267
  %269 = load float, float* %268, align 4
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = sitofp i32 %272 to float
  %274 = fdiv float %269, %273
  %275 = fmul float %274, 2.000000e+00
  %276 = load float*, float** %15, align 8
  %277 = load i32, i32* %12, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds float, float* %276, i64 %278
  store float %275, float* %279, align 4
  br label %280

280:                                              ; preds = %264
  %281 = load i32, i32* %12, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %12, align 4
  br label %258

283:                                              ; preds = %258
  store i32 0, i32* %12, align 4
  br label %284

284:                                              ; preds = %300, %283
  %285 = load i32, i32* %12, align 4
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = icmp slt i32 %285, %288
  br i1 %289, label %290, label %303

290:                                              ; preds = %284
  %291 = load float*, float** %15, align 8
  %292 = load i32, i32* %12, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float, float* %291, i64 %293
  %295 = load float, float* %294, align 4
  %296 = load float*, float** %16, align 8
  %297 = load i32, i32* %12, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float, float* %296, i64 %298
  store float %295, float* %299, align 4
  br label %300

300:                                              ; preds = %290
  %301 = load i32, i32* %12, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %12, align 4
  br label %284

303:                                              ; preds = %284
  store i32 0, i32* %12, align 4
  br label %304

304:                                              ; preds = %324, %303
  %305 = load i32, i32* %12, align 4
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = icmp slt i32 %305, %308
  br i1 %309, label %310, label %327

310:                                              ; preds = %304
  %311 = load float*, float** %15, align 8
  %312 = load i32, i32* %12, align 4
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %312, %315
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds float, float* %311, i64 %317
  %319 = load float, float* %318, align 4
  %320 = load float*, float** %15, align 8
  %321 = load i32, i32* %12, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds float, float* %320, i64 %322
  store float %319, float* %323, align 4
  br label %324

324:                                              ; preds = %310
  %325 = load i32, i32* %12, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %12, align 4
  br label %304

327:                                              ; preds = %304
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %11, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %11, align 4
  br label %48

331:                                              ; preds = %48
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 2
  store i32 %334, i32* %336, align 8
  %337 = call i32 @av_frame_free(%struct.TYPE_15__** %5)
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %340 = call i32 @ff_filter_frame(%struct.TYPE_16__* %338, %struct.TYPE_15__* %339)
  store i32 %340, i32* %3, align 4
  br label %341

341:                                              ; preds = %331, %43
  %342 = load i32, i32* %3, align 4
  ret i32 %342
}

declare dso_local %struct.TYPE_15__* @ff_get_audio_buffer(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_15__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_rdft_calc(i32, float*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
