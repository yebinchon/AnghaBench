; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/jpeg/extr_rjpeg.c_rjpeg_jpeg_decode_block_prog_ac.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/jpeg/extr_rjpeg.c_rjpeg_jpeg_decode_block_prog_ac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32, i32, i32, i32 }

@FAST_BITS = common dso_local global i32 0, align 4
@rjpeg_jpeg_dezigzag = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i16*, i32*, i32*)* @rjpeg_jpeg_decode_block_prog_ac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rjpeg_jpeg_decode_block_prog_ac(%struct.TYPE_8__* %0, i16* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  %18 = alloca i16*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i16*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %394

28:                                               ; preds = %4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %182

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 4
  store i32 1, i32* %5, align 4
  br label %394

46:                                               ; preds = %33
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %175, %46
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 16
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = call i32 @rjpeg_grow_buffer_unsafe(%struct.TYPE_8__* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @FAST_BITS, align 4
  %63 = sub nsw i32 32, %62
  %64 = ashr i32 %61, %63
  %65 = load i32, i32* @FAST_BITS, align 4
  %66 = shl i32 1, %65
  %67 = sub nsw i32 %66, 1
  %68 = and i32 %64, %67
  store i32 %68, i32* %13, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %110

76:                                               ; preds = %58
  %77 = load i32, i32* %14, align 4
  %78 = ashr i32 %77, 4
  %79 = and i32 %78, 15
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %14, align 4
  %83 = and i32 %82, 15
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i64*, i64** @rjpeg_jpeg_dezigzag, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i64, i64* %94, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %14, align 4
  %102 = ashr i32 %101, 8
  %103 = load i32, i32* %11, align 4
  %104 = shl i32 %102, %103
  %105 = trunc i32 %104 to i16
  %106 = load i16*, i16** %7, align 8
  %107 = load i32, i32* %12, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i16, i16* %106, i64 %108
  store i16 %105, i16* %109, align 2
  br label %174

110:                                              ; preds = %58
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @rjpeg_jpeg_huff_decode(%struct.TYPE_8__* %111, i32* %112)
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %16, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i32 0, i32* %5, align 4
  br label %394

117:                                              ; preds = %110
  %118 = load i32, i32* %16, align 4
  %119 = and i32 %118, 15
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %16, align 4
  %121 = ashr i32 %120, 4
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %152

124:                                              ; preds = %117
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %125, 15
  br i1 %126, label %127, label %149

127:                                              ; preds = %124
  %128 = load i32, i32* %14, align 4
  %129 = shl i32 1, %128
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %127
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %136 = load i32, i32* %14, align 4
  %137 = call i64 @rjpeg_jpeg_get_bits(%struct.TYPE_8__* %135, i32 %136)
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %137
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %139, align 4
  br label %144

144:                                              ; preds = %134, %127
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 4
  br label %181

149:                                              ; preds = %124
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 16
  store i32 %151, i32* %10, align 4
  br label %173

152:                                              ; preds = %117
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %10, align 4
  %156 = load i64*, i64** @rjpeg_jpeg_dezigzag, align 8
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i64, i64* %156, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %12, align 4
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @rjpeg_extend_receive(%struct.TYPE_8__* %163, i32 %164)
  %166 = load i32, i32* %11, align 4
  %167 = shl i32 %165, %166
  %168 = trunc i32 %167 to i16
  %169 = load i16*, i16** %7, align 8
  %170 = load i32, i32* %12, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i16, i16* %169, i64 %171
  store i16 %168, i16* %172, align 2
  br label %173

173:                                              ; preds = %152, %149
  br label %174

174:                                              ; preds = %173, %76
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = icmp sle i32 %176, %179
  br i1 %180, label %50, label %181

181:                                              ; preds = %175, %144
  br label %393

182:                                              ; preds = %28
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = shl i32 1, %185
  %187 = trunc i32 %186 to i16
  store i16 %187, i16* %17, align 2
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %259

192:                                              ; preds = %182
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %194, align 4
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  store i32 %199, i32* %10, align 4
  br label %200

200:                                              ; preds = %255, %192
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = icmp sle i32 %201, %204
  br i1 %205, label %206, label %258

206:                                              ; preds = %200
  %207 = load i16*, i16** %7, align 8
  %208 = load i64*, i64** @rjpeg_jpeg_dezigzag, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %208, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds i16, i16* %207, i64 %212
  store i16* %213, i16** %18, align 8
  %214 = load i16*, i16** %18, align 8
  %215 = load i16, i16* %214, align 2
  %216 = sext i16 %215 to i32
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %254

218:                                              ; preds = %206
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %220 = call i64 @rjpeg_jpeg_get_bit(%struct.TYPE_8__* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %253

222:                                              ; preds = %218
  %223 = load i16*, i16** %18, align 8
  %224 = load i16, i16* %223, align 2
  %225 = sext i16 %224 to i32
  %226 = load i16, i16* %17, align 2
  %227 = sext i16 %226 to i32
  %228 = and i32 %225, %227
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %252

230:                                              ; preds = %222
  %231 = load i16*, i16** %18, align 8
  %232 = load i16, i16* %231, align 2
  %233 = sext i16 %232 to i32
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %230
  %236 = load i16, i16* %17, align 2
  %237 = sext i16 %236 to i32
  %238 = load i16*, i16** %18, align 8
  %239 = load i16, i16* %238, align 2
  %240 = sext i16 %239 to i32
  %241 = add nsw i32 %240, %237
  %242 = trunc i32 %241 to i16
  store i16 %242, i16* %238, align 2
  br label %251

243:                                              ; preds = %230
  %244 = load i16, i16* %17, align 2
  %245 = sext i16 %244 to i32
  %246 = load i16*, i16** %18, align 8
  %247 = load i16, i16* %246, align 2
  %248 = sext i16 %247 to i32
  %249 = sub nsw i32 %248, %245
  %250 = trunc i32 %249 to i16
  store i16 %250, i16* %246, align 2
  br label %251

251:                                              ; preds = %243, %235
  br label %252

252:                                              ; preds = %251, %222
  br label %253

253:                                              ; preds = %252, %218
  br label %254

254:                                              ; preds = %253, %206
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %10, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %10, align 4
  br label %200

258:                                              ; preds = %200
  br label %392

259:                                              ; preds = %182
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  store i32 %262, i32* %10, align 4
  br label %263

263:                                              ; preds = %385, %259
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %265 = load i32*, i32** %8, align 8
  %266 = call i32 @rjpeg_jpeg_huff_decode(%struct.TYPE_8__* %264, i32* %265)
  store i32 %266, i32* %21, align 4
  %267 = load i32, i32* %21, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %263
  store i32 0, i32* %5, align 4
  br label %394

270:                                              ; preds = %263
  %271 = load i32, i32* %21, align 4
  %272 = and i32 %271, 15
  store i32 %272, i32* %20, align 4
  %273 = load i32, i32* %21, align 4
  %274 = ashr i32 %273, 4
  store i32 %274, i32* %19, align 4
  %275 = load i32, i32* %20, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %301

277:                                              ; preds = %270
  %278 = load i32, i32* %19, align 4
  %279 = icmp slt i32 %278, 15
  br i1 %279, label %280, label %299

280:                                              ; preds = %277
  %281 = load i32, i32* %19, align 4
  %282 = shl i32 1, %281
  %283 = sub nsw i32 %282, 1
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 3
  store i32 %283, i32* %285, align 4
  %286 = load i32, i32* %19, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %298

288:                                              ; preds = %280
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %290 = load i32, i32* %19, align 4
  %291 = call i64 @rjpeg_jpeg_get_bits(%struct.TYPE_8__* %289, i32 %290)
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = add nsw i64 %295, %291
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %293, align 4
  br label %298

298:                                              ; preds = %288, %280
  store i32 64, i32* %19, align 4
  br label %300

299:                                              ; preds = %277
  br label %300

300:                                              ; preds = %299, %298
  br label %317

301:                                              ; preds = %270
  %302 = load i32, i32* %20, align 4
  %303 = icmp ne i32 %302, 1
  br i1 %303, label %304, label %305

304:                                              ; preds = %301
  store i32 0, i32* %5, align 4
  br label %394

305:                                              ; preds = %301
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %307 = call i64 @rjpeg_jpeg_get_bit(%struct.TYPE_8__* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %305
  %310 = load i16, i16* %17, align 2
  %311 = sext i16 %310 to i32
  store i32 %311, i32* %20, align 4
  br label %316

312:                                              ; preds = %305
  %313 = load i16, i16* %17, align 2
  %314 = sext i16 %313 to i32
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %20, align 4
  br label %316

316:                                              ; preds = %312, %309
  br label %317

317:                                              ; preds = %316, %300
  br label %318

318:                                              ; preds = %383, %317
  %319 = load i32, i32* %10, align 4
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 8
  %323 = icmp sle i32 %319, %322
  br i1 %323, label %324, label %384

324:                                              ; preds = %318
  %325 = load i16*, i16** %7, align 8
  %326 = load i64*, i64** @rjpeg_jpeg_dezigzag, align 8
  %327 = load i32, i32* %10, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %10, align 4
  %329 = sext i32 %327 to i64
  %330 = getelementptr inbounds i64, i64* %326, i64 %329
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds i16, i16* %325, i64 %331
  store i16* %332, i16** %22, align 8
  %333 = load i16*, i16** %22, align 8
  %334 = load i16, i16* %333, align 2
  %335 = sext i16 %334 to i32
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %373

337:                                              ; preds = %324
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %339 = call i64 @rjpeg_jpeg_get_bit(%struct.TYPE_8__* %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %372

341:                                              ; preds = %337
  %342 = load i16*, i16** %22, align 8
  %343 = load i16, i16* %342, align 2
  %344 = sext i16 %343 to i32
  %345 = load i16, i16* %17, align 2
  %346 = sext i16 %345 to i32
  %347 = and i32 %344, %346
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %371

349:                                              ; preds = %341
  %350 = load i16*, i16** %22, align 8
  %351 = load i16, i16* %350, align 2
  %352 = sext i16 %351 to i32
  %353 = icmp sgt i32 %352, 0
  br i1 %353, label %354, label %362

354:                                              ; preds = %349
  %355 = load i16, i16* %17, align 2
  %356 = sext i16 %355 to i32
  %357 = load i16*, i16** %22, align 8
  %358 = load i16, i16* %357, align 2
  %359 = sext i16 %358 to i32
  %360 = add nsw i32 %359, %356
  %361 = trunc i32 %360 to i16
  store i16 %361, i16* %357, align 2
  br label %370

362:                                              ; preds = %349
  %363 = load i16, i16* %17, align 2
  %364 = sext i16 %363 to i32
  %365 = load i16*, i16** %22, align 8
  %366 = load i16, i16* %365, align 2
  %367 = sext i16 %366 to i32
  %368 = sub nsw i32 %367, %364
  %369 = trunc i32 %368 to i16
  store i16 %369, i16* %365, align 2
  br label %370

370:                                              ; preds = %362, %354
  br label %371

371:                                              ; preds = %370, %341
  br label %372

372:                                              ; preds = %371, %337
  br label %383

373:                                              ; preds = %324
  %374 = load i32, i32* %19, align 4
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %373
  %377 = load i32, i32* %20, align 4
  %378 = trunc i32 %377 to i16
  %379 = load i16*, i16** %22, align 8
  store i16 %378, i16* %379, align 2
  br label %384

380:                                              ; preds = %373
  %381 = load i32, i32* %19, align 4
  %382 = add nsw i32 %381, -1
  store i32 %382, i32* %19, align 4
  br label %383

383:                                              ; preds = %380, %372
  br label %318

384:                                              ; preds = %376, %318
  br label %385

385:                                              ; preds = %384
  %386 = load i32, i32* %10, align 4
  %387 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 4
  %389 = load i32, i32* %388, align 8
  %390 = icmp sle i32 %386, %389
  br i1 %390, label %263, label %391

391:                                              ; preds = %385
  br label %392

392:                                              ; preds = %391, %258
  br label %393

393:                                              ; preds = %392, %181
  store i32 1, i32* %5, align 4
  br label %394

394:                                              ; preds = %393, %304, %269, %116, %41, %27
  %395 = load i32, i32* %5, align 4
  ret i32 %395
}

declare dso_local i32 @rjpeg_grow_buffer_unsafe(%struct.TYPE_8__*) #1

declare dso_local i32 @rjpeg_jpeg_huff_decode(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @rjpeg_jpeg_get_bits(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @rjpeg_extend_receive(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @rjpeg_jpeg_get_bit(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
