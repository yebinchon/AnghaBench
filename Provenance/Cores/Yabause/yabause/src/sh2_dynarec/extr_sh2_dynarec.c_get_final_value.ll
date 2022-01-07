; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_get_final_value.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_get_final_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32 }

@regs = common dso_local global %struct.TYPE_2__* null, align 8
@slen = common dso_local global i32 0, align 4
@bt = common dso_local global i64* null, align 8
@itype = common dso_local global i64* null, align 8
@UJUMP = common dso_local global i64 0, align 8
@RJUMP = common dso_local global i64 0, align 8
@CJUMP = common dso_local global i64 0, align 8
@SJUMP = common dso_local global i64 0, align 8
@cpmap = common dso_local global i32** null, align 8
@LOAD = common dso_local global i64 0, align 8
@rs1 = common dso_local global i32* null, align 8
@rt1 = common dso_local global i32* null, align 8
@addrmode = common dso_local global i64* null, align 8
@DUALIND = common dso_local global i64 0, align 8
@GBRIND = common dso_local global i64 0, align 8
@imm = common dso_local global i32* null, align 8
@opcode2 = common dso_local global i32* null, align 8
@unneeded_reg = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_final_value(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %61, %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @slen, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %19
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %64

39:                                               ; preds = %24
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %46, %47
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  br label %64

52:                                               ; preds = %39
  %53 = load i64*, i64** @bt, align 8
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %64

61:                                               ; preds = %52
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %19

64:                                               ; preds = %60, %51, %38, %19
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @slen, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %356

69:                                               ; preds = %64
  %70 = load i64*, i64** @itype, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @UJUMP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %101, label %77

77:                                               ; preds = %69
  %78 = load i64*, i64** @itype, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @RJUMP, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %101, label %85

85:                                               ; preds = %77
  %86 = load i64*, i64** @itype, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @CJUMP, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %101, label %93

93:                                               ; preds = %85
  %94 = load i64*, i64** @itype, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SJUMP, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %93, %85, %77, %69
  %102 = load i32**, i32*** @cpmap, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %7, align 8
  store i32 %110, i32* %111, align 4
  store i32 1, i32* %4, align 4
  br label %385

112:                                              ; preds = %93
  %113 = load i64*, i64** @bt, align 8
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %355, label %120

120:                                              ; preds = %112
  %121 = load i64*, i64** @itype, align 8
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %121, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @UJUMP, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %147, label %129

129:                                              ; preds = %120
  %130 = load i64*, i64** @itype, align 8
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %130, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @RJUMP, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %147, label %138

138:                                              ; preds = %129
  %139 = load i64*, i64** @itype, align 8
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %139, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @SJUMP, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %257

147:                                              ; preds = %138, %129, %120
  %148 = load i64*, i64** @itype, align 8
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %148, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @LOAD, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %256

156:                                              ; preds = %147
  %157 = load i32*, i32** @rs1, align 8
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 2
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %256

165:                                              ; preds = %156
  %166 = load i32*, i32** @rt1, align 8
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 2
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %256

174:                                              ; preds = %165
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %5, align 4
  %183 = ashr i32 %181, %182
  %184 = and i32 %183, 1
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %256

186:                                              ; preds = %174
  %187 = load i64*, i64** @addrmode, align 8
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 2
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %187, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @DUALIND, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %204, label %195

195:                                              ; preds = %186
  %196 = load i64*, i64** @addrmode, align 8
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, 2
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %196, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @GBRIND, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %215

204:                                              ; preds = %195, %186
  %205 = load i32**, i32*** @cpmap, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %205, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %7, align 8
  store i32 %213, i32* %214, align 4
  store i32 1, i32* %4, align 4
  br label %385

215:                                              ; preds = %195
  %216 = load i32**, i32*** @cpmap, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32*, i32** %216, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** @imm, align 8
  %226 = load i32, i32* %6, align 4
  %227 = add nsw i32 %226, 2
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %224, %230
  %232 = load i32*, i32** %7, align 8
  store i32 %231, i32* %232, align 4
  %233 = load i32*, i32** %7, align 8
  %234 = load i32, i32* %233, align 4
  %235 = call i64 @can_direct_read(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %215
  %238 = load i32*, i32** %7, align 8
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @map_address(i32 %239)
  %241 = load i32*, i32** %7, align 8
  store i32 %240, i32* %241, align 4
  br label %242

242:                                              ; preds = %237, %215
  %243 = load i32*, i32** @opcode2, align 8
  %244 = load i32, i32* %6, align 4
  %245 = add nsw i32 %244, 2
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %243, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, 3
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %242
  %252 = load i32*, i32** %7, align 8
  %253 = load i32, i32* %252, align 4
  %254 = xor i32 %253, 1
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %251, %242
  store i32 1, i32* %4, align 4
  br label %385

256:                                              ; preds = %174, %165, %156, %147
  br label %257

257:                                              ; preds = %256, %138
  %258 = load i64*, i64** @itype, align 8
  %259 = load i32, i32* %6, align 4
  %260 = add nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i64, i64* %258, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @LOAD, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %354

266:                                              ; preds = %257
  %267 = load i32*, i32** @rs1, align 8
  %268 = load i32, i32* %6, align 4
  %269 = add nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %8, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %354

275:                                              ; preds = %266
  %276 = load i32*, i32** @rt1, align 8
  %277 = load i32, i32* %6, align 4
  %278 = add nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %276, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %8, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %354

284:                                              ; preds = %275
  %285 = load i64*, i64** @addrmode, align 8
  %286 = load i32, i32* %6, align 4
  %287 = add nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i64, i64* %285, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @DUALIND, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %302, label %293

293:                                              ; preds = %284
  %294 = load i64*, i64** @addrmode, align 8
  %295 = load i32, i32* %6, align 4
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i64, i64* %294, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @GBRIND, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %313

302:                                              ; preds = %293, %284
  %303 = load i32**, i32*** @cpmap, align 8
  %304 = load i32, i32* %6, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32*, i32** %303, i64 %305
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %5, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = load i32*, i32** %7, align 8
  store i32 %311, i32* %312, align 4
  store i32 1, i32* %4, align 4
  br label %385

313:                                              ; preds = %293
  %314 = load i32**, i32*** @cpmap, align 8
  %315 = load i32, i32* %6, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32*, i32** %314, i64 %316
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %5, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = load i32*, i32** @imm, align 8
  %324 = load i32, i32* %6, align 4
  %325 = add nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %323, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = add nsw i32 %322, %328
  %330 = load i32*, i32** %7, align 8
  store i32 %329, i32* %330, align 4
  %331 = load i32*, i32** %7, align 8
  %332 = load i32, i32* %331, align 4
  %333 = call i64 @can_direct_read(i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %313
  %336 = load i32*, i32** %7, align 8
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @map_address(i32 %337)
  %339 = load i32*, i32** %7, align 8
  store i32 %338, i32* %339, align 4
  br label %340

340:                                              ; preds = %335, %313
  %341 = load i32*, i32** @opcode2, align 8
  %342 = load i32, i32* %6, align 4
  %343 = add nsw i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %341, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = and i32 %346, 3
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %340
  %350 = load i32*, i32** %7, align 8
  %351 = load i32, i32* %350, align 4
  %352 = xor i32 %351, 1
  store i32 %352, i32* %350, align 4
  br label %353

353:                                              ; preds = %349, %340
  store i32 1, i32* %4, align 4
  br label %385

354:                                              ; preds = %275, %266, %257
  br label %355

355:                                              ; preds = %354, %112
  br label %356

356:                                              ; preds = %355, %64
  %357 = load i32**, i32*** @cpmap, align 8
  %358 = load i32, i32* %6, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32*, i32** %357, i64 %359
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %5, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = load i32*, i32** %7, align 8
  store i32 %365, i32* %366, align 4
  %367 = load i32, i32* %6, align 4
  %368 = load i32, i32* @slen, align 4
  %369 = sub nsw i32 %368, 1
  %370 = icmp eq i32 %367, %369
  br i1 %370, label %371, label %372

371:                                              ; preds = %356
  store i32 1, i32* %4, align 4
  br label %385

372:                                              ; preds = %356
  %373 = load i32*, i32** @unneeded_reg, align 8
  %374 = load i32, i32* %6, align 4
  %375 = add nsw i32 %374, 1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %373, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %8, align 4
  %380 = ashr i32 %378, %379
  %381 = and i32 %380, 1
  %382 = icmp ne i32 %381, 0
  %383 = xor i1 %382, true
  %384 = zext i1 %383 to i32
  store i32 %384, i32* %4, align 4
  br label %385

385:                                              ; preds = %372, %371, %353, %302, %255, %204, %101
  %386 = load i32, i32* %4, align 4
  ret i32 %386
}

declare dso_local i64 @can_direct_read(i32) #1

declare dso_local i32 @map_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
