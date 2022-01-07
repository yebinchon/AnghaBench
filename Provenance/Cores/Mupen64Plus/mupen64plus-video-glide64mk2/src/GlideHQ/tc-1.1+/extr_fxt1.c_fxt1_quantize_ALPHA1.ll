; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_quantize_ALPHA1.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_quantize_ALPHA1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N_TEXELS = common dso_local global i32 0, align 4
@MAX_COMP = common dso_local global i32 0, align 4
@ACOMP = common dso_local global i64 0, align 8
@BCOMP = common dso_local global i64 0, align 8
@GCOMP = common dso_local global i64 0, align 8
@RCOMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @fxt1_quantize_ALPHA1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxt1_quantize_ALPHA1(i32* %0, i32* %1) #0 {
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca float, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca float, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %37 = load i32, i32* @N_TEXELS, align 4
  %38 = zext i32 %37 to i64
  %39 = load i32, i32* @MAX_COMP, align 4
  %40 = zext i32 %39 to i64
  store i32 3, i32* %5, align 4
  store i32 4, i32* %6, align 4
  %41 = load i32, i32* @MAX_COMP, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %7, align 8
  %44 = mul nuw i64 3, %42
  %45 = alloca float, i64 %44, align 16
  store i64 %42, i64* %8, align 8
  %46 = load i32, i32* @MAX_COMP, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca float, i64 %47, align 16
  store i64 %47, i64* %10, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 2000, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %91, %2
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @N_TEXELS, align 4
  %52 = sdiv i32 %51, 2
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %94

54:                                               ; preds = %49
  store i32 0, i32* %25, align 4
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %70, %54
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %61, %40
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %25, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %25, align 4
  br label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %55

73:                                               ; preds = %55
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %25, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* %25, align 4
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %19, align 4
  br label %80

80:                                               ; preds = %77, %73
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %25, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* %25, align 4
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %20, align 4
  br label %87

87:                                               ; preds = %84, %80
  %88 = load i32, i32* %25, align 4
  %89 = load i32, i32* %23, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %23, align 4
  br label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %49

94:                                               ; preds = %49
  store i32 2000, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  br label %95

95:                                               ; preds = %136, %94
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @N_TEXELS, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %139

99:                                               ; preds = %95
  store i32 0, i32* %26, align 4
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %115, %99
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 4
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = mul nsw i64 %106, %40
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %26, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %26, align 4
  br label %115

115:                                              ; preds = %103
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %100

118:                                              ; preds = %100
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %26, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* %26, align 4
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %13, align 4
  store i32 %124, i32* %21, align 4
  br label %125

125:                                              ; preds = %122, %118
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %26, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, i32* %26, align 4
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %13, align 4
  store i32 %131, i32* %22, align 4
  br label %132

132:                                              ; preds = %129, %125
  %133 = load i32, i32* %26, align 4
  %134 = load i32, i32* %24, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %24, align 4
  br label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %95

139:                                              ; preds = %95
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store float 1.000000e+09, float* %31, align 4
  %140 = load i32, i32* @MAX_COMP, align 4
  %141 = zext i32 %140 to i64
  %142 = call i8* @llvm.stacksave()
  store i8* %142, i8** %32, align 8
  %143 = mul nuw i64 4, %141
  %144 = alloca float, i64 %143, align 16
  store i64 %141, i64* %33, align 8
  store i32 0, i32* %11, align 4
  br label %145

145:                                              ; preds = %209, %139
  %146 = load i32, i32* %11, align 4
  %147 = icmp slt i32 %146, 4
  br i1 %147, label %148, label %212

148:                                              ; preds = %145
  %149 = load i32*, i32** %4, align 8
  %150 = load i32, i32* %19, align 4
  %151 = sext i32 %150 to i64
  %152 = mul nsw i64 %151, %40
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = sitofp i32 %157 to float
  %159 = mul nsw i64 0, %141
  %160 = getelementptr inbounds float, float* %144, i64 %159
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %160, i64 %162
  store float %158, float* %163, align 4
  %164 = load i32*, i32** %4, align 8
  %165 = load i32, i32* %20, align 4
  %166 = sext i32 %165 to i64
  %167 = mul nsw i64 %166, %40
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = sitofp i32 %172 to float
  %174 = mul nsw i64 1, %141
  %175 = getelementptr inbounds float, float* %144, i64 %174
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %175, i64 %177
  store float %173, float* %178, align 4
  %179 = load i32*, i32** %4, align 8
  %180 = load i32, i32* %21, align 4
  %181 = sext i32 %180 to i64
  %182 = mul nsw i64 %181, %40
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = sitofp i32 %187 to float
  %189 = mul nsw i64 2, %141
  %190 = getelementptr inbounds float, float* %144, i64 %189
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %190, i64 %192
  store float %188, float* %193, align 4
  %194 = load i32*, i32** %4, align 8
  %195 = load i32, i32* %22, align 4
  %196 = sext i32 %195 to i64
  %197 = mul nsw i64 %196, %40
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = sitofp i32 %202 to float
  %204 = mul nsw i64 3, %141
  %205 = getelementptr inbounds float, float* %144, i64 %204
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %205, i64 %207
  store float %203, float* %208, align 4
  br label %209

209:                                              ; preds = %148
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  br label %145

212:                                              ; preds = %145
  store i32 0, i32* %27, align 4
  br label %213

213:                                              ; preds = %278, %212
  %214 = load i32, i32* %27, align 4
  %215 = icmp slt i32 %214, 2
  br i1 %215, label %216, label %281

216:                                              ; preds = %213
  store i32 2, i32* %28, align 4
  br label %217

217:                                              ; preds = %274, %216
  %218 = load i32, i32* %28, align 4
  %219 = icmp slt i32 %218, 4
  br i1 %219, label %220, label %277

220:                                              ; preds = %217
  store float 0.000000e+00, float* %34, align 4
  store i32 0, i32* %11, align 4
  br label %221

221:                                              ; preds = %262, %220
  %222 = load i32, i32* %11, align 4
  %223 = icmp slt i32 %222, 4
  br i1 %223, label %224, label %265

224:                                              ; preds = %221
  %225 = load i32, i32* %27, align 4
  %226 = sext i32 %225 to i64
  %227 = mul nsw i64 %226, %141
  %228 = getelementptr inbounds float, float* %144, i64 %227
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds float, float* %228, i64 %230
  %232 = load float, float* %231, align 4
  %233 = load i32, i32* %28, align 4
  %234 = sext i32 %233 to i64
  %235 = mul nsw i64 %234, %141
  %236 = getelementptr inbounds float, float* %144, i64 %235
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %236, i64 %238
  %240 = load float, float* %239, align 4
  %241 = fsub float %232, %240
  %242 = load i32, i32* %27, align 4
  %243 = sext i32 %242 to i64
  %244 = mul nsw i64 %243, %141
  %245 = getelementptr inbounds float, float* %144, i64 %244
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %245, i64 %247
  %249 = load float, float* %248, align 4
  %250 = load i32, i32* %28, align 4
  %251 = sext i32 %250 to i64
  %252 = mul nsw i64 %251, %141
  %253 = getelementptr inbounds float, float* %144, i64 %252
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %253, i64 %255
  %257 = load float, float* %256, align 4
  %258 = fsub float %249, %257
  %259 = fmul float %241, %258
  %260 = load float, float* %34, align 4
  %261 = fadd float %260, %259
  store float %261, float* %34, align 4
  br label %262

262:                                              ; preds = %224
  %263 = load i32, i32* %11, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %11, align 4
  br label %221

265:                                              ; preds = %221
  %266 = load float, float* %34, align 4
  %267 = load float, float* %31, align 4
  %268 = fcmp olt float %266, %267
  br i1 %268, label %269, label %273

269:                                              ; preds = %265
  %270 = load float, float* %34, align 4
  store float %270, float* %31, align 4
  %271 = load i32, i32* %27, align 4
  store i32 %271, i32* %29, align 4
  %272 = load i32, i32* %28, align 4
  store i32 %272, i32* %30, align 4
  br label %273

273:                                              ; preds = %269, %265
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %28, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %28, align 4
  br label %217

277:                                              ; preds = %217
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %27, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %27, align 4
  br label %213

281:                                              ; preds = %213
  store i32 0, i32* %11, align 4
  br label %282

282:                                              ; preds = %347, %281
  %283 = load i32, i32* %11, align 4
  %284 = icmp slt i32 %283, 4
  br i1 %284, label %285, label %350

285:                                              ; preds = %282
  %286 = load i32, i32* %29, align 4
  %287 = sub nsw i32 1, %286
  %288 = sext i32 %287 to i64
  %289 = mul nsw i64 %288, %141
  %290 = getelementptr inbounds float, float* %144, i64 %289
  %291 = load i32, i32* %11, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds float, float* %290, i64 %292
  %294 = load float, float* %293, align 4
  %295 = mul nsw i64 0, %42
  %296 = getelementptr inbounds float, float* %45, i64 %295
  %297 = load i32, i32* %11, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float, float* %296, i64 %298
  store float %294, float* %299, align 4
  %300 = load i32, i32* %29, align 4
  %301 = sext i32 %300 to i64
  %302 = mul nsw i64 %301, %141
  %303 = getelementptr inbounds float, float* %144, i64 %302
  %304 = load i32, i32* %11, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds float, float* %303, i64 %305
  %307 = load float, float* %306, align 4
  %308 = load i32, i32* %23, align 4
  %309 = sitofp i32 %308 to float
  %310 = fmul float %307, %309
  %311 = load i32, i32* %30, align 4
  %312 = sext i32 %311 to i64
  %313 = mul nsw i64 %312, %141
  %314 = getelementptr inbounds float, float* %144, i64 %313
  %315 = load i32, i32* %11, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds float, float* %314, i64 %316
  %318 = load float, float* %317, align 4
  %319 = load i32, i32* %24, align 4
  %320 = sitofp i32 %319 to float
  %321 = fmul float %318, %320
  %322 = fadd float %310, %321
  %323 = load i32, i32* %23, align 4
  %324 = load i32, i32* %24, align 4
  %325 = add nsw i32 %323, %324
  %326 = sitofp i32 %325 to float
  %327 = fdiv float %322, %326
  %328 = mul nsw i64 1, %42
  %329 = getelementptr inbounds float, float* %45, i64 %328
  %330 = load i32, i32* %11, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds float, float* %329, i64 %331
  store float %327, float* %332, align 4
  %333 = load i32, i32* %30, align 4
  %334 = sub nsw i32 5, %333
  %335 = sext i32 %334 to i64
  %336 = mul nsw i64 %335, %141
  %337 = getelementptr inbounds float, float* %144, i64 %336
  %338 = load i32, i32* %11, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds float, float* %337, i64 %339
  %341 = load float, float* %340, align 4
  %342 = mul nsw i64 2, %42
  %343 = getelementptr inbounds float, float* %45, i64 %342
  %344 = load i32, i32* %11, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds float, float* %343, i64 %345
  store float %341, float* %346, align 4
  br label %347

347:                                              ; preds = %285
  %348 = load i32, i32* %11, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %11, align 4
  br label %282

350:                                              ; preds = %282
  %351 = load i8*, i8** %32, align 8
  call void @llvm.stackrestore(i8* %351)
  %352 = load i32*, i32** %3, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 0
  store i32 0, i32* %353, align 4
  %354 = load i32, i32* %19, align 4
  %355 = load i32, i32* %20, align 4
  %356 = icmp ne i32 %354, %355
  br i1 %356, label %357, label %391

357:                                              ; preds = %350
  %358 = load float, float* %9, align 4
  %359 = mul nsw i64 0, %42
  %360 = getelementptr inbounds float, float* %45, i64 %359
  %361 = mul nsw i64 1, %42
  %362 = getelementptr inbounds float, float* %45, i64 %361
  %363 = call i32 @MAKEIVEC(i32 3, i32 4, float* %48, float %358, float* %360, float* %362)
  store i32 0, i32* %16, align 4
  %364 = load i32, i32* @N_TEXELS, align 4
  %365 = sdiv i32 %364, 2
  %366 = sub nsw i32 %365, 1
  store i32 %366, i32* %13, align 4
  br label %367

367:                                              ; preds = %384, %357
  %368 = load i32, i32* %13, align 4
  %369 = icmp sge i32 %368, 0
  br i1 %369, label %370, label %387

370:                                              ; preds = %367
  %371 = load i32, i32* %35, align 4
  %372 = load float, float* %9, align 4
  %373 = load i32*, i32** %4, align 8
  %374 = load i32, i32* %13, align 4
  %375 = sext i32 %374 to i64
  %376 = mul nsw i64 %375, %40
  %377 = getelementptr inbounds i32, i32* %373, i64 %376
  %378 = call i32 @CALCCDOT(i32 %371, i32 3, i32 4, float* %48, float %372, i32* %377)
  %379 = load i32, i32* %16, align 4
  %380 = shl i32 %379, 2
  store i32 %380, i32* %16, align 4
  %381 = load i32, i32* %35, align 4
  %382 = load i32, i32* %16, align 4
  %383 = or i32 %382, %381
  store i32 %383, i32* %16, align 4
  br label %384

384:                                              ; preds = %370
  %385 = load i32, i32* %13, align 4
  %386 = add nsw i32 %385, -1
  store i32 %386, i32* %13, align 4
  br label %367

387:                                              ; preds = %367
  %388 = load i32, i32* %16, align 4
  %389 = load i32*, i32** %3, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 0
  store i32 %388, i32* %390, align 4
  br label %391

391:                                              ; preds = %387, %350
  %392 = load i32*, i32** %3, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 1
  store i32 0, i32* %393, align 4
  %394 = load i32, i32* %21, align 4
  %395 = load i32, i32* %22, align 4
  %396 = icmp ne i32 %394, %395
  br i1 %396, label %397, label %432

397:                                              ; preds = %391
  %398 = load float, float* %9, align 4
  %399 = mul nsw i64 2, %42
  %400 = getelementptr inbounds float, float* %45, i64 %399
  %401 = mul nsw i64 1, %42
  %402 = getelementptr inbounds float, float* %45, i64 %401
  %403 = call i32 @MAKEIVEC(i32 3, i32 4, float* %48, float %398, float* %400, float* %402)
  store i32 0, i32* %15, align 4
  %404 = load i32, i32* @N_TEXELS, align 4
  %405 = sub nsw i32 %404, 1
  store i32 %405, i32* %13, align 4
  br label %406

406:                                              ; preds = %425, %397
  %407 = load i32, i32* %13, align 4
  %408 = load i32, i32* @N_TEXELS, align 4
  %409 = sdiv i32 %408, 2
  %410 = icmp sge i32 %407, %409
  br i1 %410, label %411, label %428

411:                                              ; preds = %406
  %412 = load i32, i32* %36, align 4
  %413 = load float, float* %9, align 4
  %414 = load i32*, i32** %4, align 8
  %415 = load i32, i32* %13, align 4
  %416 = sext i32 %415 to i64
  %417 = mul nsw i64 %416, %40
  %418 = getelementptr inbounds i32, i32* %414, i64 %417
  %419 = call i32 @CALCCDOT(i32 %412, i32 3, i32 4, float* %48, float %413, i32* %418)
  %420 = load i32, i32* %15, align 4
  %421 = shl i32 %420, 2
  store i32 %421, i32* %15, align 4
  %422 = load i32, i32* %36, align 4
  %423 = load i32, i32* %15, align 4
  %424 = or i32 %423, %422
  store i32 %424, i32* %15, align 4
  br label %425

425:                                              ; preds = %411
  %426 = load i32, i32* %13, align 4
  %427 = add nsw i32 %426, -1
  store i32 %427, i32* %13, align 4
  br label %406

428:                                              ; preds = %406
  %429 = load i32, i32* %15, align 4
  %430 = load i32*, i32** %3, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 1
  store i32 %429, i32* %431, align 4
  br label %432

432:                                              ; preds = %428, %391
  %433 = load i32, i32* %14, align 4
  %434 = call i32 @Q_MOV32(i32 %433, i32 7)
  store i32 2, i32* %12, align 4
  br label %435

435:                                              ; preds = %452, %432
  %436 = load i32, i32* %12, align 4
  %437 = icmp sge i32 %436, 0
  br i1 %437, label %438, label %455

438:                                              ; preds = %435
  %439 = load i32, i32* %14, align 4
  %440 = call i32 @Q_SHL(i32 %439, i32 5)
  %441 = load i32, i32* %14, align 4
  %442 = load i32, i32* %12, align 4
  %443 = sext i32 %442 to i64
  %444 = mul nsw i64 %443, %42
  %445 = getelementptr inbounds float, float* %45, i64 %444
  %446 = load i64, i64* @ACOMP, align 8
  %447 = getelementptr inbounds float, float* %445, i64 %446
  %448 = load float, float* %447, align 4
  %449 = fdiv float %448, 8.000000e+00
  %450 = fptosi float %449 to i32
  %451 = call i32 @Q_OR32(i32 %441, i32 %450)
  br label %452

452:                                              ; preds = %438
  %453 = load i32, i32* %12, align 4
  %454 = add nsw i32 %453, -1
  store i32 %454, i32* %12, align 4
  br label %435

455:                                              ; preds = %435
  store i32 2, i32* %12, align 4
  br label %456

456:                                              ; preds = %482, %455
  %457 = load i32, i32* %12, align 4
  %458 = icmp sge i32 %457, 0
  br i1 %458, label %459, label %485

459:                                              ; preds = %456
  store i32 0, i32* %11, align 4
  br label %460

460:                                              ; preds = %478, %459
  %461 = load i32, i32* %11, align 4
  %462 = icmp slt i32 %461, 3
  br i1 %462, label %463, label %481

463:                                              ; preds = %460
  %464 = load i32, i32* %14, align 4
  %465 = call i32 @Q_SHL(i32 %464, i32 5)
  %466 = load i32, i32* %14, align 4
  %467 = load i32, i32* %12, align 4
  %468 = sext i32 %467 to i64
  %469 = mul nsw i64 %468, %42
  %470 = getelementptr inbounds float, float* %45, i64 %469
  %471 = load i32, i32* %11, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds float, float* %470, i64 %472
  %474 = load float, float* %473, align 4
  %475 = fdiv float %474, 8.000000e+00
  %476 = fptosi float %475 to i32
  %477 = call i32 @Q_OR32(i32 %466, i32 %476)
  br label %478

478:                                              ; preds = %463
  %479 = load i32, i32* %11, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %11, align 4
  br label %460

481:                                              ; preds = %460
  br label %482

482:                                              ; preds = %481
  %483 = load i32, i32* %12, align 4
  %484 = add nsw i32 %483, -1
  store i32 %484, i32* %12, align 4
  br label %456

485:                                              ; preds = %456
  %486 = load i32, i32* %14, align 4
  %487 = load i32*, i32** %3, align 8
  %488 = getelementptr inbounds i32, i32* %487, i64 1
  store i32 %486, i32* %488, align 4
  %489 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %489)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @MAKEIVEC(i32, i32, float*, float, float*, float*) #2

declare dso_local i32 @CALCCDOT(i32, i32, i32, float*, float, i32*) #2

declare dso_local i32 @Q_MOV32(i32, i32) #2

declare dso_local i32 @Q_SHL(i32, i32) #2

declare dso_local i32 @Q_OR32(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
