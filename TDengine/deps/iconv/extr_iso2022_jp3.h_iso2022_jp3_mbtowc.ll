; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_jp3.h_iso2022_jp3_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_jp3.h_iso2022_jp3_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ESC = common dso_local global i8 0, align 1
@RET_ILSEQ = common dso_local global i32 0, align 4
@jisx0213_to_ucs_combining = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i8*, i32)* @iso2022_jp3_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022_jp3_mbtowc(%struct.TYPE_6__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 3
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 7
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %5, align 4
  br label %402

35:                                               ; preds = %4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %191, %174, %139, %109, %92, %75, %35
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %13, align 1
  %42 = load i8, i8* %13, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @ESC, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %195

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 3
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %390

53:                                               ; preds = %47
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 40
  br i1 %58, label %59, label %111

59:                                               ; preds = %53
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 66
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  store i32 133, i32* %11, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  store i8* %67, i8** %8, align 8
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 3
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %390

75:                                               ; preds = %65
  br label %39

76:                                               ; preds = %59
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 74
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  store i32 131, i32* %11, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 3
  store i8* %84, i8** %8, align 8
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 3
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %390

92:                                               ; preds = %82
  br label %39

93:                                               ; preds = %76
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 73
  br i1 %98, label %99, label %110

99:                                               ; preds = %93
  store i32 132, i32* %11, align 4
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 3
  store i8* %101, i8** %8, align 8
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 3
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %390

109:                                              ; preds = %99
  br label %39

110:                                              ; preds = %93
  br label %396

111:                                              ; preds = %53
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 36
  br i1 %116, label %117, label %194

117:                                              ; preds = %111
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %121, 64
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 66
  br i1 %128, label %129, label %140

129:                                              ; preds = %123, %117
  store i32 130, i32* %11, align 4
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 3
  store i8* %131, i8** %8, align 8
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 3
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  %137 = icmp slt i32 %134, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %390

139:                                              ; preds = %129
  br label %39

140:                                              ; preds = %123
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 2
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %144, 40
  br i1 %145, label %146, label %193

146:                                              ; preds = %140
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 4
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %390

152:                                              ; preds = %146
  %153 = load i8*, i8** %8, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 3
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %156, 79
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = load i8*, i8** %8, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 3
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp eq i32 %162, 81
  br i1 %163, label %164, label %175

164:                                              ; preds = %158, %152
  store i32 129, i32* %11, align 4
  %165 = load i8*, i8** %8, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 4
  store i8* %166, i8** %8, align 8
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 4
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, 1
  %172 = icmp slt i32 %169, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %164
  br label %390

174:                                              ; preds = %164
  br label %39

175:                                              ; preds = %158
  %176 = load i8*, i8** %8, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 3
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = icmp eq i32 %179, 80
  br i1 %180, label %181, label %192

181:                                              ; preds = %175
  store i32 128, i32* %11, align 4
  %182 = load i8*, i8** %8, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 4
  store i8* %183, i8** %8, align 8
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, 4
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  br label %390

191:                                              ; preds = %181
  br label %39

192:                                              ; preds = %175
  br label %193

193:                                              ; preds = %192, %140
  br label %396

194:                                              ; preds = %111
  br label %396

195:                                              ; preds = %39
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %11, align 4
  switch i32 %197, label %388 [
    i32 133, label %198
    i32 131, label %223
    i32 132, label %248
    i32 130, label %276
    i32 129, label %315
    i32 128, label %315
  ]

198:                                              ; preds = %196
  %199 = load i8, i8* %13, align 1
  %200 = zext i8 %199 to i32
  %201 = icmp slt i32 %200, 128
  br i1 %201, label %202, label %222

202:                                              ; preds = %198
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %204 = load i32*, i32** %7, align 8
  %205 = load i8*, i8** %8, align 8
  %206 = call i32 @ascii_mbtowc(%struct.TYPE_6__* %203, i32* %204, i8* %205, i32 1)
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %14, align 4
  %208 = load i32, i32* @RET_ILSEQ, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  br label %396

211:                                              ; preds = %202
  %212 = load i32, i32* %14, align 4
  %213 = icmp ne i32 %212, 1
  br i1 %213, label %214, label %216

214:                                              ; preds = %211
  %215 = call i32 (...) @abort() #3
  unreachable

216:                                              ; preds = %211
  %217 = load i32, i32* %11, align 4
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %5, align 4
  br label %402

222:                                              ; preds = %198
  br label %396

223:                                              ; preds = %196
  %224 = load i8, i8* %13, align 1
  %225 = zext i8 %224 to i32
  %226 = icmp slt i32 %225, 128
  br i1 %226, label %227, label %247

227:                                              ; preds = %223
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %229 = load i32*, i32** %7, align 8
  %230 = load i8*, i8** %8, align 8
  %231 = call i32 @jisx0201_mbtowc(%struct.TYPE_6__* %228, i32* %229, i8* %230, i32 1)
  store i32 %231, i32* %15, align 4
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* @RET_ILSEQ, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %227
  br label %396

236:                                              ; preds = %227
  %237 = load i32, i32* %15, align 4
  %238 = icmp ne i32 %237, 1
  br i1 %238, label %239, label %241

239:                                              ; preds = %236
  %240 = call i32 (...) @abort() #3
  unreachable

241:                                              ; preds = %236
  %242 = load i32, i32* %11, align 4
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* %12, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %5, align 4
  br label %402

247:                                              ; preds = %223
  br label %396

248:                                              ; preds = %196
  %249 = load i8, i8* %13, align 1
  %250 = zext i8 %249 to i32
  %251 = icmp slt i32 %250, 128
  br i1 %251, label %252, label %275

252:                                              ; preds = %248
  %253 = load i8, i8* %13, align 1
  %254 = zext i8 %253 to i32
  %255 = add nsw i32 %254, 128
  %256 = trunc i32 %255 to i8
  store i8 %256, i8* %16, align 1
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %258 = load i32*, i32** %7, align 8
  %259 = call i32 @jisx0201_mbtowc(%struct.TYPE_6__* %257, i32* %258, i8* %16, i32 1)
  store i32 %259, i32* %17, align 4
  %260 = load i32, i32* %17, align 4
  %261 = load i32, i32* @RET_ILSEQ, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %252
  br label %396

264:                                              ; preds = %252
  %265 = load i32, i32* %17, align 4
  %266 = icmp ne i32 %265, 1
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = call i32 (...) @abort() #3
  unreachable

269:                                              ; preds = %264
  %270 = load i32, i32* %11, align 4
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 4
  %273 = load i32, i32* %12, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %5, align 4
  br label %402

275:                                              ; preds = %248
  br label %396

276:                                              ; preds = %196
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* %12, align 4
  %279 = add nsw i32 %278, 2
  %280 = icmp slt i32 %277, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %276
  br label %390

282:                                              ; preds = %276
  %283 = load i8*, i8** %8, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 0
  %285 = load i8, i8* %284, align 1
  %286 = zext i8 %285 to i32
  %287 = icmp slt i32 %286, 128
  br i1 %287, label %288, label %314

288:                                              ; preds = %282
  %289 = load i8*, i8** %8, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 1
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i32
  %293 = icmp slt i32 %292, 128
  br i1 %293, label %294, label %314

294:                                              ; preds = %288
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %296 = load i32*, i32** %7, align 8
  %297 = load i8*, i8** %8, align 8
  %298 = call i32 @jisx0208_mbtowc(%struct.TYPE_6__* %295, i32* %296, i8* %297, i32 2)
  store i32 %298, i32* %18, align 4
  %299 = load i32, i32* %18, align 4
  %300 = load i32, i32* @RET_ILSEQ, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %294
  br label %396

303:                                              ; preds = %294
  %304 = load i32, i32* %18, align 4
  %305 = icmp ne i32 %304, 2
  br i1 %305, label %306, label %308

306:                                              ; preds = %303
  %307 = call i32 (...) @abort() #3
  unreachable

308:                                              ; preds = %303
  %309 = load i32, i32* %11, align 4
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  store i32 %309, i32* %311, align 4
  %312 = load i32, i32* %12, align 4
  %313 = add nsw i32 %312, 2
  store i32 %313, i32* %5, align 4
  br label %402

314:                                              ; preds = %288, %282
  br label %396

315:                                              ; preds = %196, %196
  %316 = load i32, i32* %9, align 4
  %317 = load i32, i32* %12, align 4
  %318 = add nsw i32 %317, 2
  %319 = icmp slt i32 %316, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %315
  br label %390

321:                                              ; preds = %315
  %322 = load i8*, i8** %8, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 0
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = icmp slt i32 %325, 128
  br i1 %326, label %327, label %387

327:                                              ; preds = %321
  %328 = load i8*, i8** %8, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 1
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  %332 = icmp slt i32 %331, 128
  br i1 %332, label %333, label %387

333:                                              ; preds = %327
  %334 = load i32, i32* %11, align 4
  %335 = sub nsw i32 %334, 129
  %336 = add nsw i32 %335, 1
  %337 = shl i32 %336, 8
  %338 = load i8*, i8** %8, align 8
  %339 = getelementptr inbounds i8, i8* %338, i64 0
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i32
  %342 = add nsw i32 %337, %341
  %343 = load i8*, i8** %8, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 1
  %345 = load i8, i8* %344, align 1
  %346 = call i32 @jisx0213_to_ucs4(i32 %342, i8 zeroext %345)
  store i32 %346, i32* %19, align 4
  %347 = load i32, i32* %19, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %386

349:                                              ; preds = %333
  %350 = load i32, i32* %19, align 4
  %351 = icmp slt i32 %350, 128
  br i1 %351, label %352, label %377

352:                                              ; preds = %349
  %353 = load i32**, i32*** @jisx0213_to_ucs_combining, align 8
  %354 = load i32, i32* %19, align 4
  %355 = sub nsw i32 %354, 1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32*, i32** %353, i64 %356
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 0
  %360 = load i32, i32* %359, align 4
  store i32 %360, i32* %20, align 4
  %361 = load i32**, i32*** @jisx0213_to_ucs_combining, align 8
  %362 = load i32, i32* %19, align 4
  %363 = sub nsw i32 %362, 1
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32*, i32** %361, i64 %364
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 1
  %368 = load i32, i32* %367, align 4
  store i32 %368, i32* %21, align 4
  %369 = load i32, i32* %20, align 4
  %370 = load i32*, i32** %7, align 8
  store i32 %369, i32* %370, align 4
  %371 = load i32, i32* %21, align 4
  %372 = shl i32 %371, 3
  %373 = load i32, i32* %11, align 4
  %374 = or i32 %372, %373
  %375 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 0
  store i32 %374, i32* %376, align 4
  br label %383

377:                                              ; preds = %349
  %378 = load i32, i32* %19, align 4
  %379 = load i32*, i32** %7, align 8
  store i32 %378, i32* %379, align 4
  %380 = load i32, i32* %11, align 4
  %381 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 0
  store i32 %380, i32* %382, align 4
  br label %383

383:                                              ; preds = %377, %352
  %384 = load i32, i32* %12, align 4
  %385 = add nsw i32 %384, 2
  store i32 %385, i32* %5, align 4
  br label %402

386:                                              ; preds = %333
  br label %387

387:                                              ; preds = %386, %327, %321
  br label %396

388:                                              ; preds = %196
  %389 = call i32 (...) @abort() #3
  unreachable

390:                                              ; preds = %320, %281, %190, %173, %151, %138, %108, %91, %74, %52
  %391 = load i32, i32* %11, align 4
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 0
  store i32 %391, i32* %393, align 4
  %394 = load i32, i32* %12, align 4
  %395 = call i32 @RET_TOOFEW(i32 %394)
  store i32 %395, i32* %5, align 4
  br label %402

396:                                              ; preds = %387, %314, %302, %275, %263, %247, %235, %222, %210, %194, %193, %110
  %397 = load i32, i32* %11, align 4
  %398 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 0
  store i32 %397, i32* %399, align 4
  %400 = load i32, i32* %12, align 4
  %401 = call i32 @RET_SHIFT_ILSEQ(i32 %400)
  store i32 %401, i32* %5, align 4
  br label %402

402:                                              ; preds = %396, %390, %383, %308, %269, %241, %216, %28
  %403 = load i32, i32* %5, align 4
  ret i32 %403
}

declare dso_local i32 @ascii_mbtowc(%struct.TYPE_6__*, i32*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @jisx0201_mbtowc(%struct.TYPE_6__*, i32*, i8*, i32) #1

declare dso_local i32 @jisx0208_mbtowc(%struct.TYPE_6__*, i32*, i8*, i32) #1

declare dso_local i32 @jisx0213_to_ucs4(i32, i8 zeroext) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @RET_SHIFT_ILSEQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
