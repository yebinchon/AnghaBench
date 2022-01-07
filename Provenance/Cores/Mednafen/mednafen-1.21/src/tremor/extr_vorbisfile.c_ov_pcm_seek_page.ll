; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_vorbisfile.c_ov_pcm_seek_page.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_vorbisfile.c_ov_pcm_seek_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i64*, i64*, i64*, i64, i64*, i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@OPENED = common dso_local global i64 0, align 8
@OV_EINVAL = common dso_local global i32 0, align 4
@OV_ENOSEEK = common dso_local global i32 0, align 4
@CHUNKSIZE = common dso_local global i64 0, align 8
@OV_EREAD = common dso_local global i64 0, align 8
@STREAMSET = common dso_local global i8* null, align 8
@OV_EBADPACKET = common dso_local global i64 0, align 8
@OV_EFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ov_pcm_seek_page(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 -1, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = call i64 @ov_pcm_total(%struct.TYPE_12__* %21, i32 -1)
  store i64 %22, i64* %8, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OPENED, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @OV_EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %541

30:                                               ; preds = %2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 14
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @OV_ENOSEEK, align 4
  store i32 %36, i32* %3, align 4
  br label %541

37:                                               ; preds = %30
  %38 = load i64, i64* %5, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %37
  %45 = load i32, i32* @OV_EINVAL, align 4
  store i32 %45, i32* %3, align 4
  br label %541

46:                                               ; preds = %40
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %71, %46
  %52 = load i32, i32* %6, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 %58, 2
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %57, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = sub nsw i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %74

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %6, align 4
  br label %51

74:                                               ; preds = %69, %51
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %9, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 4
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %10, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = mul nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %11, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = mul nsw i32 %101, 2
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %100, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %11, align 8
  %108 = add nsw i64 %106, %107
  store i64 %108, i64* %12, align 8
  %109 = load i64, i64* %5, align 8
  %110 = load i64, i64* %8, align 8
  %111 = sub nsw i64 %109, %110
  %112 = load i64, i64* %11, align 8
  %113 = add nsw i64 %111, %112
  store i64 %113, i64* %13, align 8
  store i64 -1, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* %9, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %74
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = load i64, i64* %10, align 8
  %120 = call i64 @_seek_helper(%struct.TYPE_12__* %118, i64 %119)
  store i64 %120, i64* %7, align 8
  %121 = load i64, i64* %7, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %534

124:                                              ; preds = %117
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %126 = call i64 @_get_next_page(%struct.TYPE_12__* %125, i32* %16, i32 1)
  store i64 %126, i64* %7, align 8
  %127 = load i64, i64* %7, align 8
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %534

130:                                              ; preds = %124
  store i32 1, i32* %15, align 4
  br label %131

131:                                              ; preds = %130, %74
  br label %132

132:                                              ; preds = %298, %131
  %133 = load i64, i64* %10, align 8
  %134 = load i64, i64* %9, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %136, label %299

136:                                              ; preds = %132
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* %10, align 8
  %139 = sub nsw i64 %137, %138
  %140 = load i64, i64* @CHUNKSIZE, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i64, i64* %10, align 8
  store i64 %143, i64* %17, align 8
  br label %167

144:                                              ; preds = %136
  %145 = load i64, i64* %10, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* %11, align 8
  %148 = sub nsw i64 %146, %147
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* %11, align 8
  %151 = sub nsw i64 %149, %150
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %10, align 8
  %154 = sub nsw i64 %152, %153
  %155 = call i64 @rescale64(i64 %148, i64 %151, i64 %154)
  %156 = add nsw i64 %145, %155
  %157 = load i64, i64* @CHUNKSIZE, align 8
  %158 = sub nsw i64 %156, %157
  store i64 %158, i64* %17, align 8
  %159 = load i64, i64* %17, align 8
  %160 = load i64, i64* %10, align 8
  %161 = load i64, i64* @CHUNKSIZE, align 8
  %162 = add nsw i64 %160, %161
  %163 = icmp slt i64 %159, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %144
  %165 = load i64, i64* %10, align 8
  store i64 %165, i64* %17, align 8
  br label %166

166:                                              ; preds = %164, %144
  br label %167

167:                                              ; preds = %166, %142
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %169 = load i64, i64* %17, align 8
  %170 = call i64 @_seek_helper(%struct.TYPE_12__* %168, i64 %169)
  store i64 %170, i64* %7, align 8
  %171 = load i64, i64* %7, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %534

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %297, %241, %235, %174
  %176 = load i64, i64* %10, align 8
  %177 = load i64, i64* %9, align 8
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %298

179:                                              ; preds = %175
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %181 = load i64, i64* %9, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = sub nsw i64 %181, %184
  %186 = trunc i64 %185 to i32
  %187 = call i64 @_get_next_page(%struct.TYPE_12__* %180, i32* %16, i32 %186)
  store i64 %187, i64* %7, align 8
  %188 = load i64, i64* %7, align 8
  %189 = load i64, i64* @OV_EREAD, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %179
  br label %534

192:                                              ; preds = %179
  %193 = load i64, i64* %7, align 8
  %194 = icmp slt i64 %193, 0
  br i1 %194, label %195, label %225

195:                                              ; preds = %192
  %196 = load i64, i64* %17, align 8
  %197 = load i64, i64* %10, align 8
  %198 = add nsw i64 %197, 1
  %199 = icmp sle i64 %196, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = load i64, i64* %10, align 8
  store i64 %201, i64* %9, align 8
  br label %224

202:                                              ; preds = %195
  %203 = load i64, i64* %17, align 8
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  br label %534

206:                                              ; preds = %202
  %207 = load i64, i64* @CHUNKSIZE, align 8
  %208 = load i64, i64* %17, align 8
  %209 = sub nsw i64 %208, %207
  store i64 %209, i64* %17, align 8
  %210 = load i64, i64* %17, align 8
  %211 = load i64, i64* %10, align 8
  %212 = icmp sle i64 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %206
  %214 = load i64, i64* %10, align 8
  %215 = add nsw i64 %214, 1
  store i64 %215, i64* %17, align 8
  br label %216

216:                                              ; preds = %213, %206
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %218 = load i64, i64* %17, align 8
  %219 = call i64 @_seek_helper(%struct.TYPE_12__* %217, i64 %218)
  store i64 %219, i64* %7, align 8
  %220 = load i64, i64* %7, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  br label %534

223:                                              ; preds = %216
  br label %224

224:                                              ; preds = %223, %200
  br label %297

225:                                              ; preds = %192
  store i32 1, i32* %15, align 4
  %226 = call i64 @ogg_page_serialno(i32* %16)
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 6
  %229 = load i64*, i64** %228, align 8
  %230 = load i32, i32* %6, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %229, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %226, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %225
  br label %175

236:                                              ; preds = %225
  %237 = call i32 @ogg_page_granulepos(i32* %16)
  %238 = sext i32 %237 to i64
  store i64 %238, i64* %18, align 8
  %239 = load i64, i64* %18, align 8
  %240 = icmp eq i64 %239, -1
  br i1 %240, label %241, label %242

241:                                              ; preds = %236
  br label %175

242:                                              ; preds = %236
  %243 = load i64, i64* %18, align 8
  %244 = load i64, i64* %13, align 8
  %245 = icmp slt i64 %243, %244
  br i1 %245, label %246, label %259

246:                                              ; preds = %242
  %247 = load i64, i64* %7, align 8
  store i64 %247, i64* %14, align 8
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 5
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %10, align 8
  %251 = load i64, i64* %18, align 8
  store i64 %251, i64* %11, align 8
  %252 = load i64, i64* %13, align 8
  %253 = load i64, i64* %11, align 8
  %254 = sub nsw i64 %252, %253
  %255 = icmp sgt i64 %254, 44100
  br i1 %255, label %256, label %257

256:                                              ; preds = %246
  br label %298

257:                                              ; preds = %246
  %258 = load i64, i64* %10, align 8
  store i64 %258, i64* %17, align 8
  br label %296

259:                                              ; preds = %242
  %260 = load i64, i64* %17, align 8
  %261 = load i64, i64* %10, align 8
  %262 = add nsw i64 %261, 1
  %263 = icmp sle i64 %260, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = load i64, i64* %10, align 8
  store i64 %265, i64* %9, align 8
  br label %295

266:                                              ; preds = %259
  %267 = load i64, i64* %9, align 8
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 5
  %270 = load i64, i64* %269, align 8
  %271 = icmp eq i64 %267, %270
  br i1 %271, label %272, label %291

272:                                              ; preds = %266
  %273 = load i64, i64* %7, align 8
  store i64 %273, i64* %9, align 8
  %274 = load i64, i64* @CHUNKSIZE, align 8
  %275 = load i64, i64* %17, align 8
  %276 = sub nsw i64 %275, %274
  store i64 %276, i64* %17, align 8
  %277 = load i64, i64* %17, align 8
  %278 = load i64, i64* %10, align 8
  %279 = icmp sle i64 %277, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %272
  %281 = load i64, i64* %10, align 8
  %282 = add nsw i64 %281, 1
  store i64 %282, i64* %17, align 8
  br label %283

283:                                              ; preds = %280, %272
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %285 = load i64, i64* %17, align 8
  %286 = call i64 @_seek_helper(%struct.TYPE_12__* %284, i64 %285)
  store i64 %286, i64* %7, align 8
  %287 = load i64, i64* %7, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %283
  br label %534

290:                                              ; preds = %283
  br label %294

291:                                              ; preds = %266
  %292 = load i64, i64* %17, align 8
  store i64 %292, i64* %9, align 8
  %293 = load i64, i64* %18, align 8
  store i64 %293, i64* %12, align 8
  br label %298

294:                                              ; preds = %290
  br label %295

295:                                              ; preds = %294, %264
  br label %296

296:                                              ; preds = %295, %257
  br label %297

297:                                              ; preds = %296, %224
  br label %175

298:                                              ; preds = %291, %256, %175
  br label %132

299:                                              ; preds = %132
  %300 = load i64, i64* %14, align 8
  %301 = icmp eq i64 %300, -1
  br i1 %301, label %302, label %370

302:                                              ; preds = %299
  %303 = load i32, i32* %15, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %368

305:                                              ; preds = %302
  %306 = load i64, i64* %10, align 8
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 4
  %309 = load i64*, i64** %308, align 8
  %310 = load i32, i32* %6, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i64, i64* %309, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = icmp eq i64 %306, %313
  br i1 %314, label %315, label %368

315:                                              ; preds = %305
  %316 = call i64 @ogg_page_serialno(i32* %16)
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 6
  %319 = load i64*, i64** %318, align 8
  %320 = load i32, i32* %6, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i64, i64* %319, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = icmp eq i64 %316, %323
  br i1 %324, label %325, label %368

325:                                              ; preds = %315
  %326 = load i64, i64* %8, align 8
  %327 = trunc i64 %326 to i32
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 7
  store i32 %327, i32* %329, align 8
  %330 = load i32, i32* %6, align 4
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 8
  %333 = load i32, i32* %332, align 4
  %334 = icmp ne i32 %330, %333
  br i1 %334, label %335, label %354

335:                                              ; preds = %325
  %336 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %337 = call i32 @_decode_clear(%struct.TYPE_12__* %336)
  %338 = load i32, i32* %6, align 4
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 8
  store i32 %338, i32* %340, align 4
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 6
  %343 = load i64*, i64** %342, align 8
  %344 = load i32, i32* %6, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i64, i64* %343, i64 %345
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 9
  store i64 %347, i64* %349, align 8
  %350 = load i8*, i8** @STREAMSET, align 8
  %351 = ptrtoint i8* %350 to i64
  %352 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 0
  store i64 %351, i64* %353, align 8
  br label %358

354:                                              ; preds = %325
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 13
  %357 = call i32 @vorbis_synthesis_restart(i32* %356)
  br label %358

358:                                              ; preds = %354, %335
  %359 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %359, i32 0, i32 12
  %361 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i32 0, i32 9
  %363 = load i64, i64* %362, align 8
  %364 = call i32 @ogg_stream_reset_serialno(i32* %360, i64 %363)
  %365 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 12
  %367 = call i32 @ogg_stream_pagein(i32* %366, i32* %16)
  br label %369

368:                                              ; preds = %315, %305, %302
  br label %534

369:                                              ; preds = %358
  br label %515

370:                                              ; preds = %299
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %372 = load i64, i64* %14, align 8
  %373 = call i64 @_seek_helper(%struct.TYPE_12__* %371, i64 %372)
  store i64 %373, i64* %7, align 8
  %374 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %374, i32 0, i32 7
  store i32 -1, i32* %375, align 8
  %376 = load i64, i64* %7, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %370
  br label %534

379:                                              ; preds = %370
  %380 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %381 = call i64 @_get_next_page(%struct.TYPE_12__* %380, i32* %19, i32 -1)
  store i64 %381, i64* %7, align 8
  %382 = load i64, i64* %7, align 8
  %383 = icmp slt i64 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %379
  br label %534

385:                                              ; preds = %379
  %386 = load i32, i32* %6, align 4
  %387 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 8
  %389 = load i32, i32* %388, align 4
  %390 = icmp ne i32 %386, %389
  br i1 %390, label %391, label %410

391:                                              ; preds = %385
  %392 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %393 = call i32 @_decode_clear(%struct.TYPE_12__* %392)
  %394 = load i32, i32* %6, align 4
  %395 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 8
  store i32 %394, i32* %396, align 4
  %397 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %397, i32 0, i32 6
  %399 = load i64*, i64** %398, align 8
  %400 = load i32, i32* %6, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i64, i64* %399, i64 %401
  %403 = load i64, i64* %402, align 8
  %404 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 9
  store i64 %403, i64* %405, align 8
  %406 = load i8*, i8** @STREAMSET, align 8
  %407 = ptrtoint i8* %406 to i64
  %408 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %409 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %408, i32 0, i32 0
  store i64 %407, i64* %409, align 8
  br label %414

410:                                              ; preds = %385
  %411 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 13
  %413 = call i32 @vorbis_synthesis_restart(i32* %412)
  br label %414

414:                                              ; preds = %410, %391
  %415 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %416 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %415, i32 0, i32 12
  %417 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %418 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %417, i32 0, i32 9
  %419 = load i64, i64* %418, align 8
  %420 = call i32 @ogg_stream_reset_serialno(i32* %416, i64 %419)
  %421 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %422 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %421, i32 0, i32 12
  %423 = call i32 @ogg_stream_pagein(i32* %422, i32* %19)
  br label %424

424:                                              ; preds = %414, %513
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 12
  %427 = call i64 @ogg_stream_packetpeek(i32* %426, %struct.TYPE_11__* %20)
  store i64 %427, i64* %7, align 8
  %428 = load i64, i64* %7, align 8
  %429 = icmp eq i64 %428, 0
  br i1 %429, label %430, label %467

430:                                              ; preds = %424
  %431 = load i64, i64* %14, align 8
  store i64 %431, i64* %7, align 8
  br label %432

432:                                              ; preds = %465, %430
  %433 = load i64, i64* %7, align 8
  %434 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 4
  %436 = load i64*, i64** %435, align 8
  %437 = load i32, i32* %6, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i64, i64* %436, i64 %438
  %440 = load i64, i64* %439, align 8
  %441 = icmp sgt i64 %433, %440
  br i1 %441, label %442, label %466

442:                                              ; preds = %432
  %443 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %444 = load i64, i64* %7, align 8
  %445 = call i64 @_get_prev_page(%struct.TYPE_12__* %443, i64 %444, i32* %19)
  store i64 %445, i64* %7, align 8
  %446 = load i64, i64* %7, align 8
  %447 = icmp slt i64 %446, 0
  br i1 %447, label %448, label %449

448:                                              ; preds = %442
  br label %534

449:                                              ; preds = %442
  %450 = call i64 @ogg_page_serialno(i32* %19)
  %451 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %452 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %451, i32 0, i32 9
  %453 = load i64, i64* %452, align 8
  %454 = icmp eq i64 %450, %453
  br i1 %454, label %455, label %465

455:                                              ; preds = %449
  %456 = call i32 @ogg_page_granulepos(i32* %19)
  %457 = icmp sgt i32 %456, -1
  br i1 %457, label %461, label %458

458:                                              ; preds = %455
  %459 = call i32 @ogg_page_continued(i32* %19)
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %465, label %461

461:                                              ; preds = %458, %455
  %462 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %463 = load i64, i64* %7, align 8
  %464 = call i32 @ov_raw_seek(%struct.TYPE_12__* %462, i64 %463)
  store i32 %464, i32* %3, align 4
  br label %541

465:                                              ; preds = %458, %449
  br label %432

466:                                              ; preds = %432
  br label %467

467:                                              ; preds = %466, %424
  %468 = load i64, i64* %7, align 8
  %469 = icmp slt i64 %468, 0
  br i1 %469, label %470, label %472

470:                                              ; preds = %467
  %471 = load i64, i64* @OV_EBADPACKET, align 8
  store i64 %471, i64* %7, align 8
  br label %534

472:                                              ; preds = %467
  %473 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = icmp ne i32 %474, -1
  br i1 %475, label %476, label %509

476:                                              ; preds = %472
  %477 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %478 = load i32, i32* %477, align 4
  %479 = sext i32 %478 to i64
  %480 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %481 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %480, i32 0, i32 2
  %482 = load i64*, i64** %481, align 8
  %483 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %483, i32 0, i32 8
  %485 = load i32, i32* %484, align 4
  %486 = mul nsw i32 %485, 2
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i64, i64* %482, i64 %487
  %489 = load i64, i64* %488, align 8
  %490 = sub nsw i64 %479, %489
  %491 = trunc i64 %490 to i32
  %492 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %493 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %492, i32 0, i32 7
  store i32 %491, i32* %493, align 8
  %494 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %495 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %494, i32 0, i32 7
  %496 = load i32, i32* %495, align 8
  %497 = icmp slt i32 %496, 0
  br i1 %497, label %498, label %501

498:                                              ; preds = %476
  %499 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %500 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %499, i32 0, i32 7
  store i32 0, i32* %500, align 8
  br label %501

501:                                              ; preds = %498, %476
  %502 = load i64, i64* %8, align 8
  %503 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %503, i32 0, i32 7
  %505 = load i32, i32* %504, align 8
  %506 = sext i32 %505 to i64
  %507 = add nsw i64 %506, %502
  %508 = trunc i64 %507 to i32
  store i32 %508, i32* %504, align 8
  br label %514

509:                                              ; preds = %472
  %510 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %511 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %510, i32 0, i32 12
  %512 = call i64 @ogg_stream_packetout(i32* %511, i32* null)
  store i64 %512, i64* %7, align 8
  br label %513

513:                                              ; preds = %509
  br label %424

514:                                              ; preds = %501
  br label %515

515:                                              ; preds = %514, %369
  %516 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %517 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %516, i32 0, i32 7
  %518 = load i32, i32* %517, align 8
  %519 = sext i32 %518 to i64
  %520 = load i64, i64* %5, align 8
  %521 = icmp sgt i64 %519, %520
  br i1 %521, label %527, label %522

522:                                              ; preds = %515
  %523 = load i64, i64* %5, align 8
  %524 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %525 = call i64 @ov_pcm_total(%struct.TYPE_12__* %524, i32 -1)
  %526 = icmp sgt i64 %523, %525
  br i1 %526, label %527, label %529

527:                                              ; preds = %522, %515
  %528 = load i64, i64* @OV_EFAULT, align 8
  store i64 %528, i64* %7, align 8
  br label %534

529:                                              ; preds = %522
  %530 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %531 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %530, i32 0, i32 11
  store i64 0, i64* %531, align 8
  %532 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %533 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %532, i32 0, i32 10
  store i64 0, i64* %533, align 8
  store i32 0, i32* %3, align 4
  br label %541

534:                                              ; preds = %527, %470, %448, %384, %378, %368, %289, %222, %205, %191, %173, %129, %123
  %535 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %536 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %535, i32 0, i32 7
  store i32 -1, i32* %536, align 8
  %537 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %538 = call i32 @_decode_clear(%struct.TYPE_12__* %537)
  %539 = load i64, i64* %7, align 8
  %540 = trunc i64 %539 to i32
  store i32 %540, i32* %3, align 4
  br label %541

541:                                              ; preds = %534, %529, %461, %44, %35, %28
  %542 = load i32, i32* %3, align 4
  ret i32 %542
}

declare dso_local i64 @ov_pcm_total(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @_seek_helper(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @_get_next_page(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @rescale64(i64, i64, i64) #1

declare dso_local i64 @ogg_page_serialno(i32*) #1

declare dso_local i32 @ogg_page_granulepos(i32*) #1

declare dso_local i32 @_decode_clear(%struct.TYPE_12__*) #1

declare dso_local i32 @vorbis_synthesis_restart(i32*) #1

declare dso_local i32 @ogg_stream_reset_serialno(i32*, i64) #1

declare dso_local i32 @ogg_stream_pagein(i32*, i32*) #1

declare dso_local i64 @ogg_stream_packetpeek(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @_get_prev_page(%struct.TYPE_12__*, i64, i32*) #1

declare dso_local i32 @ogg_page_continued(i32*) #1

declare dso_local i32 @ov_raw_seek(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @ogg_stream_packetout(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
