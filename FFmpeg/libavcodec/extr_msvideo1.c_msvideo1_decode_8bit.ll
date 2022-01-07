; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msvideo1.c_msvideo1_decode_8bit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msvideo1.c_msvideo1_decode_8bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8**, i32* }
%struct.TYPE_5__ = type { i32, i32, i64 }

@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @msvideo1_decode_8bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msvideo1_decode_8bit(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  %19 = alloca [8 x i8], align 1
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %20, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %21, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %18, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 4
  store i32 %41, i32* %10, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 4
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %5, align 4
  store i32 4, i32* %12, align 4
  %51 = load i32, i32* %21, align 4
  %52 = add nsw i32 %51, 4
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %295, %1
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %298

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %58, 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %21, align 4
  %62 = mul nsw i32 %60, %61
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %291, %57
  %65 = load i32, i32* %8, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %294

67:                                               ; preds = %64
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %5, align 4
  br label %291

78:                                               ; preds = %67
  %79 = load i32, i32* %3, align 4
  store i32 %79, i32* %4, align 4
  %80 = call i32 @CHECK_STREAM_PTR(i32 2)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i8, i8* %87, align 1
  store i8 %88, i8* %15, align 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i8, i8* %95, align 1
  store i8 %96, i8* %16, align 1
  %97 = load i8, i8* %15, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %78
  %101 = load i8, i8* %16, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* %5, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %319

108:                                              ; preds = %104, %100, %78
  %109 = load i8, i8* %16, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, 252
  %112 = icmp eq i32 %111, 132
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load i8, i8* %16, align 1
  %115 = zext i8 %114 to i32
  %116 = sub nsw i32 %115, 132
  %117 = shl i32 %116, 8
  %118 = load i8, i8* %15, align 1
  %119 = zext i8 %118 to i32
  %120 = add nsw i32 %117, %119
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* %18, align 4
  br label %284

122:                                              ; preds = %108
  %123 = load i8, i8* %16, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp slt i32 %124, 128
  br i1 %125, label %126, label %188

126:                                              ; preds = %122
  %127 = load i8, i8* %16, align 1
  %128 = zext i8 %127 to i32
  %129 = shl i32 %128, 8
  %130 = load i8, i8* %15, align 1
  %131 = zext i8 %130 to i32
  %132 = or i32 %129, %131
  %133 = trunc i32 %132 to i16
  store i16 %133, i16* %17, align 2
  %134 = call i32 @CHECK_STREAM_PTR(i32 2)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %14, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  store i8 %142, i8* %143, align 1
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 1
  store i8 %151, i8* %152, align 1
  store i32 0, i32* %7, align 4
  br label %153

153:                                              ; preds = %184, %126
  %154 = load i32, i32* %7, align 4
  %155 = icmp slt i32 %154, 4
  br i1 %155, label %156, label %187

156:                                              ; preds = %153
  store i32 0, i32* %6, align 4
  br label %157

157:                                              ; preds = %173, %156
  %158 = load i32, i32* %6, align 4
  %159 = icmp slt i32 %158, 4
  br i1 %159, label %160, label %180

160:                                              ; preds = %157
  %161 = load i16, i16* %17, align 2
  %162 = zext i16 %161 to i32
  %163 = and i32 %162, 1
  %164 = xor i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = load i8*, i8** %20, align 8
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %4, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i8, i8* %168, i64 %171
  store i8 %167, i8* %172, align 1
  br label %173

173:                                              ; preds = %160
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %6, align 4
  %176 = load i16, i16* %17, align 2
  %177 = zext i16 %176 to i32
  %178 = ashr i32 %177, 1
  %179 = trunc i32 %178 to i16
  store i16 %179, i16* %17, align 2
  br label %157

180:                                              ; preds = %157
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %4, align 4
  %183 = sub nsw i32 %182, %181
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %180
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %7, align 4
  br label %153

187:                                              ; preds = %153
  br label %283

188:                                              ; preds = %122
  %189 = load i8, i8* %16, align 1
  %190 = zext i8 %189 to i32
  %191 = icmp sge i32 %190, 144
  br i1 %191, label %192, label %253

192:                                              ; preds = %188
  %193 = load i8, i8* %16, align 1
  %194 = zext i8 %193 to i32
  %195 = shl i32 %194, 8
  %196 = load i8, i8* %15, align 1
  %197 = zext i8 %196 to i32
  %198 = or i32 %195, %197
  %199 = trunc i32 %198 to i16
  store i16 %199, i16* %17, align 2
  %200 = call i32 @CHECK_STREAM_PTR(i32 8)
  %201 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  %208 = call i32 @memcpy(i8* %201, i8* %207, i32 8)
  %209 = load i32, i32* %14, align 4
  %210 = add nsw i32 %209, 8
  store i32 %210, i32* %14, align 4
  store i32 0, i32* %7, align 4
  br label %211

211:                                              ; preds = %249, %192
  %212 = load i32, i32* %7, align 4
  %213 = icmp slt i32 %212, 4
  br i1 %213, label %214, label %252

214:                                              ; preds = %211
  store i32 0, i32* %6, align 4
  br label %215

215:                                              ; preds = %238, %214
  %216 = load i32, i32* %6, align 4
  %217 = icmp slt i32 %216, 4
  br i1 %217, label %218, label %245

218:                                              ; preds = %215
  %219 = load i32, i32* %7, align 4
  %220 = and i32 %219, 2
  %221 = shl i32 %220, 1
  %222 = load i32, i32* %6, align 4
  %223 = and i32 %222, 2
  %224 = add nsw i32 %221, %223
  %225 = load i16, i16* %17, align 2
  %226 = zext i16 %225 to i32
  %227 = and i32 %226, 1
  %228 = xor i32 %227, 1
  %229 = add nsw i32 %224, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 %230
  %232 = load i8, i8* %231, align 1
  %233 = load i8*, i8** %20, align 8
  %234 = load i32, i32* %4, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %4, align 4
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i8, i8* %233, i64 %236
  store i8 %232, i8* %237, align 1
  br label %238

238:                                              ; preds = %218
  %239 = load i32, i32* %6, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %6, align 4
  %241 = load i16, i16* %17, align 2
  %242 = zext i16 %241 to i32
  %243 = ashr i32 %242, 1
  %244 = trunc i32 %243 to i16
  store i16 %244, i16* %17, align 2
  br label %215

245:                                              ; preds = %215
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* %4, align 4
  %248 = sub nsw i32 %247, %246
  store i32 %248, i32* %4, align 4
  br label %249

249:                                              ; preds = %245
  %250 = load i32, i32* %7, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %7, align 4
  br label %211

252:                                              ; preds = %211
  br label %282

253:                                              ; preds = %188
  %254 = load i8, i8* %15, align 1
  %255 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  store i8 %254, i8* %255, align 1
  store i32 0, i32* %7, align 4
  br label %256

256:                                              ; preds = %278, %253
  %257 = load i32, i32* %7, align 4
  %258 = icmp slt i32 %257, 4
  br i1 %258, label %259, label %281

259:                                              ; preds = %256
  store i32 0, i32* %6, align 4
  br label %260

260:                                              ; preds = %271, %259
  %261 = load i32, i32* %6, align 4
  %262 = icmp slt i32 %261, 4
  br i1 %262, label %263, label %274

263:                                              ; preds = %260
  %264 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %265 = load i8, i8* %264, align 1
  %266 = load i8*, i8** %20, align 8
  %267 = load i32, i32* %4, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %4, align 4
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i8, i8* %266, i64 %269
  store i8 %265, i8* %270, align 1
  br label %271

271:                                              ; preds = %263
  %272 = load i32, i32* %6, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %6, align 4
  br label %260

274:                                              ; preds = %260
  %275 = load i32, i32* %13, align 4
  %276 = load i32, i32* %4, align 4
  %277 = sub nsw i32 %276, %275
  store i32 %277, i32* %4, align 4
  br label %278

278:                                              ; preds = %274
  %279 = load i32, i32* %7, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %7, align 4
  br label %256

281:                                              ; preds = %256
  br label %282

282:                                              ; preds = %281, %252
  br label %283

283:                                              ; preds = %282, %187
  br label %284

284:                                              ; preds = %283, %113
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %12, align 4
  %287 = load i32, i32* %3, align 4
  %288 = add nsw i32 %287, %286
  store i32 %288, i32* %3, align 4
  %289 = load i32, i32* %5, align 4
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* %5, align 4
  br label %291

291:                                              ; preds = %285, %70
  %292 = load i32, i32* %8, align 4
  %293 = add nsw i32 %292, -1
  store i32 %293, i32* %8, align 4
  br label %64

294:                                              ; preds = %64
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* %9, align 4
  %297 = add nsw i32 %296, -1
  store i32 %297, i32* %9, align 4
  br label %54

298:                                              ; preds = %54
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 3
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %319

306:                                              ; preds = %298
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 2
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  %311 = load i8**, i8*** %310, align 8
  %312 = getelementptr inbounds i8*, i8** %311, i64 1
  %313 = load i8*, i8** %312, align 8
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 1
  %316 = load i8*, i8** %315, align 8
  %317 = load i32, i32* @AVPALETTE_SIZE, align 4
  %318 = call i32 @memcpy(i8* %313, i8* %316, i32 %317)
  br label %319

319:                                              ; preds = %107, %306, %298
  ret void
}

declare dso_local i32 @CHECK_STREAM_PTR(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
