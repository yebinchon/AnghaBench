; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_quantize_MIXED1.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_quantize_MIXED1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N_TEXELS = common dso_local global i32 0, align 4
@MAX_COMP = common dso_local global i32 0, align 4
@GCOMP = common dso_local global i64 0, align 8
@BCOMP = common dso_local global i64 0, align 8
@RCOMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @fxt1_quantize_MIXED1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxt1_quantize_MIXED1(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca float, align 4
  %10 = alloca i64, align 8
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
  %26 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %27 = load i32, i32* @N_TEXELS, align 4
  %28 = zext i32 %27 to i64
  %29 = load i32, i32* @MAX_COMP, align 4
  %30 = zext i32 %29 to i64
  store i32 2, i32* %5, align 4
  store i32 3, i32* %6, align 4
  %31 = load i32, i32* @MAX_COMP, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %7, align 8
  %34 = mul nuw i64 4, %32
  %35 = alloca i32, i64 %34, align 16
  store i64 %32, i64* %8, align 8
  %36 = load i32, i32* @MAX_COMP, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca float, i64 %37, align 16
  store i64 %37, i64* %10, align 8
  store i32 0, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 -1, i32* %22, align 4
  store i32 2000, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %87, %2
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @N_TEXELS, align 4
  %42 = sdiv i32 %41, 2
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %90

44:                                               ; preds = %39
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %47, %30
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = call i32 @ISTBLACK(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %86, label %52

52:                                               ; preds = %44
  store i32 0, i32* %23, align 4
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %68, %52
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 3
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %59, %30
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %23, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %23, align 4
  br label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %53

71:                                               ; preds = %53
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %23, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %23, align 4
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %19, align 4
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %23, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* %23, align 4
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %20, align 4
  br label %85

85:                                               ; preds = %82, %78
  br label %86

86:                                               ; preds = %85, %44
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %39

90:                                               ; preds = %39
  store i32 2000, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  br label %91

91:                                               ; preds = %138, %90
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @N_TEXELS, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %141

95:                                               ; preds = %91
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = mul nsw i64 %98, %30
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = call i32 @ISTBLACK(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %137, label %103

103:                                              ; preds = %95
  store i32 0, i32* %24, align 4
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %119, %103
  %105 = load i32, i32* %11, align 4
  %106 = icmp slt i32 %105, 3
  br i1 %106, label %107, label %122

107:                                              ; preds = %104
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = mul nsw i64 %110, %30
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %24, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %24, align 4
  br label %119

119:                                              ; preds = %107
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %104

122:                                              ; preds = %104
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %24, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* %24, align 4
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %21, align 4
  br label %129

129:                                              ; preds = %126, %122
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %24, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32, i32* %24, align 4
  store i32 %134, i32* %18, align 4
  %135 = load i32, i32* %13, align 4
  store i32 %135, i32* %22, align 4
  br label %136

136:                                              ; preds = %133, %129
  br label %137

137:                                              ; preds = %136, %95
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %91

141:                                              ; preds = %91
  %142 = load i32, i32* %20, align 4
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %165

144:                                              ; preds = %141
  %145 = load i32*, i32** %3, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 -1, i32* %146, align 4
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %161, %144
  %148 = load i32, i32* %11, align 4
  %149 = icmp slt i32 %148, 3
  br i1 %149, label %150, label %164

150:                                              ; preds = %147
  %151 = mul nsw i64 0, %32
  %152 = getelementptr inbounds i32, i32* %35, i64 %151
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 0, i32* %155, align 4
  %156 = mul nsw i64 1, %32
  %157 = getelementptr inbounds i32, i32* %35, i64 %156
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 0, i32* %160, align 4
  br label %161

161:                                              ; preds = %150
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %147

164:                                              ; preds = %147
  br label %251

165:                                              ; preds = %141
  %166 = load i32*, i32** %3, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 0, i32* %167, align 4
  store i32 0, i32* %11, align 4
  br label %168

168:                                              ; preds = %200, %165
  %169 = load i32, i32* %11, align 4
  %170 = icmp slt i32 %169, 3
  br i1 %170, label %171, label %203

171:                                              ; preds = %168
  %172 = load i32*, i32** %4, align 8
  %173 = load i32, i32* %19, align 4
  %174 = sext i32 %173 to i64
  %175 = mul nsw i64 %174, %30
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i64 0, %32
  %182 = getelementptr inbounds i32, i32* %35, i64 %181
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %180, i32* %185, align 4
  %186 = load i32*, i32** %4, align 8
  %187 = load i32, i32* %20, align 4
  %188 = sext i32 %187 to i64
  %189 = mul nsw i64 %188, %30
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i64 1, %32
  %196 = getelementptr inbounds i32, i32* %35, i64 %195
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 %194, i32* %199, align 4
  br label %200

200:                                              ; preds = %171
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %11, align 4
  br label %168

203:                                              ; preds = %168
  %204 = load i32, i32* %19, align 4
  %205 = load i32, i32* %20, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %250

207:                                              ; preds = %203
  %208 = load float, float* %9, align 4
  %209 = mul nsw i64 0, %32
  %210 = getelementptr inbounds i32, i32* %35, i64 %209
  %211 = mul nsw i64 1, %32
  %212 = getelementptr inbounds i32, i32* %35, i64 %211
  %213 = call i32 @MAKEIVEC(i32 2, i32 3, float* %38, float %208, i32* %210, i32* %212)
  store i32 0, i32* %16, align 4
  %214 = load i32, i32* @N_TEXELS, align 4
  %215 = sdiv i32 %214, 2
  %216 = sub nsw i32 %215, 1
  store i32 %216, i32* %13, align 4
  br label %217

217:                                              ; preds = %243, %207
  %218 = load i32, i32* %13, align 4
  %219 = icmp sge i32 %218, 0
  br i1 %219, label %220, label %246

220:                                              ; preds = %217
  store i32 3, i32* %25, align 4
  %221 = load i32*, i32** %4, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = mul nsw i64 %223, %30
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = call i32 @ISTBLACK(i32* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %237, label %228

228:                                              ; preds = %220
  %229 = load i32, i32* %25, align 4
  %230 = load float, float* %9, align 4
  %231 = load i32*, i32** %4, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = mul nsw i64 %233, %30
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  %236 = call i32 @CALCCDOT(i32 %229, i32 2, i32 3, float* %38, float %230, i32* %235)
  br label %237

237:                                              ; preds = %228, %220
  %238 = load i32, i32* %16, align 4
  %239 = shl i32 %238, 2
  store i32 %239, i32* %16, align 4
  %240 = load i32, i32* %25, align 4
  %241 = load i32, i32* %16, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %16, align 4
  br label %243

243:                                              ; preds = %237
  %244 = load i32, i32* %13, align 4
  %245 = add nsw i32 %244, -1
  store i32 %245, i32* %13, align 4
  br label %217

246:                                              ; preds = %217
  %247 = load i32, i32* %16, align 4
  %248 = load i32*, i32** %3, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  store i32 %247, i32* %249, align 4
  br label %250

250:                                              ; preds = %246, %203
  br label %251

251:                                              ; preds = %250, %164
  %252 = load i32, i32* %22, align 4
  %253 = icmp eq i32 %252, -1
  br i1 %253, label %254, label %275

254:                                              ; preds = %251
  %255 = load i32*, i32** %3, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 1
  store i32 -1, i32* %256, align 4
  store i32 0, i32* %11, align 4
  br label %257

257:                                              ; preds = %271, %254
  %258 = load i32, i32* %11, align 4
  %259 = icmp slt i32 %258, 3
  br i1 %259, label %260, label %274

260:                                              ; preds = %257
  %261 = mul nsw i64 2, %32
  %262 = getelementptr inbounds i32, i32* %35, i64 %261
  %263 = load i32, i32* %11, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  store i32 0, i32* %265, align 4
  %266 = mul nsw i64 3, %32
  %267 = getelementptr inbounds i32, i32* %35, i64 %266
  %268 = load i32, i32* %11, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  store i32 0, i32* %270, align 4
  br label %271

271:                                              ; preds = %260
  %272 = load i32, i32* %11, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %11, align 4
  br label %257

274:                                              ; preds = %257
  br label %362

275:                                              ; preds = %251
  %276 = load i32*, i32** %3, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 1
  store i32 0, i32* %277, align 4
  store i32 0, i32* %11, align 4
  br label %278

278:                                              ; preds = %310, %275
  %279 = load i32, i32* %11, align 4
  %280 = icmp slt i32 %279, 3
  br i1 %280, label %281, label %313

281:                                              ; preds = %278
  %282 = load i32*, i32** %4, align 8
  %283 = load i32, i32* %21, align 4
  %284 = sext i32 %283 to i64
  %285 = mul nsw i64 %284, %30
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = mul nsw i64 2, %32
  %292 = getelementptr inbounds i32, i32* %35, i64 %291
  %293 = load i32, i32* %11, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  store i32 %290, i32* %295, align 4
  %296 = load i32*, i32** %4, align 8
  %297 = load i32, i32* %22, align 4
  %298 = sext i32 %297 to i64
  %299 = mul nsw i64 %298, %30
  %300 = getelementptr inbounds i32, i32* %296, i64 %299
  %301 = load i32, i32* %11, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = mul nsw i64 3, %32
  %306 = getelementptr inbounds i32, i32* %35, i64 %305
  %307 = load i32, i32* %11, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  store i32 %304, i32* %309, align 4
  br label %310

310:                                              ; preds = %281
  %311 = load i32, i32* %11, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %11, align 4
  br label %278

313:                                              ; preds = %278
  %314 = load i32, i32* %21, align 4
  %315 = load i32, i32* %22, align 4
  %316 = icmp ne i32 %314, %315
  br i1 %316, label %317, label %361

317:                                              ; preds = %313
  %318 = load float, float* %9, align 4
  %319 = mul nsw i64 2, %32
  %320 = getelementptr inbounds i32, i32* %35, i64 %319
  %321 = mul nsw i64 3, %32
  %322 = getelementptr inbounds i32, i32* %35, i64 %321
  %323 = call i32 @MAKEIVEC(i32 2, i32 3, float* %38, float %318, i32* %320, i32* %322)
  store i32 0, i32* %15, align 4
  %324 = load i32, i32* @N_TEXELS, align 4
  %325 = sub nsw i32 %324, 1
  store i32 %325, i32* %13, align 4
  br label %326

326:                                              ; preds = %354, %317
  %327 = load i32, i32* %13, align 4
  %328 = load i32, i32* @N_TEXELS, align 4
  %329 = sdiv i32 %328, 2
  %330 = icmp sge i32 %327, %329
  br i1 %330, label %331, label %357

331:                                              ; preds = %326
  store i32 3, i32* %26, align 4
  %332 = load i32*, i32** %4, align 8
  %333 = load i32, i32* %13, align 4
  %334 = sext i32 %333 to i64
  %335 = mul nsw i64 %334, %30
  %336 = getelementptr inbounds i32, i32* %332, i64 %335
  %337 = call i32 @ISTBLACK(i32* %336)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %348, label %339

339:                                              ; preds = %331
  %340 = load i32, i32* %26, align 4
  %341 = load float, float* %9, align 4
  %342 = load i32*, i32** %4, align 8
  %343 = load i32, i32* %13, align 4
  %344 = sext i32 %343 to i64
  %345 = mul nsw i64 %344, %30
  %346 = getelementptr inbounds i32, i32* %342, i64 %345
  %347 = call i32 @CALCCDOT(i32 %340, i32 2, i32 3, float* %38, float %341, i32* %346)
  br label %348

348:                                              ; preds = %339, %331
  %349 = load i32, i32* %15, align 4
  %350 = shl i32 %349, 2
  store i32 %350, i32* %15, align 4
  %351 = load i32, i32* %26, align 4
  %352 = load i32, i32* %15, align 4
  %353 = or i32 %352, %351
  store i32 %353, i32* %15, align 4
  br label %354

354:                                              ; preds = %348
  %355 = load i32, i32* %13, align 4
  %356 = add nsw i32 %355, -1
  store i32 %356, i32* %13, align 4
  br label %326

357:                                              ; preds = %326
  %358 = load i32, i32* %15, align 4
  %359 = load i32*, i32** %3, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 1
  store i32 %358, i32* %360, align 4
  br label %361

361:                                              ; preds = %357, %313
  br label %362

362:                                              ; preds = %361, %274
  %363 = load i32, i32* %14, align 4
  %364 = mul nsw i64 3, %32
  %365 = getelementptr inbounds i32, i32* %35, i64 %364
  %366 = load i64, i64* @GCOMP, align 8
  %367 = getelementptr inbounds i32, i32* %365, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = and i32 %368, 4
  %370 = or i32 9, %369
  %371 = mul nsw i64 1, %32
  %372 = getelementptr inbounds i32, i32* %35, i64 %371
  %373 = load i64, i64* @GCOMP, align 8
  %374 = getelementptr inbounds i32, i32* %372, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = ashr i32 %375, 1
  %377 = and i32 %376, 2
  %378 = or i32 %370, %377
  %379 = call i32 @Q_MOV32(i32 %363, i32 %378)
  store i32 3, i32* %12, align 4
  br label %380

380:                                              ; preds = %405, %362
  %381 = load i32, i32* %12, align 4
  %382 = icmp sge i32 %381, 0
  br i1 %382, label %383, label %408

383:                                              ; preds = %380
  store i32 0, i32* %11, align 4
  br label %384

384:                                              ; preds = %401, %383
  %385 = load i32, i32* %11, align 4
  %386 = icmp slt i32 %385, 3
  br i1 %386, label %387, label %404

387:                                              ; preds = %384
  %388 = load i32, i32* %14, align 4
  %389 = call i32 @Q_SHL(i32 %388, i32 5)
  %390 = load i32, i32* %14, align 4
  %391 = load i32, i32* %12, align 4
  %392 = sext i32 %391 to i64
  %393 = mul nsw i64 %392, %32
  %394 = getelementptr inbounds i32, i32* %35, i64 %393
  %395 = load i32, i32* %11, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = ashr i32 %398, 3
  %400 = call i32 @Q_OR32(i32 %390, i32 %399)
  br label %401

401:                                              ; preds = %387
  %402 = load i32, i32* %11, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %11, align 4
  br label %384

404:                                              ; preds = %384
  br label %405

405:                                              ; preds = %404
  %406 = load i32, i32* %12, align 4
  %407 = add nsw i32 %406, -1
  store i32 %407, i32* %12, align 4
  br label %380

408:                                              ; preds = %380
  %409 = load i32, i32* %14, align 4
  %410 = load i32*, i32** %3, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 1
  store i32 %409, i32* %411, align 4
  %412 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %412)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ISTBLACK(i32*) #2

declare dso_local i32 @MAKEIVEC(i32, i32, float*, float, i32*, i32*) #2

declare dso_local i32 @CALCCDOT(i32, i32, i32, float*, float, i32*) #2

declare dso_local i32 @Q_MOV32(i32, i32) #2

declare dso_local i32 @Q_SHL(i32, i32) #2

declare dso_local i32 @Q_OR32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
