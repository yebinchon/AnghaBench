; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_imm8_assemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_imm8_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i8, i32*, i8, i32 }

@opcode = common dso_local global i32* null, align 8
@rt1 = common dso_local global i32* null, align 8
@rs1 = common dso_local global i32* null, align 8
@imm = common dso_local global i32* null, align 8
@cpmap = common dso_local global i32** null, align 8
@SR = common dso_local global i32 0, align 4
@opcode2 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imm8_assemble(i32 %0, %struct.regstat* %1) #0 {
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
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store %struct.regstat* %1, %struct.regstat** %4, align 8
  %16 = load i32*, i32** @opcode, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 7
  br i1 %21, label %22, label %135

22:                                               ; preds = %2
  %23 = load %struct.regstat*, %struct.regstat** %4, align 8
  %24 = getelementptr inbounds %struct.regstat, %struct.regstat* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @rt1, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call signext i8 @get_reg(i32 %25, i32 %30)
  store i8 %31, i8* %6, align 1
  %32 = load %struct.regstat*, %struct.regstat** %4, align 8
  %33 = getelementptr inbounds %struct.regstat, %struct.regstat* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** @rs1, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call signext i8 @get_reg(i32 %34, i32 %39)
  store i8 %40, i8* %5, align 1
  %41 = load i8, i8* %5, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sge i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i8, i8* %6, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %134

49:                                               ; preds = %22
  %50 = load %struct.regstat*, %struct.regstat** %4, align 8
  %51 = getelementptr inbounds %struct.regstat, %struct.regstat* %50, i32 0, i32 0
  %52 = load i8, i8* %51, align 8
  %53 = sext i8 %52 to i32
  %54 = load i8, i8* %6, align 1
  %55 = sext i8 %54 to i32
  %56 = ashr i32 %53, %55
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %133, label %59

59:                                               ; preds = %49
  %60 = load i8, i8* %5, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  %64 = load %struct.regstat*, %struct.regstat** %4, align 8
  %65 = getelementptr inbounds %struct.regstat, %struct.regstat* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i8, i8* %6, align 1
  %68 = sext i8 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** @rs1, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %70, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %63
  %78 = load i32*, i32** @rs1, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i8, i8* %6, align 1
  %84 = call i32 @emit_loadreg(i32 %82, i8 signext %83)
  br label %85

85:                                               ; preds = %77, %63
  %86 = load i8, i8* %6, align 1
  %87 = load i32*, i32** @imm, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i8, i8* %6, align 1
  %93 = call i32 @emit_addimm(i8 signext %86, i32 %91, i8 signext %92)
  br label %132

94:                                               ; preds = %59
  %95 = load %struct.regstat*, %struct.regstat** %4, align 8
  %96 = getelementptr inbounds %struct.regstat, %struct.regstat* %95, i32 0, i32 2
  %97 = load i8, i8* %96, align 8
  %98 = sext i8 %97 to i32
  %99 = load i8, i8* %5, align 1
  %100 = sext i8 %99 to i32
  %101 = ashr i32 %98, %100
  %102 = and i32 %101, 1
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %94
  %105 = load i8, i8* %5, align 1
  %106 = load i32*, i32** @imm, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i8, i8* %6, align 1
  %112 = call i32 @emit_addimm(i8 signext %105, i32 %110, i8 signext %111)
  br label %131

113:                                              ; preds = %94
  %114 = load i32**, i32*** @cpmap, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = load i8, i8* %5, align 1
  %120 = sext i8 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** @imm, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %122, %127
  %129 = load i8, i8* %6, align 1
  %130 = call i32 @emit_movimm(i32 %128, i8 signext %129)
  br label %131

131:                                              ; preds = %113, %104
  br label %132

132:                                              ; preds = %131, %85
  br label %133

133:                                              ; preds = %132, %49
  br label %134

134:                                              ; preds = %133, %22
  br label %566

135:                                              ; preds = %2
  %136 = load i32*, i32** @opcode, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 8
  br i1 %141, label %142, label %185

142:                                              ; preds = %135
  %143 = load %struct.regstat*, %struct.regstat** %4, align 8
  %144 = getelementptr inbounds %struct.regstat, %struct.regstat* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** @rs1, align 8
  %147 = load i32, i32* %3, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call signext i8 @get_reg(i32 %145, i32 %150)
  store i8 %151, i8* %7, align 1
  %152 = load %struct.regstat*, %struct.regstat** %4, align 8
  %153 = getelementptr inbounds %struct.regstat, %struct.regstat* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @SR, align 4
  %156 = call signext i8 @get_reg(i32 %154, i32 %155)
  store i8 %156, i8* %8, align 1
  %157 = load %struct.regstat*, %struct.regstat** %4, align 8
  %158 = getelementptr inbounds %struct.regstat, %struct.regstat* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call signext i8 @get_reg(i32 %159, i32 -1)
  store i8 %160, i8* %9, align 1
  %161 = load i8, i8* %7, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp sge i32 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  %166 = load i8, i8* %8, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp sge i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load i8, i8* %9, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp sge i32 %172, 0
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load i8, i8* %7, align 1
  %177 = load i32*, i32** @imm, align 8
  %178 = load i32, i32* %3, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i8, i8* %8, align 1
  %183 = load i8, i8* %9, align 1
  %184 = call i32 @emit_cmpeqimm(i8 signext %176, i32 %181, i8 signext %182, i8 signext %183)
  br label %565

185:                                              ; preds = %135
  %186 = load i32*, i32** @opcode, align 8
  %187 = load i32, i32* %3, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 12
  br i1 %191, label %192, label %522

192:                                              ; preds = %185
  %193 = load i32*, i32** @opcode2, align 8
  %194 = load i32, i32* %3, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 8
  br i1 %198, label %199, label %242

199:                                              ; preds = %192
  %200 = load %struct.regstat*, %struct.regstat** %4, align 8
  %201 = getelementptr inbounds %struct.regstat, %struct.regstat* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** @rs1, align 8
  %204 = load i32, i32* %3, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call signext i8 @get_reg(i32 %202, i32 %207)
  store i8 %208, i8* %10, align 1
  %209 = load %struct.regstat*, %struct.regstat** %4, align 8
  %210 = getelementptr inbounds %struct.regstat, %struct.regstat* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @SR, align 4
  %213 = call signext i8 @get_reg(i32 %211, i32 %212)
  store i8 %213, i8* %11, align 1
  %214 = load %struct.regstat*, %struct.regstat** %4, align 8
  %215 = getelementptr inbounds %struct.regstat, %struct.regstat* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = call signext i8 @get_reg(i32 %216, i32 -1)
  store i8 %217, i8* %12, align 1
  %218 = load i8, i8* %10, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp sge i32 %219, 0
  %221 = zext i1 %220 to i32
  %222 = call i32 @assert(i32 %221)
  %223 = load i8, i8* %11, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp sge i32 %224, 0
  %226 = zext i1 %225 to i32
  %227 = call i32 @assert(i32 %226)
  %228 = load i8, i8* %12, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp sge i32 %229, 0
  %231 = zext i1 %230 to i32
  %232 = call i32 @assert(i32 %231)
  %233 = load i8, i8* %10, align 1
  %234 = load i32*, i32** @imm, align 8
  %235 = load i32, i32* %3, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i8, i8* %11, align 1
  %240 = load i8, i8* %12, align 1
  %241 = call i32 @emit_sh2tstimm(i8 signext %233, i32 %238, i8 signext %239, i8 signext %240)
  br label %521

242:                                              ; preds = %192
  %243 = load %struct.regstat*, %struct.regstat** %4, align 8
  %244 = getelementptr inbounds %struct.regstat, %struct.regstat* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** @rt1, align 8
  %247 = load i32, i32* %3, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = call signext i8 @get_reg(i32 %245, i32 %250)
  store i8 %251, i8* %14, align 1
  %252 = load %struct.regstat*, %struct.regstat** %4, align 8
  %253 = getelementptr inbounds %struct.regstat, %struct.regstat* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load i32*, i32** @rs1, align 8
  %256 = load i32, i32* %3, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = call signext i8 @get_reg(i32 %254, i32 %259)
  store i8 %260, i8* %13, align 1
  %261 = load i8, i8* %14, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp sge i32 %262, 0
  br i1 %263, label %264, label %520

264:                                              ; preds = %242
  %265 = load %struct.regstat*, %struct.regstat** %4, align 8
  %266 = getelementptr inbounds %struct.regstat, %struct.regstat* %265, i32 0, i32 0
  %267 = load i8, i8* %266, align 8
  %268 = sext i8 %267 to i32
  %269 = load i8, i8* %14, align 1
  %270 = sext i8 %269 to i32
  %271 = ashr i32 %268, %270
  %272 = and i32 %271, 1
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %520, label %274

274:                                              ; preds = %264
  %275 = load i32*, i32** @opcode2, align 8
  %276 = load i32, i32* %3, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = icmp eq i32 %279, 9
  br i1 %280, label %281, label %355

281:                                              ; preds = %274
  %282 = load i8, i8* %13, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %316

285:                                              ; preds = %281
  %286 = load %struct.regstat*, %struct.regstat** %4, align 8
  %287 = getelementptr inbounds %struct.regstat, %struct.regstat* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = load i8, i8* %14, align 1
  %290 = sext i8 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32*, i32** @rs1, align 8
  %294 = load i32, i32* %3, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %292, %297
  br i1 %298, label %299, label %307

299:                                              ; preds = %285
  %300 = load i32*, i32** @rs1, align 8
  %301 = load i32, i32* %3, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load i8, i8* %14, align 1
  %306 = call i32 @emit_loadreg(i32 %304, i8 signext %305)
  br label %307

307:                                              ; preds = %299, %285
  %308 = load i8, i8* %14, align 1
  %309 = load i32*, i32** @imm, align 8
  %310 = load i32, i32* %3, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load i8, i8* %14, align 1
  %315 = call i32 @emit_andimm(i8 signext %308, i32 %313, i8 signext %314)
  br label %354

316:                                              ; preds = %281
  %317 = load %struct.regstat*, %struct.regstat** %4, align 8
  %318 = getelementptr inbounds %struct.regstat, %struct.regstat* %317, i32 0, i32 2
  %319 = load i8, i8* %318, align 8
  %320 = sext i8 %319 to i32
  %321 = load i8, i8* %13, align 1
  %322 = sext i8 %321 to i32
  %323 = ashr i32 %320, %322
  %324 = and i32 %323, 1
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %335, label %326

326:                                              ; preds = %316
  %327 = load i8, i8* %13, align 1
  %328 = load i32*, i32** @imm, align 8
  %329 = load i32, i32* %3, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = load i8, i8* %14, align 1
  %334 = call i32 @emit_andimm(i8 signext %327, i32 %332, i8 signext %333)
  br label %353

335:                                              ; preds = %316
  %336 = load i32**, i32*** @cpmap, align 8
  %337 = load i32, i32* %3, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32*, i32** %336, i64 %338
  %340 = load i32*, i32** %339, align 8
  %341 = load i8, i8* %13, align 1
  %342 = sext i8 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = load i32*, i32** @imm, align 8
  %346 = load i32, i32* %3, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = and i32 %344, %349
  %351 = load i8, i8* %14, align 1
  %352 = call i32 @emit_movimm(i32 %350, i8 signext %351)
  br label %353

353:                                              ; preds = %335, %326
  br label %354

354:                                              ; preds = %353, %307
  br label %519

355:                                              ; preds = %274
  %356 = load i32*, i32** @opcode2, align 8
  %357 = load i32, i32* %3, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = icmp eq i32 %360, 10
  br i1 %361, label %362, label %436

362:                                              ; preds = %355
  %363 = load i8, i8* %13, align 1
  %364 = sext i8 %363 to i32
  %365 = icmp slt i32 %364, 0
  br i1 %365, label %366, label %397

366:                                              ; preds = %362
  %367 = load %struct.regstat*, %struct.regstat** %4, align 8
  %368 = getelementptr inbounds %struct.regstat, %struct.regstat* %367, i32 0, i32 1
  %369 = load i32*, i32** %368, align 8
  %370 = load i8, i8* %14, align 1
  %371 = sext i8 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = load i32*, i32** @rs1, align 8
  %375 = load i32, i32* %3, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %373, %378
  br i1 %379, label %380, label %388

380:                                              ; preds = %366
  %381 = load i32*, i32** @rs1, align 8
  %382 = load i32, i32* %3, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = load i8, i8* %14, align 1
  %387 = call i32 @emit_loadreg(i32 %385, i8 signext %386)
  br label %388

388:                                              ; preds = %380, %366
  %389 = load i8, i8* %14, align 1
  %390 = load i32*, i32** @imm, align 8
  %391 = load i32, i32* %3, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = load i8, i8* %14, align 1
  %396 = call i32 @emit_xorimm(i8 signext %389, i32 %394, i8 signext %395)
  br label %435

397:                                              ; preds = %362
  %398 = load %struct.regstat*, %struct.regstat** %4, align 8
  %399 = getelementptr inbounds %struct.regstat, %struct.regstat* %398, i32 0, i32 2
  %400 = load i8, i8* %399, align 8
  %401 = sext i8 %400 to i32
  %402 = load i8, i8* %13, align 1
  %403 = sext i8 %402 to i32
  %404 = ashr i32 %401, %403
  %405 = and i32 %404, 1
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %416, label %407

407:                                              ; preds = %397
  %408 = load i8, i8* %13, align 1
  %409 = load i32*, i32** @imm, align 8
  %410 = load i32, i32* %3, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = load i8, i8* %14, align 1
  %415 = call i32 @emit_xorimm(i8 signext %408, i32 %413, i8 signext %414)
  br label %434

416:                                              ; preds = %397
  %417 = load i32**, i32*** @cpmap, align 8
  %418 = load i32, i32* %3, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32*, i32** %417, i64 %419
  %421 = load i32*, i32** %420, align 8
  %422 = load i8, i8* %13, align 1
  %423 = sext i8 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = load i32*, i32** @imm, align 8
  %427 = load i32, i32* %3, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = xor i32 %425, %430
  %432 = load i8, i8* %14, align 1
  %433 = call i32 @emit_movimm(i32 %431, i8 signext %432)
  br label %434

434:                                              ; preds = %416, %407
  br label %435

435:                                              ; preds = %434, %388
  br label %518

436:                                              ; preds = %355
  %437 = load i32*, i32** @opcode2, align 8
  %438 = load i32, i32* %3, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %437, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = icmp eq i32 %441, 11
  br i1 %442, label %443, label %517

443:                                              ; preds = %436
  %444 = load i8, i8* %13, align 1
  %445 = sext i8 %444 to i32
  %446 = icmp slt i32 %445, 0
  br i1 %446, label %447, label %478

447:                                              ; preds = %443
  %448 = load %struct.regstat*, %struct.regstat** %4, align 8
  %449 = getelementptr inbounds %struct.regstat, %struct.regstat* %448, i32 0, i32 1
  %450 = load i32*, i32** %449, align 8
  %451 = load i8, i8* %14, align 1
  %452 = sext i8 %451 to i64
  %453 = getelementptr inbounds i32, i32* %450, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = load i32*, i32** @rs1, align 8
  %456 = load i32, i32* %3, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  %459 = load i32, i32* %458, align 4
  %460 = icmp ne i32 %454, %459
  br i1 %460, label %461, label %469

461:                                              ; preds = %447
  %462 = load i32*, i32** @rs1, align 8
  %463 = load i32, i32* %3, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %462, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = load i8, i8* %14, align 1
  %468 = call i32 @emit_loadreg(i32 %466, i8 signext %467)
  br label %469

469:                                              ; preds = %461, %447
  %470 = load i8, i8* %14, align 1
  %471 = load i32*, i32** @imm, align 8
  %472 = load i32, i32* %3, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = load i8, i8* %14, align 1
  %477 = call i32 @emit_orimm(i8 signext %470, i32 %475, i8 signext %476)
  br label %516

478:                                              ; preds = %443
  %479 = load %struct.regstat*, %struct.regstat** %4, align 8
  %480 = getelementptr inbounds %struct.regstat, %struct.regstat* %479, i32 0, i32 2
  %481 = load i8, i8* %480, align 8
  %482 = sext i8 %481 to i32
  %483 = load i8, i8* %13, align 1
  %484 = sext i8 %483 to i32
  %485 = ashr i32 %482, %484
  %486 = and i32 %485, 1
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %497, label %488

488:                                              ; preds = %478
  %489 = load i8, i8* %13, align 1
  %490 = load i32*, i32** @imm, align 8
  %491 = load i32, i32* %3, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %490, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = load i8, i8* %14, align 1
  %496 = call i32 @emit_orimm(i8 signext %489, i32 %494, i8 signext %495)
  br label %515

497:                                              ; preds = %478
  %498 = load i32**, i32*** @cpmap, align 8
  %499 = load i32, i32* %3, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32*, i32** %498, i64 %500
  %502 = load i32*, i32** %501, align 8
  %503 = load i8, i8* %13, align 1
  %504 = sext i8 %503 to i64
  %505 = getelementptr inbounds i32, i32* %502, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = load i32*, i32** @imm, align 8
  %508 = load i32, i32* %3, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %507, i64 %509
  %511 = load i32, i32* %510, align 4
  %512 = or i32 %506, %511
  %513 = load i8, i8* %14, align 1
  %514 = call i32 @emit_movimm(i32 %512, i8 signext %513)
  br label %515

515:                                              ; preds = %497, %488
  br label %516

516:                                              ; preds = %515, %469
  br label %517

517:                                              ; preds = %516, %436
  br label %518

518:                                              ; preds = %517, %435
  br label %519

519:                                              ; preds = %518, %354
  br label %520

520:                                              ; preds = %519, %264, %242
  br label %521

521:                                              ; preds = %520, %199
  br label %564

522:                                              ; preds = %185
  %523 = load i32*, i32** @opcode, align 8
  %524 = load i32, i32* %3, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %523, i64 %525
  %527 = load i32, i32* %526, align 4
  %528 = icmp eq i32 %527, 14
  %529 = zext i1 %528 to i32
  %530 = call i32 @assert(i32 %529)
  %531 = load %struct.regstat*, %struct.regstat** %4, align 8
  %532 = getelementptr inbounds %struct.regstat, %struct.regstat* %531, i32 0, i32 3
  %533 = load i32, i32* %532, align 4
  %534 = load i32*, i32** @rt1, align 8
  %535 = load i32, i32* %3, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i32, i32* %534, i64 %536
  %538 = load i32, i32* %537, align 4
  %539 = call signext i8 @get_reg(i32 %533, i32 %538)
  store i8 %539, i8* %15, align 1
  %540 = load i8, i8* %15, align 1
  %541 = sext i8 %540 to i32
  %542 = icmp sge i32 %541, 0
  br i1 %542, label %543, label %563

543:                                              ; preds = %522
  %544 = load %struct.regstat*, %struct.regstat** %4, align 8
  %545 = getelementptr inbounds %struct.regstat, %struct.regstat* %544, i32 0, i32 0
  %546 = load i8, i8* %545, align 8
  %547 = sext i8 %546 to i32
  %548 = load i8, i8* %15, align 1
  %549 = sext i8 %548 to i32
  %550 = ashr i32 %547, %549
  %551 = and i32 %550, 1
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %562, label %553

553:                                              ; preds = %543
  %554 = load i32*, i32** @imm, align 8
  %555 = load i32, i32* %3, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i32, i32* %554, i64 %556
  %558 = load i32, i32* %557, align 4
  %559 = shl i32 %558, 16
  %560 = load i8, i8* %15, align 1
  %561 = call i32 @emit_movimm(i32 %559, i8 signext %560)
  br label %562

562:                                              ; preds = %553, %543
  br label %563

563:                                              ; preds = %562, %522
  br label %564

564:                                              ; preds = %563, %521
  br label %565

565:                                              ; preds = %564, %142
  br label %566

566:                                              ; preds = %565, %134
  ret void
}

declare dso_local signext i8 @get_reg(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_loadreg(i32, i8 signext) #1

declare dso_local i32 @emit_addimm(i8 signext, i32, i8 signext) #1

declare dso_local i32 @emit_movimm(i32, i8 signext) #1

declare dso_local i32 @emit_cmpeqimm(i8 signext, i32, i8 signext, i8 signext) #1

declare dso_local i32 @emit_sh2tstimm(i8 signext, i32, i8 signext, i8 signext) #1

declare dso_local i32 @emit_andimm(i8 signext, i32, i8 signext) #1

declare dso_local i32 @emit_xorimm(i8 signext, i32, i8 signext) #1

declare dso_local i32 @emit_orimm(i8 signext, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
