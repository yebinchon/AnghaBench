; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_alloc_reg_temp.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_alloc_reg_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i8*, i32, i32, i32 }

@HOST_REGS = common dso_local global i32 0, align 4
@EXCLUDE_REG = common dso_local global i32 0, align 4
@unneeded_reg = common dso_local global i32* null, align 8
@MAXREG = common dso_local global i32 0, align 4
@bt = common dso_local global i64* null, align 8
@CCREG = common dso_local global i64 0, align 8
@itype = common dso_local global i64* null, align 8
@RJUMP = common dso_local global i64 0, align 8
@UJUMP = common dso_local global i64 0, align 8
@CJUMP = common dso_local global i64 0, align 8
@SJUMP = common dso_local global i64 0, align 8
@rs1 = common dso_local global i32* null, align 8
@rs2 = common dso_local global i32* null, align 8
@rt1 = common dso_local global i32* null, align 8
@rt2 = common dso_local global i32* null, align 8
@HOST_CCREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"This shouldn't happen\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alloc_reg_temp(%struct.regstat* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca %struct.regstat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.regstat* %0, %struct.regstat** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %36, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @HOST_REGS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @EXCLUDE_REG, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load %struct.regstat*, %struct.regstat** %4, align 8
  %24 = getelementptr inbounds %struct.regstat, %struct.regstat* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* %6, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %516

35:                                               ; preds = %22, %18
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %14

39:                                               ; preds = %14
  %40 = load i32, i32* @HOST_REGS, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %82, %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @EXCLUDE_REG, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %45
  %50 = load %struct.regstat*, %struct.regstat** %4, align 8
  %51 = getelementptr inbounds %struct.regstat, %struct.regstat* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %81

59:                                               ; preds = %49
  %60 = load i8, i8* %6, align 1
  %61 = load %struct.regstat*, %struct.regstat** %4, align 8
  %62 = getelementptr inbounds %struct.regstat, %struct.regstat* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 %60, i8* %66, align 1
  %67 = load i32, i32* %8, align 4
  %68 = shl i32 1, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.regstat*, %struct.regstat** %4, align 8
  %71 = getelementptr inbounds %struct.regstat, %struct.regstat* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* %8, align 4
  %75 = shl i32 1, %74
  %76 = xor i32 %75, -1
  %77 = load %struct.regstat*, %struct.regstat** %4, align 8
  %78 = getelementptr inbounds %struct.regstat, %struct.regstat* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %516

81:                                               ; preds = %49, %45
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %8, align 4
  br label %42

85:                                               ; preds = %42
  %86 = load i32, i32* @HOST_REGS, align 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %149, %85
  %89 = load i32, i32* %8, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %152

91:                                               ; preds = %88
  %92 = load %struct.regstat*, %struct.regstat** %4, align 8
  %93 = getelementptr inbounds %struct.regstat, %struct.regstat* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %148

102:                                              ; preds = %91
  %103 = load %struct.regstat*, %struct.regstat** %4, align 8
  %104 = getelementptr inbounds %struct.regstat, %struct.regstat* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = ashr i32 %105, %106
  %108 = and i32 %107, 1
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %147

110:                                              ; preds = %102
  %111 = load i32, i32* %5, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %110
  %114 = load i32*, i32** @unneeded_reg, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %7, align 4
  %121 = ashr i32 %119, %120
  %122 = and i32 %121, 1
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %146

124:                                              ; preds = %113, %110
  %125 = load i8, i8* %6, align 1
  %126 = load %struct.regstat*, %struct.regstat** %4, align 8
  %127 = getelementptr inbounds %struct.regstat, %struct.regstat* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8 %125, i8* %131, align 1
  %132 = load i32, i32* %8, align 4
  %133 = shl i32 1, %132
  %134 = xor i32 %133, -1
  %135 = load %struct.regstat*, %struct.regstat** %4, align 8
  %136 = getelementptr inbounds %struct.regstat, %struct.regstat* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load i32, i32* %8, align 4
  %140 = shl i32 1, %139
  %141 = xor i32 %140, -1
  %142 = load %struct.regstat*, %struct.regstat** %4, align 8
  %143 = getelementptr inbounds %struct.regstat, %struct.regstat* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %516

146:                                              ; preds = %113
  br label %147

147:                                              ; preds = %146, %102
  br label %148

148:                                              ; preds = %147, %91
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %8, align 4
  br label %88

152:                                              ; preds = %88
  %153 = load i32, i32* @MAXREG, align 4
  %154 = add nsw i32 %153, 1
  %155 = zext i32 %154 to i64
  %156 = call i8* @llvm.stacksave()
  store i8* %156, i8** %10, align 8
  %157 = alloca i8, i64 %155, align 16
  store i64 %155, i64* %11, align 8
  %158 = trunc i64 %155 to i32
  %159 = call i32 @memset(i8* %157, i32 10, i32 %158)
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @lsn(i8* %157, i32 %160, i32* %9)
  %162 = load i32, i32* %5, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %400

164:                                              ; preds = %152
  %165 = load i64*, i64** @bt, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %164
  %172 = load i64, i64* @CCREG, align 8
  %173 = getelementptr inbounds i8, i8* %157, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp sgt i32 %175, 2
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load i64, i64* @CCREG, align 8
  %179 = getelementptr inbounds i8, i8* %157, i64 %178
  store i8 2, i8* %179, align 1
  br label %180

180:                                              ; preds = %177, %171, %164
  %181 = load i32, i32* %5, align 4
  %182 = icmp sgt i32 %181, 1
  br i1 %182, label %183, label %228

183:                                              ; preds = %180
  %184 = load i64, i64* @CCREG, align 8
  %185 = getelementptr inbounds i8, i8* %157, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp sgt i32 %187, 2
  br i1 %188, label %189, label %228

189:                                              ; preds = %183
  %190 = load i64*, i64** @itype, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sub nsw i32 %191, 2
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %190, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @RJUMP, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %225, label %198

198:                                              ; preds = %189
  %199 = load i64*, i64** @itype, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sub nsw i32 %200, 2
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %199, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @UJUMP, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %225, label %207

207:                                              ; preds = %198
  %208 = load i64*, i64** @itype, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sub nsw i32 %209, 2
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %208, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @CJUMP, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %225, label %216

216:                                              ; preds = %207
  %217 = load i64*, i64** @itype, align 8
  %218 = load i32, i32* %5, align 4
  %219 = sub nsw i32 %218, 2
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %217, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @SJUMP, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %216, %207, %198, %189
  %226 = load i64, i64* @CCREG, align 8
  %227 = getelementptr inbounds i8, i8* %157, i64 %226
  store i8 2, i8* %227, align 1
  br label %228

228:                                              ; preds = %225, %216, %183, %180
  store i32 10, i32* %12, align 4
  br label %229

229:                                              ; preds = %396, %228
  %230 = load i32, i32* %12, align 4
  %231 = icmp sge i32 %230, 3
  br i1 %231, label %232, label %399

232:                                              ; preds = %229
  store i32 0, i32* %7, align 4
  br label %233

233:                                              ; preds = %392, %232
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* @MAXREG, align 4
  %236 = icmp sle i32 %234, %235
  br i1 %236, label %237, label %395

237:                                              ; preds = %233
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %157, i64 %239
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = load i32, i32* %12, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %391

245:                                              ; preds = %237
  %246 = load i32, i32* %7, align 4
  %247 = load i32*, i32** @rs1, align 8
  %248 = load i32, i32* %5, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %246, %252
  br i1 %253, label %254, label %391

254:                                              ; preds = %245
  %255 = load i32, i32* %7, align 4
  %256 = load i32*, i32** @rs2, align 8
  %257 = load i32, i32* %5, align 4
  %258 = sub nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %255, %261
  br i1 %262, label %263, label %391

263:                                              ; preds = %254
  %264 = load i32, i32* %7, align 4
  %265 = load i32*, i32** @rt1, align 8
  %266 = load i32, i32* %5, align 4
  %267 = sub nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %265, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %264, %270
  br i1 %271, label %272, label %391

272:                                              ; preds = %263
  %273 = load i32, i32* %7, align 4
  %274 = load i32*, i32** @rt2, align 8
  %275 = load i32, i32* %5, align 4
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %274, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %273, %279
  br i1 %280, label %281, label %391

281:                                              ; preds = %272
  store i32 0, i32* %8, align 4
  br label %282

282:                                              ; preds = %333, %281
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* @HOST_REGS, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %336

286:                                              ; preds = %282
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* @HOST_CCREG, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %297, label %290

290:                                              ; preds = %286
  %291 = load i32, i32* %12, align 4
  %292 = load i64, i64* @CCREG, align 8
  %293 = getelementptr inbounds i8, i8* %157, i64 %292
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = icmp slt i32 %291, %295
  br i1 %296, label %297, label %332

297:                                              ; preds = %290, %286
  %298 = load %struct.regstat*, %struct.regstat** %4, align 8
  %299 = getelementptr inbounds %struct.regstat, %struct.regstat* %298, i32 0, i32 0
  %300 = load i8*, i8** %299, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8, i8* %300, i64 %302
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  %306 = load i32, i32* %7, align 4
  %307 = add nsw i32 %306, 64
  %308 = icmp eq i32 %305, %307
  br i1 %308, label %309, label %331

309:                                              ; preds = %297
  %310 = load i8, i8* %6, align 1
  %311 = load %struct.regstat*, %struct.regstat** %4, align 8
  %312 = getelementptr inbounds %struct.regstat, %struct.regstat* %311, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  %314 = load i32, i32* %8, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %313, i64 %315
  store i8 %310, i8* %316, align 1
  %317 = load i32, i32* %8, align 4
  %318 = shl i32 1, %317
  %319 = xor i32 %318, -1
  %320 = load %struct.regstat*, %struct.regstat** %4, align 8
  %321 = getelementptr inbounds %struct.regstat, %struct.regstat* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = and i32 %322, %319
  store i32 %323, i32* %321, align 8
  %324 = load i32, i32* %8, align 4
  %325 = shl i32 1, %324
  %326 = xor i32 %325, -1
  %327 = load %struct.regstat*, %struct.regstat** %4, align 8
  %328 = getelementptr inbounds %struct.regstat, %struct.regstat* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = and i32 %329, %326
  store i32 %330, i32* %328, align 4
  store i32 1, i32* %13, align 4
  br label %514

331:                                              ; preds = %297
  br label %332

332:                                              ; preds = %331, %290
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %8, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %8, align 4
  br label %282

336:                                              ; preds = %282
  store i32 0, i32* %8, align 4
  br label %337

337:                                              ; preds = %387, %336
  %338 = load i32, i32* %8, align 4
  %339 = load i32, i32* @HOST_REGS, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %390

341:                                              ; preds = %337
  %342 = load i32, i32* %8, align 4
  %343 = load i32, i32* @HOST_CCREG, align 4
  %344 = icmp ne i32 %342, %343
  br i1 %344, label %352, label %345

345:                                              ; preds = %341
  %346 = load i32, i32* %12, align 4
  %347 = load i64, i64* @CCREG, align 8
  %348 = getelementptr inbounds i8, i8* %157, i64 %347
  %349 = load i8, i8* %348, align 1
  %350 = zext i8 %349 to i32
  %351 = icmp slt i32 %346, %350
  br i1 %351, label %352, label %386

352:                                              ; preds = %345, %341
  %353 = load %struct.regstat*, %struct.regstat** %4, align 8
  %354 = getelementptr inbounds %struct.regstat, %struct.regstat* %353, i32 0, i32 0
  %355 = load i8*, i8** %354, align 8
  %356 = load i32, i32* %8, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i8, i8* %355, i64 %357
  %359 = load i8, i8* %358, align 1
  %360 = sext i8 %359 to i32
  %361 = load i32, i32* %7, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %385

363:                                              ; preds = %352
  %364 = load i8, i8* %6, align 1
  %365 = load %struct.regstat*, %struct.regstat** %4, align 8
  %366 = getelementptr inbounds %struct.regstat, %struct.regstat* %365, i32 0, i32 0
  %367 = load i8*, i8** %366, align 8
  %368 = load i32, i32* %8, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i8, i8* %367, i64 %369
  store i8 %364, i8* %370, align 1
  %371 = load i32, i32* %8, align 4
  %372 = shl i32 1, %371
  %373 = xor i32 %372, -1
  %374 = load %struct.regstat*, %struct.regstat** %4, align 8
  %375 = getelementptr inbounds %struct.regstat, %struct.regstat* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = and i32 %376, %373
  store i32 %377, i32* %375, align 8
  %378 = load i32, i32* %8, align 4
  %379 = shl i32 1, %378
  %380 = xor i32 %379, -1
  %381 = load %struct.regstat*, %struct.regstat** %4, align 8
  %382 = getelementptr inbounds %struct.regstat, %struct.regstat* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 4
  %384 = and i32 %383, %380
  store i32 %384, i32* %382, align 4
  store i32 1, i32* %13, align 4
  br label %514

385:                                              ; preds = %352
  br label %386

386:                                              ; preds = %385, %345
  br label %387

387:                                              ; preds = %386
  %388 = load i32, i32* %8, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %8, align 4
  br label %337

390:                                              ; preds = %337
  br label %391

391:                                              ; preds = %390, %272, %263, %254, %245, %237
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %7, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %7, align 4
  br label %233

395:                                              ; preds = %233
  br label %396

396:                                              ; preds = %395
  %397 = load i32, i32* %12, align 4
  %398 = add nsw i32 %397, -1
  store i32 %398, i32* %12, align 4
  br label %229

399:                                              ; preds = %229
  br label %400

400:                                              ; preds = %399, %152
  store i32 10, i32* %12, align 4
  br label %401

401:                                              ; preds = %508, %400
  %402 = load i32, i32* %12, align 4
  %403 = icmp sge i32 %402, 0
  br i1 %403, label %404, label %511

404:                                              ; preds = %401
  store i32 0, i32* %7, align 4
  br label %405

405:                                              ; preds = %504, %404
  %406 = load i32, i32* %7, align 4
  %407 = load i32, i32* @MAXREG, align 4
  %408 = icmp sle i32 %406, %407
  br i1 %408, label %409, label %507

409:                                              ; preds = %405
  %410 = load i32, i32* %7, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8, i8* %157, i64 %411
  %413 = load i8, i8* %412, align 1
  %414 = zext i8 %413 to i32
  %415 = load i32, i32* %12, align 4
  %416 = icmp eq i32 %414, %415
  br i1 %416, label %417, label %503

417:                                              ; preds = %409
  store i32 0, i32* %8, align 4
  br label %418

418:                                              ; preds = %457, %417
  %419 = load i32, i32* %8, align 4
  %420 = load i32, i32* @HOST_REGS, align 4
  %421 = icmp slt i32 %419, %420
  br i1 %421, label %422, label %460

422:                                              ; preds = %418
  %423 = load %struct.regstat*, %struct.regstat** %4, align 8
  %424 = getelementptr inbounds %struct.regstat, %struct.regstat* %423, i32 0, i32 0
  %425 = load i8*, i8** %424, align 8
  %426 = load i32, i32* %8, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i8, i8* %425, i64 %427
  %429 = load i8, i8* %428, align 1
  %430 = sext i8 %429 to i32
  %431 = load i32, i32* %7, align 4
  %432 = add nsw i32 %431, 64
  %433 = icmp eq i32 %430, %432
  br i1 %433, label %434, label %456

434:                                              ; preds = %422
  %435 = load i8, i8* %6, align 1
  %436 = load %struct.regstat*, %struct.regstat** %4, align 8
  %437 = getelementptr inbounds %struct.regstat, %struct.regstat* %436, i32 0, i32 0
  %438 = load i8*, i8** %437, align 8
  %439 = load i32, i32* %8, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i8, i8* %438, i64 %440
  store i8 %435, i8* %441, align 1
  %442 = load i32, i32* %8, align 4
  %443 = shl i32 1, %442
  %444 = xor i32 %443, -1
  %445 = load %struct.regstat*, %struct.regstat** %4, align 8
  %446 = getelementptr inbounds %struct.regstat, %struct.regstat* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 8
  %448 = and i32 %447, %444
  store i32 %448, i32* %446, align 8
  %449 = load i32, i32* %8, align 4
  %450 = shl i32 1, %449
  %451 = xor i32 %450, -1
  %452 = load %struct.regstat*, %struct.regstat** %4, align 8
  %453 = getelementptr inbounds %struct.regstat, %struct.regstat* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 4
  %455 = and i32 %454, %451
  store i32 %455, i32* %453, align 4
  store i32 1, i32* %13, align 4
  br label %514

456:                                              ; preds = %422
  br label %457

457:                                              ; preds = %456
  %458 = load i32, i32* %8, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %8, align 4
  br label %418

460:                                              ; preds = %418
  store i32 0, i32* %8, align 4
  br label %461

461:                                              ; preds = %499, %460
  %462 = load i32, i32* %8, align 4
  %463 = load i32, i32* @HOST_REGS, align 4
  %464 = icmp slt i32 %462, %463
  br i1 %464, label %465, label %502

465:                                              ; preds = %461
  %466 = load %struct.regstat*, %struct.regstat** %4, align 8
  %467 = getelementptr inbounds %struct.regstat, %struct.regstat* %466, i32 0, i32 0
  %468 = load i8*, i8** %467, align 8
  %469 = load i32, i32* %8, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i8, i8* %468, i64 %470
  %472 = load i8, i8* %471, align 1
  %473 = sext i8 %472 to i32
  %474 = load i32, i32* %7, align 4
  %475 = icmp eq i32 %473, %474
  br i1 %475, label %476, label %498

476:                                              ; preds = %465
  %477 = load i8, i8* %6, align 1
  %478 = load %struct.regstat*, %struct.regstat** %4, align 8
  %479 = getelementptr inbounds %struct.regstat, %struct.regstat* %478, i32 0, i32 0
  %480 = load i8*, i8** %479, align 8
  %481 = load i32, i32* %8, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i8, i8* %480, i64 %482
  store i8 %477, i8* %483, align 1
  %484 = load i32, i32* %8, align 4
  %485 = shl i32 1, %484
  %486 = xor i32 %485, -1
  %487 = load %struct.regstat*, %struct.regstat** %4, align 8
  %488 = getelementptr inbounds %struct.regstat, %struct.regstat* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 8
  %490 = and i32 %489, %486
  store i32 %490, i32* %488, align 8
  %491 = load i32, i32* %8, align 4
  %492 = shl i32 1, %491
  %493 = xor i32 %492, -1
  %494 = load %struct.regstat*, %struct.regstat** %4, align 8
  %495 = getelementptr inbounds %struct.regstat, %struct.regstat* %494, i32 0, i32 2
  %496 = load i32, i32* %495, align 4
  %497 = and i32 %496, %493
  store i32 %497, i32* %495, align 4
  store i32 1, i32* %13, align 4
  br label %514

498:                                              ; preds = %465
  br label %499

499:                                              ; preds = %498
  %500 = load i32, i32* %8, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %8, align 4
  br label %461

502:                                              ; preds = %461
  br label %503

503:                                              ; preds = %502, %409
  br label %504

504:                                              ; preds = %503
  %505 = load i32, i32* %7, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %7, align 4
  br label %405

507:                                              ; preds = %405
  br label %508

508:                                              ; preds = %507
  %509 = load i32, i32* %12, align 4
  %510 = add nsw i32 %509, -1
  store i32 %510, i32* %12, align 4
  br label %401

511:                                              ; preds = %401
  %512 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %513 = call i32 @exit(i32 1) #4
  unreachable

514:                                              ; preds = %476, %434, %363, %309
  %515 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %515)
  br label %516

516:                                              ; preds = %514, %124, %59, %34
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @lsn(i8*, i32, i32*) #2

declare dso_local i32 @printf(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
