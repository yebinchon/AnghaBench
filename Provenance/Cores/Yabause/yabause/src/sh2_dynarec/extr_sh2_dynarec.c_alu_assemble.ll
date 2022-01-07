; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_alu_assemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_alu_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i64, i32 }

@opcode = common dso_local global i32* null, align 8
@opcode2 = common dso_local global i32* null, align 8
@rs1 = common dso_local global i64* null, align 8
@rt1 = common dso_local global i64* null, align 8
@rs2 = common dso_local global i64* null, align 8
@SR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alu_assemble(i32 %0, %struct.regstat* %1) #0 {
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
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.regstat* %1, %struct.regstat** %4, align 8
  %26 = load i32*, i32** @opcode, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %202

32:                                               ; preds = %2
  %33 = load i32*, i32** @opcode2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 9
  br i1 %38, label %39, label %122

39:                                               ; preds = %32
  %40 = load i32*, i32** @opcode2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %44, 11
  br i1 %45, label %46, label %122

46:                                               ; preds = %39
  %47 = load %struct.regstat*, %struct.regstat** %4, align 8
  %48 = getelementptr inbounds %struct.regstat, %struct.regstat* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i64*, i64** @rs1, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i8* @get_reg(i32 %49, i64 %54)
  %56 = ptrtoint i8* %55 to i8
  store i8 %56, i8* %5, align 1
  %57 = load %struct.regstat*, %struct.regstat** %4, align 8
  %58 = getelementptr inbounds %struct.regstat, %struct.regstat* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i64*, i64** @rt1, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @get_reg(i32 %59, i64 %64)
  %66 = ptrtoint i8* %65 to i8
  store i8 %66, i8* %6, align 1
  %67 = load i8, i8* %6, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %121

70:                                               ; preds = %46
  %71 = load i32*, i32** @opcode2, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 9
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i8, i8* %5, align 1
  %79 = load i8, i8* %6, align 1
  %80 = load i8, i8* %6, align 1
  %81 = call i32 @emit_and(i8 signext %78, i8 signext %79, i8 signext %80)
  br label %82

82:                                               ; preds = %77, %70
  %83 = load i32*, i32** @opcode2, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %89, label %108

89:                                               ; preds = %82
  %90 = load i64*, i64** @rs1, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = icmp sge i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load i8, i8* %5, align 1
  %98 = sext i8 %97 to i32
  br label %102

99:                                               ; preds = %89
  %100 = load i8, i8* %6, align 1
  %101 = sext i8 %100 to i32
  br label %102

102:                                              ; preds = %99, %96
  %103 = phi i32 [ %98, %96 ], [ %101, %99 ]
  %104 = trunc i32 %103 to i8
  %105 = load i8, i8* %6, align 1
  %106 = load i8, i8* %6, align 1
  %107 = call i32 @emit_xor(i8 signext %104, i8 signext %105, i8 signext %106)
  br label %108

108:                                              ; preds = %102, %82
  %109 = load i32*, i32** @opcode2, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 11
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load i8, i8* %5, align 1
  %117 = load i8, i8* %6, align 1
  %118 = load i8, i8* %6, align 1
  %119 = call i32 @emit_or(i8 signext %116, i8 signext %117, i8 signext %118)
  br label %120

120:                                              ; preds = %115, %108
  br label %121

121:                                              ; preds = %120, %46
  br label %201

122:                                              ; preds = %39, %32
  %123 = load %struct.regstat*, %struct.regstat** %4, align 8
  %124 = getelementptr inbounds %struct.regstat, %struct.regstat* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i64*, i64** @rs1, align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = call i8* @get_reg(i32 %125, i64 %130)
  %132 = ptrtoint i8* %131 to i8
  store i8 %132, i8* %7, align 1
  %133 = load %struct.regstat*, %struct.regstat** %4, align 8
  %134 = getelementptr inbounds %struct.regstat, %struct.regstat* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i64*, i64** @rs2, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = call i8* @get_reg(i32 %135, i64 %140)
  %142 = ptrtoint i8* %141 to i8
  store i8 %142, i8* %8, align 1
  %143 = load %struct.regstat*, %struct.regstat** %4, align 8
  %144 = getelementptr inbounds %struct.regstat, %struct.regstat* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i64, i64* @SR, align 8
  %147 = call i8* @get_reg(i32 %145, i64 %146)
  %148 = ptrtoint i8* %147 to i8
  store i8 %148, i8* %9, align 1
  %149 = load %struct.regstat*, %struct.regstat** %4, align 8
  %150 = getelementptr inbounds %struct.regstat, %struct.regstat* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i8* @get_reg(i32 %151, i64 -1)
  %153 = ptrtoint i8* %152 to i8
  store i8 %153, i8* %10, align 1
  %154 = load i8, i8* %7, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp sge i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load i8, i8* %8, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp sge i32 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load i8, i8* %9, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp sge i32 %165, 0
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load i8, i8* %10, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp sge i32 %170, 0
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = load i32*, i32** @opcode2, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 8
  br i1 %179, label %180, label %186

180:                                              ; preds = %122
  %181 = load i8, i8* %7, align 1
  %182 = load i8, i8* %8, align 1
  %183 = load i8, i8* %9, align 1
  %184 = load i8, i8* %10, align 1
  %185 = call i32 @emit_sh2tst(i8 signext %181, i8 signext %182, i8 signext %183, i8 signext %184)
  br label %200

186:                                              ; preds = %122
  %187 = load i32*, i32** @opcode2, align 8
  %188 = load i32, i32* %3, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 12
  br i1 %192, label %193, label %199

193:                                              ; preds = %186
  %194 = load i8, i8* %7, align 1
  %195 = load i8, i8* %8, align 1
  %196 = load i8, i8* %9, align 1
  %197 = load i8, i8* %10, align 1
  %198 = call i32 @emit_cmpstr(i8 signext %194, i8 signext %195, i8 signext %196, i8 signext %197)
  br label %199

199:                                              ; preds = %193, %186
  br label %200

200:                                              ; preds = %199, %180
  br label %201

201:                                              ; preds = %200, %121
  br label %202

202:                                              ; preds = %201, %2
  %203 = load i32*, i32** @opcode, align 8
  %204 = load i32, i32* %3, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 3
  br i1 %208, label %209, label %435

209:                                              ; preds = %202
  %210 = load i32*, i32** @opcode2, align 8
  %211 = load i32, i32* %3, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %214, 8
  br i1 %215, label %216, label %328

216:                                              ; preds = %209
  %217 = load %struct.regstat*, %struct.regstat** %4, align 8
  %218 = getelementptr inbounds %struct.regstat, %struct.regstat* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i64*, i64** @rs1, align 8
  %221 = load i32, i32* %3, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = call i8* @get_reg(i32 %219, i64 %224)
  %226 = ptrtoint i8* %225 to i8
  store i8 %226, i8* %11, align 1
  %227 = load %struct.regstat*, %struct.regstat** %4, align 8
  %228 = getelementptr inbounds %struct.regstat, %struct.regstat* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load i64*, i64** @rs2, align 8
  %231 = load i32, i32* %3, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = call i8* @get_reg(i32 %229, i64 %234)
  %236 = ptrtoint i8* %235 to i8
  store i8 %236, i8* %12, align 1
  %237 = load %struct.regstat*, %struct.regstat** %4, align 8
  %238 = getelementptr inbounds %struct.regstat, %struct.regstat* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load i64, i64* @SR, align 8
  %241 = call i8* @get_reg(i32 %239, i64 %240)
  %242 = ptrtoint i8* %241 to i8
  store i8 %242, i8* %13, align 1
  %243 = load %struct.regstat*, %struct.regstat** %4, align 8
  %244 = getelementptr inbounds %struct.regstat, %struct.regstat* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = call i8* @get_reg(i32 %245, i64 -1)
  %247 = ptrtoint i8* %246 to i8
  store i8 %247, i8* %14, align 1
  %248 = load i8, i8* %11, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp sge i32 %249, 0
  %251 = zext i1 %250 to i32
  %252 = call i32 @assert(i32 %251)
  %253 = load i8, i8* %12, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp sge i32 %254, 0
  %256 = zext i1 %255 to i32
  %257 = call i32 @assert(i32 %256)
  %258 = load i8, i8* %14, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp sge i32 %259, 0
  %261 = zext i1 %260 to i32
  %262 = call i32 @assert(i32 %261)
  %263 = load i32*, i32** @opcode2, align 8
  %264 = load i32, i32* %3, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %216
  %270 = load i8, i8* %11, align 1
  %271 = load i8, i8* %12, align 1
  %272 = load i8, i8* %13, align 1
  %273 = load i8, i8* %14, align 1
  %274 = call i32 @emit_cmpeq(i8 signext %270, i8 signext %271, i8 signext %272, i8 signext %273)
  br label %275

275:                                              ; preds = %269, %216
  %276 = load i32*, i32** @opcode2, align 8
  %277 = load i32, i32* %3, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %280, 2
  br i1 %281, label %282, label %288

282:                                              ; preds = %275
  %283 = load i8, i8* %11, align 1
  %284 = load i8, i8* %12, align 1
  %285 = load i8, i8* %13, align 1
  %286 = load i8, i8* %14, align 1
  %287 = call i32 @emit_cmphs(i8 signext %283, i8 signext %284, i8 signext %285, i8 signext %286)
  br label %288

288:                                              ; preds = %282, %275
  %289 = load i32*, i32** @opcode2, align 8
  %290 = load i32, i32* %3, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %293, 3
  br i1 %294, label %295, label %301

295:                                              ; preds = %288
  %296 = load i8, i8* %11, align 1
  %297 = load i8, i8* %12, align 1
  %298 = load i8, i8* %13, align 1
  %299 = load i8, i8* %14, align 1
  %300 = call i32 @emit_cmpge(i8 signext %296, i8 signext %297, i8 signext %298, i8 signext %299)
  br label %301

301:                                              ; preds = %295, %288
  %302 = load i32*, i32** @opcode2, align 8
  %303 = load i32, i32* %3, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %306, 6
  br i1 %307, label %308, label %314

308:                                              ; preds = %301
  %309 = load i8, i8* %11, align 1
  %310 = load i8, i8* %12, align 1
  %311 = load i8, i8* %13, align 1
  %312 = load i8, i8* %14, align 1
  %313 = call i32 @emit_cmphi(i8 signext %309, i8 signext %310, i8 signext %311, i8 signext %312)
  br label %314

314:                                              ; preds = %308, %301
  %315 = load i32*, i32** @opcode2, align 8
  %316 = load i32, i32* %3, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = icmp eq i32 %319, 7
  br i1 %320, label %321, label %327

321:                                              ; preds = %314
  %322 = load i8, i8* %11, align 1
  %323 = load i8, i8* %12, align 1
  %324 = load i8, i8* %13, align 1
  %325 = load i8, i8* %14, align 1
  %326 = call i32 @emit_cmpgt(i8 signext %322, i8 signext %323, i8 signext %324, i8 signext %325)
  br label %327

327:                                              ; preds = %321, %314
  br label %434

328:                                              ; preds = %209
  %329 = load %struct.regstat*, %struct.regstat** %4, align 8
  %330 = getelementptr inbounds %struct.regstat, %struct.regstat* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = load i64*, i64** @rt1, align 8
  %333 = load i32, i32* %3, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i64, i64* %332, i64 %334
  %336 = load i64, i64* %335, align 8
  %337 = call i8* @get_reg(i32 %331, i64 %336)
  %338 = ptrtoint i8* %337 to i8
  store i8 %338, i8* %16, align 1
  %339 = load i8, i8* %16, align 1
  %340 = sext i8 %339 to i32
  %341 = icmp sge i32 %340, 0
  br i1 %341, label %342, label %433

342:                                              ; preds = %328
  %343 = load %struct.regstat*, %struct.regstat** %4, align 8
  %344 = getelementptr inbounds %struct.regstat, %struct.regstat* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = load i64*, i64** @rs1, align 8
  %347 = load i32, i32* %3, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i64, i64* %346, i64 %348
  %350 = load i64, i64* %349, align 8
  %351 = call i8* @get_reg(i32 %345, i64 %350)
  %352 = ptrtoint i8* %351 to i8
  store i8 %352, i8* %15, align 1
  %353 = load %struct.regstat*, %struct.regstat** %4, align 8
  %354 = getelementptr inbounds %struct.regstat, %struct.regstat* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = load i64, i64* @SR, align 8
  %357 = call i8* @get_reg(i32 %355, i64 %356)
  %358 = ptrtoint i8* %357 to i8
  store i8 %358, i8* %17, align 1
  %359 = load %struct.regstat*, %struct.regstat** %4, align 8
  %360 = getelementptr inbounds %struct.regstat, %struct.regstat* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = call i8* @get_reg(i32 %361, i64 -1)
  %363 = ptrtoint i8* %362 to i8
  store i8 %363, i8* %18, align 1
  %364 = load i8, i8* %15, align 1
  %365 = sext i8 %364 to i32
  %366 = icmp sge i32 %365, 0
  %367 = zext i1 %366 to i32
  %368 = call i32 @assert(i32 %367)
  %369 = load i32*, i32** @opcode2, align 8
  %370 = load i32, i32* %3, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = icmp eq i32 %373, 8
  br i1 %374, label %375, label %380

375:                                              ; preds = %342
  %376 = load i8, i8* %16, align 1
  %377 = load i8, i8* %15, align 1
  %378 = load i8, i8* %16, align 1
  %379 = call i32 @emit_sub(i8 signext %376, i8 signext %377, i8 signext %378)
  br label %380

380:                                              ; preds = %375, %342
  %381 = load i32*, i32** @opcode2, align 8
  %382 = load i32, i32* %3, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = icmp eq i32 %385, 10
  br i1 %386, label %387, label %392

387:                                              ; preds = %380
  %388 = load i8, i8* %15, align 1
  %389 = load i8, i8* %16, align 1
  %390 = load i8, i8* %17, align 1
  %391 = call i32 @emit_subc(i8 signext %388, i8 signext %389, i8 signext %390)
  br label %392

392:                                              ; preds = %387, %380
  %393 = load i32*, i32** @opcode2, align 8
  %394 = load i32, i32* %3, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = icmp ne i32 %397, 11
  %399 = zext i1 %398 to i32
  %400 = call i32 @assert(i32 %399)
  %401 = load i32*, i32** @opcode2, align 8
  %402 = load i32, i32* %3, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = icmp eq i32 %405, 12
  br i1 %406, label %407, label %412

407:                                              ; preds = %392
  %408 = load i8, i8* %15, align 1
  %409 = load i8, i8* %16, align 1
  %410 = load i8, i8* %16, align 1
  %411 = call i32 @emit_add(i8 signext %408, i8 signext %409, i8 signext %410)
  br label %412

412:                                              ; preds = %407, %392
  %413 = load i32*, i32** @opcode2, align 8
  %414 = load i32, i32* %3, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %413, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = icmp eq i32 %417, 14
  br i1 %418, label %419, label %424

419:                                              ; preds = %412
  %420 = load i8, i8* %15, align 1
  %421 = load i8, i8* %16, align 1
  %422 = load i8, i8* %17, align 1
  %423 = call i32 @emit_addc(i8 signext %420, i8 signext %421, i8 signext %422)
  br label %424

424:                                              ; preds = %419, %412
  %425 = load i32*, i32** @opcode2, align 8
  %426 = load i32, i32* %3, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = icmp ne i32 %429, 15
  %431 = zext i1 %430 to i32
  %432 = call i32 @assert(i32 %431)
  br label %433

433:                                              ; preds = %424, %328
  br label %434

434:                                              ; preds = %433, %327
  br label %435

435:                                              ; preds = %434, %202
  %436 = load i32*, i32** @opcode, align 8
  %437 = load i32, i32* %3, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = icmp eq i32 %440, 4
  br i1 %441, label %442, label %532

442:                                              ; preds = %435
  %443 = load %struct.regstat*, %struct.regstat** %4, align 8
  %444 = getelementptr inbounds %struct.regstat, %struct.regstat* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 8
  %446 = load i64*, i64** @rs1, align 8
  %447 = load i32, i32* %3, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i64, i64* %446, i64 %448
  %450 = load i64, i64* %449, align 8
  %451 = call i8* @get_reg(i32 %445, i64 %450)
  %452 = ptrtoint i8* %451 to i8
  store i8 %452, i8* %19, align 1
  %453 = load %struct.regstat*, %struct.regstat** %4, align 8
  %454 = getelementptr inbounds %struct.regstat, %struct.regstat* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 8
  %456 = load i64, i64* @SR, align 8
  %457 = call i8* @get_reg(i32 %455, i64 %456)
  %458 = ptrtoint i8* %457 to i8
  store i8 %458, i8* %21, align 1
  %459 = load i8, i8* %19, align 1
  %460 = sext i8 %459 to i32
  %461 = icmp sge i32 %460, 0
  %462 = zext i1 %461 to i32
  %463 = call i32 @assert(i32 %462)
  %464 = load i8, i8* %21, align 1
  %465 = sext i8 %464 to i32
  %466 = icmp sge i32 %465, 0
  %467 = zext i1 %466 to i32
  %468 = call i32 @assert(i32 %467)
  %469 = load i32*, i32** @opcode2, align 8
  %470 = load i32, i32* %3, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %469, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %501

475:                                              ; preds = %442
  %476 = load %struct.regstat*, %struct.regstat** %4, align 8
  %477 = getelementptr inbounds %struct.regstat, %struct.regstat* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 8
  %479 = load i64*, i64** @rt1, align 8
  %480 = load i32, i32* %3, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i64, i64* %479, i64 %481
  %483 = load i64, i64* %482, align 8
  %484 = call i8* @get_reg(i32 %478, i64 %483)
  %485 = ptrtoint i8* %484 to i8
  store i8 %485, i8* %20, align 1
  %486 = load i8, i8* %20, align 1
  %487 = sext i8 %486 to i32
  %488 = icmp sge i32 %487, 0
  %489 = zext i1 %488 to i32
  %490 = call i32 @assert(i32 %489)
  %491 = load i8, i8* %19, align 1
  %492 = sext i8 %491 to i32
  %493 = load i8, i8* %20, align 1
  %494 = sext i8 %493 to i32
  %495 = icmp eq i32 %492, %494
  %496 = zext i1 %495 to i32
  %497 = call i32 @assert(i32 %496)
  %498 = load i8, i8* %19, align 1
  %499 = load i8, i8* %21, align 1
  %500 = call i32 @emit_dt(i8 signext %498, i8 signext %499)
  br label %531

501:                                              ; preds = %442
  %502 = load i32*, i32** @opcode2, align 8
  %503 = load i32, i32* %3, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32, i32* %502, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = icmp eq i32 %506, 1
  br i1 %507, label %508, label %512

508:                                              ; preds = %501
  %509 = load i8, i8* %19, align 1
  %510 = load i8, i8* %21, align 1
  %511 = call i32 @emit_cmppz(i8 signext %509, i8 signext %510)
  br label %530

512:                                              ; preds = %501
  %513 = load i32*, i32** @opcode2, align 8
  %514 = load i32, i32* %3, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i32, i32* %513, i64 %515
  %517 = load i32, i32* %516, align 4
  %518 = icmp eq i32 %517, 5
  br i1 %518, label %519, label %529

519:                                              ; preds = %512
  %520 = load %struct.regstat*, %struct.regstat** %4, align 8
  %521 = getelementptr inbounds %struct.regstat, %struct.regstat* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 8
  %523 = call i8* @get_reg(i32 %522, i64 -1)
  %524 = ptrtoint i8* %523 to i8
  store i8 %524, i8* %22, align 1
  %525 = load i8, i8* %19, align 1
  %526 = load i8, i8* %21, align 1
  %527 = load i8, i8* %22, align 1
  %528 = call i32 @emit_cmppl(i8 signext %525, i8 signext %526, i8 signext %527)
  br label %529

529:                                              ; preds = %519, %512
  br label %530

530:                                              ; preds = %529, %508
  br label %531

531:                                              ; preds = %530, %475
  br label %532

532:                                              ; preds = %531, %435
  %533 = load i32*, i32** @opcode, align 8
  %534 = load i32, i32* %3, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds i32, i32* %533, i64 %535
  %537 = load i32, i32* %536, align 4
  %538 = icmp eq i32 %537, 6
  br i1 %538, label %539, label %655

539:                                              ; preds = %532
  %540 = load %struct.regstat*, %struct.regstat** %4, align 8
  %541 = getelementptr inbounds %struct.regstat, %struct.regstat* %540, i32 0, i32 1
  %542 = load i32, i32* %541, align 8
  %543 = load i64*, i64** @rs1, align 8
  %544 = load i32, i32* %3, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i64, i64* %543, i64 %545
  %547 = load i64, i64* %546, align 8
  %548 = call i8* @get_reg(i32 %542, i64 %547)
  %549 = ptrtoint i8* %548 to i32
  store i32 %549, i32* %23, align 4
  %550 = load %struct.regstat*, %struct.regstat** %4, align 8
  %551 = getelementptr inbounds %struct.regstat, %struct.regstat* %550, i32 0, i32 1
  %552 = load i32, i32* %551, align 8
  %553 = load i64*, i64** @rt1, align 8
  %554 = load i32, i32* %3, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i64, i64* %553, i64 %555
  %557 = load i64, i64* %556, align 8
  %558 = call i8* @get_reg(i32 %552, i64 %557)
  %559 = ptrtoint i8* %558 to i32
  store i32 %559, i32* %24, align 4
  %560 = load i32, i32* %23, align 4
  %561 = icmp slt i32 %560, 0
  br i1 %561, label %562, label %571

562:                                              ; preds = %539
  %563 = load i64*, i64** @rs1, align 8
  %564 = load i32, i32* %3, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i64, i64* %563, i64 %565
  %567 = load i64, i64* %566, align 8
  %568 = load i32, i32* %24, align 4
  %569 = call i32 @emit_loadreg(i64 %567, i32 %568)
  %570 = load i32, i32* %24, align 4
  store i32 %570, i32* %23, align 4
  br label %571

571:                                              ; preds = %562, %539
  %572 = load i32, i32* %24, align 4
  %573 = icmp sge i32 %572, 0
  br i1 %573, label %574, label %619

574:                                              ; preds = %571
  %575 = load i32*, i32** @opcode2, align 8
  %576 = load i32, i32* %3, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds i32, i32* %575, i64 %577
  %579 = load i32, i32* %578, align 4
  %580 = icmp eq i32 %579, 7
  br i1 %580, label %581, label %585

581:                                              ; preds = %574
  %582 = load i32, i32* %23, align 4
  %583 = load i32, i32* %24, align 4
  %584 = call i32 @emit_not(i32 %582, i32 %583)
  br label %585

585:                                              ; preds = %581, %574
  %586 = load i32*, i32** @opcode2, align 8
  %587 = load i32, i32* %3, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i32, i32* %586, i64 %588
  %590 = load i32, i32* %589, align 4
  %591 = icmp eq i32 %590, 8
  br i1 %591, label %592, label %596

592:                                              ; preds = %585
  %593 = load i32, i32* %23, align 4
  %594 = load i32, i32* %24, align 4
  %595 = call i32 @emit_swapb(i32 %593, i32 %594)
  br label %596

596:                                              ; preds = %592, %585
  %597 = load i32*, i32** @opcode2, align 8
  %598 = load i32, i32* %3, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i32, i32* %597, i64 %599
  %601 = load i32, i32* %600, align 4
  %602 = icmp eq i32 %601, 9
  br i1 %602, label %603, label %607

603:                                              ; preds = %596
  %604 = load i32, i32* %23, align 4
  %605 = load i32, i32* %24, align 4
  %606 = call i32 @emit_rorimm(i32 %604, i32 16, i32 %605)
  br label %607

607:                                              ; preds = %603, %596
  %608 = load i32*, i32** @opcode2, align 8
  %609 = load i32, i32* %3, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i32, i32* %608, i64 %610
  %612 = load i32, i32* %611, align 4
  %613 = icmp eq i32 %612, 11
  br i1 %613, label %614, label %618

614:                                              ; preds = %607
  %615 = load i32, i32* %23, align 4
  %616 = load i32, i32* %24, align 4
  %617 = call i32 @emit_neg(i32 %615, i32 %616)
  br label %618

618:                                              ; preds = %614, %607
  br label %619

619:                                              ; preds = %618, %571
  %620 = load i32*, i32** @opcode2, align 8
  %621 = load i32, i32* %3, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds i32, i32* %620, i64 %622
  %624 = load i32, i32* %623, align 4
  %625 = icmp eq i32 %624, 10
  br i1 %625, label %626, label %654

626:                                              ; preds = %619
  %627 = load %struct.regstat*, %struct.regstat** %4, align 8
  %628 = getelementptr inbounds %struct.regstat, %struct.regstat* %627, i32 0, i32 1
  %629 = load i32, i32* %628, align 8
  %630 = load i64, i64* @SR, align 8
  %631 = call i8* @get_reg(i32 %629, i64 %630)
  %632 = ptrtoint i8* %631 to i32
  store i32 %632, i32* %25, align 4
  %633 = load %struct.regstat*, %struct.regstat** %4, align 8
  %634 = getelementptr inbounds %struct.regstat, %struct.regstat* %633, i32 0, i32 0
  %635 = load i64, i64* %634, align 8
  %636 = load i64*, i64** @rt1, align 8
  %637 = load i32, i32* %3, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds i64, i64* %636, i64 %638
  %640 = load i64, i64* %639, align 8
  %641 = shl i64 1, %640
  %642 = and i64 %635, %641
  %643 = icmp ne i64 %642, 0
  br i1 %643, label %644, label %645

644:                                              ; preds = %626
  store i32 -1, i32* %24, align 4
  br label %645

645:                                              ; preds = %644, %626
  %646 = load i32, i32* %25, align 4
  %647 = icmp sge i32 %646, 0
  %648 = zext i1 %647 to i32
  %649 = call i32 @assert(i32 %648)
  %650 = load i32, i32* %23, align 4
  %651 = load i32, i32* %24, align 4
  %652 = load i32, i32* %25, align 4
  %653 = call i32 @emit_negc(i32 %650, i32 %651, i32 %652)
  br label %654

654:                                              ; preds = %645, %619
  br label %655

655:                                              ; preds = %654, %532
  ret void
}

declare dso_local i8* @get_reg(i32, i64) #1

declare dso_local i32 @emit_and(i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @emit_xor(i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @emit_or(i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_sh2tst(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @emit_cmpstr(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @emit_cmpeq(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @emit_cmphs(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @emit_cmpge(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @emit_cmphi(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @emit_cmpgt(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @emit_sub(i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @emit_subc(i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @emit_add(i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @emit_addc(i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @emit_dt(i8 signext, i8 signext) #1

declare dso_local i32 @emit_cmppz(i8 signext, i8 signext) #1

declare dso_local i32 @emit_cmppl(i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @emit_loadreg(i64, i32) #1

declare dso_local i32 @emit_not(i32, i32) #1

declare dso_local i32 @emit_swapb(i32, i32) #1

declare dso_local i32 @emit_rorimm(i32, i32, i32) #1

declare dso_local i32 @emit_neg(i32, i32) #1

declare dso_local i32 @emit_negc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
