; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_dxtn.c_dxt5_rgba_quantize.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_dxtn.c_dxt5_rgba_quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_COMP = common dso_local global i32 0, align 4
@N_TEXELS = common dso_local global i32 0, align 4
@ACOMP = common dso_local global i64 0, align 8
@dxtn_alpha_tlat = common dso_local global i32** null, align 8
@dxtn_color_tlat = common dso_local global i32** null, align 8
@BCOMP = common dso_local global i64 0, align 8
@GCOMP = common dso_local global i64 0, align 8
@RCOMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i32)* @dxt5_rgba_quantize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dxt5_rgba_quantize(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
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
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca float, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  %35 = load i32, i32* @MAX_COMP, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %8, align 8
  %38 = alloca float, i64 %36, align 16
  store i64 %36, i64* %9, align 8
  store i32 3, i32* %14, align 4
  store i32 3, i32* %15, align 4
  store i32 2000, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 2000, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %39 = load i32, i32* @N_TEXELS, align 4
  %40 = zext i32 %39 to i64
  %41 = load i32, i32* @MAX_COMP, align 4
  %42 = zext i32 %41 to i64
  %43 = mul nuw i64 %40, %42
  %44 = alloca i32, i64 %43, align 16
  store i64 %40, i64* %25, align 8
  store i64 %42, i64* %26, align 8
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %53

47:                                               ; preds = %3
  %48 = bitcast i32* %44 to i32**
  %49 = mul nuw i64 %40, %42
  %50 = mul nuw i64 4, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memset(i32** %48, i32 -1, i32 %51)
  br label %53

53:                                               ; preds = %47, %3
  store i32 0, i32* %29, align 4
  br label %54

54:                                               ; preds = %92, %53
  %55 = load i32, i32* %29, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %95

57:                                               ; preds = %54
  store i32 0, i32* %28, align 4
  br label %58

58:                                               ; preds = %88, %57
  %59 = load i32, i32* %28, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %91

61:                                               ; preds = %58
  store i32 0, i32* %27, align 4
  br label %62

62:                                               ; preds = %84, %61
  %63 = load i32, i32* %27, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %62
  %67 = load i32**, i32*** %5, align 8
  %68 = load i32, i32* %29, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %70, align 8
  %73 = load i32, i32* %71, align 4
  %74 = load i32, i32* %28, align 4
  %75 = load i32, i32* %29, align 4
  %76 = mul nsw i32 %75, 4
  %77 = add nsw i32 %74, %76
  %78 = sext i32 %77 to i64
  %79 = mul nsw i64 %78, %42
  %80 = getelementptr inbounds i32, i32* %44, i64 %79
  %81 = load i32, i32* %27, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %73, i32* %83, align 4
  br label %84

84:                                               ; preds = %66
  %85 = load i32, i32* %27, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %27, align 4
  br label %62

87:                                               ; preds = %62
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %28, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %28, align 4
  br label %58

91:                                               ; preds = %58
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %29, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %29, align 4
  br label %54

95:                                               ; preds = %54
  store i32 0, i32* %28, align 4
  br label %96

96:                                               ; preds = %189, %95
  %97 = load i32, i32* %28, align 4
  %98 = load i32, i32* @N_TEXELS, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %192

100:                                              ; preds = %96
  store i32 0, i32* %30, align 4
  store i32 0, i32* %27, align 4
  br label %101

101:                                              ; preds = %115, %100
  %102 = load i32, i32* %27, align 4
  %103 = icmp slt i32 %102, 3
  br i1 %103, label %104, label %118

104:                                              ; preds = %101
  %105 = load i32, i32* %28, align 4
  %106 = sext i32 %105 to i64
  %107 = mul nsw i64 %106, %42
  %108 = getelementptr inbounds i32, i32* %44, i64 %107
  %109 = load i32, i32* %27, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %30, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %30, align 4
  br label %115

115:                                              ; preds = %104
  %116 = load i32, i32* %27, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %27, align 4
  br label %101

118:                                              ; preds = %101
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %30, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* %30, align 4
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %28, align 4
  store i32 %124, i32* %18, align 4
  br label %125

125:                                              ; preds = %122, %118
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %30, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, i32* %30, align 4
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %28, align 4
  store i32 %131, i32* %19, align 4
  br label %132

132:                                              ; preds = %129, %125
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* %28, align 4
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %135, %42
  %137 = getelementptr inbounds i32, i32* %44, i64 %136
  %138 = load i64, i64* @ACOMP, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %133, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %132
  %143 = load i32, i32* %28, align 4
  %144 = sext i32 %143 to i64
  %145 = mul nsw i64 %144, %42
  %146 = getelementptr inbounds i32, i32* %44, i64 %145
  %147 = load i64, i64* @ACOMP, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %20, align 4
  br label %150

150:                                              ; preds = %142, %132
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* %28, align 4
  %153 = sext i32 %152 to i64
  %154 = mul nsw i64 %153, %42
  %155 = getelementptr inbounds i32, i32* %44, i64 %154
  %156 = load i64, i64* @ACOMP, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %151, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %150
  %161 = load i32, i32* %28, align 4
  %162 = sext i32 %161 to i64
  %163 = mul nsw i64 %162, %42
  %164 = getelementptr inbounds i32, i32* %44, i64 %163
  %165 = load i64, i64* @ACOMP, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %21, align 4
  br label %168

168:                                              ; preds = %160, %150
  %169 = load i32, i32* %28, align 4
  %170 = sext i32 %169 to i64
  %171 = mul nsw i64 %170, %42
  %172 = getelementptr inbounds i32, i32* %44, i64 %171
  %173 = load i64, i64* @ACOMP, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  store i32 1, i32* %22, align 4
  br label %178

178:                                              ; preds = %177, %168
  %179 = load i32, i32* %28, align 4
  %180 = sext i32 %179 to i64
  %181 = mul nsw i64 %180, %42
  %182 = getelementptr inbounds i32, i32* %44, i64 %181
  %183 = load i64, i64* @ACOMP, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 255
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  store i32 1, i32* %23, align 4
  br label %188

188:                                              ; preds = %187, %178
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %28, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %28, align 4
  br label %96

192:                                              ; preds = %96
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %21, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %205

196:                                              ; preds = %192
  %197 = load i32, i32* %20, align 4
  %198 = load i32, i32* %21, align 4
  %199 = shl i32 %198, 8
  %200 = or i32 %197, %199
  %201 = load i32*, i32** %4, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  store i32 %200, i32* %202, align 4
  %203 = load i32*, i32** %4, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  store i32 0, i32* %204, align 4
  br label %348

205:                                              ; preds = %192
  %206 = load i32, i32* %22, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %205
  %209 = load i32, i32* %20, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %21, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211, %208
  store i32 0, i32* %22, align 4
  br label %215

215:                                              ; preds = %214, %211, %205
  %216 = load i32, i32* %23, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %215
  %219 = load i32, i32* %20, align 4
  %220 = icmp eq i32 %219, 255
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %21, align 4
  %223 = icmp eq i32 %222, 255
  br i1 %223, label %224, label %225

224:                                              ; preds = %221, %218
  store i32 0, i32* %23, align 4
  br label %225

225:                                              ; preds = %224, %221, %215
  %226 = load i32, i32* %22, align 4
  %227 = load i32, i32* %23, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* %20, align 4
  %230 = load i32, i32* %21, align 4
  %231 = icmp sle i32 %229, %230
  %232 = zext i1 %231 to i32
  %233 = xor i32 %228, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %225
  %236 = load i32, i32* %20, align 4
  store i32 %236, i32* %31, align 4
  %237 = load i32, i32* %21, align 4
  store i32 %237, i32* %20, align 4
  %238 = load i32, i32* %31, align 4
  store i32 %238, i32* %21, align 4
  br label %239

239:                                              ; preds = %235, %225
  %240 = load i32, i32* %20, align 4
  %241 = load i32, i32* %21, align 4
  %242 = icmp sle i32 %240, %241
  %243 = zext i1 %242 to i64
  %244 = select i1 %242, i32 5, i32 7
  store i32 %244, i32* %24, align 4
  %245 = load i32, i32* %24, align 4
  %246 = sitofp i32 %245 to float
  %247 = load i32, i32* %21, align 4
  %248 = load i32, i32* %20, align 4
  %249 = sub nsw i32 %247, %248
  %250 = sitofp i32 %249 to float
  %251 = fdiv float %246, %250
  %252 = load i64, i64* @ACOMP, align 8
  %253 = getelementptr inbounds float, float* %38, i64 %252
  store float %251, float* %253, align 4
  %254 = load i64, i64* @ACOMP, align 8
  %255 = getelementptr inbounds float, float* %38, i64 %254
  %256 = load float, float* %255, align 4
  %257 = fneg float %256
  %258 = load i32, i32* %20, align 4
  %259 = sitofp i32 %258 to float
  %260 = fmul float %257, %259
  %261 = fadd float %260, 5.000000e-01
  store float %261, float* %7, align 4
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @Q_MOV32(i32 %262, i32 0)
  %264 = load i32, i32* @N_TEXELS, align 4
  %265 = sub nsw i32 %264, 1
  store i32 %265, i32* %28, align 4
  br label %266

266:                                              ; preds = %333, %239
  %267 = load i32, i32* %28, align 4
  %268 = icmp sge i32 %267, 0
  br i1 %268, label %269, label %336

269:                                              ; preds = %266
  store i32 -1, i32* %32, align 4
  %270 = load i32, i32* %22, align 4
  %271 = load i32, i32* %23, align 4
  %272 = or i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %296

274:                                              ; preds = %269
  %275 = load i32, i32* %28, align 4
  %276 = sext i32 %275 to i64
  %277 = mul nsw i64 %276, %42
  %278 = getelementptr inbounds i32, i32* %44, i64 %277
  %279 = load i64, i64* @ACOMP, align 8
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %274
  store i32 6, i32* %32, align 4
  br label %295

284:                                              ; preds = %274
  %285 = load i32, i32* %28, align 4
  %286 = sext i32 %285 to i64
  %287 = mul nsw i64 %286, %42
  %288 = getelementptr inbounds i32, i32* %44, i64 %287
  %289 = load i64, i64* @ACOMP, align 8
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %291, 255
  br i1 %292, label %293, label %294

293:                                              ; preds = %284
  store i32 7, i32* %32, align 4
  br label %294

294:                                              ; preds = %293, %284
  br label %295

295:                                              ; preds = %294, %283
  br label %296

296:                                              ; preds = %295, %269
  %297 = load i32, i32* %32, align 4
  %298 = icmp eq i32 %297, -1
  br i1 %298, label %299, label %327

299:                                              ; preds = %296
  %300 = load i32, i32* %28, align 4
  %301 = sext i32 %300 to i64
  %302 = mul nsw i64 %301, %42
  %303 = getelementptr inbounds i32, i32* %44, i64 %302
  %304 = load i64, i64* @ACOMP, align 8
  %305 = getelementptr inbounds i32, i32* %303, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = sitofp i32 %306 to float
  %308 = load i64, i64* @ACOMP, align 8
  %309 = getelementptr inbounds float, float* %38, i64 %308
  %310 = load float, float* %309, align 4
  %311 = fmul float %307, %310
  store float %311, float* %33, align 4
  %312 = load float, float* %33, align 4
  %313 = load float, float* %7, align 4
  %314 = fadd float %312, %313
  %315 = fptosi float %314 to i32
  store i32 %315, i32* %32, align 4
  %316 = load i32**, i32*** @dxtn_alpha_tlat, align 8
  %317 = load i32, i32* %22, align 4
  %318 = load i32, i32* %23, align 4
  %319 = or i32 %317, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32*, i32** %316, i64 %320
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %32, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32, i32* %325, align 4
  store i32 %326, i32* %32, align 4
  br label %327

327:                                              ; preds = %299, %296
  %328 = load i32, i32* %10, align 4
  %329 = call i32 @Q_SHL(i32 %328, i32 3)
  %330 = load i32, i32* %10, align 4
  %331 = load i32, i32* %32, align 4
  %332 = call i32 @Q_OR32(i32 %330, i32 %331)
  br label %333

333:                                              ; preds = %327
  %334 = load i32, i32* %28, align 4
  %335 = add nsw i32 %334, -1
  store i32 %335, i32* %28, align 4
  br label %266

336:                                              ; preds = %266
  %337 = load i32, i32* %10, align 4
  %338 = call i32 @Q_SHL(i32 %337, i32 16)
  %339 = load i32, i32* %10, align 4
  %340 = load i32, i32* %20, align 4
  %341 = load i32, i32* %21, align 4
  %342 = shl i32 %341, 8
  %343 = or i32 %340, %342
  %344 = call i32 @Q_OR32(i32 %339, i32 %343)
  %345 = load i32, i32* %10, align 4
  %346 = load i32*, i32** %4, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 0
  store i32 %345, i32* %347, align 4
  br label %348

348:                                              ; preds = %336, %196
  %349 = load i32, i32* %18, align 4
  %350 = sext i32 %349 to i64
  %351 = mul nsw i64 %350, %42
  %352 = getelementptr inbounds i32, i32* %44, i64 %351
  %353 = call i32 @COLOR565(i32* %352)
  store i32 %353, i32* %12, align 4
  %354 = load i32, i32* %19, align 4
  %355 = sext i32 %354 to i64
  %356 = mul nsw i64 %355, %42
  %357 = getelementptr inbounds i32, i32* %44, i64 %356
  %358 = call i32 @COLOR565(i32* %357)
  store i32 %358, i32* %13, align 4
  %359 = load i32, i32* %12, align 4
  %360 = load i32, i32* %13, align 4
  %361 = shl i32 %360, 16
  %362 = or i32 %359, %361
  %363 = load i32*, i32** %4, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 2
  store i32 %362, i32* %364, align 4
  store i32 0, i32* %11, align 4
  %365 = load i32, i32* %12, align 4
  %366 = load i32, i32* %13, align 4
  %367 = icmp ne i32 %365, %366
  br i1 %367, label %368, label %408

368:                                              ; preds = %348
  %369 = load float, float* %7, align 4
  %370 = load i32, i32* %18, align 4
  %371 = sext i32 %370 to i64
  %372 = mul nsw i64 %371, %42
  %373 = getelementptr inbounds i32, i32* %44, i64 %372
  %374 = load i32, i32* %19, align 4
  %375 = sext i32 %374 to i64
  %376 = mul nsw i64 %375, %42
  %377 = getelementptr inbounds i32, i32* %44, i64 %376
  %378 = call i32 @MAKEIVEC(i32 3, i32 3, float* %38, float %369, i32* %373, i32* %377)
  %379 = load i32, i32* @N_TEXELS, align 4
  %380 = sub nsw i32 %379, 1
  store i32 %380, i32* %28, align 4
  br label %381

381:                                              ; preds = %404, %368
  %382 = load i32, i32* %28, align 4
  %383 = icmp sge i32 %382, 0
  br i1 %383, label %384, label %407

384:                                              ; preds = %381
  %385 = load i32, i32* %34, align 4
  %386 = load float, float* %7, align 4
  %387 = load i32, i32* %28, align 4
  %388 = sext i32 %387 to i64
  %389 = mul nsw i64 %388, %42
  %390 = getelementptr inbounds i32, i32* %44, i64 %389
  %391 = call i32 @CALCCDOT(i32 %385, i32 3, i32 3, float* %38, float %386, i32* %390)
  %392 = load i32**, i32*** @dxtn_color_tlat, align 8
  %393 = getelementptr inbounds i32*, i32** %392, i64 0
  %394 = load i32*, i32** %393, align 8
  %395 = load i32, i32* %34, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  %398 = load i32, i32* %397, align 4
  store i32 %398, i32* %34, align 4
  %399 = load i32, i32* %11, align 4
  %400 = shl i32 %399, 2
  store i32 %400, i32* %11, align 4
  %401 = load i32, i32* %34, align 4
  %402 = load i32, i32* %11, align 4
  %403 = or i32 %402, %401
  store i32 %403, i32* %11, align 4
  br label %404

404:                                              ; preds = %384
  %405 = load i32, i32* %28, align 4
  %406 = add nsw i32 %405, -1
  store i32 %406, i32* %28, align 4
  br label %381

407:                                              ; preds = %381
  br label %408

408:                                              ; preds = %407, %348
  %409 = load i32, i32* %11, align 4
  %410 = load i32*, i32** %4, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 3
  store i32 %409, i32* %411, align 4
  %412 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %412)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @Q_MOV32(i32, i32) #2

declare dso_local i32 @Q_SHL(i32, i32) #2

declare dso_local i32 @Q_OR32(i32, i32) #2

declare dso_local i32 @COLOR565(i32*) #2

declare dso_local i32 @MAKEIVEC(i32, i32, float*, float, i32*, i32*) #2

declare dso_local i32 @CALCCDOT(i32, i32, i32, float*, float, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
