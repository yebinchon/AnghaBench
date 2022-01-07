; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_load_assemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_load_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i64*, i32, i32, i32*, i64 }

@addrmode = common dso_local global i64* null, align 8
@DUALIND = common dso_local global i64 0, align 8
@GBRIND = common dso_local global i64 0, align 8
@opcode = common dso_local global i32* null, align 8
@opcode2 = common dso_local global i32* null, align 8
@rt1 = common dso_local global i32* null, align 8
@TBIT = common dso_local global i32 0, align 4
@rs1 = common dso_local global i32* null, align 8
@rs2 = common dso_local global i32* null, align 8
@imm = common dso_local global i32* null, align 8
@HOST_REGS = common dso_local global i32 0, align 4
@cpmap = common dso_local global i32** null, align 8
@POSTINC = common dso_local global i64 0, align 8
@MMREG = common dso_local global i32 0, align 4
@MOREG = common dso_local global i32 0, align 4
@LOADB_STUB = common dso_local global i32 0, align 4
@out = common dso_local global i64 0, align 8
@ccadj = common dso_local global i32* null, align 8
@SR = common dso_local global i32 0, align 4
@LOADW_STUB = common dso_local global i32 0, align 4
@LOADL_STUB = common dso_local global i32 0, align 4
@rt2 = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_assemble(i32 %0, %struct.regstat* %1) #0 {
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
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.regstat* %1, %struct.regstat** %4, align 8
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %25 = load i64*, i64** @addrmode, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DUALIND, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %2
  %33 = load i64*, i64** @addrmode, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GBRIND, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %32, %2
  %41 = phi i1 [ true, %2 ], [ %39, %32 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %16, align 4
  %43 = load i32*, i32** @opcode, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %57

50:                                               ; preds = %40
  %51 = load i32*, i32** @opcode2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 3
  br label %57

57:                                               ; preds = %50, %49
  %58 = phi i32 [ 2, %49 ], [ %56, %50 ]
  store i32 %58, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %59 = load %struct.regstat*, %struct.regstat** %4, align 8
  %60 = getelementptr inbounds %struct.regstat, %struct.regstat* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32*, i32** @rt1, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TBIT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %76

70:                                               ; preds = %57
  %71 = load i32*, i32** @rt1, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  br label %76

76:                                               ; preds = %70, %69
  %77 = phi i32 [ -1, %69 ], [ %75, %70 ]
  %78 = call i32 @get_reg(i64* %61, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.regstat*, %struct.regstat** %4, align 8
  %80 = getelementptr inbounds %struct.regstat, %struct.regstat* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32*, i32** @rs1, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @get_reg(i64* %81, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load %struct.regstat*, %struct.regstat** %4, align 8
  %89 = getelementptr inbounds %struct.regstat, %struct.regstat* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i32*, i32** @rs2, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @get_reg(i64* %90, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32*, i32** @imm, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %12, align 4
  store i32 0, i32* %18, align 4
  br label %102

102:                                              ; preds = %121, %76
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* @HOST_REGS, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %102
  %107 = load %struct.regstat*, %struct.regstat** %4, align 8
  %108 = getelementptr inbounds %struct.regstat, %struct.regstat* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %18, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp sge i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %106
  %116 = load i32, i32* %18, align 4
  %117 = shl i32 1, %116
  %118 = load i32, i32* %19, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %19, align 4
  br label %120

120:                                              ; preds = %115, %106
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %18, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %18, align 4
  br label %102

124:                                              ; preds = %102
  %125 = load i32, i32* %6, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %205

127:                                              ; preds = %124
  %128 = load i32, i32* %16, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %127
  %131 = load %struct.regstat*, %struct.regstat** %4, align 8
  %132 = getelementptr inbounds %struct.regstat, %struct.regstat* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = ashr i32 %133, %134
  %136 = load %struct.regstat*, %struct.regstat** %4, align 8
  %137 = getelementptr inbounds %struct.regstat, %struct.regstat* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = ashr i32 %138, %139
  %141 = and i32 %135, %140
  %142 = and i32 %141, 1
  store i32 %142, i32* %15, align 4
  br label %150

143:                                              ; preds = %127
  %144 = load %struct.regstat*, %struct.regstat** %4, align 8
  %145 = getelementptr inbounds %struct.regstat, %struct.regstat* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = ashr i32 %146, %147
  %149 = and i32 %148, 1
  store i32 %149, i32* %15, align 4
  br label %150

150:                                              ; preds = %143, %130
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %204

153:                                              ; preds = %150
  %154 = load i32, i32* %16, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %176

156:                                              ; preds = %153
  %157 = load i32**, i32*** @cpmap, align 8
  %158 = load i32, i32* %3, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32**, i32*** @cpmap, align 8
  %167 = load i32, i32* %3, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %166, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %165, %174
  store i32 %175, i32* %20, align 4
  br label %188

176:                                              ; preds = %153
  %177 = load i32**, i32*** @cpmap, align 8
  %178 = load i32, i32* %3, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %185, %186
  store i32 %187, i32* %20, align 4
  br label %188

188:                                              ; preds = %176, %156
  %189 = load i64*, i64** @addrmode, align 8
  %190 = load i32, i32* %3, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @POSTINC, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %188
  %197 = load i32, i32* %17, align 4
  %198 = shl i32 1, %197
  %199 = load i32, i32* %20, align 4
  %200 = sub nsw i32 %199, %198
  store i32 %200, i32* %20, align 4
  br label %201

201:                                              ; preds = %196, %188
  %202 = load i32, i32* %20, align 4
  %203 = call i32 @can_direct_read(i32 %202)
  store i32 %203, i32* %14, align 4
  br label %204

204:                                              ; preds = %201, %150
  br label %205

205:                                              ; preds = %204, %124
  %206 = load i32, i32* %8, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = load %struct.regstat*, %struct.regstat** %4, align 8
  %210 = getelementptr inbounds %struct.regstat, %struct.regstat* %209, i32 0, i32 0
  %211 = load i64*, i64** %210, align 8
  %212 = call i32 @get_reg(i64* %211, i32 -1)
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %208, %205
  %214 = load i32, i32* %15, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %326, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %16, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %240

219:                                              ; preds = %216
  %220 = load %struct.regstat*, %struct.regstat** %4, align 8
  %221 = getelementptr inbounds %struct.regstat, %struct.regstat* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** @rs1, align 8
  %224 = load i32, i32* %3, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = ashr i32 %222, %227
  %229 = load %struct.regstat*, %struct.regstat** %4, align 8
  %230 = getelementptr inbounds %struct.regstat, %struct.regstat* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** @rs2, align 8
  %233 = load i32, i32* %3, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = ashr i32 %231, %236
  %238 = and i32 %228, %237
  %239 = and i32 %238, 1
  store i32 %239, i32* %15, align 4
  br label %251

240:                                              ; preds = %216
  %241 = load %struct.regstat*, %struct.regstat** %4, align 8
  %242 = getelementptr inbounds %struct.regstat, %struct.regstat* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load i32*, i32** @rs1, align 8
  %245 = load i32, i32* %3, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = ashr i32 %243, %248
  %250 = and i32 %249, 1
  store i32 %250, i32* %15, align 4
  br label %251

251:                                              ; preds = %240, %219
  %252 = load i32, i32* %15, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %325

254:                                              ; preds = %251
  %255 = load i32, i32* %16, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %281

257:                                              ; preds = %254
  %258 = load %struct.regstat*, %struct.regstat** %4, align 8
  %259 = getelementptr inbounds %struct.regstat, %struct.regstat* %258, i32 0, i32 3
  %260 = load i32*, i32** %259, align 8
  %261 = load i32*, i32** @rs1, align 8
  %262 = load i32, i32* %3, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %260, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.regstat*, %struct.regstat** %4, align 8
  %270 = getelementptr inbounds %struct.regstat, %struct.regstat* %269, i32 0, i32 3
  %271 = load i32*, i32** %270, align 8
  %272 = load i32*, i32** @rs2, align 8
  %273 = load i32, i32* %3, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %271, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %268, %279
  store i32 %280, i32* %20, align 4
  br label %295

281:                                              ; preds = %254
  %282 = load %struct.regstat*, %struct.regstat** %4, align 8
  %283 = getelementptr inbounds %struct.regstat, %struct.regstat* %282, i32 0, i32 3
  %284 = load i32*, i32** %283, align 8
  %285 = load i32*, i32** @rs1, align 8
  %286 = load i32, i32* %3, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %284, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %12, align 4
  %294 = add nsw i32 %292, %293
  store i32 %294, i32* %20, align 4
  br label %295

295:                                              ; preds = %281, %257
  %296 = load i64*, i64** @addrmode, align 8
  %297 = load i32, i32* %3, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i64, i64* %296, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @POSTINC, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %308

303:                                              ; preds = %295
  %304 = load i32, i32* %17, align 4
  %305 = shl i32 1, %304
  %306 = load i32, i32* %20, align 4
  %307 = sub nsw i32 %306, %305
  store i32 %307, i32* %20, align 4
  br label %308

308:                                              ; preds = %303, %295
  %309 = load i32, i32* %20, align 4
  %310 = call i32 @can_direct_read(i32 %309)
  store i32 %310, i32* %14, align 4
  %311 = load i32, i32* %20, align 4
  %312 = call i32 @can_direct_read(i32 %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %324

314:                                              ; preds = %308
  %315 = load i32, i32* %20, align 4
  %316 = load i32, i32* %17, align 4
  %317 = icmp ne i32 %316, 0
  %318 = xor i1 %317, true
  %319 = zext i1 %318 to i32
  %320 = xor i32 %315, %319
  %321 = call i32 @map_address(i32 %320)
  %322 = load i32, i32* %8, align 4
  %323 = call i32 @emit_movimm(i32 %321, i32 %322)
  br label %324

324:                                              ; preds = %314, %308
  br label %325

325:                                              ; preds = %324, %251
  br label %326

326:                                              ; preds = %325, %213
  %327 = load i32, i32* %12, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %338, label %329

329:                                              ; preds = %326
  %330 = load i32, i32* %16, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %338, label %332

332:                                              ; preds = %329
  %333 = load i32, i32* %6, align 4
  %334 = icmp slt i32 %333, 0
  br i1 %334, label %338, label %335

335:                                              ; preds = %332
  %336 = load i32, i32* %15, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %335, %332, %329, %326
  %339 = load i32, i32* %8, align 4
  store i32 %339, i32* %9, align 4
  br label %342

340:                                              ; preds = %335
  %341 = load i32, i32* %6, align 4
  store i32 %341, i32* %9, align 4
  br label %342

342:                                              ; preds = %340, %338
  %343 = load i32, i32* %8, align 4
  %344 = icmp sge i32 %343, 0
  %345 = zext i1 %344 to i32
  %346 = call i32 @assert(i32 %345)
  %347 = load i32, i32* %8, align 4
  %348 = shl i32 1, %347
  %349 = xor i32 %348, -1
  %350 = load i32, i32* %19, align 4
  %351 = and i32 %350, %349
  store i32 %351, i32* %19, align 4
  %352 = load i32, i32* %15, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %419, label %354

354:                                              ; preds = %342
  store i32 0, i32* %21, align 4
  %355 = load i32, i32* %15, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %361, label %357

357:                                              ; preds = %354
  %358 = load i32, i32* %17, align 4
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %357
  store i32 1, i32* %21, align 4
  br label %361

361:                                              ; preds = %360, %357, %354
  %362 = load %struct.regstat*, %struct.regstat** %4, align 8
  %363 = getelementptr inbounds %struct.regstat, %struct.regstat* %362, i32 0, i32 0
  %364 = load i64*, i64** %363, align 8
  %365 = load i32, i32* @MMREG, align 4
  %366 = call i32 @get_reg(i64* %364, i32 %365)
  store i32 %366, i32* %11, align 4
  %367 = load %struct.regstat*, %struct.regstat** %4, align 8
  %368 = getelementptr inbounds %struct.regstat, %struct.regstat* %367, i32 0, i32 0
  %369 = load i64*, i64** %368, align 8
  %370 = load i32, i32* @MOREG, align 4
  %371 = call i32 @get_reg(i64* %369, i32 %370)
  store i32 %371, i32* %10, align 4
  %372 = load i32, i32* %10, align 4
  %373 = icmp slt i32 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %361
  %375 = load %struct.regstat*, %struct.regstat** %4, align 8
  %376 = getelementptr inbounds %struct.regstat, %struct.regstat* %375, i32 0, i32 0
  %377 = load i64*, i64** %376, align 8
  %378 = call i32 @get_alt_reg(i64* %377, i32 -1)
  store i32 %378, i32* %10, align 4
  br label %379

379:                                              ; preds = %374, %361
  %380 = load i32, i32* %10, align 4
  %381 = icmp sge i32 %380, 0
  %382 = zext i1 %381 to i32
  %383 = call i32 @assert(i32 %382)
  %384 = load i32, i32* %10, align 4
  %385 = load i32, i32* %6, align 4
  %386 = icmp ne i32 %384, %385
  %387 = zext i1 %386 to i32
  %388 = call i32 @assert(i32 %387)
  %389 = load i32, i32* %10, align 4
  %390 = load i32, i32* %8, align 4
  %391 = icmp ne i32 %389, %390
  %392 = zext i1 %391 to i32
  %393 = call i32 @assert(i32 %392)
  %394 = load i32, i32* %10, align 4
  %395 = shl i32 1, %394
  %396 = xor i32 %395, -1
  %397 = load i32, i32* %19, align 4
  %398 = and i32 %397, %396
  store i32 %398, i32* %19, align 4
  %399 = load i32, i32* %9, align 4
  %400 = load i32, i32* %8, align 4
  %401 = load i32, i32* %10, align 4
  %402 = load i32, i32* %11, align 4
  %403 = load i32, i32* %21, align 4
  %404 = load i32, i32* %15, align 4
  %405 = load i32, i32* %20, align 4
  %406 = call i32 @do_map_r(i32 %399, i32 %400, i32 %401, i32 %402, i32 %403, i32 -1, i32 -1, i32 %404, i32 %405)
  store i32 %406, i32* %10, align 4
  %407 = load i32, i32* %15, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %414, label %409

409:                                              ; preds = %379
  %410 = load i32, i32* %17, align 4
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %409
  %413 = load i32, i32* %8, align 4
  store i32 %413, i32* %9, align 4
  br label %414

414:                                              ; preds = %412, %409, %379
  %415 = load i32, i32* %10, align 4
  %416 = load i32, i32* %15, align 4
  %417 = load i32, i32* %20, align 4
  %418 = call i32 @do_map_r_branch(i32 %415, i32 %416, i32 %417, i32* %13)
  br label %427

419:                                              ; preds = %342
  %420 = load i32, i32* %20, align 4
  %421 = call i32 @can_direct_read(i32 %420)
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %419
  %424 = load i32, i32* %20, align 4
  %425 = call i32 @map_address(i32 %424)
  store i32 %425, i32* %20, align 4
  br label %426

426:                                              ; preds = %423, %419
  br label %427

427:                                              ; preds = %426, %414
  %428 = load i32, i32* %8, align 4
  %429 = load %struct.regstat*, %struct.regstat** %4, align 8
  %430 = getelementptr inbounds %struct.regstat, %struct.regstat* %429, i32 0, i32 0
  %431 = load i64*, i64** %430, align 8
  %432 = load i32*, i32** @rt1, align 8
  %433 = load i32, i32* %3, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @get_reg(i64* %431, i32 %436)
  %438 = icmp ne i32 %428, %437
  %439 = zext i1 %438 to i32
  store i32 %439, i32* %5, align 4
  %440 = load i32*, i32** @opcode, align 8
  %441 = load i32, i32* %3, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = icmp eq i32 %444, 12
  br i1 %445, label %446, label %462

446:                                              ; preds = %427
  %447 = load i32*, i32** @opcode2, align 8
  %448 = load i32, i32* %3, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %447, i64 %449
  %451 = load i32, i32* %450, align 4
  %452 = icmp eq i32 %451, 12
  br i1 %452, label %453, label %462

453:                                              ; preds = %446
  %454 = load %struct.regstat*, %struct.regstat** %4, align 8
  %455 = getelementptr inbounds %struct.regstat, %struct.regstat* %454, i32 0, i32 4
  %456 = load i64, i64* %455, align 8
  %457 = load i32, i32* @TBIT, align 4
  %458 = zext i32 %457 to i64
  %459 = shl i64 1, %458
  %460 = and i64 %456, %459
  %461 = trunc i64 %460 to i32
  store i32 %461, i32* %5, align 4
  br label %462

462:                                              ; preds = %453, %446, %427
  %463 = load i32, i32* %17, align 4
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %552

465:                                              ; preds = %462
  %466 = load i32, i32* %15, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %471

468:                                              ; preds = %465
  %469 = load i32, i32* %14, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %500

471:                                              ; preds = %468, %465
  %472 = load i32, i32* %5, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %480, label %474

474:                                              ; preds = %471
  store i32 0, i32* %22, align 4
  %475 = load i32, i32* %22, align 4
  %476 = load i32, i32* %8, align 4
  %477 = load i32, i32* %10, align 4
  %478 = load i32, i32* %8, align 4
  %479 = call i32 @emit_movsbl_indexed_map(i32 %475, i32 %476, i32 %477, i32 %478)
  br label %480

480:                                              ; preds = %474, %471
  %481 = load i32, i32* %13, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %499

483:                                              ; preds = %480
  %484 = load i32, i32* @LOADB_STUB, align 4
  %485 = load i32, i32* %13, align 4
  %486 = load i64, i64* @out, align 8
  %487 = trunc i64 %486 to i32
  %488 = load i32, i32* %3, align 4
  %489 = load i32, i32* %9, align 4
  %490 = load %struct.regstat*, %struct.regstat** %4, align 8
  %491 = ptrtoint %struct.regstat* %490 to i32
  %492 = load i32*, i32** @ccadj, align 8
  %493 = load i32, i32* %3, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32, i32* %492, i64 %494
  %496 = load i32, i32* %495, align 4
  %497 = load i32, i32* %19, align 4
  %498 = call i32 @add_stub(i32 %484, i32 %485, i32 %487, i32 %488, i32 %489, i32 %491, i32 %496, i32 %497)
  br label %499

499:                                              ; preds = %483, %480
  br label %519

500:                                              ; preds = %468
  %501 = load i32, i32* @LOADB_STUB, align 4
  %502 = load i32, i32* %3, align 4
  %503 = load i32, i32* %20, align 4
  %504 = load %struct.regstat*, %struct.regstat** %4, align 8
  %505 = getelementptr inbounds %struct.regstat, %struct.regstat* %504, i32 0, i32 0
  %506 = load i64*, i64** %505, align 8
  %507 = load i32*, i32** @rt1, align 8
  %508 = load i32, i32* %3, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %507, i64 %509
  %511 = load i32, i32* %510, align 4
  %512 = load i32*, i32** @ccadj, align 8
  %513 = load i32, i32* %3, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %512, i64 %514
  %516 = load i32, i32* %515, align 4
  %517 = load i32, i32* %19, align 4
  %518 = call i32 @inline_readstub(i32 %501, i32 %502, i32 %503, i64* %506, i32 %511, i32 %516, i32 %517)
  br label %519

519:                                              ; preds = %500, %499
  %520 = load i32*, i32** @rt1, align 8
  %521 = load i32, i32* %3, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i32, i32* %520, i64 %522
  %524 = load i32, i32* %523, align 4
  %525 = load i32, i32* @TBIT, align 4
  %526 = icmp eq i32 %524, %525
  br i1 %526, label %527, label %551

527:                                              ; preds = %519
  %528 = load i32, i32* %5, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %551, label %530

530:                                              ; preds = %527
  %531 = load %struct.regstat*, %struct.regstat** %4, align 8
  %532 = getelementptr inbounds %struct.regstat, %struct.regstat* %531, i32 0, i32 0
  %533 = load i64*, i64** %532, align 8
  %534 = load i32, i32* @SR, align 4
  %535 = call i32 @get_reg(i64* %533, i32 %534)
  %536 = trunc i32 %535 to i8
  store i8 %536, i8* %23, align 1
  %537 = load i8, i8* %23, align 1
  %538 = sext i8 %537 to i32
  %539 = icmp sge i32 %538, 0
  %540 = zext i1 %539 to i32
  %541 = call i32 @assert(i32 %540)
  %542 = load i32, i32* %8, align 4
  %543 = load i32*, i32** @imm, align 8
  %544 = load i32, i32* %3, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32, i32* %543, i64 %545
  %547 = load i32, i32* %546, align 4
  %548 = load i8, i8* %23, align 1
  %549 = load i32, i32* %8, align 4
  %550 = call i32 @emit_sh2tstimm(i32 %542, i32 %547, i8 signext %548, i32 %549)
  br label %551

551:                                              ; preds = %530, %527, %519
  br label %552

552:                                              ; preds = %551, %462
  %553 = load i32, i32* %17, align 4
  %554 = icmp eq i32 %553, 1
  br i1 %554, label %555, label %609

555:                                              ; preds = %552
  %556 = load i32, i32* %15, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %561

558:                                              ; preds = %555
  %559 = load i32, i32* %14, align 4
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %589

561:                                              ; preds = %558, %555
  %562 = load i32, i32* %5, align 4
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %569, label %564

564:                                              ; preds = %561
  store i32 0, i32* %24, align 4
  %565 = load i32, i32* %9, align 4
  %566 = load i32, i32* %10, align 4
  %567 = load i32, i32* %8, align 4
  %568 = call i32 @emit_movswl_indexed_map(i32 0, i32 %565, i32 %566, i32 %567)
  br label %569

569:                                              ; preds = %564, %561
  %570 = load i32, i32* %13, align 4
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %588

572:                                              ; preds = %569
  %573 = load i32, i32* @LOADW_STUB, align 4
  %574 = load i32, i32* %13, align 4
  %575 = load i64, i64* @out, align 8
  %576 = trunc i64 %575 to i32
  %577 = load i32, i32* %3, align 4
  %578 = load i32, i32* %9, align 4
  %579 = load %struct.regstat*, %struct.regstat** %4, align 8
  %580 = ptrtoint %struct.regstat* %579 to i32
  %581 = load i32*, i32** @ccadj, align 8
  %582 = load i32, i32* %3, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i32, i32* %581, i64 %583
  %585 = load i32, i32* %584, align 4
  %586 = load i32, i32* %19, align 4
  %587 = call i32 @add_stub(i32 %573, i32 %574, i32 %576, i32 %577, i32 %578, i32 %580, i32 %585, i32 %586)
  br label %588

588:                                              ; preds = %572, %569
  br label %608

589:                                              ; preds = %558
  %590 = load i32, i32* @LOADW_STUB, align 4
  %591 = load i32, i32* %3, align 4
  %592 = load i32, i32* %20, align 4
  %593 = load %struct.regstat*, %struct.regstat** %4, align 8
  %594 = getelementptr inbounds %struct.regstat, %struct.regstat* %593, i32 0, i32 0
  %595 = load i64*, i64** %594, align 8
  %596 = load i32*, i32** @rt1, align 8
  %597 = load i32, i32* %3, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i32, i32* %596, i64 %598
  %600 = load i32, i32* %599, align 4
  %601 = load i32*, i32** @ccadj, align 8
  %602 = load i32, i32* %3, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i32, i32* %601, i64 %603
  %605 = load i32, i32* %604, align 4
  %606 = load i32, i32* %19, align 4
  %607 = call i32 @inline_readstub(i32 %590, i32 %591, i32 %592, i64* %595, i32 %600, i32 %605, i32 %606)
  br label %608

608:                                              ; preds = %589, %588
  br label %609

609:                                              ; preds = %608, %552
  %610 = load i32, i32* %17, align 4
  %611 = icmp eq i32 %610, 2
  br i1 %611, label %612, label %669

612:                                              ; preds = %609
  %613 = load i32, i32* %15, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %618

615:                                              ; preds = %612
  %616 = load i32, i32* %14, align 4
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %618, label %649

618:                                              ; preds = %615, %612
  %619 = load i32, i32* %5, align 4
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %629, label %621

621:                                              ; preds = %618
  %622 = load i32, i32* %9, align 4
  %623 = load i32, i32* %10, align 4
  %624 = load i32, i32* %8, align 4
  %625 = call i32 @emit_readword_indexed_map(i32 0, i32 %622, i32 %623, i32 %624)
  %626 = load i32, i32* %8, align 4
  %627 = load i32, i32* %8, align 4
  %628 = call i32 @emit_rorimm(i32 %626, i32 16, i32 %627)
  br label %629

629:                                              ; preds = %621, %618
  %630 = load i32, i32* %13, align 4
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %648

632:                                              ; preds = %629
  %633 = load i32, i32* @LOADL_STUB, align 4
  %634 = load i32, i32* %13, align 4
  %635 = load i64, i64* @out, align 8
  %636 = trunc i64 %635 to i32
  %637 = load i32, i32* %3, align 4
  %638 = load i32, i32* %9, align 4
  %639 = load %struct.regstat*, %struct.regstat** %4, align 8
  %640 = ptrtoint %struct.regstat* %639 to i32
  %641 = load i32*, i32** @ccadj, align 8
  %642 = load i32, i32* %3, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds i32, i32* %641, i64 %643
  %645 = load i32, i32* %644, align 4
  %646 = load i32, i32* %19, align 4
  %647 = call i32 @add_stub(i32 %633, i32 %634, i32 %636, i32 %637, i32 %638, i32 %640, i32 %645, i32 %646)
  br label %648

648:                                              ; preds = %632, %629
  br label %668

649:                                              ; preds = %615
  %650 = load i32, i32* @LOADL_STUB, align 4
  %651 = load i32, i32* %3, align 4
  %652 = load i32, i32* %20, align 4
  %653 = load %struct.regstat*, %struct.regstat** %4, align 8
  %654 = getelementptr inbounds %struct.regstat, %struct.regstat* %653, i32 0, i32 0
  %655 = load i64*, i64** %654, align 8
  %656 = load i32*, i32** @rt1, align 8
  %657 = load i32, i32* %3, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds i32, i32* %656, i64 %658
  %660 = load i32, i32* %659, align 4
  %661 = load i32*, i32** @ccadj, align 8
  %662 = load i32, i32* %3, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i32, i32* %661, i64 %663
  %665 = load i32, i32* %664, align 4
  %666 = load i32, i32* %19, align 4
  %667 = call i32 @inline_readstub(i32 %650, i32 %651, i32 %652, i64* %655, i32 %660, i32 %665, i32 %666)
  br label %668

668:                                              ; preds = %649, %648
  br label %669

669:                                              ; preds = %668, %609
  %670 = load i64*, i64** @addrmode, align 8
  %671 = load i32, i32* %3, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds i64, i64* %670, i64 %672
  %674 = load i64, i64* %673, align 8
  %675 = load i64, i64* @POSTINC, align 8
  %676 = icmp eq i64 %674, %675
  br i1 %676, label %677, label %718

677:                                              ; preds = %669
  %678 = load %struct.regstat*, %struct.regstat** %4, align 8
  %679 = getelementptr inbounds %struct.regstat, %struct.regstat* %678, i32 0, i32 1
  %680 = load i32, i32* %679, align 8
  %681 = load i32, i32* %6, align 4
  %682 = ashr i32 %680, %681
  %683 = and i32 %682, 1
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %717, label %685

685:                                              ; preds = %677
  %686 = load %struct.regstat*, %struct.regstat** %4, align 8
  %687 = getelementptr inbounds %struct.regstat, %struct.regstat* %686, i32 0, i32 4
  %688 = load i64, i64* %687, align 8
  %689 = load i64*, i64** @rt2, align 8
  %690 = load i32, i32* %3, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds i64, i64* %689, i64 %691
  %693 = load i64, i64* %692, align 8
  %694 = shl i64 1, %693
  %695 = and i64 %688, %694
  %696 = icmp ne i64 %695, 0
  br i1 %696, label %716, label %697

697:                                              ; preds = %685
  %698 = load i32*, i32** @rt1, align 8
  %699 = load i32, i32* %3, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i32, i32* %698, i64 %700
  %702 = load i32, i32* %701, align 4
  %703 = sext i32 %702 to i64
  %704 = load i64*, i64** @rt2, align 8
  %705 = load i32, i32* %3, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds i64, i64* %704, i64 %706
  %708 = load i64, i64* %707, align 8
  %709 = icmp ne i64 %703, %708
  br i1 %709, label %710, label %716

710:                                              ; preds = %697
  %711 = load i32, i32* %6, align 4
  %712 = load i32, i32* %17, align 4
  %713 = shl i32 1, %712
  %714 = load i32, i32* %6, align 4
  %715 = call i32 @emit_addimm(i32 %711, i32 %713, i32 %714)
  br label %716

716:                                              ; preds = %710, %697, %685
  br label %717

717:                                              ; preds = %716, %677
  br label %718

718:                                              ; preds = %717, %669
  ret void
}

declare dso_local i32 @get_reg(i64*, i32) #1

declare dso_local i32 @can_direct_read(i32) #1

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i32 @map_address(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_alt_reg(i64*, i32) #1

declare dso_local i32 @do_map_r(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @do_map_r_branch(i32, i32, i32, i32*) #1

declare dso_local i32 @emit_movsbl_indexed_map(i32, i32, i32, i32) #1

declare dso_local i32 @add_stub(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @inline_readstub(i32, i32, i32, i64*, i32, i32, i32) #1

declare dso_local i32 @emit_sh2tstimm(i32, i32, i8 signext, i32) #1

declare dso_local i32 @emit_movswl_indexed_map(i32, i32, i32, i32) #1

declare dso_local i32 @emit_readword_indexed_map(i32, i32, i32, i32) #1

declare dso_local i32 @emit_rorimm(i32, i32, i32) #1

declare dso_local i32 @emit_addimm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
