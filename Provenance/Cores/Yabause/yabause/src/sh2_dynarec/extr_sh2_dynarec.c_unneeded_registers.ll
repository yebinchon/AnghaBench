; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_unneeded_registers.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_unneeded_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slen = common dso_local global i32 0, align 4
@unneeded_reg = common dso_local global i64* null, align 8
@itype = common dso_local global i64* null, align 8
@RJUMP = common dso_local global i64 0, align 8
@UJUMP = common dso_local global i64 0, align 8
@CJUMP = common dso_local global i64 0, align 8
@SJUMP = common dso_local global i64 0, align 8
@ba = common dso_local global i64* null, align 8
@start = common dso_local global i64 0, align 8
@branch_unneeded_reg = common dso_local global i64* null, align 8
@rt1 = common dso_local global i64* null, align 8
@rt2 = common dso_local global i64* null, align 8
@rs1 = common dso_local global i64* null, align 8
@rs2 = common dso_local global i64* null, align 8
@rs3 = common dso_local global i64* null, align 8
@SR = common dso_local global i64 0, align 8
@source = common dso_local global i32* null, align 8
@SYSTEM = common dso_local global i64 0, align 8
@opcode = common dso_local global i32* null, align 8
@TBIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unneeded_registers(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @slen, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %27

20:                                               ; preds = %3
  %21 = load i64*, i64** @unneeded_reg, align 8
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %922, %27
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %925

33:                                               ; preds = %29
  %34 = load i64*, i64** @itype, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RJUMP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %65, label %41

41:                                               ; preds = %33
  %42 = load i64*, i64** @itype, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UJUMP, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %65, label %49

49:                                               ; preds = %41
  %50 = load i64*, i64** @itype, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CJUMP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load i64*, i64** @itype, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SJUMP, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %781

65:                                               ; preds = %57, %49, %41, %33
  %66 = load i64*, i64** @ba, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @start, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %85, label %73

73:                                               ; preds = %65
  %74 = load i64*, i64** @ba, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @start, align 8
  %80 = load i32, i32* @slen, align 4
  %81 = mul nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %79, %82
  %84 = icmp sge i64 %78, %83
  br i1 %84, label %85, label %193

85:                                               ; preds = %73, %65
  store i64 0, i64* %8, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64*, i64** @branch_unneeded_reg, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 %86, i64* %90, align 8
  %91 = load i64*, i64** @itype, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CJUMP, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %192

98:                                               ; preds = %85
  %99 = load i64*, i64** @rt1, align 8
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp sge i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %98
  %107 = load i64*, i64** @rt1, align 8
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %107, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = shl i64 1, %112
  %114 = load i64, i64* %8, align 8
  %115 = or i64 %114, %113
  store i64 %115, i64* %8, align 8
  br label %116

116:                                              ; preds = %106, %98
  %117 = load i64*, i64** @rt2, align 8
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %117, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = icmp sge i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %116
  %125 = load i64*, i64** @rt2, align 8
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %125, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = shl i64 1, %130
  %132 = load i64, i64* %8, align 8
  %133 = or i64 %132, %131
  store i64 %133, i64* %8, align 8
  br label %134

134:                                              ; preds = %124, %116
  %135 = load i64*, i64** @rs1, align 8
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %135, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = icmp sge i64 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %134
  %143 = load i64*, i64** @rs1, align 8
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %143, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = shl i64 1, %148
  %150 = xor i64 %149, -1
  %151 = load i64, i64* %8, align 8
  %152 = and i64 %151, %150
  store i64 %152, i64* %8, align 8
  br label %153

153:                                              ; preds = %142, %134
  %154 = load i64*, i64** @rs2, align 8
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %154, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = icmp sge i64 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %153
  %162 = load i64*, i64** @rs2, align 8
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %162, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = shl i64 1, %167
  %169 = xor i64 %168, -1
  %170 = load i64, i64* %8, align 8
  %171 = and i64 %170, %169
  store i64 %171, i64* %8, align 8
  br label %172

172:                                              ; preds = %161, %153
  %173 = load i64*, i64** @rs3, align 8
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %173, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = icmp sge i64 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %172
  %181 = load i64*, i64** @rs3, align 8
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %181, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = shl i64 1, %186
  %188 = xor i64 %187, -1
  %189 = load i64, i64* %8, align 8
  %190 = and i64 %189, %188
  store i64 %190, i64* %8, align 8
  br label %191

191:                                              ; preds = %180, %172
  br label %192

192:                                              ; preds = %191, %85
  br label %780

193:                                              ; preds = %73
  %194 = load i64*, i64** @ba, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %194, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @start, align 8
  %200 = load i32, i32* %7, align 4
  %201 = mul nsw i32 %200, 2
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %199, %202
  %204 = icmp sle i64 %198, %203
  br i1 %204, label %205, label %464

205:                                              ; preds = %193
  %206 = load i64*, i64** @itype, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %206, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @UJUMP, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %221, label %213

213:                                              ; preds = %205
  %214 = load i64*, i64** @itype, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @RJUMP, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %213, %205
  store i64 0, i64* %12, align 8
  br label %245

222:                                              ; preds = %213
  %223 = load i64*, i64** @itype, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @CJUMP, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %222
  %231 = load i64*, i64** @unneeded_reg, align 8
  %232 = load i32, i32* %7, align 4
  %233 = add nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i64, i64* %231, i64 %234
  %236 = load i64, i64* %235, align 8
  store i64 %236, i64* %12, align 8
  br label %244

237:                                              ; preds = %222
  %238 = load i64*, i64** @unneeded_reg, align 8
  %239 = load i32, i32* %7, align 4
  %240 = add nsw i32 %239, 2
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %238, i64 %241
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %12, align 8
  br label %244

244:                                              ; preds = %237, %230
  br label %245

245:                                              ; preds = %244, %221
  %246 = load i64*, i64** @itype, align 8
  %247 = load i32, i32* %7, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %246, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @CJUMP, align 8
  %252 = icmp ne i64 %250, %251
  br i1 %252, label %253, label %347

253:                                              ; preds = %245
  %254 = load i64*, i64** @rt1, align 8
  %255 = load i32, i32* %7, align 4
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %254, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = icmp sge i64 %259, 0
  br i1 %260, label %261, label %271

261:                                              ; preds = %253
  %262 = load i64*, i64** @rt1, align 8
  %263 = load i32, i32* %7, align 4
  %264 = add nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64, i64* %262, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = shl i64 1, %267
  %269 = load i64, i64* %12, align 8
  %270 = or i64 %269, %268
  store i64 %270, i64* %12, align 8
  br label %271

271:                                              ; preds = %261, %253
  %272 = load i64*, i64** @rt2, align 8
  %273 = load i32, i32* %7, align 4
  %274 = add nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, i64* %272, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = icmp sge i64 %277, 0
  br i1 %278, label %279, label %289

279:                                              ; preds = %271
  %280 = load i64*, i64** @rt2, align 8
  %281 = load i32, i32* %7, align 4
  %282 = add nsw i32 %281, 1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i64, i64* %280, i64 %283
  %285 = load i64, i64* %284, align 8
  %286 = shl i64 1, %285
  %287 = load i64, i64* %12, align 8
  %288 = or i64 %287, %286
  store i64 %288, i64* %12, align 8
  br label %289

289:                                              ; preds = %279, %271
  %290 = load i64*, i64** @rs1, align 8
  %291 = load i32, i32* %7, align 4
  %292 = add nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i64, i64* %290, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = icmp sge i64 %295, 0
  br i1 %296, label %297, label %308

297:                                              ; preds = %289
  %298 = load i64*, i64** @rs1, align 8
  %299 = load i32, i32* %7, align 4
  %300 = add nsw i32 %299, 1
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i64, i64* %298, i64 %301
  %303 = load i64, i64* %302, align 8
  %304 = shl i64 1, %303
  %305 = xor i64 %304, -1
  %306 = load i64, i64* %12, align 8
  %307 = and i64 %306, %305
  store i64 %307, i64* %12, align 8
  br label %308

308:                                              ; preds = %297, %289
  %309 = load i64*, i64** @rs2, align 8
  %310 = load i32, i32* %7, align 4
  %311 = add nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i64, i64* %309, i64 %312
  %314 = load i64, i64* %313, align 8
  %315 = icmp sge i64 %314, 0
  br i1 %315, label %316, label %327

316:                                              ; preds = %308
  %317 = load i64*, i64** @rs2, align 8
  %318 = load i32, i32* %7, align 4
  %319 = add nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i64, i64* %317, i64 %320
  %322 = load i64, i64* %321, align 8
  %323 = shl i64 1, %322
  %324 = xor i64 %323, -1
  %325 = load i64, i64* %12, align 8
  %326 = and i64 %325, %324
  store i64 %326, i64* %12, align 8
  br label %327

327:                                              ; preds = %316, %308
  %328 = load i64*, i64** @rs3, align 8
  %329 = load i32, i32* %7, align 4
  %330 = add nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i64, i64* %328, i64 %331
  %333 = load i64, i64* %332, align 8
  %334 = icmp sge i64 %333, 0
  br i1 %334, label %335, label %346

335:                                              ; preds = %327
  %336 = load i64*, i64** @rs3, align 8
  %337 = load i32, i32* %7, align 4
  %338 = add nsw i32 %337, 1
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i64, i64* %336, i64 %339
  %341 = load i64, i64* %340, align 8
  %342 = shl i64 1, %341
  %343 = xor i64 %342, -1
  %344 = load i64, i64* %12, align 8
  %345 = and i64 %344, %343
  store i64 %345, i64* %12, align 8
  br label %346

346:                                              ; preds = %335, %327
  br label %347

347:                                              ; preds = %346, %245
  %348 = load i64*, i64** @rt1, align 8
  %349 = load i32, i32* %7, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i64, i64* %348, i64 %350
  %352 = load i64, i64* %351, align 8
  %353 = icmp sge i64 %352, 0
  br i1 %353, label %354, label %363

354:                                              ; preds = %347
  %355 = load i64*, i64** @rt1, align 8
  %356 = load i32, i32* %7, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i64, i64* %355, i64 %357
  %359 = load i64, i64* %358, align 8
  %360 = shl i64 1, %359
  %361 = load i64, i64* %12, align 8
  %362 = or i64 %361, %360
  store i64 %362, i64* %12, align 8
  br label %363

363:                                              ; preds = %354, %347
  %364 = load i64*, i64** @rt2, align 8
  %365 = load i32, i32* %7, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i64, i64* %364, i64 %366
  %368 = load i64, i64* %367, align 8
  %369 = icmp sge i64 %368, 0
  br i1 %369, label %370, label %379

370:                                              ; preds = %363
  %371 = load i64*, i64** @rt2, align 8
  %372 = load i32, i32* %7, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i64, i64* %371, i64 %373
  %375 = load i64, i64* %374, align 8
  %376 = shl i64 1, %375
  %377 = load i64, i64* %12, align 8
  %378 = or i64 %377, %376
  store i64 %378, i64* %12, align 8
  br label %379

379:                                              ; preds = %370, %363
  %380 = load i64*, i64** @rs1, align 8
  %381 = load i32, i32* %7, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i64, i64* %380, i64 %382
  %384 = load i64, i64* %383, align 8
  %385 = icmp sge i64 %384, 0
  br i1 %385, label %386, label %396

386:                                              ; preds = %379
  %387 = load i64*, i64** @rs1, align 8
  %388 = load i32, i32* %7, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i64, i64* %387, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = shl i64 1, %391
  %393 = xor i64 %392, -1
  %394 = load i64, i64* %12, align 8
  %395 = and i64 %394, %393
  store i64 %395, i64* %12, align 8
  br label %396

396:                                              ; preds = %386, %379
  %397 = load i64*, i64** @rs2, align 8
  %398 = load i32, i32* %7, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i64, i64* %397, i64 %399
  %401 = load i64, i64* %400, align 8
  %402 = icmp sge i64 %401, 0
  br i1 %402, label %403, label %413

403:                                              ; preds = %396
  %404 = load i64*, i64** @rs2, align 8
  %405 = load i32, i32* %7, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i64, i64* %404, i64 %406
  %408 = load i64, i64* %407, align 8
  %409 = shl i64 1, %408
  %410 = xor i64 %409, -1
  %411 = load i64, i64* %12, align 8
  %412 = and i64 %411, %410
  store i64 %412, i64* %12, align 8
  br label %413

413:                                              ; preds = %403, %396
  %414 = load i64*, i64** @rs3, align 8
  %415 = load i32, i32* %7, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i64, i64* %414, i64 %416
  %418 = load i64, i64* %417, align 8
  %419 = icmp sge i64 %418, 0
  br i1 %419, label %420, label %430

420:                                              ; preds = %413
  %421 = load i64*, i64** @rs3, align 8
  %422 = load i32, i32* %7, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i64, i64* %421, i64 %423
  %425 = load i64, i64* %424, align 8
  %426 = shl i64 1, %425
  %427 = xor i64 %426, -1
  %428 = load i64, i64* %12, align 8
  %429 = and i64 %428, %427
  store i64 %429, i64* %12, align 8
  br label %430

430:                                              ; preds = %420, %413
  %431 = load i64, i64* %12, align 8
  %432 = load i64*, i64** @unneeded_reg, align 8
  %433 = load i32, i32* %7, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i64, i64* %432, i64 %434
  store i64 %431, i64* %435, align 8
  %436 = load i32, i32* %6, align 4
  %437 = icmp slt i32 %436, 2
  br i1 %437, label %438, label %452

438:                                              ; preds = %430
  %439 = load i64*, i64** @ba, align 8
  %440 = load i32, i32* %7, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i64, i64* %439, i64 %441
  %443 = load i64, i64* %442, align 8
  %444 = load i64, i64* @start, align 8
  %445 = sub nsw i64 %443, %444
  %446 = ashr i64 %445, 1
  %447 = trunc i64 %446 to i32
  %448 = load i32, i32* %7, align 4
  %449 = sub nsw i32 %448, 1
  %450 = load i32, i32* %6, align 4
  %451 = add nsw i32 %450, 1
  call void @unneeded_registers(i32 %447, i32 %449, i32 %451)
  br label %463

452:                                              ; preds = %430
  %453 = load i64*, i64** @unneeded_reg, align 8
  %454 = load i64*, i64** @ba, align 8
  %455 = load i32, i32* %7, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i64, i64* %454, i64 %456
  %458 = load i64, i64* %457, align 8
  %459 = load i64, i64* @start, align 8
  %460 = sub nsw i64 %458, %459
  %461 = ashr i64 %460, 1
  %462 = getelementptr inbounds i64, i64* %453, i64 %461
  store i64 0, i64* %462, align 8
  br label %463

463:                                              ; preds = %452, %438
  br label %464

464:                                              ; preds = %463, %193
  %465 = load i64*, i64** @itype, align 8
  %466 = load i32, i32* %7, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i64, i64* %465, i64 %467
  %469 = load i64, i64* %468, align 8
  %470 = load i64, i64* @UJUMP, align 8
  %471 = icmp eq i64 %469, %470
  br i1 %471, label %480, label %472

472:                                              ; preds = %464
  %473 = load i64*, i64** @itype, align 8
  %474 = load i32, i32* %7, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i64, i64* %473, i64 %475
  %477 = load i64, i64* %476, align 8
  %478 = load i64, i64* @RJUMP, align 8
  %479 = icmp eq i64 %477, %478
  br i1 %479, label %480, label %596

480:                                              ; preds = %472, %464
  %481 = load i64*, i64** @unneeded_reg, align 8
  %482 = load i64*, i64** @ba, align 8
  %483 = load i32, i32* %7, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i64, i64* %482, i64 %484
  %486 = load i64, i64* %485, align 8
  %487 = load i64, i64* @start, align 8
  %488 = sub nsw i64 %486, %487
  %489 = ashr i64 %488, 1
  %490 = getelementptr inbounds i64, i64* %481, i64 %489
  %491 = load i64, i64* %490, align 8
  store i64 %491, i64* %8, align 8
  %492 = load i64, i64* @SR, align 8
  %493 = shl i64 1, %492
  %494 = or i64 32768, %493
  %495 = xor i64 %494, -1
  %496 = load i64, i64* %8, align 8
  %497 = and i64 %496, %495
  store i64 %497, i64* %8, align 8
  %498 = load i64, i64* %8, align 8
  %499 = load i64*, i64** @branch_unneeded_reg, align 8
  %500 = load i32, i32* %7, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i64, i64* %499, i64 %501
  store i64 %498, i64* %502, align 8
  %503 = load i64*, i64** @rt1, align 8
  %504 = load i32, i32* %7, align 4
  %505 = add nsw i32 %504, 1
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i64, i64* %503, i64 %506
  %508 = load i64, i64* %507, align 8
  %509 = icmp sge i64 %508, 0
  br i1 %509, label %510, label %520

510:                                              ; preds = %480
  %511 = load i64*, i64** @rt1, align 8
  %512 = load i32, i32* %7, align 4
  %513 = add nsw i32 %512, 1
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i64, i64* %511, i64 %514
  %516 = load i64, i64* %515, align 8
  %517 = shl i64 1, %516
  %518 = load i64, i64* %8, align 8
  %519 = or i64 %518, %517
  store i64 %519, i64* %8, align 8
  br label %520

520:                                              ; preds = %510, %480
  %521 = load i64*, i64** @rt2, align 8
  %522 = load i32, i32* %7, align 4
  %523 = add nsw i32 %522, 1
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i64, i64* %521, i64 %524
  %526 = load i64, i64* %525, align 8
  %527 = icmp sge i64 %526, 0
  br i1 %527, label %528, label %538

528:                                              ; preds = %520
  %529 = load i64*, i64** @rt2, align 8
  %530 = load i32, i32* %7, align 4
  %531 = add nsw i32 %530, 1
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i64, i64* %529, i64 %532
  %534 = load i64, i64* %533, align 8
  %535 = shl i64 1, %534
  %536 = load i64, i64* %8, align 8
  %537 = or i64 %536, %535
  store i64 %537, i64* %8, align 8
  br label %538

538:                                              ; preds = %528, %520
  %539 = load i64*, i64** @rs1, align 8
  %540 = load i32, i32* %7, align 4
  %541 = add nsw i32 %540, 1
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i64, i64* %539, i64 %542
  %544 = load i64, i64* %543, align 8
  %545 = icmp sge i64 %544, 0
  br i1 %545, label %546, label %557

546:                                              ; preds = %538
  %547 = load i64*, i64** @rs1, align 8
  %548 = load i32, i32* %7, align 4
  %549 = add nsw i32 %548, 1
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i64, i64* %547, i64 %550
  %552 = load i64, i64* %551, align 8
  %553 = shl i64 1, %552
  %554 = xor i64 %553, -1
  %555 = load i64, i64* %8, align 8
  %556 = and i64 %555, %554
  store i64 %556, i64* %8, align 8
  br label %557

557:                                              ; preds = %546, %538
  %558 = load i64*, i64** @rs2, align 8
  %559 = load i32, i32* %7, align 4
  %560 = add nsw i32 %559, 1
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i64, i64* %558, i64 %561
  %563 = load i64, i64* %562, align 8
  %564 = icmp sge i64 %563, 0
  br i1 %564, label %565, label %576

565:                                              ; preds = %557
  %566 = load i64*, i64** @rs2, align 8
  %567 = load i32, i32* %7, align 4
  %568 = add nsw i32 %567, 1
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i64, i64* %566, i64 %569
  %571 = load i64, i64* %570, align 8
  %572 = shl i64 1, %571
  %573 = xor i64 %572, -1
  %574 = load i64, i64* %8, align 8
  %575 = and i64 %574, %573
  store i64 %575, i64* %8, align 8
  br label %576

576:                                              ; preds = %565, %557
  %577 = load i64*, i64** @rs3, align 8
  %578 = load i32, i32* %7, align 4
  %579 = add nsw i32 %578, 1
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i64, i64* %577, i64 %580
  %582 = load i64, i64* %581, align 8
  %583 = icmp sge i64 %582, 0
  br i1 %583, label %584, label %595

584:                                              ; preds = %576
  %585 = load i64*, i64** @rs3, align 8
  %586 = load i32, i32* %7, align 4
  %587 = add nsw i32 %586, 1
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i64, i64* %585, i64 %588
  %590 = load i64, i64* %589, align 8
  %591 = shl i64 1, %590
  %592 = xor i64 %591, -1
  %593 = load i64, i64* %8, align 8
  %594 = and i64 %593, %592
  store i64 %594, i64* %8, align 8
  br label %595

595:                                              ; preds = %584, %576
  br label %779

596:                                              ; preds = %472
  %597 = load i64*, i64** @unneeded_reg, align 8
  %598 = load i64*, i64** @ba, align 8
  %599 = load i32, i32* %7, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i64, i64* %598, i64 %600
  %602 = load i64, i64* %601, align 8
  %603 = load i64, i64* @start, align 8
  %604 = sub nsw i64 %602, %603
  %605 = ashr i64 %604, 1
  %606 = getelementptr inbounds i64, i64* %597, i64 %605
  %607 = load i64, i64* %606, align 8
  store i64 %607, i64* %10, align 8
  %608 = load i64, i64* %10, align 8
  %609 = load i64*, i64** @branch_unneeded_reg, align 8
  %610 = load i32, i32* %7, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i64, i64* %609, i64 %611
  store i64 %608, i64* %612, align 8
  %613 = load i64*, i64** @itype, align 8
  %614 = load i32, i32* %7, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i64, i64* %613, i64 %615
  %617 = load i64, i64* %616, align 8
  %618 = load i64, i64* @CJUMP, align 8
  %619 = icmp ne i64 %617, %618
  br i1 %619, label %620, label %714

620:                                              ; preds = %596
  %621 = load i64*, i64** @rt1, align 8
  %622 = load i32, i32* %7, align 4
  %623 = add nsw i32 %622, 1
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds i64, i64* %621, i64 %624
  %626 = load i64, i64* %625, align 8
  %627 = icmp sge i64 %626, 0
  br i1 %627, label %628, label %638

628:                                              ; preds = %620
  %629 = load i64*, i64** @rt1, align 8
  %630 = load i32, i32* %7, align 4
  %631 = add nsw i32 %630, 1
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i64, i64* %629, i64 %632
  %634 = load i64, i64* %633, align 8
  %635 = shl i64 1, %634
  %636 = load i64, i64* %10, align 8
  %637 = or i64 %636, %635
  store i64 %637, i64* %10, align 8
  br label %638

638:                                              ; preds = %628, %620
  %639 = load i64*, i64** @rt2, align 8
  %640 = load i32, i32* %7, align 4
  %641 = add nsw i32 %640, 1
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds i64, i64* %639, i64 %642
  %644 = load i64, i64* %643, align 8
  %645 = icmp sge i64 %644, 0
  br i1 %645, label %646, label %656

646:                                              ; preds = %638
  %647 = load i64*, i64** @rt2, align 8
  %648 = load i32, i32* %7, align 4
  %649 = add nsw i32 %648, 1
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i64, i64* %647, i64 %650
  %652 = load i64, i64* %651, align 8
  %653 = shl i64 1, %652
  %654 = load i64, i64* %10, align 8
  %655 = or i64 %654, %653
  store i64 %655, i64* %10, align 8
  br label %656

656:                                              ; preds = %646, %638
  %657 = load i64*, i64** @rs1, align 8
  %658 = load i32, i32* %7, align 4
  %659 = add nsw i32 %658, 1
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds i64, i64* %657, i64 %660
  %662 = load i64, i64* %661, align 8
  %663 = icmp sge i64 %662, 0
  br i1 %663, label %664, label %675

664:                                              ; preds = %656
  %665 = load i64*, i64** @rs1, align 8
  %666 = load i32, i32* %7, align 4
  %667 = add nsw i32 %666, 1
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds i64, i64* %665, i64 %668
  %670 = load i64, i64* %669, align 8
  %671 = shl i64 1, %670
  %672 = xor i64 %671, -1
  %673 = load i64, i64* %10, align 8
  %674 = and i64 %673, %672
  store i64 %674, i64* %10, align 8
  br label %675

675:                                              ; preds = %664, %656
  %676 = load i64*, i64** @rs2, align 8
  %677 = load i32, i32* %7, align 4
  %678 = add nsw i32 %677, 1
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds i64, i64* %676, i64 %679
  %681 = load i64, i64* %680, align 8
  %682 = icmp sge i64 %681, 0
  br i1 %682, label %683, label %694

683:                                              ; preds = %675
  %684 = load i64*, i64** @rs2, align 8
  %685 = load i32, i32* %7, align 4
  %686 = add nsw i32 %685, 1
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i64, i64* %684, i64 %687
  %689 = load i64, i64* %688, align 8
  %690 = shl i64 1, %689
  %691 = xor i64 %690, -1
  %692 = load i64, i64* %10, align 8
  %693 = and i64 %692, %691
  store i64 %693, i64* %10, align 8
  br label %694

694:                                              ; preds = %683, %675
  %695 = load i64*, i64** @rs3, align 8
  %696 = load i32, i32* %7, align 4
  %697 = add nsw i32 %696, 1
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds i64, i64* %695, i64 %698
  %700 = load i64, i64* %699, align 8
  %701 = icmp sge i64 %700, 0
  br i1 %701, label %702, label %713

702:                                              ; preds = %694
  %703 = load i64*, i64** @rs3, align 8
  %704 = load i32, i32* %7, align 4
  %705 = add nsw i32 %704, 1
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds i64, i64* %703, i64 %706
  %708 = load i64, i64* %707, align 8
  %709 = shl i64 1, %708
  %710 = xor i64 %709, -1
  %711 = load i64, i64* %10, align 8
  %712 = and i64 %711, %710
  store i64 %712, i64* %10, align 8
  br label %713

713:                                              ; preds = %702, %694
  br label %714

714:                                              ; preds = %713, %596
  %715 = load i64, i64* %10, align 8
  %716 = load i64, i64* %8, align 8
  %717 = and i64 %716, %715
  store i64 %717, i64* %8, align 8
  %718 = load i64, i64* @SR, align 8
  %719 = shl i64 1, %718
  %720 = or i64 32768, %719
  %721 = xor i64 %720, -1
  %722 = load i64, i64* %8, align 8
  %723 = and i64 %722, %721
  store i64 %723, i64* %8, align 8
  %724 = load i64*, i64** @itype, align 8
  %725 = load i32, i32* %7, align 4
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds i64, i64* %724, i64 %726
  %728 = load i64, i64* %727, align 8
  %729 = load i64, i64* @CJUMP, align 8
  %730 = icmp ne i64 %728, %729
  br i1 %730, label %731, label %755

731:                                              ; preds = %714
  %732 = load i32, i32* %7, align 4
  %733 = load i32, i32* @slen, align 4
  %734 = sub nsw i32 %733, 1
  %735 = icmp slt i32 %732, %734
  br i1 %735, label %736, label %749

736:                                              ; preds = %731
  %737 = load i64*, i64** @unneeded_reg, align 8
  %738 = load i32, i32* %7, align 4
  %739 = add nsw i32 %738, 2
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds i64, i64* %737, i64 %740
  %742 = load i64, i64* %741, align 8
  %743 = load i64*, i64** @branch_unneeded_reg, align 8
  %744 = load i32, i32* %7, align 4
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds i64, i64* %743, i64 %745
  %747 = load i64, i64* %746, align 8
  %748 = and i64 %747, %742
  store i64 %748, i64* %746, align 8
  br label %754

749:                                              ; preds = %731
  %750 = load i64*, i64** @branch_unneeded_reg, align 8
  %751 = load i32, i32* %7, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds i64, i64* %750, i64 %752
  store i64 0, i64* %753, align 8
  br label %754

754:                                              ; preds = %749, %736
  br label %778

755:                                              ; preds = %714
  %756 = load i32, i32* %7, align 4
  %757 = load i32, i32* @slen, align 4
  %758 = icmp slt i32 %756, %757
  br i1 %758, label %759, label %772

759:                                              ; preds = %755
  %760 = load i64*, i64** @unneeded_reg, align 8
  %761 = load i32, i32* %7, align 4
  %762 = add nsw i32 %761, 1
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds i64, i64* %760, i64 %763
  %765 = load i64, i64* %764, align 8
  %766 = load i64*, i64** @branch_unneeded_reg, align 8
  %767 = load i32, i32* %7, align 4
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds i64, i64* %766, i64 %768
  %770 = load i64, i64* %769, align 8
  %771 = and i64 %770, %765
  store i64 %771, i64* %769, align 8
  br label %777

772:                                              ; preds = %755
  %773 = load i64*, i64** @branch_unneeded_reg, align 8
  %774 = load i32, i32* %7, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds i64, i64* %773, i64 %775
  store i64 0, i64* %776, align 8
  br label %777

777:                                              ; preds = %772, %759
  br label %778

778:                                              ; preds = %777, %754
  br label %779

779:                                              ; preds = %778, %595
  br label %780

780:                                              ; preds = %779, %192
  br label %819

781:                                              ; preds = %57
  %782 = load i64*, i64** @itype, align 8
  %783 = load i32, i32* %7, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds i64, i64* %782, i64 %784
  %786 = load i64, i64* %785, align 8
  %787 = load i64, i64* @RJUMP, align 8
  %788 = icmp eq i64 %786, %787
  br i1 %788, label %789, label %801

789:                                              ; preds = %781
  %790 = load i32*, i32** @source, align 8
  %791 = load i32, i32* %7, align 4
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds i32, i32* %790, i64 %792
  %794 = load i32, i32* %793, align 4
  %795 = icmp eq i32 %794, 43
  br i1 %795, label %796, label %801

796:                                              ; preds = %789
  %797 = load i64, i64* @SR, align 8
  %798 = trunc i64 %797 to i32
  %799 = shl i32 1, %798
  %800 = sext i32 %799 to i64
  store i64 %800, i64* %8, align 8
  br label %818

801:                                              ; preds = %789, %781
  %802 = load i64*, i64** @itype, align 8
  %803 = load i32, i32* %7, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds i64, i64* %802, i64 %804
  %806 = load i64, i64* %805, align 8
  %807 = load i64, i64* @SYSTEM, align 8
  %808 = icmp eq i64 %806, %807
  br i1 %808, label %809, label %817

809:                                              ; preds = %801
  %810 = load i32*, i32** @opcode, align 8
  %811 = load i32, i32* %7, align 4
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds i32, i32* %810, i64 %812
  %814 = load i32, i32* %813, align 4
  %815 = icmp eq i32 %814, 12
  br i1 %815, label %816, label %817

816:                                              ; preds = %809
  store i64 0, i64* %8, align 8
  br label %817

817:                                              ; preds = %816, %809, %801
  br label %818

818:                                              ; preds = %817, %796
  br label %819

819:                                              ; preds = %818, %780
  %820 = load i64*, i64** @rt1, align 8
  %821 = load i32, i32* %7, align 4
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds i64, i64* %820, i64 %822
  %824 = load i64, i64* %823, align 8
  %825 = icmp sge i64 %824, 0
  br i1 %825, label %826, label %835

826:                                              ; preds = %819
  %827 = load i64*, i64** @rt1, align 8
  %828 = load i32, i32* %7, align 4
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds i64, i64* %827, i64 %829
  %831 = load i64, i64* %830, align 8
  %832 = shl i64 1, %831
  %833 = load i64, i64* %8, align 8
  %834 = or i64 %833, %832
  store i64 %834, i64* %8, align 8
  br label %835

835:                                              ; preds = %826, %819
  %836 = load i64*, i64** @rt2, align 8
  %837 = load i32, i32* %7, align 4
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds i64, i64* %836, i64 %838
  %840 = load i64, i64* %839, align 8
  %841 = icmp sge i64 %840, 0
  br i1 %841, label %842, label %851

842:                                              ; preds = %835
  %843 = load i64*, i64** @rt2, align 8
  %844 = load i32, i32* %7, align 4
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds i64, i64* %843, i64 %845
  %847 = load i64, i64* %846, align 8
  %848 = shl i64 1, %847
  %849 = load i64, i64* %8, align 8
  %850 = or i64 %849, %848
  store i64 %850, i64* %8, align 8
  br label %851

851:                                              ; preds = %842, %835
  %852 = load i64*, i64** @rs1, align 8
  %853 = load i32, i32* %7, align 4
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds i64, i64* %852, i64 %854
  %856 = load i64, i64* %855, align 8
  %857 = icmp sge i64 %856, 0
  br i1 %857, label %858, label %868

858:                                              ; preds = %851
  %859 = load i64*, i64** @rs1, align 8
  %860 = load i32, i32* %7, align 4
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds i64, i64* %859, i64 %861
  %863 = load i64, i64* %862, align 8
  %864 = shl i64 1, %863
  %865 = xor i64 %864, -1
  %866 = load i64, i64* %8, align 8
  %867 = and i64 %866, %865
  store i64 %867, i64* %8, align 8
  br label %868

868:                                              ; preds = %858, %851
  %869 = load i64*, i64** @rs2, align 8
  %870 = load i32, i32* %7, align 4
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds i64, i64* %869, i64 %871
  %873 = load i64, i64* %872, align 8
  %874 = icmp sge i64 %873, 0
  br i1 %874, label %875, label %885

875:                                              ; preds = %868
  %876 = load i64*, i64** @rs2, align 8
  %877 = load i32, i32* %7, align 4
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds i64, i64* %876, i64 %878
  %880 = load i64, i64* %879, align 8
  %881 = shl i64 1, %880
  %882 = xor i64 %881, -1
  %883 = load i64, i64* %8, align 8
  %884 = and i64 %883, %882
  store i64 %884, i64* %8, align 8
  br label %885

885:                                              ; preds = %875, %868
  %886 = load i64*, i64** @rs3, align 8
  %887 = load i32, i32* %7, align 4
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds i64, i64* %886, i64 %888
  %890 = load i64, i64* %889, align 8
  %891 = icmp sge i64 %890, 0
  br i1 %891, label %892, label %902

892:                                              ; preds = %885
  %893 = load i64*, i64** @rs3, align 8
  %894 = load i32, i32* %7, align 4
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds i64, i64* %893, i64 %895
  %897 = load i64, i64* %896, align 8
  %898 = shl i64 1, %897
  %899 = xor i64 %898, -1
  %900 = load i64, i64* %8, align 8
  %901 = and i64 %900, %899
  store i64 %901, i64* %8, align 8
  br label %902

902:                                              ; preds = %892, %885
  %903 = load i64, i64* %8, align 8
  %904 = load i64, i64* @SR, align 8
  %905 = trunc i64 %904 to i32
  %906 = shl i32 1, %905
  %907 = sext i32 %906 to i64
  %908 = and i64 %903, %907
  %909 = icmp ne i64 %908, 0
  br i1 %909, label %910, label %916

910:                                              ; preds = %902
  %911 = load i32, i32* @TBIT, align 4
  %912 = shl i32 1, %911
  %913 = sext i32 %912 to i64
  %914 = load i64, i64* %8, align 8
  %915 = or i64 %914, %913
  store i64 %915, i64* %8, align 8
  br label %916

916:                                              ; preds = %910, %902
  %917 = load i64, i64* %8, align 8
  %918 = load i64*, i64** @unneeded_reg, align 8
  %919 = load i32, i32* %7, align 4
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds i64, i64* %918, i64 %920
  store i64 %917, i64* %921, align 8
  br label %922

922:                                              ; preds = %916
  %923 = load i32, i32* %7, align 4
  %924 = add nsw i32 %923, -1
  store i32 %924, i32* %7, align 4
  br label %29

925:                                              ; preds = %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
