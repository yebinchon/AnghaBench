; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c_ov_pcm_seek_page.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c_ov_pcm_seek_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i64*, i64*, i64, i64*, i32, i32, i64, float, float, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@OPENED = common dso_local global i64 0, align 8
@OV_EINVAL = common dso_local global i32 0, align 4
@OV_ENOSEEK = common dso_local global i32 0, align 4
@CHUNKSIZE = common dso_local global i64 0, align 8
@OV_EREAD = common dso_local global i64 0, align 8
@STREAMSET = common dso_local global i64 0, align 8
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
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 -1, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = call i64 @ov_pcm_total(%struct.TYPE_12__* %20, i32 -1)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OPENED, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @OV_EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %459

29:                                               ; preds = %2
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 13
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @OV_ENOSEEK, align 4
  store i32 %35, i32* %3, align 4
  br label %459

36:                                               ; preds = %29
  %37 = load i64, i64* %5, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %36
  %44 = load i32, i32* @OV_EINVAL, align 4
  store i32 %44, i32* %3, align 4
  br label %459

45:                                               ; preds = %39
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %70, %45
  %51 = load i32, i32* %6, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 %57, 2
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %56, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = sub nsw i64 %63, %62
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %73

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %6, align 4
  br label %50

73:                                               ; preds = %68, %50
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %9, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %10, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = mul nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %11, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = mul nsw i32 %100, 2
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %99, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %11, align 8
  %107 = add nsw i64 %105, %106
  store i64 %107, i64* %12, align 8
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* %8, align 8
  %110 = sub nsw i64 %108, %109
  %111 = load i64, i64* %11, align 8
  %112 = add nsw i64 %110, %111
  store i64 %112, i64* %13, align 8
  %113 = load i64, i64* %10, align 8
  store i64 %113, i64* %14, align 8
  br label %114

114:                                              ; preds = %292, %73
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %9, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %293

118:                                              ; preds = %114
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %10, align 8
  %121 = sub nsw i64 %119, %120
  %122 = load i64, i64* @CHUNKSIZE, align 8
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i64, i64* %10, align 8
  store i64 %125, i64* %16, align 8
  br label %154

126:                                              ; preds = %118
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* %11, align 8
  %130 = sub nsw i64 %128, %129
  %131 = sitofp i64 %130 to double
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* %10, align 8
  %134 = sub nsw i64 %132, %133
  %135 = sitofp i64 %134 to double
  %136 = fmul double %131, %135
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* %11, align 8
  %139 = sub nsw i64 %137, %138
  %140 = sitofp i64 %139 to double
  %141 = fdiv double %136, %140
  %142 = fptosi double %141 to i64
  %143 = add nsw i64 %127, %142
  %144 = load i64, i64* @CHUNKSIZE, align 8
  %145 = sub nsw i64 %143, %144
  store i64 %145, i64* %16, align 8
  %146 = load i64, i64* %16, align 8
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* @CHUNKSIZE, align 8
  %149 = add nsw i64 %147, %148
  %150 = icmp slt i64 %146, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %126
  %152 = load i64, i64* %10, align 8
  store i64 %152, i64* %16, align 8
  br label %153

153:                                              ; preds = %151, %126
  br label %154

154:                                              ; preds = %153, %124
  %155 = load i64, i64* %16, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %155, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %154
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %162 = load i64, i64* %16, align 8
  %163 = call i64 @_seek_helper(%struct.TYPE_12__* %161, i64 %162)
  store i64 %163, i64* %7, align 8
  %164 = load i64, i64* %7, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %452

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %167, %154
  br label %169

169:                                              ; preds = %291, %235, %229, %168
  %170 = load i64, i64* %10, align 8
  %171 = load i64, i64* %9, align 8
  %172 = icmp slt i64 %170, %171
  br i1 %172, label %173, label %292

173:                                              ; preds = %169
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %175 = load i64, i64* %9, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = sub nsw i64 %175, %178
  %180 = trunc i64 %179 to i32
  %181 = call i64 @_get_next_page(%struct.TYPE_12__* %174, i32* %15, i32 %180)
  store i64 %181, i64* %7, align 8
  %182 = load i64, i64* %7, align 8
  %183 = load i64, i64* @OV_EREAD, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %173
  br label %452

186:                                              ; preds = %173
  %187 = load i64, i64* %7, align 8
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %219

189:                                              ; preds = %186
  %190 = load i64, i64* %16, align 8
  %191 = load i64, i64* %10, align 8
  %192 = add nsw i64 %191, 1
  %193 = icmp sle i64 %190, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = load i64, i64* %10, align 8
  store i64 %195, i64* %9, align 8
  br label %218

196:                                              ; preds = %189
  %197 = load i64, i64* %16, align 8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  br label %452

200:                                              ; preds = %196
  %201 = load i64, i64* @CHUNKSIZE, align 8
  %202 = load i64, i64* %16, align 8
  %203 = sub nsw i64 %202, %201
  store i64 %203, i64* %16, align 8
  %204 = load i64, i64* %16, align 8
  %205 = load i64, i64* %10, align 8
  %206 = icmp sle i64 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %200
  %208 = load i64, i64* %10, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %16, align 8
  br label %210

210:                                              ; preds = %207, %200
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %212 = load i64, i64* %16, align 8
  %213 = call i64 @_seek_helper(%struct.TYPE_12__* %211, i64 %212)
  store i64 %213, i64* %7, align 8
  %214 = load i64, i64* %7, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  br label %452

217:                                              ; preds = %210
  br label %218

218:                                              ; preds = %217, %194
  br label %291

219:                                              ; preds = %186
  %220 = call i64 @ogg_page_serialno(i32* %15)
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 5
  %223 = load i64*, i64** %222, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %220, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %219
  br label %169

230:                                              ; preds = %219
  %231 = call i32 @ogg_page_granulepos(i32* %15)
  %232 = sext i32 %231 to i64
  store i64 %232, i64* %17, align 8
  %233 = load i64, i64* %17, align 8
  %234 = icmp eq i64 %233, -1
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  br label %169

236:                                              ; preds = %230
  %237 = load i64, i64* %17, align 8
  %238 = load i64, i64* %13, align 8
  %239 = icmp slt i64 %237, %238
  br i1 %239, label %240, label %253

240:                                              ; preds = %236
  %241 = load i64, i64* %7, align 8
  store i64 %241, i64* %14, align 8
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %10, align 8
  %245 = load i64, i64* %17, align 8
  store i64 %245, i64* %11, align 8
  %246 = load i64, i64* %13, align 8
  %247 = load i64, i64* %11, align 8
  %248 = sub nsw i64 %246, %247
  %249 = icmp sgt i64 %248, 44100
  br i1 %249, label %250, label %251

250:                                              ; preds = %240
  br label %292

251:                                              ; preds = %240
  %252 = load i64, i64* %10, align 8
  store i64 %252, i64* %16, align 8
  br label %290

253:                                              ; preds = %236
  %254 = load i64, i64* %16, align 8
  %255 = load i64, i64* %10, align 8
  %256 = add nsw i64 %255, 1
  %257 = icmp sle i64 %254, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %253
  %259 = load i64, i64* %10, align 8
  store i64 %259, i64* %9, align 8
  br label %289

260:                                              ; preds = %253
  %261 = load i64, i64* %9, align 8
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 4
  %264 = load i64, i64* %263, align 8
  %265 = icmp eq i64 %261, %264
  br i1 %265, label %266, label %285

266:                                              ; preds = %260
  %267 = load i64, i64* %7, align 8
  store i64 %267, i64* %9, align 8
  %268 = load i64, i64* @CHUNKSIZE, align 8
  %269 = load i64, i64* %16, align 8
  %270 = sub nsw i64 %269, %268
  store i64 %270, i64* %16, align 8
  %271 = load i64, i64* %16, align 8
  %272 = load i64, i64* %10, align 8
  %273 = icmp sle i64 %271, %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %266
  %275 = load i64, i64* %10, align 8
  %276 = add nsw i64 %275, 1
  store i64 %276, i64* %16, align 8
  br label %277

277:                                              ; preds = %274, %266
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %279 = load i64, i64* %16, align 8
  %280 = call i64 @_seek_helper(%struct.TYPE_12__* %278, i64 %279)
  store i64 %280, i64* %7, align 8
  %281 = load i64, i64* %7, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %277
  br label %452

284:                                              ; preds = %277
  br label %288

285:                                              ; preds = %260
  %286 = load i64, i64* %16, align 8
  store i64 %286, i64* %9, align 8
  %287 = load i64, i64* %17, align 8
  store i64 %287, i64* %12, align 8
  br label %292

288:                                              ; preds = %284
  br label %289

289:                                              ; preds = %288, %258
  br label %290

290:                                              ; preds = %289, %251
  br label %291

291:                                              ; preds = %290, %218
  br label %169

292:                                              ; preds = %285, %250, %169
  br label %114

293:                                              ; preds = %114
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %295 = load i64, i64* %14, align 8
  %296 = call i64 @_seek_helper(%struct.TYPE_12__* %294, i64 %295)
  store i64 %296, i64* %7, align 8
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 6
  store i32 -1, i32* %298, align 8
  %299 = load i64, i64* %7, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %293
  br label %452

302:                                              ; preds = %293
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %304 = call i64 @_get_next_page(%struct.TYPE_12__* %303, i32* %18, i32 -1)
  store i64 %304, i64* %7, align 8
  %305 = load i64, i64* %7, align 8
  %306 = icmp slt i64 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %302
  br label %452

308:                                              ; preds = %302
  %309 = load i32, i32* %6, align 4
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 7
  %312 = load i32, i32* %311, align 4
  %313 = icmp ne i32 %309, %312
  br i1 %313, label %314, label %332

314:                                              ; preds = %308
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %316 = call i32 @_decode_clear(%struct.TYPE_12__* %315)
  %317 = load i32, i32* %6, align 4
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 7
  store i32 %317, i32* %319, align 4
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 5
  %322 = load i64*, i64** %321, align 8
  %323 = load i32, i32* %6, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i64, i64* %322, i64 %324
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 8
  store i64 %326, i64* %328, align 8
  %329 = load i64, i64* @STREAMSET, align 8
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 0
  store i64 %329, i64* %331, align 8
  br label %336

332:                                              ; preds = %308
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 12
  %335 = call i32 @vorbis_synthesis_restart(i32* %334)
  br label %336

336:                                              ; preds = %332, %314
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 11
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 8
  %341 = load i64, i64* %340, align 8
  %342 = call i32 @ogg_stream_reset_serialno(i32* %338, i64 %341)
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 11
  %345 = call i32 @ogg_stream_pagein(i32* %344, i32* %18)
  br label %346

346:                                              ; preds = %336, %432
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 11
  %349 = call i64 @ogg_stream_packetpeek(i32* %348, %struct.TYPE_11__* %19)
  store i64 %349, i64* %7, align 8
  %350 = load i64, i64* %7, align 8
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %352, label %386

352:                                              ; preds = %346
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %354 = load i64, i64* %14, align 8
  %355 = call i64 @_seek_helper(%struct.TYPE_12__* %353, i64 %354)
  store i64 %355, i64* %7, align 8
  %356 = load i64, i64* %7, align 8
  %357 = icmp slt i64 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %352
  br label %452

359:                                              ; preds = %352
  br label %360

360:                                              ; preds = %359, %382
  %361 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %362 = call i64 @_get_prev_page(%struct.TYPE_12__* %361, i32* %18)
  store i64 %362, i64* %7, align 8
  %363 = load i64, i64* %7, align 8
  %364 = icmp slt i64 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %360
  br label %452

366:                                              ; preds = %360
  %367 = call i64 @ogg_page_serialno(i32* %18)
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 8
  %370 = load i64, i64* %369, align 8
  %371 = icmp eq i64 %367, %370
  br i1 %371, label %372, label %382

372:                                              ; preds = %366
  %373 = call i32 @ogg_page_granulepos(i32* %18)
  %374 = icmp sgt i32 %373, -1
  br i1 %374, label %378, label %375

375:                                              ; preds = %372
  %376 = call i32 @ogg_page_continued(i32* %18)
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %382, label %378

378:                                              ; preds = %375, %372
  %379 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %380 = load i64, i64* %7, align 8
  %381 = call i32 @ov_raw_seek(%struct.TYPE_12__* %379, i64 %380)
  store i32 %381, i32* %3, align 4
  br label %459

382:                                              ; preds = %375, %366
  %383 = load i64, i64* %7, align 8
  %384 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 4
  store i64 %383, i64* %385, align 8
  br label %360

386:                                              ; preds = %346
  %387 = load i64, i64* %7, align 8
  %388 = icmp slt i64 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %386
  %390 = load i64, i64* @OV_EBADPACKET, align 8
  store i64 %390, i64* %7, align 8
  br label %452

391:                                              ; preds = %386
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = icmp ne i32 %393, -1
  br i1 %394, label %395, label %428

395:                                              ; preds = %391
  %396 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = sext i32 %397 to i64
  %399 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %399, i32 0, i32 2
  %401 = load i64*, i64** %400, align 8
  %402 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 7
  %404 = load i32, i32* %403, align 4
  %405 = mul nsw i32 %404, 2
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i64, i64* %401, i64 %406
  %408 = load i64, i64* %407, align 8
  %409 = sub nsw i64 %398, %408
  %410 = trunc i64 %409 to i32
  %411 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 6
  store i32 %410, i32* %412, align 8
  %413 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %413, i32 0, i32 6
  %415 = load i32, i32* %414, align 8
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %417, label %420

417:                                              ; preds = %395
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 6
  store i32 0, i32* %419, align 8
  br label %420

420:                                              ; preds = %417, %395
  %421 = load i64, i64* %8, align 8
  %422 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %422, i32 0, i32 6
  %424 = load i32, i32* %423, align 8
  %425 = sext i32 %424 to i64
  %426 = add nsw i64 %425, %421
  %427 = trunc i64 %426 to i32
  store i32 %427, i32* %423, align 8
  br label %433

428:                                              ; preds = %391
  %429 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %429, i32 0, i32 11
  %431 = call i64 @ogg_stream_packetout(i32* %430, i32* null)
  store i64 %431, i64* %7, align 8
  br label %432

432:                                              ; preds = %428
  br label %346

433:                                              ; preds = %420
  %434 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 6
  %436 = load i32, i32* %435, align 8
  %437 = sext i32 %436 to i64
  %438 = load i64, i64* %5, align 8
  %439 = icmp sgt i64 %437, %438
  br i1 %439, label %445, label %440

440:                                              ; preds = %433
  %441 = load i64, i64* %5, align 8
  %442 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %443 = call i64 @ov_pcm_total(%struct.TYPE_12__* %442, i32 -1)
  %444 = icmp sgt i64 %441, %443
  br i1 %444, label %445, label %447

445:                                              ; preds = %440, %433
  %446 = load i64, i64* @OV_EFAULT, align 8
  store i64 %446, i64* %7, align 8
  br label %452

447:                                              ; preds = %440
  %448 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %448, i32 0, i32 9
  store float 0.000000e+00, float* %449, align 8
  %450 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %451 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %450, i32 0, i32 10
  store float 0.000000e+00, float* %451, align 4
  store i32 0, i32* %3, align 4
  br label %459

452:                                              ; preds = %445, %389, %365, %358, %307, %301, %283, %216, %199, %185, %166
  %453 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %454 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %453, i32 0, i32 6
  store i32 -1, i32* %454, align 8
  %455 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %456 = call i32 @_decode_clear(%struct.TYPE_12__* %455)
  %457 = load i64, i64* %7, align 8
  %458 = trunc i64 %457 to i32
  store i32 %458, i32* %3, align 4
  br label %459

459:                                              ; preds = %452, %447, %378, %43, %34, %27
  %460 = load i32, i32* %3, align 4
  ret i32 %460
}

declare dso_local i64 @ov_pcm_total(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @_seek_helper(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @_get_next_page(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @ogg_page_serialno(i32*) #1

declare dso_local i32 @ogg_page_granulepos(i32*) #1

declare dso_local i32 @_decode_clear(%struct.TYPE_12__*) #1

declare dso_local i32 @vorbis_synthesis_restart(i32*) #1

declare dso_local i32 @ogg_stream_reset_serialno(i32*, i64) #1

declare dso_local i32 @ogg_stream_pagein(i32*, i32*) #1

declare dso_local i64 @ogg_stream_packetpeek(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @_get_prev_page(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ogg_page_continued(i32*) #1

declare dso_local i32 @ov_raw_seek(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @ogg_stream_packetout(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
