; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_do_consts.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_do_consts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@itype = common dso_local global i32* null, align 8
@rt1 = common dso_local global i64* null, align 8
@addrmode = common dso_local global i32* null, align 8
@POSTINC = common dso_local global i32 0, align 4
@opcode = common dso_local global i32* null, align 8
@opcode2 = common dso_local global i32* null, align 8
@rt2 = common dso_local global i64* null, align 8
@PREDEC = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@imm = common dso_local global i32* null, align 8
@slen = common dso_local global i32 0, align 4
@source = common dso_local global i32* null, align 8
@rs1 = common dso_local global i32* null, align 8
@MACL = common dso_local global i64 0, align 8
@MACH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_consts(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32*, i32** @itype, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %626 [
    i32 138, label %20
    i32 130, label %65
    i32 133, label %102
    i32 135, label %103
    i32 137, label %239
    i32 139, label %279
    i32 140, label %481
    i32 144, label %498
    i32 141, label %507
    i32 136, label %516
    i32 132, label %612
    i32 128, label %621
    i32 134, label %621
    i32 131, label %621
    i32 143, label %621
    i32 129, label %622
    i32 142, label %624
  ]

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i64*, i64** @rt1, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @sh2_clear_const(i32* %21, i32* %22, i64 %27)
  %29 = load i32*, i32** @addrmode, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @POSTINC, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %20
  %37 = load i32*, i32** @opcode, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %51

44:                                               ; preds = %36
  %45 = load i32*, i32** @opcode2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 3
  br label %51

51:                                               ; preds = %44, %43
  %52 = phi i32 [ 2, %43 ], [ %50, %44 ]
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 1, %53
  %55 = load i32*, i32** %7, align 8
  %56 = load i64*, i64** @rt2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %55, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %54
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %51, %20
  br label %626

65:                                               ; preds = %3
  %66 = load i32*, i32** @addrmode, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PREDEC, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %101

73:                                               ; preds = %65
  %74 = load i32*, i32** @opcode, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 4
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %88

81:                                               ; preds = %73
  %82 = load i32*, i32** @opcode2, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 3
  br label %88

88:                                               ; preds = %81, %80
  %89 = phi i32 [ 2, %80 ], [ %87, %81 ]
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = shl i32 1, %90
  %92 = load i32*, i32** %7, align 8
  %93 = load i64*, i64** @rt1, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32, i32* %92, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, %91
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %88, %65
  br label %626

102:                                              ; preds = %3
  br label %626

103:                                              ; preds = %3
  %104 = load i32*, i32** @opcode, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 12
  br i1 %109, label %110, label %131

110:                                              ; preds = %103
  %111 = load i32*, i32** %6, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = load i64*, i64** @rt1, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @start, align 4
  %119 = load i32, i32* %5, align 4
  %120 = mul nsw i32 %119, 2
  %121 = add nsw i32 %118, %120
  %122 = add nsw i32 %121, 4
  %123 = and i32 %122, -4
  %124 = load i32*, i32** @imm, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %123, %128
  %130 = call i32 @sh2_set_const(i32* %111, i32* %112, i64 %117, i32 %129)
  br label %238

131:                                              ; preds = %103
  %132 = load i32, i32* @start, align 4
  %133 = load i32, i32* %5, align 4
  %134 = mul nsw i32 %133, 2
  %135 = add nsw i32 %132, %134
  %136 = add nsw i32 %135, 4
  %137 = and i32 %136, -4
  %138 = load i32*, i32** @imm, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %137, %142
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @start, align 4
  %146 = sub nsw i32 %144, %145
  %147 = ashr i32 %146, 1
  %148 = load i32, i32* @slen, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %228

150:                                              ; preds = %131
  %151 = load i32*, i32** @opcode, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 9
  br i1 %156, label %157, label %176

157:                                              ; preds = %150
  %158 = load i32*, i32** @source, align 8
  %159 = load i32, i32* @start, align 4
  %160 = load i32, i32* %5, align 4
  %161 = mul nsw i32 %160, 2
  %162 = add nsw i32 %159, %161
  %163 = add nsw i32 %162, 4
  %164 = load i32*, i32** @imm, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %163, %168
  %170 = load i32, i32* @start, align 4
  %171 = sub nsw i32 %169, %170
  %172 = ashr i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %158, i64 %173
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %11, align 4
  br label %218

176:                                              ; preds = %150
  %177 = load i32*, i32** @source, align 8
  %178 = load i32, i32* @start, align 4
  %179 = load i32, i32* %5, align 4
  %180 = mul nsw i32 %179, 2
  %181 = add nsw i32 %178, %180
  %182 = add nsw i32 %181, 4
  %183 = and i32 %182, -4
  %184 = load i32*, i32** @imm, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %183, %188
  %190 = load i32, i32* @start, align 4
  %191 = sub nsw i32 %189, %190
  %192 = ashr i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %177, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = shl i32 %195, 16
  %197 = load i32*, i32** @source, align 8
  %198 = load i32, i32* @start, align 4
  %199 = load i32, i32* %5, align 4
  %200 = mul nsw i32 %199, 2
  %201 = add nsw i32 %198, %200
  %202 = add nsw i32 %201, 4
  %203 = and i32 %202, -4
  %204 = load i32*, i32** @imm, align 8
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %203, %208
  %210 = add nsw i32 %209, 2
  %211 = load i32, i32* @start, align 4
  %212 = sub nsw i32 %210, %211
  %213 = ashr i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %197, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %196, %216
  store i32 %217, i32* %11, align 4
  br label %218

218:                                              ; preds = %176, %157
  %219 = load i32*, i32** %6, align 8
  %220 = load i32*, i32** %7, align 8
  %221 = load i64*, i64** @rt1, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %221, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = call i32 @sh2_set_const(i32* %219, i32* %220, i64 %225, i32 %226)
  br label %237

228:                                              ; preds = %131
  %229 = load i32*, i32** %6, align 8
  %230 = load i32*, i32** %7, align 8
  %231 = load i64*, i64** @rt1, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @sh2_clear_const(i32* %229, i32* %230, i64 %235)
  br label %237

237:                                              ; preds = %228, %218
  br label %238

238:                                              ; preds = %237, %110
  br label %626

239:                                              ; preds = %3
  %240 = load i32*, i32** %6, align 8
  %241 = load i32, i32* %240, align 4
  %242 = load i32*, i32** @rs1, align 8
  %243 = load i32, i32* %5, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = ashr i32 %241, %246
  %248 = and i32 %247, 1
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %269

250:                                              ; preds = %239
  %251 = load i32*, i32** %7, align 8
  %252 = load i32*, i32** @rs1, align 8
  %253 = load i32, i32* %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %251, i64 %257
  %259 = load i32, i32* %258, align 4
  store i32 %259, i32* %12, align 4
  %260 = load i32*, i32** %6, align 8
  %261 = load i32*, i32** %7, align 8
  %262 = load i64*, i64** @rt1, align 8
  %263 = load i32, i32* %5, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i64, i64* %262, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = load i32, i32* %12, align 4
  %268 = call i32 @sh2_set_const(i32* %260, i32* %261, i64 %266, i32 %267)
  br label %278

269:                                              ; preds = %239
  %270 = load i32*, i32** %6, align 8
  %271 = load i32*, i32** %7, align 8
  %272 = load i64*, i64** @rt1, align 8
  %273 = load i32, i32* %5, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i64, i64* %272, i64 %274
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @sh2_clear_const(i32* %270, i32* %271, i64 %276)
  br label %278

278:                                              ; preds = %269, %250
  br label %626

279:                                              ; preds = %3
  %280 = load i32*, i32** @opcode, align 8
  %281 = load i32, i32* %5, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = icmp eq i32 %284, 7
  br i1 %285, label %286, label %332

286:                                              ; preds = %279
  %287 = load i32*, i32** %6, align 8
  %288 = load i32, i32* %287, align 4
  %289 = load i32*, i32** @rs1, align 8
  %290 = load i32, i32* %5, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = ashr i32 %288, %293
  %295 = and i32 %294, 1
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %322

297:                                              ; preds = %286
  %298 = load i32*, i32** %7, align 8
  %299 = load i32*, i32** @rs1, align 8
  %300 = load i32, i32* %5, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %298, i64 %304
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %13, align 4
  %307 = load i32*, i32** %6, align 8
  %308 = load i32*, i32** %7, align 8
  %309 = load i64*, i64** @rt1, align 8
  %310 = load i32, i32* %5, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i64, i64* %309, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = load i32, i32* %13, align 4
  %315 = load i32*, i32** @imm, align 8
  %316 = load i32, i32* %5, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = add nsw i32 %314, %319
  %321 = call i32 @sh2_set_const(i32* %307, i32* %308, i64 %313, i32 %320)
  br label %331

322:                                              ; preds = %286
  %323 = load i32*, i32** %6, align 8
  %324 = load i32*, i32** %7, align 8
  %325 = load i64*, i64** @rt1, align 8
  %326 = load i32, i32* %5, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i64, i64* %325, i64 %327
  %329 = load i64, i64* %328, align 8
  %330 = call i32 @sh2_clear_const(i32* %323, i32* %324, i64 %329)
  br label %331

331:                                              ; preds = %322, %297
  br label %480

332:                                              ; preds = %279
  %333 = load i32*, i32** @opcode, align 8
  %334 = load i32, i32* %5, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = icmp eq i32 %337, 8
  br i1 %338, label %339, label %340

339:                                              ; preds = %332
  br label %479

340:                                              ; preds = %332
  %341 = load i32*, i32** @opcode, align 8
  %342 = load i32, i32* %5, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = icmp eq i32 %345, 12
  br i1 %346, label %347, label %456

347:                                              ; preds = %340
  %348 = load i32*, i32** @opcode2, align 8
  %349 = load i32, i32* %5, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = icmp eq i32 %352, 8
  br i1 %353, label %354, label %355

354:                                              ; preds = %347
  br label %455

355:                                              ; preds = %347
  %356 = load i32*, i32** %6, align 8
  %357 = load i32, i32* %356, align 4
  %358 = load i32*, i32** @rs1, align 8
  %359 = load i32, i32* %5, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = ashr i32 %357, %362
  %364 = and i32 %363, 1
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %445

366:                                              ; preds = %355
  %367 = load i32*, i32** %7, align 8
  %368 = load i32*, i32** @rs1, align 8
  %369 = load i32, i32* %5, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %367, i64 %373
  %375 = load i32, i32* %374, align 4
  store i32 %375, i32* %14, align 4
  %376 = load i32*, i32** @opcode2, align 8
  %377 = load i32, i32* %5, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = icmp eq i32 %380, 9
  br i1 %381, label %382, label %398

382:                                              ; preds = %366
  %383 = load i32*, i32** %6, align 8
  %384 = load i32*, i32** %7, align 8
  %385 = load i64*, i64** @rt1, align 8
  %386 = load i32, i32* %5, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i64, i64* %385, i64 %387
  %389 = load i64, i64* %388, align 8
  %390 = load i32, i32* %14, align 4
  %391 = load i32*, i32** @imm, align 8
  %392 = load i32, i32* %5, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = and i32 %390, %395
  %397 = call i32 @sh2_set_const(i32* %383, i32* %384, i64 %389, i32 %396)
  br label %398

398:                                              ; preds = %382, %366
  %399 = load i32*, i32** @opcode2, align 8
  %400 = load i32, i32* %5, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = icmp eq i32 %403, 10
  br i1 %404, label %405, label %421

405:                                              ; preds = %398
  %406 = load i32*, i32** %6, align 8
  %407 = load i32*, i32** %7, align 8
  %408 = load i64*, i64** @rt1, align 8
  %409 = load i32, i32* %5, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i64, i64* %408, i64 %410
  %412 = load i64, i64* %411, align 8
  %413 = load i32, i32* %14, align 4
  %414 = load i32*, i32** @imm, align 8
  %415 = load i32, i32* %5, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = xor i32 %413, %418
  %420 = call i32 @sh2_set_const(i32* %406, i32* %407, i64 %412, i32 %419)
  br label %421

421:                                              ; preds = %405, %398
  %422 = load i32*, i32** @opcode2, align 8
  %423 = load i32, i32* %5, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = icmp eq i32 %426, 11
  br i1 %427, label %428, label %444

428:                                              ; preds = %421
  %429 = load i32*, i32** %6, align 8
  %430 = load i32*, i32** %7, align 8
  %431 = load i64*, i64** @rt1, align 8
  %432 = load i32, i32* %5, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i64, i64* %431, i64 %433
  %435 = load i64, i64* %434, align 8
  %436 = load i32, i32* %14, align 4
  %437 = load i32*, i32** @imm, align 8
  %438 = load i32, i32* %5, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %437, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = or i32 %436, %441
  %443 = call i32 @sh2_set_const(i32* %429, i32* %430, i64 %435, i32 %442)
  br label %444

444:                                              ; preds = %428, %421
  br label %454

445:                                              ; preds = %355
  %446 = load i32*, i32** %6, align 8
  %447 = load i32*, i32** %7, align 8
  %448 = load i64*, i64** @rt1, align 8
  %449 = load i32, i32* %5, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i64, i64* %448, i64 %450
  %452 = load i64, i64* %451, align 8
  %453 = call i32 @sh2_clear_const(i32* %446, i32* %447, i64 %452)
  br label %454

454:                                              ; preds = %445, %444
  br label %455

455:                                              ; preds = %454, %354
  br label %478

456:                                              ; preds = %340
  %457 = load i32*, i32** @opcode, align 8
  %458 = load i32, i32* %5, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %457, i64 %459
  %461 = load i32, i32* %460, align 4
  %462 = icmp eq i32 %461, 14
  %463 = zext i1 %462 to i32
  %464 = call i32 @assert(i32 %463)
  %465 = load i32*, i32** %6, align 8
  %466 = load i32*, i32** %7, align 8
  %467 = load i64*, i64** @rt1, align 8
  %468 = load i32, i32* %5, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i64, i64* %467, i64 %469
  %471 = load i64, i64* %470, align 8
  %472 = load i32*, i32** @imm, align 8
  %473 = load i32, i32* %5, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %472, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = call i32 @sh2_set_const(i32* %465, i32* %466, i64 %471, i32 %476)
  br label %478

478:                                              ; preds = %456, %455
  br label %479

479:                                              ; preds = %478, %339
  br label %480

480:                                              ; preds = %479, %331
  br label %626

481:                                              ; preds = %3
  %482 = load i32*, i32** @opcode2, align 8
  %483 = load i32, i32* %5, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %482, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = icmp eq i32 %486, 9
  br i1 %487, label %488, label %497

488:                                              ; preds = %481
  %489 = load i32*, i32** %6, align 8
  %490 = load i32*, i32** %7, align 8
  %491 = load i64*, i64** @rt1, align 8
  %492 = load i32, i32* %5, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i64, i64* %491, i64 %493
  %495 = load i64, i64* %494, align 8
  %496 = call i32 @sh2_clear_const(i32* %489, i32* %490, i64 %495)
  br label %497

497:                                              ; preds = %488, %481
  br label %626

498:                                              ; preds = %3
  %499 = load i32*, i32** %6, align 8
  %500 = load i32*, i32** %7, align 8
  %501 = load i64*, i64** @rt1, align 8
  %502 = load i32, i32* %5, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i64, i64* %501, i64 %503
  %505 = load i64, i64* %504, align 8
  %506 = call i32 @sh2_clear_const(i32* %499, i32* %500, i64 %505)
  br label %626

507:                                              ; preds = %3
  %508 = load i32*, i32** %6, align 8
  %509 = load i32*, i32** %7, align 8
  %510 = load i64*, i64** @rt1, align 8
  %511 = load i32, i32* %5, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i64, i64* %510, i64 %512
  %514 = load i64, i64* %513, align 8
  %515 = call i32 @sh2_clear_const(i32* %508, i32* %509, i64 %514)
  br label %626

516:                                              ; preds = %3
  %517 = load i32*, i32** @opcode, align 8
  %518 = load i32, i32* %5, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %517, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %560

523:                                              ; preds = %516
  %524 = load i32*, i32** @opcode2, align 8
  %525 = load i32, i32* %5, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32, i32* %524, i64 %526
  %528 = load i32, i32* %527, align 4
  %529 = icmp eq i32 %528, 7
  br i1 %529, label %530, label %535

530:                                              ; preds = %523
  %531 = load i32*, i32** %6, align 8
  %532 = load i32*, i32** %7, align 8
  %533 = load i64, i64* @MACL, align 8
  %534 = call i32 @sh2_clear_const(i32* %531, i32* %532, i64 %533)
  br label %535

535:                                              ; preds = %530, %523
  %536 = load i32*, i32** @opcode2, align 8
  %537 = load i32, i32* %5, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i32, i32* %536, i64 %538
  %540 = load i32, i32* %539, align 4
  %541 = icmp eq i32 %540, 8
  br i1 %541, label %542, label %551

542:                                              ; preds = %535
  %543 = load i32*, i32** %6, align 8
  %544 = load i32*, i32** %7, align 8
  %545 = load i64, i64* @MACH, align 8
  %546 = call i32 @sh2_clear_const(i32* %543, i32* %544, i64 %545)
  %547 = load i32*, i32** %6, align 8
  %548 = load i32*, i32** %7, align 8
  %549 = load i64, i64* @MACL, align 8
  %550 = call i32 @sh2_clear_const(i32* %547, i32* %548, i64 %549)
  br label %551

551:                                              ; preds = %542, %535
  %552 = load i32*, i32** @opcode2, align 8
  %553 = load i32, i32* %5, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i32, i32* %552, i64 %554
  %556 = load i32, i32* %555, align 4
  %557 = icmp eq i32 %556, 9
  br i1 %557, label %558, label %559

558:                                              ; preds = %551
  br label %559

559:                                              ; preds = %558, %551
  br label %560

560:                                              ; preds = %559, %516
  %561 = load i32*, i32** @opcode, align 8
  %562 = load i32, i32* %5, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i32, i32* %561, i64 %563
  %565 = load i32, i32* %564, align 4
  %566 = icmp eq i32 %565, 2
  br i1 %566, label %567, label %595

567:                                              ; preds = %560
  %568 = load i32*, i32** @opcode2, align 8
  %569 = load i32, i32* %5, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i32, i32* %568, i64 %570
  %572 = load i32, i32* %571, align 4
  %573 = icmp eq i32 %572, 7
  br i1 %573, label %574, label %575

574:                                              ; preds = %567
  br label %575

575:                                              ; preds = %574, %567
  %576 = load i32*, i32** @opcode2, align 8
  %577 = load i32, i32* %5, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32, i32* %576, i64 %578
  %580 = load i32, i32* %579, align 4
  %581 = icmp eq i32 %580, 14
  br i1 %581, label %589, label %582

582:                                              ; preds = %575
  %583 = load i32*, i32** @opcode2, align 8
  %584 = load i32, i32* %5, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i32, i32* %583, i64 %585
  %587 = load i32, i32* %586, align 4
  %588 = icmp eq i32 %587, 15
  br i1 %588, label %589, label %594

589:                                              ; preds = %582, %575
  %590 = load i32*, i32** %6, align 8
  %591 = load i32*, i32** %7, align 8
  %592 = load i64, i64* @MACL, align 8
  %593 = call i32 @sh2_clear_const(i32* %590, i32* %591, i64 %592)
  br label %594

594:                                              ; preds = %589, %582
  br label %595

595:                                              ; preds = %594, %560
  %596 = load i32*, i32** @opcode, align 8
  %597 = load i32, i32* %5, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i32, i32* %596, i64 %598
  %600 = load i32, i32* %599, align 4
  %601 = icmp eq i32 %600, 3
  br i1 %601, label %602, label %611

602:                                              ; preds = %595
  %603 = load i32*, i32** %6, align 8
  %604 = load i32*, i32** %7, align 8
  %605 = load i64, i64* @MACH, align 8
  %606 = call i32 @sh2_clear_const(i32* %603, i32* %604, i64 %605)
  %607 = load i32*, i32** %6, align 8
  %608 = load i32*, i32** %7, align 8
  %609 = load i64, i64* @MACL, align 8
  %610 = call i32 @sh2_clear_const(i32* %607, i32* %608, i64 %609)
  br label %611

611:                                              ; preds = %602, %595
  br label %626

612:                                              ; preds = %3
  %613 = load i32*, i32** %6, align 8
  %614 = load i32*, i32** %7, align 8
  %615 = load i64*, i64** @rt1, align 8
  %616 = load i32, i32* %5, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds i64, i64* %615, i64 %617
  %619 = load i64, i64* %618, align 8
  %620 = call i32 @sh2_clear_const(i32* %613, i32* %614, i64 %619)
  br label %626

621:                                              ; preds = %3, %3, %3, %3
  br label %626

622:                                              ; preds = %3
  %623 = load i32*, i32** %6, align 8
  store i32 0, i32* %623, align 4
  br label %626

624:                                              ; preds = %3
  %625 = load i32*, i32** %6, align 8
  store i32 0, i32* %625, align 4
  br label %626

626:                                              ; preds = %3, %624, %622, %621, %612, %611, %507, %498, %497, %480, %278, %238, %102, %101, %64
  %627 = load i32, i32* %4, align 4
  ret i32 %627
}

declare dso_local i32 @sh2_clear_const(i32*, i32*, i64) #1

declare dso_local i32 @sh2_set_const(i32*, i32*, i64, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
