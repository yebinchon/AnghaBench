; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_jp2.h_iso2022_jp2_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_jp2.h_iso2022_jp2_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }

@SPLIT_STATE = common dso_local global i32 0, align 4
@ESC = common dso_local global i8 0, align 1
@state1 = common dso_local global i32 0, align 4
@state2 = common dso_local global i32 0, align 4
@RET_ILSEQ = common dso_local global i32 0, align 4
@COMBINE_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i8*, i32)* @iso2022_jp2_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022_jp2_mbtowc(%struct.TYPE_11__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %10, align 8
  %28 = load i32, i32* @SPLIT_STATE, align 4
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %240, %223, %192, %175, %146, %129, %99, %82, %65, %4
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %12, align 1
  %32 = load i8, i8* %12, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @ESC, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %320

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 3
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %584

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 40
  br i1 %48, label %49, label %101

49:                                               ; preds = %43
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 66
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  store i32 137, i32* @state1, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 3
  store i8* %57, i8** %8, align 8
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 3
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %584

65:                                               ; preds = %55
  br label %29

66:                                               ; preds = %49
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 74
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  store i32 131, i32* @state1, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 3
  store i8* %74, i8** %8, align 8
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 3
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %584

82:                                               ; preds = %72
  br label %29

83:                                               ; preds = %66
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 73
  br i1 %88, label %89, label %100

89:                                               ; preds = %83
  store i32 132, i32* @state1, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 3
  store i8* %91, i8** %8, align 8
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 3
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %584

99:                                               ; preds = %89
  br label %29

100:                                              ; preds = %83
  br label %591

101:                                              ; preds = %43
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %105, 36
  br i1 %106, label %107, label %195

107:                                              ; preds = %101
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 64
  br i1 %112, label %119, label %113

113:                                              ; preds = %107
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %117, 66
  br i1 %118, label %119, label %130

119:                                              ; preds = %113, %107
  store i32 130, i32* @state1, align 4
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 3
  store i8* %121, i8** %8, align 8
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 3
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  %127 = icmp slt i32 %124, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  br label %584

129:                                              ; preds = %119
  br label %29

130:                                              ; preds = %113
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 65
  br i1 %135, label %136, label %147

136:                                              ; preds = %130
  store i32 133, i32* @state1, align 4
  %137 = load i8*, i8** %8, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 3
  store i8* %138, i8** %8, align 8
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 3
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  br label %584

146:                                              ; preds = %136
  br label %29

147:                                              ; preds = %130
  %148 = load i8*, i8** %8, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 2
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %151, 40
  br i1 %152, label %153, label %194

153:                                              ; preds = %147
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 4
  %157 = icmp slt i32 %154, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %584

159:                                              ; preds = %153
  %160 = load i8*, i8** %8, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 3
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp eq i32 %163, 68
  br i1 %164, label %165, label %176

165:                                              ; preds = %159
  store i32 129, i32* @state1, align 4
  %166 = load i8*, i8** %8, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 4
  store i8* %167, i8** %8, align 8
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 4
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 1
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %165
  br label %584

175:                                              ; preds = %165
  br label %29

176:                                              ; preds = %159
  %177 = load i8*, i8** %8, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 3
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %180, 67
  br i1 %181, label %182, label %193

182:                                              ; preds = %176
  store i32 128, i32* @state1, align 4
  %183 = load i8*, i8** %8, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 4
  store i8* %184, i8** %8, align 8
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 4
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, 1
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %182
  br label %584

192:                                              ; preds = %182
  br label %29

193:                                              ; preds = %176
  br label %591

194:                                              ; preds = %147
  br label %591

195:                                              ; preds = %101
  %196 = load i8*, i8** %8, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 1
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp eq i32 %199, 46
  br i1 %200, label %201, label %242

201:                                              ; preds = %195
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 3
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %584

207:                                              ; preds = %201
  %208 = load i8*, i8** %8, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 2
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp eq i32 %211, 65
  br i1 %212, label %213, label %224

213:                                              ; preds = %207
  store i32 136, i32* @state2, align 4
  %214 = load i8*, i8** %8, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 3
  store i8* %215, i8** %8, align 8
  %216 = load i32, i32* %11, align 4
  %217 = add nsw i32 %216, 3
  store i32 %217, i32* %11, align 4
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %11, align 4
  %220 = add nsw i32 %219, 1
  %221 = icmp slt i32 %218, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  br label %584

223:                                              ; preds = %213
  br label %29

224:                                              ; preds = %207
  %225 = load i8*, i8** %8, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 2
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = icmp eq i32 %228, 70
  br i1 %229, label %230, label %241

230:                                              ; preds = %224
  store i32 135, i32* @state2, align 4
  %231 = load i8*, i8** %8, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 3
  store i8* %232, i8** %8, align 8
  %233 = load i32, i32* %11, align 4
  %234 = add nsw i32 %233, 3
  store i32 %234, i32* %11, align 4
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %236, 1
  %238 = icmp slt i32 %235, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %230
  br label %584

240:                                              ; preds = %230
  br label %29

241:                                              ; preds = %224
  br label %591

242:                                              ; preds = %195
  %243 = load i8*, i8** %8, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 1
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = icmp eq i32 %246, 78
  br i1 %247, label %248, label %319

248:                                              ; preds = %242
  %249 = load i32, i32* @state2, align 4
  switch i32 %249, label %317 [
    i32 134, label %250
    i32 136, label %251
    i32 135, label %284
  ]

250:                                              ; preds = %248
  br label %591

251:                                              ; preds = %248
  %252 = load i8*, i8** %8, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 2
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = icmp slt i32 %255, 128
  br i1 %256, label %257, label %283

257:                                              ; preds = %251
  %258 = load i8*, i8** %8, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 2
  %260 = load i8, i8* %259, align 1
  %261 = zext i8 %260 to i32
  %262 = add nsw i32 %261, 128
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %13, align 1
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %265 = load i32*, i32** %7, align 8
  %266 = call i32 @iso8859_1_mbtowc(%struct.TYPE_11__* %264, i32* %265, i8* %13, i32 1)
  store i32 %266, i32* %14, align 4
  %267 = load i32, i32* %14, align 4
  %268 = load i32, i32* @RET_ILSEQ, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %257
  br label %591

271:                                              ; preds = %257
  %272 = load i32, i32* %14, align 4
  %273 = icmp ne i32 %272, 1
  br i1 %273, label %274, label %276

274:                                              ; preds = %271
  %275 = call i32 (...) @abort() #3
  unreachable

276:                                              ; preds = %271
  %277 = load i32, i32* @COMBINE_STATE, align 4
  %278 = load i8*, i8** %10, align 8
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 0
  store i8* %278, i8** %280, align 8
  %281 = load i32, i32* %11, align 4
  %282 = add nsw i32 %281, 3
  store i32 %282, i32* %5, align 4
  br label %598

283:                                              ; preds = %251
  br label %591

284:                                              ; preds = %248
  %285 = load i8*, i8** %8, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 2
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = icmp slt i32 %288, 128
  br i1 %289, label %290, label %316

290:                                              ; preds = %284
  %291 = load i8*, i8** %8, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 2
  %293 = load i8, i8* %292, align 1
  %294 = zext i8 %293 to i32
  %295 = add nsw i32 %294, 128
  %296 = trunc i32 %295 to i8
  store i8 %296, i8* %15, align 1
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %298 = load i32*, i32** %7, align 8
  %299 = call i32 @iso8859_7_mbtowc(%struct.TYPE_11__* %297, i32* %298, i8* %15, i32 1)
  store i32 %299, i32* %16, align 4
  %300 = load i32, i32* %16, align 4
  %301 = load i32, i32* @RET_ILSEQ, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %290
  br label %591

304:                                              ; preds = %290
  %305 = load i32, i32* %16, align 4
  %306 = icmp ne i32 %305, 1
  br i1 %306, label %307, label %309

307:                                              ; preds = %304
  %308 = call i32 (...) @abort() #3
  unreachable

309:                                              ; preds = %304
  %310 = load i32, i32* @COMBINE_STATE, align 4
  %311 = load i8*, i8** %10, align 8
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 0
  store i8* %311, i8** %313, align 8
  %314 = load i32, i32* %11, align 4
  %315 = add nsw i32 %314, 3
  store i32 %315, i32* %5, align 4
  br label %598

316:                                              ; preds = %284
  br label %591

317:                                              ; preds = %248
  %318 = call i32 (...) @abort() #3
  unreachable

319:                                              ; preds = %242
  br label %591

320:                                              ; preds = %29
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* @state1, align 4
  switch i32 %322, label %582 [
    i32 137, label %323
    i32 131, label %358
    i32 132, label %393
    i32 130, label %422
    i32 129, label %462
    i32 133, label %502
    i32 128, label %542
  ]

323:                                              ; preds = %321
  %324 = load i8, i8* %12, align 1
  %325 = zext i8 %324 to i32
  %326 = icmp slt i32 %325, 128
  br i1 %326, label %327, label %357

327:                                              ; preds = %323
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %329 = load i32*, i32** %7, align 8
  %330 = load i8*, i8** %8, align 8
  %331 = call i32 @ascii_mbtowc(%struct.TYPE_11__* %328, i32* %329, i8* %330, i32 1)
  store i32 %331, i32* %17, align 4
  %332 = load i32, i32* %17, align 4
  %333 = load i32, i32* @RET_ILSEQ, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %327
  br label %591

336:                                              ; preds = %327
  %337 = load i32, i32* %17, align 4
  %338 = icmp ne i32 %337, 1
  br i1 %338, label %339, label %341

339:                                              ; preds = %336
  %340 = call i32 (...) @abort() #3
  unreachable

341:                                              ; preds = %336
  %342 = load i32*, i32** %7, align 8
  %343 = load i32, i32* %342, align 4
  %344 = icmp eq i32 %343, 10
  br i1 %344, label %349, label %345

345:                                              ; preds = %341
  %346 = load i32*, i32** %7, align 8
  %347 = load i32, i32* %346, align 4
  %348 = icmp eq i32 %347, 13
  br i1 %348, label %349, label %350

349:                                              ; preds = %345, %341
  store i32 134, i32* @state2, align 4
  br label %350

350:                                              ; preds = %349, %345
  %351 = load i32, i32* @COMBINE_STATE, align 4
  %352 = load i8*, i8** %10, align 8
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 0
  store i8* %352, i8** %354, align 8
  %355 = load i32, i32* %11, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %5, align 4
  br label %598

357:                                              ; preds = %323
  br label %591

358:                                              ; preds = %321
  %359 = load i8, i8* %12, align 1
  %360 = zext i8 %359 to i32
  %361 = icmp slt i32 %360, 128
  br i1 %361, label %362, label %392

362:                                              ; preds = %358
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %364 = load i32*, i32** %7, align 8
  %365 = load i8*, i8** %8, align 8
  %366 = call i32 @jisx0201_mbtowc(%struct.TYPE_11__* %363, i32* %364, i8* %365, i32 1)
  store i32 %366, i32* %18, align 4
  %367 = load i32, i32* %18, align 4
  %368 = load i32, i32* @RET_ILSEQ, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %362
  br label %591

371:                                              ; preds = %362
  %372 = load i32, i32* %18, align 4
  %373 = icmp ne i32 %372, 1
  br i1 %373, label %374, label %376

374:                                              ; preds = %371
  %375 = call i32 (...) @abort() #3
  unreachable

376:                                              ; preds = %371
  %377 = load i32*, i32** %7, align 8
  %378 = load i32, i32* %377, align 4
  %379 = icmp eq i32 %378, 10
  br i1 %379, label %384, label %380

380:                                              ; preds = %376
  %381 = load i32*, i32** %7, align 8
  %382 = load i32, i32* %381, align 4
  %383 = icmp eq i32 %382, 13
  br i1 %383, label %384, label %385

384:                                              ; preds = %380, %376
  store i32 134, i32* @state2, align 4
  br label %385

385:                                              ; preds = %384, %380
  %386 = load i32, i32* @COMBINE_STATE, align 4
  %387 = load i8*, i8** %10, align 8
  %388 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 0, i32 0
  store i8* %387, i8** %389, align 8
  %390 = load i32, i32* %11, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %5, align 4
  br label %598

392:                                              ; preds = %358
  br label %591

393:                                              ; preds = %321
  %394 = load i8, i8* %12, align 1
  %395 = zext i8 %394 to i32
  %396 = icmp slt i32 %395, 128
  br i1 %396, label %397, label %421

397:                                              ; preds = %393
  %398 = load i8, i8* %12, align 1
  %399 = zext i8 %398 to i32
  %400 = add nsw i32 %399, 128
  %401 = trunc i32 %400 to i8
  store i8 %401, i8* %19, align 1
  %402 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %403 = load i32*, i32** %7, align 8
  %404 = call i32 @jisx0201_mbtowc(%struct.TYPE_11__* %402, i32* %403, i8* %19, i32 1)
  store i32 %404, i32* %20, align 4
  %405 = load i32, i32* %20, align 4
  %406 = load i32, i32* @RET_ILSEQ, align 4
  %407 = icmp eq i32 %405, %406
  br i1 %407, label %408, label %409

408:                                              ; preds = %397
  br label %591

409:                                              ; preds = %397
  %410 = load i32, i32* %20, align 4
  %411 = icmp ne i32 %410, 1
  br i1 %411, label %412, label %414

412:                                              ; preds = %409
  %413 = call i32 (...) @abort() #3
  unreachable

414:                                              ; preds = %409
  %415 = load i32, i32* @COMBINE_STATE, align 4
  %416 = load i8*, i8** %10, align 8
  %417 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %417, i32 0, i32 0
  store i8* %416, i8** %418, align 8
  %419 = load i32, i32* %11, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %5, align 4
  br label %598

421:                                              ; preds = %393
  br label %591

422:                                              ; preds = %321
  %423 = load i32, i32* %9, align 4
  %424 = load i32, i32* %11, align 4
  %425 = add nsw i32 %424, 2
  %426 = icmp slt i32 %423, %425
  br i1 %426, label %427, label %428

427:                                              ; preds = %422
  br label %584

428:                                              ; preds = %422
  %429 = load i8*, i8** %8, align 8
  %430 = getelementptr inbounds i8, i8* %429, i64 0
  %431 = load i8, i8* %430, align 1
  %432 = zext i8 %431 to i32
  %433 = icmp slt i32 %432, 128
  br i1 %433, label %434, label %461

434:                                              ; preds = %428
  %435 = load i8*, i8** %8, align 8
  %436 = getelementptr inbounds i8, i8* %435, i64 1
  %437 = load i8, i8* %436, align 1
  %438 = zext i8 %437 to i32
  %439 = icmp slt i32 %438, 128
  br i1 %439, label %440, label %461

440:                                              ; preds = %434
  %441 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %442 = load i32*, i32** %7, align 8
  %443 = load i8*, i8** %8, align 8
  %444 = call i32 @jisx0208_mbtowc(%struct.TYPE_11__* %441, i32* %442, i8* %443, i32 2)
  store i32 %444, i32* %21, align 4
  %445 = load i32, i32* %21, align 4
  %446 = load i32, i32* @RET_ILSEQ, align 4
  %447 = icmp eq i32 %445, %446
  br i1 %447, label %448, label %449

448:                                              ; preds = %440
  br label %591

449:                                              ; preds = %440
  %450 = load i32, i32* %21, align 4
  %451 = icmp ne i32 %450, 2
  br i1 %451, label %452, label %454

452:                                              ; preds = %449
  %453 = call i32 (...) @abort() #3
  unreachable

454:                                              ; preds = %449
  %455 = load i32, i32* @COMBINE_STATE, align 4
  %456 = load i8*, i8** %10, align 8
  %457 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %458 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %457, i32 0, i32 0
  store i8* %456, i8** %458, align 8
  %459 = load i32, i32* %11, align 4
  %460 = add nsw i32 %459, 2
  store i32 %460, i32* %5, align 4
  br label %598

461:                                              ; preds = %434, %428
  br label %591

462:                                              ; preds = %321
  %463 = load i32, i32* %9, align 4
  %464 = load i32, i32* %11, align 4
  %465 = add nsw i32 %464, 2
  %466 = icmp slt i32 %463, %465
  br i1 %466, label %467, label %468

467:                                              ; preds = %462
  br label %584

468:                                              ; preds = %462
  %469 = load i8*, i8** %8, align 8
  %470 = getelementptr inbounds i8, i8* %469, i64 0
  %471 = load i8, i8* %470, align 1
  %472 = zext i8 %471 to i32
  %473 = icmp slt i32 %472, 128
  br i1 %473, label %474, label %501

474:                                              ; preds = %468
  %475 = load i8*, i8** %8, align 8
  %476 = getelementptr inbounds i8, i8* %475, i64 1
  %477 = load i8, i8* %476, align 1
  %478 = zext i8 %477 to i32
  %479 = icmp slt i32 %478, 128
  br i1 %479, label %480, label %501

480:                                              ; preds = %474
  %481 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %482 = load i32*, i32** %7, align 8
  %483 = load i8*, i8** %8, align 8
  %484 = call i32 @jisx0212_mbtowc(%struct.TYPE_11__* %481, i32* %482, i8* %483, i32 2)
  store i32 %484, i32* %22, align 4
  %485 = load i32, i32* %22, align 4
  %486 = load i32, i32* @RET_ILSEQ, align 4
  %487 = icmp eq i32 %485, %486
  br i1 %487, label %488, label %489

488:                                              ; preds = %480
  br label %591

489:                                              ; preds = %480
  %490 = load i32, i32* %22, align 4
  %491 = icmp ne i32 %490, 2
  br i1 %491, label %492, label %494

492:                                              ; preds = %489
  %493 = call i32 (...) @abort() #3
  unreachable

494:                                              ; preds = %489
  %495 = load i32, i32* @COMBINE_STATE, align 4
  %496 = load i8*, i8** %10, align 8
  %497 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %498 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %497, i32 0, i32 0
  store i8* %496, i8** %498, align 8
  %499 = load i32, i32* %11, align 4
  %500 = add nsw i32 %499, 2
  store i32 %500, i32* %5, align 4
  br label %598

501:                                              ; preds = %474, %468
  br label %591

502:                                              ; preds = %321
  %503 = load i32, i32* %9, align 4
  %504 = load i32, i32* %11, align 4
  %505 = add nsw i32 %504, 2
  %506 = icmp slt i32 %503, %505
  br i1 %506, label %507, label %508

507:                                              ; preds = %502
  br label %584

508:                                              ; preds = %502
  %509 = load i8*, i8** %8, align 8
  %510 = getelementptr inbounds i8, i8* %509, i64 0
  %511 = load i8, i8* %510, align 1
  %512 = zext i8 %511 to i32
  %513 = icmp slt i32 %512, 128
  br i1 %513, label %514, label %541

514:                                              ; preds = %508
  %515 = load i8*, i8** %8, align 8
  %516 = getelementptr inbounds i8, i8* %515, i64 1
  %517 = load i8, i8* %516, align 1
  %518 = zext i8 %517 to i32
  %519 = icmp slt i32 %518, 128
  br i1 %519, label %520, label %541

520:                                              ; preds = %514
  %521 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %522 = load i32*, i32** %7, align 8
  %523 = load i8*, i8** %8, align 8
  %524 = call i32 @gb2312_mbtowc(%struct.TYPE_11__* %521, i32* %522, i8* %523, i32 2)
  store i32 %524, i32* %23, align 4
  %525 = load i32, i32* %23, align 4
  %526 = load i32, i32* @RET_ILSEQ, align 4
  %527 = icmp eq i32 %525, %526
  br i1 %527, label %528, label %529

528:                                              ; preds = %520
  br label %591

529:                                              ; preds = %520
  %530 = load i32, i32* %23, align 4
  %531 = icmp ne i32 %530, 2
  br i1 %531, label %532, label %534

532:                                              ; preds = %529
  %533 = call i32 (...) @abort() #3
  unreachable

534:                                              ; preds = %529
  %535 = load i32, i32* @COMBINE_STATE, align 4
  %536 = load i8*, i8** %10, align 8
  %537 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %538 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %537, i32 0, i32 0
  store i8* %536, i8** %538, align 8
  %539 = load i32, i32* %11, align 4
  %540 = add nsw i32 %539, 2
  store i32 %540, i32* %5, align 4
  br label %598

541:                                              ; preds = %514, %508
  br label %591

542:                                              ; preds = %321
  %543 = load i32, i32* %9, align 4
  %544 = load i32, i32* %11, align 4
  %545 = add nsw i32 %544, 2
  %546 = icmp slt i32 %543, %545
  br i1 %546, label %547, label %548

547:                                              ; preds = %542
  br label %584

548:                                              ; preds = %542
  %549 = load i8*, i8** %8, align 8
  %550 = getelementptr inbounds i8, i8* %549, i64 0
  %551 = load i8, i8* %550, align 1
  %552 = zext i8 %551 to i32
  %553 = icmp slt i32 %552, 128
  br i1 %553, label %554, label %581

554:                                              ; preds = %548
  %555 = load i8*, i8** %8, align 8
  %556 = getelementptr inbounds i8, i8* %555, i64 1
  %557 = load i8, i8* %556, align 1
  %558 = zext i8 %557 to i32
  %559 = icmp slt i32 %558, 128
  br i1 %559, label %560, label %581

560:                                              ; preds = %554
  %561 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %562 = load i32*, i32** %7, align 8
  %563 = load i8*, i8** %8, align 8
  %564 = call i32 @ksc5601_mbtowc(%struct.TYPE_11__* %561, i32* %562, i8* %563, i32 2)
  store i32 %564, i32* %24, align 4
  %565 = load i32, i32* %24, align 4
  %566 = load i32, i32* @RET_ILSEQ, align 4
  %567 = icmp eq i32 %565, %566
  br i1 %567, label %568, label %569

568:                                              ; preds = %560
  br label %591

569:                                              ; preds = %560
  %570 = load i32, i32* %24, align 4
  %571 = icmp ne i32 %570, 2
  br i1 %571, label %572, label %574

572:                                              ; preds = %569
  %573 = call i32 (...) @abort() #3
  unreachable

574:                                              ; preds = %569
  %575 = load i32, i32* @COMBINE_STATE, align 4
  %576 = load i8*, i8** %10, align 8
  %577 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %578 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %577, i32 0, i32 0
  store i8* %576, i8** %578, align 8
  %579 = load i32, i32* %11, align 4
  %580 = add nsw i32 %579, 2
  store i32 %580, i32* %5, align 4
  br label %598

581:                                              ; preds = %554, %548
  br label %591

582:                                              ; preds = %321
  %583 = call i32 (...) @abort() #3
  unreachable

584:                                              ; preds = %547, %507, %467, %427, %239, %222, %206, %191, %174, %158, %145, %128, %98, %81, %64, %42
  %585 = load i32, i32* @COMBINE_STATE, align 4
  %586 = load i8*, i8** %10, align 8
  %587 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %588 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %587, i32 0, i32 0
  store i8* %586, i8** %588, align 8
  %589 = load i32, i32* %11, align 4
  %590 = call i32 @RET_TOOFEW(i32 %589)
  store i32 %590, i32* %5, align 4
  br label %598

591:                                              ; preds = %581, %568, %541, %528, %501, %488, %461, %448, %421, %408, %392, %370, %357, %335, %319, %316, %303, %283, %270, %250, %241, %194, %193, %100
  %592 = load i32, i32* @COMBINE_STATE, align 4
  %593 = load i8*, i8** %10, align 8
  %594 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %595 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %594, i32 0, i32 0
  store i8* %593, i8** %595, align 8
  %596 = load i32, i32* %11, align 4
  %597 = call i32 @RET_SHIFT_ILSEQ(i32 %596)
  store i32 %597, i32* %5, align 4
  br label %598

598:                                              ; preds = %591, %584, %574, %534, %494, %454, %414, %385, %350, %309, %276
  %599 = load i32, i32* %5, align 4
  ret i32 %599
}

declare dso_local i32 @iso8859_1_mbtowc(%struct.TYPE_11__*, i32*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @iso8859_7_mbtowc(%struct.TYPE_11__*, i32*, i8*, i32) #1

declare dso_local i32 @ascii_mbtowc(%struct.TYPE_11__*, i32*, i8*, i32) #1

declare dso_local i32 @jisx0201_mbtowc(%struct.TYPE_11__*, i32*, i8*, i32) #1

declare dso_local i32 @jisx0208_mbtowc(%struct.TYPE_11__*, i32*, i8*, i32) #1

declare dso_local i32 @jisx0212_mbtowc(%struct.TYPE_11__*, i32*, i8*, i32) #1

declare dso_local i32 @gb2312_mbtowc(%struct.TYPE_11__*, i32*, i8*, i32) #1

declare dso_local i32 @ksc5601_mbtowc(%struct.TYPE_11__*, i32*, i8*, i32) #1

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
