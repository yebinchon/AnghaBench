; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_RawSamples.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_RawSamples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float }
%struct.TYPE_3__ = type { i16, i16 }

@s_soundStarted = common dso_local global i32 0, align 4
@s_soundMuted = common dso_local global i64 0, align 8
@s_rawend = common dso_local global i32 0, align 4
@s_soundtime = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"S_RawSamples: resetting minimum: %i < %i\0A\00", align 1
@dma = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@MAX_RAW_SAMPLES = common dso_local global i32 0, align 4
@s_rawsamples = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"S_RawSamples: overflowed %i > %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_RawSamples(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, float %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store float %5, float* %12, align 4
  %18 = load i32, i32* @s_soundStarted, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i64, i64* @s_soundMuted, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %6
  br label %347

24:                                               ; preds = %20
  %25 = load float, float* %12, align 4
  %26 = fmul float 2.560000e+02, %25
  %27 = fptosi float %26 to i32
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* @s_rawend, align 4
  %29 = load i32, i32* @s_soundtime, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @s_rawend, align 4
  %33 = load i32, i32* @s_soundtime, align 4
  %34 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* @s_soundtime, align 4
  store i32 %35, i32* @s_rawend, align 4
  br label %36

36:                                               ; preds = %31, %24
  %37 = load i32, i32* %8, align 4
  %38 = sitofp i32 %37 to float
  %39 = load float, float* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dma, i32 0, i32 0), align 4
  %40 = fdiv float %38, %39
  store float %40, float* %16, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %155

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %155

46:                                               ; preds = %43
  %47 = load float, float* %16, align 4
  %48 = fpext float %47 to double
  %49 = fcmp oeq double %48, 1.000000e+00
  br i1 %49, label %50, label %99

50:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %95, %50
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %98

55:                                               ; preds = %51
  %56 = load i32, i32* @s_rawend, align 4
  %57 = load i32, i32* @MAX_RAW_SAMPLES, align 4
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %56, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* @s_rawend, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @s_rawend, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = bitcast i32* %62 to i16*
  %64 = load i32, i32* %13, align 4
  %65 = mul nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i16, i16* %63, i64 %66
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i32
  %70 = load i32, i32* %17, align 4
  %71 = mul nsw i32 %69, %70
  %72 = trunc i32 %71 to i16
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_rawsamples, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i16 %72, i16* %77, align 2
  %78 = load i32*, i32** %11, align 8
  %79 = bitcast i32* %78 to i16*
  %80 = load i32, i32* %13, align 4
  %81 = mul nsw i32 %80, 2
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i16, i16* %79, i64 %83
  %85 = load i16, i16* %84, align 2
  %86 = sext i16 %85 to i32
  %87 = load i32, i32* %17, align 4
  %88 = mul nsw i32 %86, %87
  %89 = trunc i32 %88 to i16
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_rawsamples, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i16 %89, i16* %94, align 2
  br label %95

95:                                               ; preds = %55
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %51

98:                                               ; preds = %51
  br label %154

99:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  br label %100

100:                                              ; preds = %150, %99
  %101 = load i32, i32* %13, align 4
  %102 = sitofp i32 %101 to float
  %103 = load float, float* %16, align 4
  %104 = fmul float %102, %103
  %105 = fptosi float %104 to i32
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %153

110:                                              ; preds = %100
  %111 = load i32, i32* @s_rawend, align 4
  %112 = load i32, i32* @MAX_RAW_SAMPLES, align 4
  %113 = sub nsw i32 %112, 1
  %114 = and i32 %111, %113
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* @s_rawend, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* @s_rawend, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = bitcast i32* %117 to i16*
  %119 = load i32, i32* %14, align 4
  %120 = mul nsw i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i16, i16* %118, i64 %121
  %123 = load i16, i16* %122, align 2
  %124 = sext i16 %123 to i32
  %125 = load i32, i32* %17, align 4
  %126 = mul nsw i32 %124, %125
  %127 = trunc i32 %126 to i16
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_rawsamples, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  store i16 %127, i16* %132, align 2
  %133 = load i32*, i32** %11, align 8
  %134 = bitcast i32* %133 to i16*
  %135 = load i32, i32* %14, align 4
  %136 = mul nsw i32 %135, 2
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i16, i16* %134, i64 %138
  %140 = load i16, i16* %139, align 2
  %141 = sext i16 %140 to i32
  %142 = load i32, i32* %17, align 4
  %143 = mul nsw i32 %141, %142
  %144 = trunc i32 %143 to i16
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_rawsamples, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  store i16 %144, i16* %149, align 2
  br label %150

150:                                              ; preds = %110
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %100

153:                                              ; preds = %109
  br label %154

154:                                              ; preds = %153, %98
  br label %337

155:                                              ; preds = %43, %36
  %156 = load i32, i32* %10, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %213

158:                                              ; preds = %155
  %159 = load i32, i32* %9, align 4
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %213

161:                                              ; preds = %158
  store i32 0, i32* %13, align 4
  br label %162

162:                                              ; preds = %209, %161
  %163 = load i32, i32* %13, align 4
  %164 = sitofp i32 %163 to float
  %165 = load float, float* %16, align 4
  %166 = fmul float %164, %165
  %167 = fptosi float %166 to i32
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp sge i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  br label %212

172:                                              ; preds = %162
  %173 = load i32, i32* @s_rawend, align 4
  %174 = load i32, i32* @MAX_RAW_SAMPLES, align 4
  %175 = sub nsw i32 %174, 1
  %176 = and i32 %173, %175
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* @s_rawend, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* @s_rawend, align 4
  %179 = load i32*, i32** %11, align 8
  %180 = bitcast i32* %179 to i16*
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i16, i16* %180, i64 %182
  %184 = load i16, i16* %183, align 2
  %185 = sext i16 %184 to i32
  %186 = load i32, i32* %17, align 4
  %187 = mul nsw i32 %185, %186
  %188 = trunc i32 %187 to i16
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_rawsamples, align 8
  %190 = load i32, i32* %15, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  store i16 %188, i16* %193, align 2
  %194 = load i32*, i32** %11, align 8
  %195 = bitcast i32* %194 to i16*
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i16, i16* %195, i64 %197
  %199 = load i16, i16* %198, align 2
  %200 = sext i16 %199 to i32
  %201 = load i32, i32* %17, align 4
  %202 = mul nsw i32 %200, %201
  %203 = trunc i32 %202 to i16
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_rawsamples, align 8
  %205 = load i32, i32* %15, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  store i16 %203, i16* %208, align 2
  br label %209

209:                                              ; preds = %172
  %210 = load i32, i32* %13, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %13, align 4
  br label %162

212:                                              ; preds = %171
  br label %336

213:                                              ; preds = %158, %155
  %214 = load i32, i32* %10, align 4
  %215 = icmp eq i32 %214, 2
  br i1 %215, label %216, label %276

216:                                              ; preds = %213
  %217 = load i32, i32* %9, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %276

219:                                              ; preds = %216
  %220 = load i32, i32* %17, align 4
  %221 = mul nsw i32 %220, 256
  store i32 %221, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %222

222:                                              ; preds = %272, %219
  %223 = load i32, i32* %13, align 4
  %224 = sitofp i32 %223 to float
  %225 = load float, float* %16, align 4
  %226 = fmul float %224, %225
  %227 = fptosi float %226 to i32
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* %7, align 4
  %230 = icmp sge i32 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %222
  br label %275

232:                                              ; preds = %222
  %233 = load i32, i32* @s_rawend, align 4
  %234 = load i32, i32* @MAX_RAW_SAMPLES, align 4
  %235 = sub nsw i32 %234, 1
  %236 = and i32 %233, %235
  store i32 %236, i32* %15, align 4
  %237 = load i32, i32* @s_rawend, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* @s_rawend, align 4
  %239 = load i32*, i32** %11, align 8
  %240 = bitcast i32* %239 to i8*
  %241 = load i32, i32* %14, align 4
  %242 = mul nsw i32 %241, 2
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %240, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = load i32, i32* %17, align 4
  %248 = mul nsw i32 %246, %247
  %249 = trunc i32 %248 to i16
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_rawsamples, align 8
  %251 = load i32, i32* %15, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 0
  store i16 %249, i16* %254, align 2
  %255 = load i32*, i32** %11, align 8
  %256 = bitcast i32* %255 to i8*
  %257 = load i32, i32* %14, align 4
  %258 = mul nsw i32 %257, 2
  %259 = add nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %256, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = load i32, i32* %17, align 4
  %265 = mul nsw i32 %263, %264
  %266 = trunc i32 %265 to i16
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_rawsamples, align 8
  %268 = load i32, i32* %15, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 1
  store i16 %266, i16* %271, align 2
  br label %272

272:                                              ; preds = %232
  %273 = load i32, i32* %13, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %13, align 4
  br label %222

275:                                              ; preds = %231
  br label %335

276:                                              ; preds = %216, %213
  %277 = load i32, i32* %10, align 4
  %278 = icmp eq i32 %277, 1
  br i1 %278, label %279, label %334

279:                                              ; preds = %276
  %280 = load i32, i32* %9, align 4
  %281 = icmp eq i32 %280, 1
  br i1 %281, label %282, label %334

282:                                              ; preds = %279
  %283 = load i32, i32* %17, align 4
  %284 = mul nsw i32 %283, 256
  store i32 %284, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %285

285:                                              ; preds = %330, %282
  %286 = load i32, i32* %13, align 4
  %287 = sitofp i32 %286 to float
  %288 = load float, float* %16, align 4
  %289 = fmul float %287, %288
  %290 = fptosi float %289 to i32
  store i32 %290, i32* %14, align 4
  %291 = load i32, i32* %14, align 4
  %292 = load i32, i32* %7, align 4
  %293 = icmp sge i32 %291, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %285
  br label %333

295:                                              ; preds = %285
  %296 = load i32, i32* @s_rawend, align 4
  %297 = load i32, i32* @MAX_RAW_SAMPLES, align 4
  %298 = sub nsw i32 %297, 1
  %299 = and i32 %296, %298
  store i32 %299, i32* %15, align 4
  %300 = load i32, i32* @s_rawend, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* @s_rawend, align 4
  %302 = load i32*, i32** %11, align 8
  %303 = load i32, i32* %14, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = sub nsw i32 %306, 128
  %308 = load i32, i32* %17, align 4
  %309 = mul nsw i32 %307, %308
  %310 = trunc i32 %309 to i16
  %311 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_rawsamples, align 8
  %312 = load i32, i32* %15, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 0
  store i16 %310, i16* %315, align 2
  %316 = load i32*, i32** %11, align 8
  %317 = load i32, i32* %14, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = sub nsw i32 %320, 128
  %322 = load i32, i32* %17, align 4
  %323 = mul nsw i32 %321, %322
  %324 = trunc i32 %323 to i16
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_rawsamples, align 8
  %326 = load i32, i32* %15, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 1
  store i16 %324, i16* %329, align 2
  br label %330

330:                                              ; preds = %295
  %331 = load i32, i32* %13, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %13, align 4
  br label %285

333:                                              ; preds = %294
  br label %334

334:                                              ; preds = %333, %279, %276
  br label %335

335:                                              ; preds = %334, %275
  br label %336

336:                                              ; preds = %335, %212
  br label %337

337:                                              ; preds = %336, %154
  %338 = load i32, i32* @s_rawend, align 4
  %339 = load i32, i32* @s_soundtime, align 4
  %340 = load i32, i32* @MAX_RAW_SAMPLES, align 4
  %341 = add nsw i32 %339, %340
  %342 = icmp sgt i32 %338, %341
  br i1 %342, label %343, label %347

343:                                              ; preds = %337
  %344 = load i32, i32* @s_rawend, align 4
  %345 = load i32, i32* @s_soundtime, align 4
  %346 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %344, i32 %345)
  br label %347

347:                                              ; preds = %23, %343, %337
  ret void
}

declare dso_local i32 @Com_DPrintf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
