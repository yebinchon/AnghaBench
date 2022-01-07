; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_store_assemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_store_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i64*, i32, i32, i32*, i64 }

@addrmode = common dso_local global i64* null, align 8
@DUALIND = common dso_local global i64 0, align 8
@opcode = common dso_local global i32* null, align 8
@opcode2 = common dso_local global i32* null, align 8
@AGEN1 = common dso_local global i32 0, align 4
@rs1 = common dso_local global i32* null, align 8
@rs2 = common dso_local global i32* null, align 8
@rs3 = common dso_local global i32* null, align 8
@imm = common dso_local global i32* null, align 8
@HOST_REGS = common dso_local global i32 0, align 4
@cpmap = common dso_local global i32** null, align 8
@MOREG = common dso_local global i32 0, align 4
@PREDEC = common dso_local global i64 0, align 8
@rt1 = common dso_local global i32* null, align 8
@REGIND = common dso_local global i64 0, align 8
@MMREG = common dso_local global i32 0, align 4
@STOREB_STUB = common dso_local global i32 0, align 4
@STOREW_STUB = common dso_local global i32 0, align 4
@STOREL_STUB = common dso_local global i32 0, align 4
@out = common dso_local global i64 0, align 8
@ccadj = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_assemble(i32 %0, %struct.regstat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regstat*, align 8
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.regstat* %1, %struct.regstat** %4, align 8
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %26 = load i64*, i64** @addrmode, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DUALIND, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %19, align 4
  %34 = load i32*, i32** @opcode, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %48

41:                                               ; preds = %2
  %42 = load i32*, i32** @opcode2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 3
  br label %48

48:                                               ; preds = %41, %40
  %49 = phi i32 [ 2, %40 ], [ %47, %41 ]
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* @AGEN1, align 4
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, 1
  %53 = add nsw i32 %50, %52
  store i32 %53, i32* %21, align 4
  store i32 0, i32* %23, align 4
  %54 = load %struct.regstat*, %struct.regstat** %4, align 8
  %55 = getelementptr inbounds %struct.regstat, %struct.regstat* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32*, i32** @rs1, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @get_reg(i64* %56, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.regstat*, %struct.regstat** %4, align 8
  %64 = getelementptr inbounds %struct.regstat, %struct.regstat* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i32*, i32** @rs2, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @get_reg(i64* %65, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load %struct.regstat*, %struct.regstat** %4, align 8
  %73 = getelementptr inbounds %struct.regstat, %struct.regstat* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32*, i32** @rs3, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @get_reg(i64* %74, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load %struct.regstat*, %struct.regstat** %4, align 8
  %82 = getelementptr inbounds %struct.regstat, %struct.regstat* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %21, align 4
  %85 = call i32 @get_reg(i64* %83, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %48
  %89 = load %struct.regstat*, %struct.regstat** %4, align 8
  %90 = getelementptr inbounds %struct.regstat, %struct.regstat* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = call i32 @get_reg(i64* %91, i32 -1)
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %88, %48
  %94 = load i32*, i32** @imm, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %12, align 4
  store i32 0, i32* %22, align 4
  br label %99

99:                                               ; preds = %118, %93
  %100 = load i32, i32* %22, align 4
  %101 = load i32, i32* @HOST_REGS, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %99
  %104 = load %struct.regstat*, %struct.regstat** %4, align 8
  %105 = getelementptr inbounds %struct.regstat, %struct.regstat* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %22, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp sge i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %103
  %113 = load i32, i32* %22, align 4
  %114 = shl i32 1, %113
  %115 = load i32, i32* %23, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %23, align 4
  br label %117

117:                                              ; preds = %112, %103
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %22, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %22, align 4
  br label %99

121:                                              ; preds = %99
  %122 = load i32, i32* %5, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %189

124:                                              ; preds = %121
  %125 = load i32, i32* %19, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load %struct.regstat*, %struct.regstat** %4, align 8
  %129 = getelementptr inbounds %struct.regstat, %struct.regstat* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = ashr i32 %130, %131
  %133 = load %struct.regstat*, %struct.regstat** %4, align 8
  %134 = getelementptr inbounds %struct.regstat, %struct.regstat* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = ashr i32 %135, %136
  %138 = and i32 %132, %137
  %139 = and i32 %138, 1
  store i32 %139, i32* %17, align 4
  br label %147

140:                                              ; preds = %124
  %141 = load %struct.regstat*, %struct.regstat** %4, align 8
  %142 = getelementptr inbounds %struct.regstat, %struct.regstat* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = ashr i32 %143, %144
  %146 = and i32 %145, 1
  store i32 %146, i32* %17, align 4
  br label %147

147:                                              ; preds = %140, %127
  %148 = load i32, i32* %17, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %186

150:                                              ; preds = %147
  %151 = load i32, i32* %19, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %173

153:                                              ; preds = %150
  %154 = load i32**, i32*** @cpmap, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %154, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32**, i32*** @cpmap, align 8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %162, %171
  store i32 %172, i32* %18, align 4
  br label %185

173:                                              ; preds = %150
  %174 = load i32**, i32*** @cpmap, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32*, i32** %174, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %182, %183
  store i32 %184, i32* %18, align 4
  br label %185

185:                                              ; preds = %173, %153
  br label %186

186:                                              ; preds = %185, %147
  %187 = load i32, i32* %18, align 4
  %188 = call i32 @can_direct_write(i32 %187)
  store i32 %188, i32* %16, align 4
  br label %189

189:                                              ; preds = %186, %121
  %190 = load i32, i32* %17, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %304, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %19, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %216

195:                                              ; preds = %192
  %196 = load %struct.regstat*, %struct.regstat** %4, align 8
  %197 = getelementptr inbounds %struct.regstat, %struct.regstat* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** @rs2, align 8
  %200 = load i32, i32* %3, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = ashr i32 %198, %203
  %205 = load %struct.regstat*, %struct.regstat** %4, align 8
  %206 = getelementptr inbounds %struct.regstat, %struct.regstat* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** @rs3, align 8
  %209 = load i32, i32* %3, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = ashr i32 %207, %212
  %214 = and i32 %204, %213
  %215 = and i32 %214, 1
  store i32 %215, i32* %17, align 4
  br label %227

216:                                              ; preds = %192
  %217 = load %struct.regstat*, %struct.regstat** %4, align 8
  %218 = getelementptr inbounds %struct.regstat, %struct.regstat* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** @rs2, align 8
  %221 = load i32, i32* %3, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = ashr i32 %219, %224
  %226 = and i32 %225, 1
  store i32 %226, i32* %17, align 4
  br label %227

227:                                              ; preds = %216, %195
  %228 = load i32, i32* %17, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %303

230:                                              ; preds = %227
  %231 = load i32, i32* %19, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %257

233:                                              ; preds = %230
  %234 = load %struct.regstat*, %struct.regstat** %4, align 8
  %235 = getelementptr inbounds %struct.regstat, %struct.regstat* %234, i32 0, i32 3
  %236 = load i32*, i32** %235, align 8
  %237 = load i32*, i32** @rs2, align 8
  %238 = load i32, i32* %3, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %236, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.regstat*, %struct.regstat** %4, align 8
  %246 = getelementptr inbounds %struct.regstat, %struct.regstat* %245, i32 0, i32 3
  %247 = load i32*, i32** %246, align 8
  %248 = load i32*, i32** @rs3, align 8
  %249 = load i32, i32* %3, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %247, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %244, %255
  store i32 %256, i32* %18, align 4
  br label %271

257:                                              ; preds = %230
  %258 = load %struct.regstat*, %struct.regstat** %4, align 8
  %259 = getelementptr inbounds %struct.regstat, %struct.regstat* %258, i32 0, i32 3
  %260 = load i32*, i32** %259, align 8
  %261 = load i32*, i32** @rs2, align 8
  %262 = load i32, i32* %3, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %260, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %12, align 4
  %270 = add nsw i32 %268, %269
  store i32 %270, i32* %18, align 4
  br label %271

271:                                              ; preds = %257, %233
  %272 = load i32, i32* %18, align 4
  %273 = call i32 @can_direct_write(i32 %272)
  store i32 %273, i32* %16, align 4
  %274 = load i32, i32* %18, align 4
  %275 = call i32 @can_direct_write(i32 %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %302

277:                                              ; preds = %271
  %278 = load i32, i32* %18, align 4
  %279 = load i32, i32* %20, align 4
  %280 = icmp ne i32 %279, 0
  %281 = xor i1 %280, true
  %282 = zext i1 %281 to i32
  %283 = xor i32 %278, %282
  %284 = load i32, i32* %11, align 4
  %285 = call i32 @emit_movimm(i32 %283, i32 %284)
  %286 = load %struct.regstat*, %struct.regstat** %4, align 8
  %287 = getelementptr inbounds %struct.regstat, %struct.regstat* %286, i32 0, i32 0
  %288 = load i64*, i64** %287, align 8
  %289 = load i32, i32* @MOREG, align 4
  %290 = call i32 @get_reg(i64* %288, i32 %289)
  store i32 %290, i32* %8, align 4
  %291 = load i32, i32* %8, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %277
  %294 = load %struct.regstat*, %struct.regstat** %4, align 8
  %295 = getelementptr inbounds %struct.regstat, %struct.regstat* %294, i32 0, i32 0
  %296 = load i64*, i64** %295, align 8
  %297 = call i32 @get_alt_reg(i64* %296, i32 -1)
  store i32 %297, i32* %8, align 4
  br label %298

298:                                              ; preds = %293, %277
  %299 = load i32, i32* %18, align 4
  %300 = load i32, i32* %8, align 4
  %301 = call i32 @generate_map_const(i32 %299, i32 %300)
  br label %302

302:                                              ; preds = %298, %271
  br label %303

303:                                              ; preds = %302, %227
  br label %304

304:                                              ; preds = %303, %189
  %305 = load i32, i32* %6, align 4
  %306 = icmp sge i32 %305, 0
  %307 = zext i1 %306 to i32
  %308 = call i32 @assert(i32 %307)
  %309 = load i32, i32* %11, align 4
  %310 = icmp sge i32 %309, 0
  %311 = zext i1 %310 to i32
  %312 = call i32 @assert(i32 %311)
  %313 = load i32, i32* %12, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %324, label %315

315:                                              ; preds = %304
  %316 = load i32, i32* %19, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %324, label %318

318:                                              ; preds = %315
  %319 = load i32, i32* %5, align 4
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %318
  %322 = load i32, i32* %17, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %321, %318, %315, %304
  %325 = load i32, i32* %11, align 4
  store i32 %325, i32* %10, align 4
  br label %328

326:                                              ; preds = %321
  %327 = load i32, i32* %5, align 4
  store i32 %327, i32* %10, align 4
  br label %328

328:                                              ; preds = %326, %324
  %329 = load i64*, i64** @addrmode, align 8
  %330 = load i32, i32* %3, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i64, i64* %329, i64 %331
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @PREDEC, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %353

336:                                              ; preds = %328
  %337 = load i32, i32* %17, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %353, label %339

339:                                              ; preds = %336
  %340 = load i32*, i32** @rt1, align 8
  %341 = load i32, i32* %3, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = load i32*, i32** @rs1, align 8
  %346 = load i32, i32* %3, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = icmp eq i32 %344, %349
  br i1 %350, label %351, label %353

351:                                              ; preds = %339
  %352 = load i32, i32* %11, align 4
  store i32 %352, i32* %10, align 4
  br label %353

353:                                              ; preds = %351, %339, %336, %328
  %354 = load i64*, i64** @addrmode, align 8
  %355 = load i32, i32* %3, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i64, i64* %354, i64 %356
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @REGIND, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %381

361:                                              ; preds = %353
  %362 = load i32, i32* %17, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %381, label %364

364:                                              ; preds = %361
  %365 = load i32*, i32** @rs1, align 8
  %366 = load i32, i32* %3, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = load i32*, i32** @rs2, align 8
  %371 = load i32, i32* %3, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = icmp eq i32 %369, %374
  br i1 %375, label %376, label %381

376:                                              ; preds = %364
  %377 = load i32, i32* %10, align 4
  %378 = load i32, i32* %11, align 4
  %379 = call i32 @emit_mov(i32 %377, i32 %378)
  %380 = load i32, i32* %11, align 4
  store i32 %380, i32* %10, align 4
  br label %381

381:                                              ; preds = %376, %364, %361, %353
  %382 = load i32, i32* %17, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %381
  %385 = load i32, i32* %16, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %452

387:                                              ; preds = %384, %381
  store i32 0, i32* %24, align 4
  %388 = load i32, i32* %17, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %394, label %390

390:                                              ; preds = %387
  %391 = load i32, i32* %20, align 4
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %390
  store i32 1, i32* %24, align 4
  br label %394

394:                                              ; preds = %393, %390, %387
  %395 = load %struct.regstat*, %struct.regstat** %4, align 8
  %396 = getelementptr inbounds %struct.regstat, %struct.regstat* %395, i32 0, i32 0
  %397 = load i64*, i64** %396, align 8
  %398 = load i32, i32* @MMREG, align 4
  %399 = call i32 @get_reg(i64* %397, i32 %398)
  store i32 %399, i32* %9, align 4
  %400 = load %struct.regstat*, %struct.regstat** %4, align 8
  %401 = getelementptr inbounds %struct.regstat, %struct.regstat* %400, i32 0, i32 0
  %402 = load i64*, i64** %401, align 8
  %403 = load i32, i32* @MOREG, align 4
  %404 = call i32 @get_reg(i64* %402, i32 %403)
  store i32 %404, i32* %8, align 4
  %405 = load i32, i32* %8, align 4
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %407, label %412

407:                                              ; preds = %394
  %408 = load %struct.regstat*, %struct.regstat** %4, align 8
  %409 = getelementptr inbounds %struct.regstat, %struct.regstat* %408, i32 0, i32 0
  %410 = load i64*, i64** %409, align 8
  %411 = call i32 @get_alt_reg(i64* %410, i32 -1)
  store i32 %411, i32* %8, align 4
  br label %412

412:                                              ; preds = %407, %394
  %413 = load i32, i32* %8, align 4
  %414 = icmp sge i32 %413, 0
  %415 = zext i1 %414 to i32
  %416 = call i32 @assert(i32 %415)
  %417 = load i32, i32* %8, align 4
  %418 = load i32, i32* %11, align 4
  %419 = icmp ne i32 %417, %418
  %420 = zext i1 %419 to i32
  %421 = call i32 @assert(i32 %420)
  %422 = load i32, i32* %8, align 4
  %423 = load i32, i32* %5, align 4
  %424 = icmp ne i32 %422, %423
  %425 = zext i1 %424 to i32
  %426 = call i32 @assert(i32 %425)
  %427 = load i32, i32* %8, align 4
  %428 = shl i32 1, %427
  %429 = xor i32 %428, -1
  %430 = load i32, i32* %23, align 4
  %431 = and i32 %430, %429
  store i32 %431, i32* %23, align 4
  %432 = load i32, i32* %10, align 4
  %433 = load i32, i32* %11, align 4
  %434 = load i32, i32* %8, align 4
  %435 = load i32, i32* %9, align 4
  %436 = load i32, i32* %24, align 4
  %437 = load i32, i32* %17, align 4
  %438 = load i32, i32* %18, align 4
  %439 = call i32 @do_map_w(i32 %432, i32 %433, i32 %434, i32 %435, i32 %436, i32 %437, i32 %438)
  store i32 %439, i32* %8, align 4
  %440 = load i32, i32* %17, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %447, label %442

442:                                              ; preds = %412
  %443 = load i32, i32* %20, align 4
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %447

445:                                              ; preds = %442
  %446 = load i32, i32* %11, align 4
  store i32 %446, i32* %10, align 4
  br label %447

447:                                              ; preds = %445, %442, %412
  %448 = load i32, i32* %8, align 4
  %449 = load i32, i32* %17, align 4
  %450 = load i32, i32* %18, align 4
  %451 = call i32 @do_map_w_branch(i32 %448, i32 %449, i32 %450, i32* %13)
  br label %452

452:                                              ; preds = %447, %384
  %453 = load i32, i32* %20, align 4
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %470

455:                                              ; preds = %452
  %456 = load i32, i32* %17, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %461

458:                                              ; preds = %455
  %459 = load i32, i32* %16, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %468

461:                                              ; preds = %458, %455
  store i32 0, i32* %25, align 4
  %462 = load i32, i32* %6, align 4
  %463 = load i32, i32* %25, align 4
  %464 = load i32, i32* %11, align 4
  %465 = load i32, i32* %8, align 4
  %466 = load i32, i32* %11, align 4
  %467 = call i32 @emit_writebyte_indexed_map(i32 %462, i32 %463, i32 %464, i32 %465, i32 %466)
  br label %468

468:                                              ; preds = %461, %458
  %469 = load i32, i32* @STOREB_STUB, align 4
  store i32 %469, i32* %15, align 4
  br label %470

470:                                              ; preds = %468, %452
  %471 = load i32, i32* %20, align 4
  %472 = icmp eq i32 %471, 1
  br i1 %472, label %473, label %487

473:                                              ; preds = %470
  %474 = load i32, i32* %17, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %479

476:                                              ; preds = %473
  %477 = load i32, i32* %16, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %485

479:                                              ; preds = %476, %473
  %480 = load i32, i32* %6, align 4
  %481 = load i32, i32* %10, align 4
  %482 = load i32, i32* %8, align 4
  %483 = load i32, i32* %11, align 4
  %484 = call i32 @emit_writehword_indexed_map(i32 %480, i32 0, i32 %481, i32 %482, i32 %483)
  br label %485

485:                                              ; preds = %479, %476
  %486 = load i32, i32* @STOREW_STUB, align 4
  store i32 %486, i32* %15, align 4
  br label %487

487:                                              ; preds = %485, %470
  %488 = load i32, i32* %20, align 4
  %489 = icmp eq i32 %488, 2
  br i1 %489, label %490, label %524

490:                                              ; preds = %487
  %491 = load i32, i32* %17, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %496

493:                                              ; preds = %490
  %494 = load i32, i32* %16, align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %522

496:                                              ; preds = %493, %490
  %497 = load i32, i32* %6, align 4
  %498 = load i32, i32* %6, align 4
  %499 = call i32 @emit_rorimm(i32 %497, i32 16, i32 %498)
  %500 = load i32, i32* %6, align 4
  %501 = load i32, i32* %10, align 4
  %502 = load i32, i32* %8, align 4
  %503 = load i32, i32* %11, align 4
  %504 = call i32 @emit_writeword_indexed_map(i32 %500, i32 0, i32 %501, i32 %502, i32 %503)
  %505 = load %struct.regstat*, %struct.regstat** %4, align 8
  %506 = getelementptr inbounds %struct.regstat, %struct.regstat* %505, i32 0, i32 4
  %507 = load i64, i64* %506, align 8
  %508 = load i32*, i32** @rs1, align 8
  %509 = load i32, i32* %3, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, i32* %508, i64 %510
  %512 = load i32, i32* %511, align 4
  %513 = zext i32 %512 to i64
  %514 = shl i64 1, %513
  %515 = and i64 %507, %514
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %521, label %517

517:                                              ; preds = %496
  %518 = load i32, i32* %6, align 4
  %519 = load i32, i32* %6, align 4
  %520 = call i32 @emit_rorimm(i32 %518, i32 16, i32 %519)
  br label %521

521:                                              ; preds = %517, %496
  br label %522

522:                                              ; preds = %521, %493
  %523 = load i32, i32* @STOREL_STUB, align 4
  store i32 %523, i32* %15, align 4
  br label %524

524:                                              ; preds = %522, %487
  %525 = load i32, i32* %13, align 4
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %543

527:                                              ; preds = %524
  %528 = load i32, i32* %15, align 4
  %529 = load i32, i32* %13, align 4
  %530 = load i64, i64* @out, align 8
  %531 = trunc i64 %530 to i32
  %532 = load i32, i32* %3, align 4
  %533 = load i32, i32* %10, align 4
  %534 = load %struct.regstat*, %struct.regstat** %4, align 8
  %535 = ptrtoint %struct.regstat* %534 to i32
  %536 = load i32*, i32** @ccadj, align 8
  %537 = load i32, i32* %3, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i32, i32* %536, i64 %538
  %540 = load i32, i32* %539, align 4
  %541 = load i32, i32* %23, align 4
  %542 = call i32 @add_stub(i32 %528, i32 %529, i32 %531, i32 %532, i32 %533, i32 %535, i32 %540, i32 %541)
  br label %569

543:                                              ; preds = %524
  %544 = load i32, i32* %17, align 4
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %568

546:                                              ; preds = %543
  %547 = load i32, i32* %16, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %568, label %549

549:                                              ; preds = %546
  %550 = load i32, i32* %15, align 4
  %551 = load i32, i32* %3, align 4
  %552 = load i32, i32* %18, align 4
  %553 = load %struct.regstat*, %struct.regstat** %4, align 8
  %554 = getelementptr inbounds %struct.regstat, %struct.regstat* %553, i32 0, i32 0
  %555 = load i64*, i64** %554, align 8
  %556 = load i32*, i32** @rs1, align 8
  %557 = load i32, i32* %3, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32, i32* %556, i64 %558
  %560 = load i32, i32* %559, align 4
  %561 = load i32*, i32** @ccadj, align 8
  %562 = load i32, i32* %3, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i32, i32* %561, i64 %563
  %565 = load i32, i32* %564, align 4
  %566 = load i32, i32* %23, align 4
  %567 = call i32 @inline_writestub(i32 %550, i32 %551, i32 %552, i64* %555, i32 %560, i32 %565, i32 %566)
  br label %568

568:                                              ; preds = %549, %546, %543
  br label %569

569:                                              ; preds = %568, %527
  %570 = load i64*, i64** @addrmode, align 8
  %571 = load i32, i32* %3, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i64, i64* %570, i64 %572
  %574 = load i64, i64* %573, align 8
  %575 = load i64, i64* @PREDEC, align 8
  %576 = icmp eq i64 %574, %575
  br i1 %576, label %577, label %609

577:                                              ; preds = %569
  %578 = load i32, i32* %5, align 4
  %579 = icmp sge i32 %578, 0
  %580 = zext i1 %579 to i32
  %581 = call i32 @assert(i32 %580)
  %582 = load %struct.regstat*, %struct.regstat** %4, align 8
  %583 = getelementptr inbounds %struct.regstat, %struct.regstat* %582, i32 0, i32 1
  %584 = load i32, i32* %583, align 8
  %585 = load i32, i32* %5, align 4
  %586 = ashr i32 %584, %585
  %587 = and i32 %586, 1
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %608, label %589

589:                                              ; preds = %577
  %590 = load i32*, i32** @rt1, align 8
  %591 = load i32, i32* %3, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i32, i32* %590, i64 %592
  %594 = load i32, i32* %593, align 4
  %595 = load i32*, i32** @rs1, align 8
  %596 = load i32, i32* %3, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i32, i32* %595, i64 %597
  %599 = load i32, i32* %598, align 4
  %600 = icmp eq i32 %594, %599
  br i1 %600, label %601, label %608

601:                                              ; preds = %589
  %602 = load i32, i32* %5, align 4
  %603 = load i32, i32* %20, align 4
  %604 = shl i32 1, %603
  %605 = sub nsw i32 0, %604
  %606 = load i32, i32* %5, align 4
  %607 = call i32 @emit_addimm(i32 %602, i32 %605, i32 %606)
  br label %608

608:                                              ; preds = %601, %589, %577
  br label %609

609:                                              ; preds = %608, %569
  ret void
}

declare dso_local i32 @get_reg(i64*, i32) #1

declare dso_local i32 @can_direct_write(i32) #1

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i32 @get_alt_reg(i64*, i32) #1

declare dso_local i32 @generate_map_const(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

declare dso_local i32 @do_map_w(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @do_map_w_branch(i32, i32, i32, i32*) #1

declare dso_local i32 @emit_writebyte_indexed_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @emit_writehword_indexed_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @emit_rorimm(i32, i32, i32) #1

declare dso_local i32 @emit_writeword_indexed_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @add_stub(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @inline_writestub(i32, i32, i32, i64*, i32, i32, i32) #1

declare dso_local i32 @emit_addimm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
