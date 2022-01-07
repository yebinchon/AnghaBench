; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_Select.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_Select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@FILENAME_MAX = common dso_local global i32 0, align 4
@UI_USER_DRAG_UP = common dso_local global i32 0, align 4
@UI_USER_DRAG_DOWN = common dso_local global i32 0, align 4
@UI_USER_TOGGLE = common dso_local global i32 0, align 4
@UI_USER_DELETE = common dso_local global i32 0, align 4
@UI_USER_SELECT = common dso_local global i32 0, align 4
@UI_mouse_click = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**, i8**, i8**, i8**, i32*, i32, i32, i32, i32, i32, i32, i8*, i32*)* @Select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Select(i32 %0, i32 %1, i8** %2, i8** %3, i8** %4, i8** %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i8* %13, i32* %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8**, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i64, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  store i32 %0, i32* %17, align 4
  store i32 %1, i32* %18, align 4
  store i8** %2, i8*** %19, align 8
  store i8** %3, i8*** %20, align 8
  store i8** %4, i8*** %21, align 8
  store i8** %5, i8*** %22, align 8
  store i32* %6, i32** %23, align 8
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store i32 %9, i32* %26, align 4
  store i32 %10, i32* %27, align 4
  store i32 %11, i32* %28, align 4
  store i32 %12, i32* %29, align 4
  store i8* %13, i8** %30, align 8
  store i32* %14, i32** %31, align 8
  store i32 0, i32* %32, align 4
  %46 = load i32, i32* %17, align 4
  store i32 %46, i32* %33, align 4
  %47 = load i32*, i32** %31, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %15
  store i32* %34, i32** %31, align 8
  br label %50

50:                                               ; preds = %49, %15
  br label %51

51:                                               ; preds = %429, %50
  %52 = load i8*, i8** %30, align 8
  store i8* %52, i8** %38, align 8
  br label %53

53:                                               ; preds = %57, %51
  %54 = load i32, i32* %33, align 4
  %55 = load i32, i32* %32, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %24, align 4
  %59 = load i32, i32* %32, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %32, align 4
  br label %53

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %70, %61
  %63 = load i32, i32* %33, align 4
  %64 = load i32, i32* %32, align 4
  %65 = load i32, i32* %24, align 4
  %66 = load i32, i32* %25, align 4
  %67 = mul nsw i32 %65, %66
  %68 = add nsw i32 %64, %67
  %69 = icmp sge i32 %63, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32, i32* %24, align 4
  %72 = load i32, i32* %32, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %32, align 4
  br label %62

74:                                               ; preds = %62
  %75 = load i32, i32* %26, align 4
  %76 = load i32, i32* %27, align 4
  %77 = load i32, i32* %26, align 4
  %78 = load i32, i32* %25, align 4
  %79 = load i32, i32* %28, align 4
  %80 = add nsw i32 %79, 1
  %81 = mul nsw i32 %78, %80
  %82 = add nsw i32 %77, %81
  %83 = sub nsw i32 %82, 2
  %84 = load i32, i32* %27, align 4
  %85 = load i32, i32* %24, align 4
  %86 = add nsw i32 %84, %85
  %87 = sub nsw i32 %86, 1
  %88 = call i32 @ClearRectangle(i32 148, i32 %75, i32 %76, i32 %83, i32 %87)
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  %89 = load i32, i32* %32, align 4
  store i32 %89, i32* %37, align 4
  br label %90

90:                                               ; preds = %219, %74
  %91 = load i32, i32* %37, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %222

94:                                               ; preds = %90
  %95 = load i32, i32* @FILENAME_MAX, align 4
  %96 = add nsw i32 40, %95
  %97 = zext i32 %96 to i64
  %98 = call i8* @llvm.stacksave()
  store i8* %98, i8** %39, align 8
  %99 = alloca i8, i64 %97, align 16
  store i64 %97, i64* %40, align 8
  store i8* %99, i8** %41, align 8
  %100 = load i8**, i8*** %20, align 8
  %101 = icmp ne i8** %100, null
  br i1 %101, label %102, label %116

102:                                              ; preds = %94
  %103 = load i8**, i8*** %20, align 8
  %104 = load i32, i32* %37, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %102
  %110 = load i8**, i8*** %20, align 8
  %111 = load i32, i32* %37, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @Util_stpcpy(i8* %99, i8* %114)
  store i8* %115, i8** %41, align 8
  br label %116

116:                                              ; preds = %109, %102, %94
  %117 = load i8*, i8** %41, align 8
  %118 = load i8**, i8*** %19, align 8
  %119 = load i32, i32* %37, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i8* @Util_stpcpy(i8* %117, i8* %122)
  store i8* %123, i8** %41, align 8
  %124 = load i8**, i8*** %21, align 8
  %125 = icmp ne i8** %124, null
  br i1 %125, label %126, label %162

126:                                              ; preds = %116
  %127 = load i8**, i8*** %21, align 8
  %128 = load i32, i32* %37, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %162

133:                                              ; preds = %126
  %134 = load i32, i32* %28, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %99, i64 %135
  %137 = load i8**, i8*** %21, align 8
  %138 = load i32, i32* %37, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = call i8* @strlen(i8* %141)
  %143 = ptrtoint i8* %136 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = inttoptr i64 %145 to i8*
  store i8* %146, i8** %42, align 8
  br label %147

147:                                              ; preds = %151, %133
  %148 = load i8*, i8** %41, align 8
  %149 = load i8*, i8** %42, align 8
  %150 = icmp ult i8* %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i8*, i8** %41, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %41, align 8
  store i8 32, i8* %152, align 1
  br label %147

154:                                              ; preds = %147
  %155 = load i8*, i8** %41, align 8
  %156 = load i8**, i8*** %21, align 8
  %157 = load i32, i32* %37, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @strcpy(i8* %155, i8* %160)
  br label %174

162:                                              ; preds = %126, %116
  br label %163

163:                                              ; preds = %169, %162
  %164 = load i8*, i8** %41, align 8
  %165 = load i32, i32* %28, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %99, i64 %166
  %168 = icmp ult i8* %164, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load i8*, i8** %41, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %41, align 8
  store i8 32, i8* %170, align 1
  br label %163

172:                                              ; preds = %163
  %173 = load i8*, i8** %41, align 8
  store i8 0, i8* %173, align 1
  br label %174

174:                                              ; preds = %172, %154
  %175 = load i32, i32* %37, align 4
  %176 = load i32, i32* %33, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %190

178:                                              ; preds = %174
  %179 = load i32, i32* %26, align 4
  %180 = load i32, i32* %35, align 4
  %181 = load i32, i32* %28, align 4
  %182 = add nsw i32 %181, 1
  %183 = mul nsw i32 %180, %182
  %184 = add nsw i32 %179, %183
  %185 = load i32, i32* %27, align 4
  %186 = load i32, i32* %36, align 4
  %187 = add nsw i32 %185, %186
  %188 = load i32, i32* %28, align 4
  %189 = call i32 @Print(i32 148, i32 154, i8* %99, i32 %184, i32 %187, i32 %188)
  br label %202

190:                                              ; preds = %174
  %191 = load i32, i32* %26, align 4
  %192 = load i32, i32* %35, align 4
  %193 = load i32, i32* %28, align 4
  %194 = add nsw i32 %193, 1
  %195 = mul nsw i32 %192, %194
  %196 = add nsw i32 %191, %195
  %197 = load i32, i32* %27, align 4
  %198 = load i32, i32* %36, align 4
  %199 = add nsw i32 %197, %198
  %200 = load i32, i32* %28, align 4
  %201 = call i32 @Print(i32 154, i32 148, i8* %99, i32 %196, i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %190, %178
  %203 = load i32, i32* %36, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %36, align 4
  %205 = load i32, i32* %24, align 4
  %206 = icmp sge i32 %204, %205
  br i1 %206, label %207, label %214

207:                                              ; preds = %202
  %208 = load i32, i32* %35, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %35, align 4
  %210 = load i32, i32* %25, align 4
  %211 = icmp sge i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  store i32 8, i32* %43, align 4
  br label %215

213:                                              ; preds = %207
  store i32 0, i32* %36, align 4
  br label %214

214:                                              ; preds = %213, %202
  store i32 0, i32* %43, align 4
  br label %215

215:                                              ; preds = %214, %212
  %216 = load i8*, i8** %39, align 8
  call void @llvm.stackrestore(i8* %216)
  %217 = load i32, i32* %43, align 4
  switch i32 %217, label %432 [
    i32 0, label %218
    i32 8, label %222
  ]

218:                                              ; preds = %215
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %37, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %37, align 4
  br label %90

222:                                              ; preds = %215, %90
  %223 = load i8**, i8*** %22, align 8
  %224 = icmp ne i8** %223, null
  br i1 %224, label %225, label %238

225:                                              ; preds = %222
  %226 = load i8**, i8*** %22, align 8
  %227 = load i32, i32* %33, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %238

232:                                              ; preds = %225
  %233 = load i8**, i8*** %22, align 8
  %234 = load i32, i32* %33, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8*, i8** %233, i64 %235
  %237 = load i8*, i8** %236, align 8
  store i8* %237, i8** %38, align 8
  br label %258

238:                                              ; preds = %225, %222
  %239 = load i32, i32* %28, align 4
  %240 = icmp slt i32 %239, 38
  br i1 %240, label %241, label %257

241:                                              ; preds = %238
  %242 = load i8**, i8*** %19, align 8
  %243 = load i32, i32* %33, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8*, i8** %242, i64 %244
  %246 = load i8*, i8** %245, align 8
  %247 = call i8* @strlen(i8* %246)
  %248 = ptrtoint i8* %247 to i32
  %249 = load i32, i32* %28, align 4
  %250 = icmp sgt i32 %248, %249
  br i1 %250, label %251, label %257

251:                                              ; preds = %241
  %252 = load i8**, i8*** %19, align 8
  %253 = load i32, i32* %33, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  %256 = load i8*, i8** %255, align 8
  store i8* %256, i8** %38, align 8
  br label %257

257:                                              ; preds = %251, %241, %238
  br label %258

258:                                              ; preds = %257, %232
  %259 = load i8*, i8** %38, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load i8*, i8** %38, align 8
  %263 = call i32 @CenterPrint(i32 148, i32 154, i8* %262, i32 22)
  br label %264

264:                                              ; preds = %261, %258
  br label %265

265:                                              ; preds = %393, %354, %339, %335, %300, %264
  %266 = call i32 (...) @GetKeyPress()
  store i32 %266, i32* %44, align 4
  %267 = load i32, i32* %44, align 4
  switch i32 %267, label %384 [
    i32 28, label %268
    i32 29, label %301
    i32 30, label %336
    i32 31, label %351
    i32 127, label %370
    i32 32, label %371
    i32 126, label %375
    i32 155, label %379
    i32 27, label %383
  ]

268:                                              ; preds = %265
  %269 = load i32, i32* %29, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = load i32, i32* @UI_USER_DRAG_UP, align 4
  %273 = load i32*, i32** %31, align 8
  store i32 %272, i32* %273, align 4
  %274 = load i32, i32* %33, align 4
  store i32 %274, i32* %16, align 4
  br label %430

275:                                              ; preds = %268
  %276 = load i32, i32* %33, align 4
  store i32 %276, i32* %45, align 4
  br label %277

277:                                              ; preds = %293, %275
  %278 = load i32, i32* %45, align 4
  %279 = add nsw i32 %278, -1
  store i32 %279, i32* %45, align 4
  br label %280

280:                                              ; preds = %277
  %281 = load i32, i32* %45, align 4
  %282 = icmp sge i32 %281, 0
  br i1 %282, label %283, label %293

283:                                              ; preds = %280
  %284 = load i32*, i32** %23, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %286, label %293

286:                                              ; preds = %283
  %287 = load i32*, i32** %23, align 8
  %288 = load i32, i32* %45, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br label %293

293:                                              ; preds = %286, %283, %280
  %294 = phi i1 [ false, %283 ], [ false, %280 ], [ %292, %286 ]
  br i1 %294, label %277, label %295

295:                                              ; preds = %293
  %296 = load i32, i32* %45, align 4
  %297 = icmp sge i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %295
  %299 = load i32, i32* %45, align 4
  store i32 %299, i32* %33, align 4
  br label %423

300:                                              ; preds = %295
  br label %265

301:                                              ; preds = %265
  %302 = load i32, i32* %29, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %301
  %305 = load i32, i32* @UI_USER_DRAG_DOWN, align 4
  %306 = load i32*, i32** %31, align 8
  store i32 %305, i32* %306, align 4
  %307 = load i32, i32* %33, align 4
  store i32 %307, i32* %16, align 4
  br label %430

308:                                              ; preds = %301
  %309 = load i32, i32* %33, align 4
  store i32 %309, i32* %45, align 4
  br label %310

310:                                              ; preds = %327, %308
  %311 = load i32, i32* %45, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %45, align 4
  br label %313

313:                                              ; preds = %310
  %314 = load i32, i32* %45, align 4
  %315 = load i32, i32* %18, align 4
  %316 = icmp slt i32 %314, %315
  br i1 %316, label %317, label %327

317:                                              ; preds = %313
  %318 = load i32*, i32** %23, align 8
  %319 = icmp ne i32* %318, null
  br i1 %319, label %320, label %327

320:                                              ; preds = %317
  %321 = load i32*, i32** %23, align 8
  %322 = load i32, i32* %45, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %325, 0
  br label %327

327:                                              ; preds = %320, %317, %313
  %328 = phi i1 [ false, %317 ], [ false, %313 ], [ %326, %320 ]
  br i1 %328, label %310, label %329

329:                                              ; preds = %327
  %330 = load i32, i32* %45, align 4
  %331 = load i32, i32* %18, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %335

333:                                              ; preds = %329
  %334 = load i32, i32* %45, align 4
  store i32 %334, i32* %33, align 4
  br label %423

335:                                              ; preds = %329
  br label %265

336:                                              ; preds = %265
  %337 = load i32, i32* %29, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %336
  br label %265

340:                                              ; preds = %336
  %341 = load i32, i32* %33, align 4
  %342 = load i32, i32* %24, align 4
  %343 = icmp sgt i32 %341, %342
  br i1 %343, label %344, label %348

344:                                              ; preds = %340
  %345 = load i32, i32* %33, align 4
  %346 = load i32, i32* %24, align 4
  %347 = sub nsw i32 %345, %346
  br label %349

348:                                              ; preds = %340
  br label %349

349:                                              ; preds = %348, %344
  %350 = phi i32 [ %347, %344 ], [ 0, %348 ]
  store i32 %350, i32* %33, align 4
  br label %423

351:                                              ; preds = %265
  %352 = load i32, i32* %29, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %351
  br label %265

355:                                              ; preds = %351
  %356 = load i32, i32* %33, align 4
  %357 = load i32, i32* %24, align 4
  %358 = add nsw i32 %356, %357
  %359 = load i32, i32* %18, align 4
  %360 = icmp slt i32 %358, %359
  br i1 %360, label %361, label %365

361:                                              ; preds = %355
  %362 = load i32, i32* %33, align 4
  %363 = load i32, i32* %24, align 4
  %364 = add nsw i32 %362, %363
  br label %368

365:                                              ; preds = %355
  %366 = load i32, i32* %18, align 4
  %367 = sub nsw i32 %366, 1
  br label %368

368:                                              ; preds = %365, %361
  %369 = phi i32 [ %364, %361 ], [ %367, %365 ]
  store i32 %369, i32* %33, align 4
  br label %423

370:                                              ; preds = %265
  store i32 -2, i32* %16, align 4
  br label %430

371:                                              ; preds = %265
  %372 = load i32, i32* @UI_USER_TOGGLE, align 4
  %373 = load i32*, i32** %31, align 8
  store i32 %372, i32* %373, align 4
  %374 = load i32, i32* %33, align 4
  store i32 %374, i32* %16, align 4
  br label %430

375:                                              ; preds = %265
  %376 = load i32, i32* @UI_USER_DELETE, align 4
  %377 = load i32*, i32** %31, align 8
  store i32 %376, i32* %377, align 4
  %378 = load i32, i32* %33, align 4
  store i32 %378, i32* %16, align 4
  br label %430

379:                                              ; preds = %265
  %380 = load i32, i32* @UI_USER_SELECT, align 4
  %381 = load i32*, i32** %31, align 8
  store i32 %380, i32* %381, align 4
  %382 = load i32, i32* %33, align 4
  store i32 %382, i32* %16, align 4
  br label %430

383:                                              ; preds = %265
  store i32 -1, i32* %16, align 4
  br label %430

384:                                              ; preds = %265
  %385 = load i32, i32* %29, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %393, label %387

387:                                              ; preds = %384
  %388 = load i32, i32* %44, align 4
  %389 = icmp sle i32 %388, 32
  br i1 %389, label %393, label %390

390:                                              ; preds = %387
  %391 = load i32, i32* %44, align 4
  %392 = icmp sge i32 %391, 127
  br i1 %392, label %393, label %394

393:                                              ; preds = %390, %387, %384
  br label %265

394:                                              ; preds = %390
  %395 = load i32, i32* %33, align 4
  store i32 %395, i32* %45, align 4
  br label %396

396:                                              ; preds = %420, %394
  %397 = load i32, i32* %33, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %33, align 4
  %399 = load i32, i32* %18, align 4
  %400 = icmp sge i32 %398, %399
  br i1 %400, label %401, label %402

401:                                              ; preds = %396
  store i32 0, i32* %33, align 4
  br label %402

402:                                              ; preds = %401, %396
  br label %403

403:                                              ; preds = %402
  %404 = load i32, i32* %33, align 4
  %405 = load i32, i32* %45, align 4
  %406 = icmp ne i32 %404, %405
  br i1 %406, label %407, label %420

407:                                              ; preds = %403
  %408 = load i32, i32* %44, align 4
  %409 = trunc i32 %408 to i8
  %410 = load i8**, i8*** %19, align 8
  %411 = load i32, i32* %33, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8*, i8** %410, i64 %412
  %414 = load i8*, i8** %413, align 8
  %415 = getelementptr inbounds i8, i8* %414, i64 0
  %416 = load i8, i8* %415, align 1
  %417 = call i32 @Util_chrieq(i8 signext %409, i8 signext %416)
  %418 = icmp ne i32 %417, 0
  %419 = xor i1 %418, true
  br label %420

420:                                              ; preds = %407, %403
  %421 = phi i1 [ false, %403 ], [ %419, %407 ]
  br i1 %421, label %396, label %422

422:                                              ; preds = %420
  br label %423

423:                                              ; preds = %422, %368, %349, %333, %298
  br label %424

424:                                              ; preds = %423
  %425 = load i8*, i8** %38, align 8
  %426 = icmp ne i8* %425, null
  br i1 %426, label %427, label %429

427:                                              ; preds = %424
  %428 = call i32 @ClearRectangle(i32 148, i32 1, i32 22, i32 38, i32 22)
  br label %429

429:                                              ; preds = %427, %424
  br label %51

430:                                              ; preds = %383, %379, %375, %371, %370, %304, %271
  %431 = load i32, i32* %16, align 4
  ret i32 %431

432:                                              ; preds = %215
  unreachable
}

declare dso_local i32 @ClearRectangle(i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @Util_stpcpy(i8*, i8*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @Print(i32, i32, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CenterPrint(i32, i32, i8*, i32) #1

declare dso_local i32 @GetKeyPress(...) #1

declare dso_local i32 @Util_chrieq(i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
