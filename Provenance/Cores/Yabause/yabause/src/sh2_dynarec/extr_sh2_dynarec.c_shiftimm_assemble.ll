; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_shiftimm_assemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_shiftimm_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i64, i32 }

@opcode = common dso_local global i32* null, align 8
@opcode2 = common dso_local global i32* null, align 8
@rs1 = common dso_local global i64* null, align 8
@rt1 = common dso_local global i64* null, align 8
@SR = common dso_local global i64 0, align 8
@TBIT = common dso_local global i64 0, align 8
@opcode3 = common dso_local global i32* null, align 8
@rs2 = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shiftimm_assemble(i32 %0, %struct.regstat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regstat*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store %struct.regstat* %1, %struct.regstat** %4, align 8
  %13 = load i32*, i32** @opcode, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %337

19:                                               ; preds = %2
  %20 = load i32*, i32** @opcode2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %230

26:                                               ; preds = %19
  %27 = load %struct.regstat*, %struct.regstat** %4, align 8
  %28 = getelementptr inbounds %struct.regstat, %struct.regstat* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i64*, i64** @rs1, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call signext i8 @get_reg(i32 %29, i64 %34)
  store i8 %35, i8* %5, align 1
  %36 = load %struct.regstat*, %struct.regstat** %4, align 8
  %37 = getelementptr inbounds %struct.regstat, %struct.regstat* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i64*, i64** @rt1, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call signext i8 @get_reg(i32 %38, i64 %43)
  store i8 %44, i8* %6, align 1
  %45 = load %struct.regstat*, %struct.regstat** %4, align 8
  %46 = getelementptr inbounds %struct.regstat, %struct.regstat* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* @SR, align 8
  %49 = call signext i8 @get_reg(i32 %47, i64 %48)
  store i8 %49, i8* %7, align 1
  %50 = load i8, i8* %5, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8, i8* %6, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %51, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32*, i32** @opcode2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %26
  %64 = load %struct.regstat*, %struct.regstat** %4, align 8
  %65 = getelementptr inbounds %struct.regstat, %struct.regstat* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TBIT, align 8
  %68 = shl i64 1, %67
  %69 = and i64 %66, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i8, i8* %5, align 1
  %73 = load i8, i8* %5, align 1
  %74 = call i32 @emit_shlimm(i8 signext %72, i32 1, i8 signext %73)
  br label %79

75:                                               ; preds = %63
  %76 = load i8, i8* %5, align 1
  %77 = load i8, i8* %7, align 1
  %78 = call i32 @emit_shlsr(i8 signext %76, i8 signext %77)
  br label %79

79:                                               ; preds = %75, %71
  br label %229

80:                                               ; preds = %26
  %81 = load i32*, i32** @opcode2, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %142

87:                                               ; preds = %80
  %88 = load %struct.regstat*, %struct.regstat** %4, align 8
  %89 = getelementptr inbounds %struct.regstat, %struct.regstat* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @TBIT, align 8
  %92 = shl i64 1, %91
  %93 = and i64 %90, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %87
  %96 = load i32*, i32** @opcode3, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i8, i8* %5, align 1
  %104 = load i8, i8* %5, align 1
  %105 = call i32 @emit_shrimm(i8 signext %103, i32 1, i8 signext %104)
  br label %106

106:                                              ; preds = %102, %95
  %107 = load i32*, i32** @opcode3, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i8, i8* %5, align 1
  %115 = load i8, i8* %5, align 1
  %116 = call i32 @emit_sarimm(i8 signext %114, i32 1, i8 signext %115)
  br label %117

117:                                              ; preds = %113, %106
  br label %141

118:                                              ; preds = %87
  %119 = load i32*, i32** @opcode3, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load i8, i8* %5, align 1
  %127 = load i8, i8* %7, align 1
  %128 = call i32 @emit_shrsr(i8 signext %126, i8 signext %127)
  br label %129

129:                                              ; preds = %125, %118
  %130 = load i32*, i32** @opcode3, align 8
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 2
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load i8, i8* %5, align 1
  %138 = load i8, i8* %7, align 1
  %139 = call i32 @emit_sarsr(i8 signext %137, i8 signext %138)
  br label %140

140:                                              ; preds = %136, %129
  br label %141

141:                                              ; preds = %140, %117
  br label %228

142:                                              ; preds = %80
  %143 = load i32*, i32** @opcode2, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 4
  br i1 %148, label %149, label %184

149:                                              ; preds = %142
  %150 = load i32*, i32** @opcode3, align 8
  %151 = load i32, i32* %3, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %149
  %157 = load %struct.regstat*, %struct.regstat** %4, align 8
  %158 = getelementptr inbounds %struct.regstat, %struct.regstat* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @TBIT, align 8
  %161 = shl i64 1, %160
  %162 = and i64 %159, %161
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %156
  %165 = load i8, i8* %5, align 1
  %166 = call i32 @emit_rotl(i8 signext %165)
  br label %171

167:                                              ; preds = %156
  %168 = load i8, i8* %5, align 1
  %169 = load i8, i8* %7, align 1
  %170 = call i32 @emit_rotlsr(i8 signext %168, i8 signext %169)
  br label %171

171:                                              ; preds = %167, %164
  br label %172

172:                                              ; preds = %171, %149
  %173 = load i32*, i32** @opcode3, align 8
  %174 = load i32, i32* %3, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 2
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load i8, i8* %5, align 1
  %181 = load i8, i8* %7, align 1
  %182 = call i32 @emit_rotclsr(i8 signext %180, i8 signext %181)
  br label %183

183:                                              ; preds = %179, %172
  br label %227

184:                                              ; preds = %142
  %185 = load i32*, i32** @opcode2, align 8
  %186 = load i32, i32* %3, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 5
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load i32*, i32** @opcode3, align 8
  %194 = load i32, i32* %3, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %215

199:                                              ; preds = %184
  %200 = load %struct.regstat*, %struct.regstat** %4, align 8
  %201 = getelementptr inbounds %struct.regstat, %struct.regstat* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @TBIT, align 8
  %204 = shl i64 1, %203
  %205 = and i64 %202, %204
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %199
  %208 = load i8, i8* %5, align 1
  %209 = call i32 @emit_rotr(i8 signext %208)
  br label %214

210:                                              ; preds = %199
  %211 = load i8, i8* %5, align 1
  %212 = load i8, i8* %7, align 1
  %213 = call i32 @emit_rotrsr(i8 signext %211, i8 signext %212)
  br label %214

214:                                              ; preds = %210, %207
  br label %215

215:                                              ; preds = %214, %184
  %216 = load i32*, i32** @opcode3, align 8
  %217 = load i32, i32* %3, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %222, label %226

222:                                              ; preds = %215
  %223 = load i8, i8* %5, align 1
  %224 = load i8, i8* %7, align 1
  %225 = call i32 @emit_rotcrsr(i8 signext %223, i8 signext %224)
  br label %226

226:                                              ; preds = %222, %215
  br label %227

227:                                              ; preds = %226, %183
  br label %228

228:                                              ; preds = %227, %141
  br label %229

229:                                              ; preds = %228, %79
  br label %336

230:                                              ; preds = %19
  %231 = load %struct.regstat*, %struct.regstat** %4, align 8
  %232 = getelementptr inbounds %struct.regstat, %struct.regstat* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i64*, i64** @rs1, align 8
  %235 = load i32, i32* %3, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %234, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = call signext i8 @get_reg(i32 %233, i64 %238)
  store i8 %239, i8* %8, align 1
  %240 = load %struct.regstat*, %struct.regstat** %4, align 8
  %241 = getelementptr inbounds %struct.regstat, %struct.regstat* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load i64*, i64** @rt1, align 8
  %244 = load i32, i32* %3, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %243, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = call signext i8 @get_reg(i32 %242, i64 %247)
  store i8 %248, i8* %9, align 1
  %249 = load i8, i8* %9, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp sge i32 %250, 0
  br i1 %251, label %252, label %335

252:                                              ; preds = %230
  %253 = load i32*, i32** @opcode2, align 8
  %254 = load i32, i32* %3, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %257, 8
  br i1 %258, label %259, label %293

259:                                              ; preds = %252
  %260 = load i32*, i32** @opcode3, align 8
  %261 = load i32, i32* %3, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %259
  %267 = load i8, i8* %8, align 1
  %268 = load i8, i8* %9, align 1
  %269 = call i32 @emit_shlimm(i8 signext %267, i32 2, i8 signext %268)
  br label %270

270:                                              ; preds = %266, %259
  %271 = load i32*, i32** @opcode3, align 8
  %272 = load i32, i32* %3, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = icmp eq i32 %275, 1
  br i1 %276, label %277, label %281

277:                                              ; preds = %270
  %278 = load i8, i8* %8, align 1
  %279 = load i8, i8* %9, align 1
  %280 = call i32 @emit_shlimm(i8 signext %278, i32 8, i8 signext %279)
  br label %281

281:                                              ; preds = %277, %270
  %282 = load i32*, i32** @opcode3, align 8
  %283 = load i32, i32* %3, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %286, 2
  br i1 %287, label %288, label %292

288:                                              ; preds = %281
  %289 = load i8, i8* %8, align 1
  %290 = load i8, i8* %9, align 1
  %291 = call i32 @emit_shlimm(i8 signext %289, i32 16, i8 signext %290)
  br label %292

292:                                              ; preds = %288, %281
  br label %293

293:                                              ; preds = %292, %252
  %294 = load i32*, i32** @opcode2, align 8
  %295 = load i32, i32* %3, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = icmp eq i32 %298, 9
  br i1 %299, label %300, label %334

300:                                              ; preds = %293
  %301 = load i32*, i32** @opcode3, align 8
  %302 = load i32, i32* %3, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %300
  %308 = load i8, i8* %8, align 1
  %309 = load i8, i8* %9, align 1
  %310 = call i32 @emit_shrimm(i8 signext %308, i32 2, i8 signext %309)
  br label %311

311:                                              ; preds = %307, %300
  %312 = load i32*, i32** @opcode3, align 8
  %313 = load i32, i32* %3, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = icmp eq i32 %316, 1
  br i1 %317, label %318, label %322

318:                                              ; preds = %311
  %319 = load i8, i8* %8, align 1
  %320 = load i8, i8* %9, align 1
  %321 = call i32 @emit_shrimm(i8 signext %319, i32 8, i8 signext %320)
  br label %322

322:                                              ; preds = %318, %311
  %323 = load i32*, i32** @opcode3, align 8
  %324 = load i32, i32* %3, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = icmp eq i32 %327, 2
  br i1 %328, label %329, label %333

329:                                              ; preds = %322
  %330 = load i8, i8* %8, align 1
  %331 = load i8, i8* %9, align 1
  %332 = call i32 @emit_shrimm(i8 signext %330, i32 16, i8 signext %331)
  br label %333

333:                                              ; preds = %329, %322
  br label %334

334:                                              ; preds = %333, %293
  br label %335

335:                                              ; preds = %334, %230
  br label %336

336:                                              ; preds = %335, %229
  br label %381

337:                                              ; preds = %2
  %338 = load i32*, i32** @opcode, align 8
  %339 = load i32, i32* %3, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = icmp eq i32 %342, 2
  br i1 %343, label %344, label %380

344:                                              ; preds = %337
  %345 = load %struct.regstat*, %struct.regstat** %4, align 8
  %346 = getelementptr inbounds %struct.regstat, %struct.regstat* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = load i64*, i64** @rs1, align 8
  %349 = load i32, i32* %3, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i64, i64* %348, i64 %350
  %352 = load i64, i64* %351, align 8
  %353 = call signext i8 @get_reg(i32 %347, i64 %352)
  store i8 %353, i8* %10, align 1
  %354 = load %struct.regstat*, %struct.regstat** %4, align 8
  %355 = getelementptr inbounds %struct.regstat, %struct.regstat* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 8
  %357 = load i64*, i64** @rt1, align 8
  %358 = load i32, i32* %3, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i64, i64* %357, i64 %359
  %361 = load i64, i64* %360, align 8
  %362 = call signext i8 @get_reg(i32 %356, i64 %361)
  store i8 %362, i8* %11, align 1
  %363 = load i64*, i64** @rs2, align 8
  %364 = load i32, i32* %3, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i64, i64* %363, i64 %365
  %367 = load i64, i64* %366, align 8
  %368 = load i64*, i64** @rt1, align 8
  %369 = load i32, i32* %3, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i64, i64* %368, i64 %370
  %372 = load i64, i64* %371, align 8
  %373 = icmp eq i64 %367, %372
  %374 = zext i1 %373 to i32
  %375 = call i32 @assert(i32 %374)
  %376 = load i8, i8* %11, align 1
  %377 = load i8, i8* %10, align 1
  %378 = load i8, i8* %11, align 1
  %379 = call i32 @emit_shrdimm(i8 signext %376, i8 signext %377, i32 16, i8 signext %378)
  br label %380

380:                                              ; preds = %344, %337
  br label %381

381:                                              ; preds = %380, %336
  ret void
}

declare dso_local signext i8 @get_reg(i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_shlimm(i8 signext, i32, i8 signext) #1

declare dso_local i32 @emit_shlsr(i8 signext, i8 signext) #1

declare dso_local i32 @emit_shrimm(i8 signext, i32, i8 signext) #1

declare dso_local i32 @emit_sarimm(i8 signext, i32, i8 signext) #1

declare dso_local i32 @emit_shrsr(i8 signext, i8 signext) #1

declare dso_local i32 @emit_sarsr(i8 signext, i8 signext) #1

declare dso_local i32 @emit_rotl(i8 signext) #1

declare dso_local i32 @emit_rotlsr(i8 signext, i8 signext) #1

declare dso_local i32 @emit_rotclsr(i8 signext, i8 signext) #1

declare dso_local i32 @emit_rotr(i8 signext) #1

declare dso_local i32 @emit_rotrsr(i8 signext, i8 signext) #1

declare dso_local i32 @emit_rotcrsr(i8 signext, i8 signext) #1

declare dso_local i32 @emit_shrdimm(i8 signext, i8 signext, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
