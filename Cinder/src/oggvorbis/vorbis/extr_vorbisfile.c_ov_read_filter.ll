; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c_ov_read_filter.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c_ov_read_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@OPENED = common dso_local global i64 0, align 8
@OV_EINVAL = common dso_local global i64 0, align 8
@INITSET = common dso_local global i64 0, align 8
@OV_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ov_read_filter(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, void (float**, i64, i64, i8*)* %7, i8* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca void (float**, i64, i64, i8*)*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float**, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca float*, align 8
  %34 = alloca i16*, align 8
  %35 = alloca float*, align 8
  %36 = alloca i16*, align 8
  %37 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store void (float**, i64, i64, i8*)* %7, void (float**, i64, i64, i8*)** %18, align 8
  store i8* %8, i8** %19, align 8
  %38 = call i32 (...) @host_is_big_endian()
  store i32 %38, i32* %22, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @OPENED, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %9
  %45 = load i64, i64* @OV_EINVAL, align 8
  store i64 %45, i64* %10, align 8
  br label %444

46:                                               ; preds = %9
  br label %47

47:                                               ; preds = %46, %74
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @INITSET, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = call i64 @vorbis_synthesis_pcmout(i32* %55, float*** %24)
  store i64 %56, i64* %25, align 8
  %57 = load i64, i64* %25, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %75

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %47
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %63 = call i32 @_fetch_and_process_packet(%struct.TYPE_6__* %62, i32* null, i32 1, i32 1)
  store i32 %63, i32* %26, align 4
  %64 = load i32, i32* %26, align 4
  %65 = load i32, i32* @OV_EOF, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i64 0, i64* %10, align 8
  br label %444

68:                                               ; preds = %61
  %69 = load i32, i32* %26, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %26, align 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %10, align 8
  br label %444

74:                                               ; preds = %68
  br label %47

75:                                               ; preds = %59
  %76 = load i64, i64* %25, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %442

78:                                               ; preds = %75
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %80 = call %struct.TYPE_7__* @ov_info(%struct.TYPE_6__* %79, i32 -1)
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %27, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %27, align 8
  %86 = mul nsw i64 %84, %85
  store i64 %86, i64* %28, align 8
  %87 = load i64, i64* %25, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %28, align 8
  %91 = sdiv i64 %89, %90
  %92 = icmp sgt i64 %87, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %78
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %28, align 8
  %97 = sdiv i64 %95, %96
  store i64 %97, i64* %25, align 8
  br label %98

98:                                               ; preds = %93, %78
  %99 = load i64, i64* %25, align 8
  %100 = icmp sle i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i64, i64* @OV_EINVAL, align 8
  store i64 %102, i64* %10, align 8
  br label %444

103:                                              ; preds = %98
  %104 = load void (float**, i64, i64, i8*)*, void (float**, i64, i64, i8*)** %18, align 8
  %105 = icmp ne void (float**, i64, i64, i8*)* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load void (float**, i64, i64, i8*)*, void (float**, i64, i64, i8*)** %18, align 8
  %108 = load float**, float*** %24, align 8
  %109 = load i64, i64* %27, align 8
  %110 = load i64, i64* %25, align 8
  %111 = load i8*, i8** %19, align 8
  call void %107(float** %108, i64 %109, i64 %110, i8* %111)
  br label %112

112:                                              ; preds = %106, %103
  %113 = load i32, i32* %15, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %169

115:                                              ; preds = %112
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 0, i32 128
  store i32 %119, i32* %31, align 4
  %120 = call i32 @vorbis_fpu_setround(i32* %29)
  store i32 0, i32* %21, align 4
  br label %121

121:                                              ; preds = %163, %115
  %122 = load i32, i32* %21, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %25, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %166

126:                                              ; preds = %121
  store i32 0, i32* %20, align 4
  br label %127

127:                                              ; preds = %159, %126
  %128 = load i32, i32* %20, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %27, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %132, label %162

132:                                              ; preds = %127
  %133 = load float**, float*** %24, align 8
  %134 = load i32, i32* %20, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float*, float** %133, i64 %135
  %137 = load float*, float** %136, align 8
  %138 = load i32, i32* %21, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %137, i64 %139
  %141 = load float, float* %140, align 4
  %142 = fmul float %141, 1.280000e+02
  %143 = call i32 @vorbis_ftoi(float %142)
  store i32 %143, i32* %30, align 4
  %144 = load i32, i32* %30, align 4
  %145 = icmp sgt i32 %144, 127
  br i1 %145, label %146, label %147

146:                                              ; preds = %132
  store i32 127, i32* %30, align 4
  br label %152

147:                                              ; preds = %132
  %148 = load i32, i32* %30, align 4
  %149 = icmp slt i32 %148, -128
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32 -128, i32* %30, align 4
  br label %151

151:                                              ; preds = %150, %147
  br label %152

152:                                              ; preds = %151, %146
  %153 = load i32, i32* %30, align 4
  %154 = load i32, i32* %31, align 4
  %155 = add nsw i32 %153, %154
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %12, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %12, align 8
  store i8 %156, i8* %157, align 1
  br label %159

159:                                              ; preds = %152
  %160 = load i32, i32* %20, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %20, align 4
  br label %127

162:                                              ; preds = %127
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %21, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %21, align 4
  br label %121

166:                                              ; preds = %121
  %167 = load i32, i32* %29, align 4
  %168 = call i32 @vorbis_fpu_restore(i32 %167)
  br label %414

169:                                              ; preds = %112
  %170 = load i32, i32* %16, align 4
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 0, i32 32768
  store i32 %173, i32* %32, align 4
  %174 = load i32, i32* %22, align 4
  %175 = load i32, i32* %14, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %295

177:                                              ; preds = %169
  %178 = load i32, i32* %16, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %236

180:                                              ; preds = %177
  %181 = call i32 @vorbis_fpu_setround(i32* %29)
  store i32 0, i32* %20, align 4
  br label %182

182:                                              ; preds = %230, %180
  %183 = load i32, i32* %20, align 4
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* %27, align 8
  %186 = icmp slt i64 %184, %185
  br i1 %186, label %187, label %233

187:                                              ; preds = %182
  %188 = load float**, float*** %24, align 8
  %189 = load i32, i32* %20, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float*, float** %188, i64 %190
  %192 = load float*, float** %191, align 8
  store float* %192, float** %33, align 8
  %193 = load i8*, i8** %12, align 8
  %194 = bitcast i8* %193 to i16*
  %195 = load i32, i32* %20, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i16, i16* %194, i64 %196
  store i16* %197, i16** %34, align 8
  store i32 0, i32* %21, align 4
  br label %198

198:                                              ; preds = %226, %187
  %199 = load i32, i32* %21, align 4
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %25, align 8
  %202 = icmp slt i64 %200, %201
  br i1 %202, label %203, label %229

203:                                              ; preds = %198
  %204 = load float*, float** %33, align 8
  %205 = load i32, i32* %21, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %204, i64 %206
  %208 = load float, float* %207, align 4
  %209 = fmul float %208, 3.276800e+04
  %210 = call i32 @vorbis_ftoi(float %209)
  store i32 %210, i32* %30, align 4
  %211 = load i32, i32* %30, align 4
  %212 = icmp sgt i32 %211, 32767
  br i1 %212, label %213, label %214

213:                                              ; preds = %203
  store i32 32767, i32* %30, align 4
  br label %219

214:                                              ; preds = %203
  %215 = load i32, i32* %30, align 4
  %216 = icmp slt i32 %215, -32768
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  store i32 -32768, i32* %30, align 4
  br label %218

218:                                              ; preds = %217, %214
  br label %219

219:                                              ; preds = %218, %213
  %220 = load i32, i32* %30, align 4
  %221 = trunc i32 %220 to i16
  %222 = load i16*, i16** %34, align 8
  store i16 %221, i16* %222, align 2
  %223 = load i64, i64* %27, align 8
  %224 = load i16*, i16** %34, align 8
  %225 = getelementptr inbounds i16, i16* %224, i64 %223
  store i16* %225, i16** %34, align 8
  br label %226

226:                                              ; preds = %219
  %227 = load i32, i32* %21, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %21, align 4
  br label %198

229:                                              ; preds = %198
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %20, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %20, align 4
  br label %182

233:                                              ; preds = %182
  %234 = load i32, i32* %29, align 4
  %235 = call i32 @vorbis_fpu_restore(i32 %234)
  br label %294

236:                                              ; preds = %177
  %237 = call i32 @vorbis_fpu_setround(i32* %29)
  store i32 0, i32* %20, align 4
  br label %238

238:                                              ; preds = %288, %236
  %239 = load i32, i32* %20, align 4
  %240 = sext i32 %239 to i64
  %241 = load i64, i64* %27, align 8
  %242 = icmp slt i64 %240, %241
  br i1 %242, label %243, label %291

243:                                              ; preds = %238
  %244 = load float**, float*** %24, align 8
  %245 = load i32, i32* %20, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float*, float** %244, i64 %246
  %248 = load float*, float** %247, align 8
  store float* %248, float** %35, align 8
  %249 = load i8*, i8** %12, align 8
  %250 = bitcast i8* %249 to i16*
  %251 = load i32, i32* %20, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i16, i16* %250, i64 %252
  store i16* %253, i16** %36, align 8
  store i32 0, i32* %21, align 4
  br label %254

254:                                              ; preds = %284, %243
  %255 = load i32, i32* %21, align 4
  %256 = sext i32 %255 to i64
  %257 = load i64, i64* %25, align 8
  %258 = icmp slt i64 %256, %257
  br i1 %258, label %259, label %287

259:                                              ; preds = %254
  %260 = load float*, float** %35, align 8
  %261 = load i32, i32* %21, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %260, i64 %262
  %264 = load float, float* %263, align 4
  %265 = fmul float %264, 3.276800e+04
  %266 = call i32 @vorbis_ftoi(float %265)
  store i32 %266, i32* %30, align 4
  %267 = load i32, i32* %30, align 4
  %268 = icmp sgt i32 %267, 32767
  br i1 %268, label %269, label %270

269:                                              ; preds = %259
  store i32 32767, i32* %30, align 4
  br label %275

270:                                              ; preds = %259
  %271 = load i32, i32* %30, align 4
  %272 = icmp slt i32 %271, -32768
  br i1 %272, label %273, label %274

273:                                              ; preds = %270
  store i32 -32768, i32* %30, align 4
  br label %274

274:                                              ; preds = %273, %270
  br label %275

275:                                              ; preds = %274, %269
  %276 = load i32, i32* %30, align 4
  %277 = load i32, i32* %32, align 4
  %278 = add nsw i32 %276, %277
  %279 = trunc i32 %278 to i16
  %280 = load i16*, i16** %36, align 8
  store i16 %279, i16* %280, align 2
  %281 = load i64, i64* %27, align 8
  %282 = load i16*, i16** %36, align 8
  %283 = getelementptr inbounds i16, i16* %282, i64 %281
  store i16* %283, i16** %36, align 8
  br label %284

284:                                              ; preds = %275
  %285 = load i32, i32* %21, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %21, align 4
  br label %254

287:                                              ; preds = %254
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %20, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %20, align 4
  br label %238

291:                                              ; preds = %238
  %292 = load i32, i32* %29, align 4
  %293 = call i32 @vorbis_fpu_restore(i32 %292)
  br label %294

294:                                              ; preds = %291, %233
  br label %413

295:                                              ; preds = %169
  %296 = load i32, i32* %14, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %355

298:                                              ; preds = %295
  %299 = call i32 @vorbis_fpu_setround(i32* %29)
  store i32 0, i32* %21, align 4
  br label %300

300:                                              ; preds = %349, %298
  %301 = load i32, i32* %21, align 4
  %302 = sext i32 %301 to i64
  %303 = load i64, i64* %25, align 8
  %304 = icmp slt i64 %302, %303
  br i1 %304, label %305, label %352

305:                                              ; preds = %300
  store i32 0, i32* %20, align 4
  br label %306

306:                                              ; preds = %345, %305
  %307 = load i32, i32* %20, align 4
  %308 = sext i32 %307 to i64
  %309 = load i64, i64* %27, align 8
  %310 = icmp slt i64 %308, %309
  br i1 %310, label %311, label %348

311:                                              ; preds = %306
  %312 = load float**, float*** %24, align 8
  %313 = load i32, i32* %20, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds float*, float** %312, i64 %314
  %316 = load float*, float** %315, align 8
  %317 = load i32, i32* %21, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds float, float* %316, i64 %318
  %320 = load float, float* %319, align 4
  %321 = fmul float %320, 3.276800e+04
  %322 = call i32 @vorbis_ftoi(float %321)
  store i32 %322, i32* %30, align 4
  %323 = load i32, i32* %30, align 4
  %324 = icmp sgt i32 %323, 32767
  br i1 %324, label %325, label %326

325:                                              ; preds = %311
  store i32 32767, i32* %30, align 4
  br label %331

326:                                              ; preds = %311
  %327 = load i32, i32* %30, align 4
  %328 = icmp slt i32 %327, -32768
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  store i32 -32768, i32* %30, align 4
  br label %330

330:                                              ; preds = %329, %326
  br label %331

331:                                              ; preds = %330, %325
  %332 = load i32, i32* %32, align 4
  %333 = load i32, i32* %30, align 4
  %334 = add nsw i32 %333, %332
  store i32 %334, i32* %30, align 4
  %335 = load i32, i32* %30, align 4
  %336 = ashr i32 %335, 8
  %337 = trunc i32 %336 to i8
  %338 = load i8*, i8** %12, align 8
  %339 = getelementptr inbounds i8, i8* %338, i32 1
  store i8* %339, i8** %12, align 8
  store i8 %337, i8* %338, align 1
  %340 = load i32, i32* %30, align 4
  %341 = and i32 %340, 255
  %342 = trunc i32 %341 to i8
  %343 = load i8*, i8** %12, align 8
  %344 = getelementptr inbounds i8, i8* %343, i32 1
  store i8* %344, i8** %12, align 8
  store i8 %342, i8* %343, align 1
  br label %345

345:                                              ; preds = %331
  %346 = load i32, i32* %20, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %20, align 4
  br label %306

348:                                              ; preds = %306
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %21, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %21, align 4
  br label %300

352:                                              ; preds = %300
  %353 = load i32, i32* %29, align 4
  %354 = call i32 @vorbis_fpu_restore(i32 %353)
  br label %412

355:                                              ; preds = %295
  %356 = call i32 @vorbis_fpu_setround(i32* %29)
  store i32 0, i32* %21, align 4
  br label %357

357:                                              ; preds = %406, %355
  %358 = load i32, i32* %21, align 4
  %359 = sext i32 %358 to i64
  %360 = load i64, i64* %25, align 8
  %361 = icmp slt i64 %359, %360
  br i1 %361, label %362, label %409

362:                                              ; preds = %357
  store i32 0, i32* %20, align 4
  br label %363

363:                                              ; preds = %402, %362
  %364 = load i32, i32* %20, align 4
  %365 = sext i32 %364 to i64
  %366 = load i64, i64* %27, align 8
  %367 = icmp slt i64 %365, %366
  br i1 %367, label %368, label %405

368:                                              ; preds = %363
  %369 = load float**, float*** %24, align 8
  %370 = load i32, i32* %20, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds float*, float** %369, i64 %371
  %373 = load float*, float** %372, align 8
  %374 = load i32, i32* %21, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds float, float* %373, i64 %375
  %377 = load float, float* %376, align 4
  %378 = fmul float %377, 3.276800e+04
  %379 = call i32 @vorbis_ftoi(float %378)
  store i32 %379, i32* %37, align 4
  %380 = load i32, i32* %37, align 4
  %381 = icmp sgt i32 %380, 32767
  br i1 %381, label %382, label %383

382:                                              ; preds = %368
  store i32 32767, i32* %37, align 4
  br label %388

383:                                              ; preds = %368
  %384 = load i32, i32* %37, align 4
  %385 = icmp slt i32 %384, -32768
  br i1 %385, label %386, label %387

386:                                              ; preds = %383
  store i32 -32768, i32* %37, align 4
  br label %387

387:                                              ; preds = %386, %383
  br label %388

388:                                              ; preds = %387, %382
  %389 = load i32, i32* %32, align 4
  %390 = load i32, i32* %37, align 4
  %391 = add nsw i32 %390, %389
  store i32 %391, i32* %37, align 4
  %392 = load i32, i32* %37, align 4
  %393 = and i32 %392, 255
  %394 = trunc i32 %393 to i8
  %395 = load i8*, i8** %12, align 8
  %396 = getelementptr inbounds i8, i8* %395, i32 1
  store i8* %396, i8** %12, align 8
  store i8 %394, i8* %395, align 1
  %397 = load i32, i32* %37, align 4
  %398 = ashr i32 %397, 8
  %399 = trunc i32 %398 to i8
  %400 = load i8*, i8** %12, align 8
  %401 = getelementptr inbounds i8, i8* %400, i32 1
  store i8* %401, i8** %12, align 8
  store i8 %399, i8* %400, align 1
  br label %402

402:                                              ; preds = %388
  %403 = load i32, i32* %20, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %20, align 4
  br label %363

405:                                              ; preds = %363
  br label %406

406:                                              ; preds = %405
  %407 = load i32, i32* %21, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %21, align 4
  br label %357

409:                                              ; preds = %357
  %410 = load i32, i32* %29, align 4
  %411 = call i32 @vorbis_fpu_restore(i32 %410)
  br label %412

412:                                              ; preds = %409, %352
  br label %413

413:                                              ; preds = %412, %294
  br label %414

414:                                              ; preds = %413, %166
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 4
  %417 = load i64, i64* %25, align 8
  %418 = call i32 @vorbis_synthesis_read(i32* %416, i64 %417)
  %419 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 4
  %422 = call i32 @vorbis_synthesis_halfrate_p(i32 %421)
  store i32 %422, i32* %23, align 4
  %423 = load i64, i64* %25, align 8
  %424 = load i32, i32* %23, align 4
  %425 = zext i32 %424 to i64
  %426 = shl i64 %423, %425
  %427 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = add nsw i64 %429, %426
  store i64 %430, i64* %428, align 8
  %431 = load i32*, i32** %17, align 8
  %432 = icmp ne i32* %431, null
  br i1 %432, label %433, label %438

433:                                              ; preds = %414
  %434 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 8
  %437 = load i32*, i32** %17, align 8
  store i32 %436, i32* %437, align 4
  br label %438

438:                                              ; preds = %433, %414
  %439 = load i64, i64* %25, align 8
  %440 = load i64, i64* %28, align 8
  %441 = mul nsw i64 %439, %440
  store i64 %441, i64* %10, align 8
  br label %444

442:                                              ; preds = %75
  %443 = load i64, i64* %25, align 8
  store i64 %443, i64* %10, align 8
  br label %444

444:                                              ; preds = %442, %438, %101, %71, %67, %44
  %445 = load i64, i64* %10, align 8
  ret i64 %445
}

declare dso_local i32 @host_is_big_endian(...) #1

declare dso_local i64 @vorbis_synthesis_pcmout(i32*, float***) #1

declare dso_local i32 @_fetch_and_process_packet(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @ov_info(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @vorbis_fpu_setround(i32*) #1

declare dso_local i32 @vorbis_ftoi(float) #1

declare dso_local i32 @vorbis_fpu_restore(i32) #1

declare dso_local i32 @vorbis_synthesis_read(i32*, i64) #1

declare dso_local i32 @vorbis_synthesis_halfrate_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
