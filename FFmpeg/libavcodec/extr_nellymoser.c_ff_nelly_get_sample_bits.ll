; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nellymoser.c_ff_nelly_get_sample_bits.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nellymoser.c_ff_nelly_get_sample_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NELLY_FILL_LEN = common dso_local global i32 0, align 4
@NELLY_DETAIL_BITS = common dso_local global i16 0, align 2
@NELLY_BASE_OFF = common dso_local global i32 0, align 4
@NELLY_BASE_SHIFT = common dso_local global i16 0, align 2
@NELLY_BIT_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_nelly_get_sample_bits(float* %0, i32* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [128 x i16], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store float* %0, float** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %33, %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @NELLY_FILL_LEN, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i32, i32* %14, align 4
  %27 = load float*, float** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %27, i64 %29
  %31 = load float, float* %30, align 4
  %32 = call i32 @FFMAX(i32 %26, float %31)
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %21

36:                                               ; preds = %21
  store i16 -16, i16* %12, align 2
  %37 = call i64 @headroom(i32* %14)
  %38 = load i16, i16* %12, align 2
  %39 = sext i16 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i16
  store i16 %41, i16* %12, align 2
  store i32 0, i32* %15, align 4
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %76, %36
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @NELLY_FILL_LEN, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = load float*, float** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load float, float* %50, align 4
  %52 = load i16, i16* %12, align 2
  %53 = call i8* @signed_shift(float %51, i16 signext %52)
  %54 = ptrtoint i8* %53 to i16
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [128 x i16], [128 x i16]* %7, i64 0, i64 %56
  store i16 %54, i16* %57, align 2
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [128 x i16], [128 x i16]* %7, i64 0, i64 %59
  %61 = load i16, i16* %60, align 2
  %62 = sext i16 %61 to i32
  %63 = mul nsw i32 3, %62
  %64 = ashr i32 %63, 2
  %65 = trunc i32 %64 to i16
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [128 x i16], [128 x i16]* %7, i64 0, i64 %67
  store i16 %65, i16* %68, align 2
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [128 x i16], [128 x i16]* %7, i64 0, i64 %70
  %72 = load i16, i16* %71, align 2
  %73 = sext i16 %72 to i32
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %15, align 4
  br label %76

76:                                               ; preds = %46
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %42

79:                                               ; preds = %42
  %80 = load i16, i16* %12, align 2
  %81 = sext i16 %80 to i32
  %82 = add nsw i32 %81, 11
  %83 = trunc i32 %82 to i16
  store i16 %83, i16* %12, align 2
  %84 = load i16, i16* %12, align 2
  store i16 %84, i16* %13, align 2
  %85 = load i16, i16* @NELLY_DETAIL_BITS, align 2
  %86 = sext i16 %85 to i32
  %87 = load i16, i16* %12, align 2
  %88 = sext i16 %87 to i32
  %89 = shl i32 %86, %88
  %90 = load i32, i32* %15, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %15, align 4
  %92 = call i64 @headroom(i32* %15)
  %93 = load i16, i16* %12, align 2
  %94 = sext i16 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i16
  store i16 %96, i16* %12, align 2
  %97 = load i32, i32* @NELLY_BASE_OFF, align 4
  %98 = load i32, i32* %15, align 4
  %99 = ashr i32 %98, 16
  %100 = mul nsw i32 %97, %99
  %101 = ashr i32 %100, 15
  store i32 %101, i32* %19, align 4
  %102 = load i16, i16* %13, align 2
  %103 = sext i16 %102 to i32
  %104 = load i16, i16* @NELLY_BASE_SHIFT, align 2
  %105 = sext i16 %104 to i32
  %106 = load i16, i16* %12, align 2
  %107 = sext i16 %106 to i32
  %108 = add nsw i32 %105, %107
  %109 = sub nsw i32 %108, 31
  %110 = sub nsw i32 %103, %109
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* %12, align 2
  %112 = load i32, i32* %19, align 4
  %113 = sitofp i32 %112 to float
  %114 = load i16, i16* %12, align 2
  %115 = call i8* @signed_shift(float %113, i16 signext %114)
  %116 = ptrtoint i8* %115 to i32
  store i32 %116, i32* %19, align 4
  %117 = getelementptr inbounds [128 x i16], [128 x i16]* %7, i64 0, i64 0
  %118 = load i16, i16* %13, align 2
  %119 = load i32, i32* %19, align 4
  %120 = call i32 @sum_bits(i16* %117, i16 signext %118, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i16, i16* @NELLY_DETAIL_BITS, align 2
  %123 = sext i16 %122 to i32
  %124 = icmp ne i32 %121, %123
  br i1 %124, label %125, label %253

125:                                              ; preds = %79
  %126 = load i32, i32* %8, align 4
  %127 = load i16, i16* @NELLY_DETAIL_BITS, align 2
  %128 = sext i16 %127 to i32
  %129 = sub nsw i32 %126, %128
  store i32 %129, i32* %20, align 4
  store i16 0, i16* %12, align 2
  br label %130

130:                                              ; preds = %137, %125
  %131 = load i32, i32* %20, align 4
  %132 = call i32 @FFABS(i32 %131)
  %133 = icmp sle i32 %132, 16383
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i32, i32* %20, align 4
  %136 = mul nsw i32 %135, 2
  store i32 %136, i32* %20, align 4
  br label %137

137:                                              ; preds = %134
  %138 = load i16, i16* %12, align 2
  %139 = add i16 %138, 1
  store i16 %139, i16* %12, align 2
  br label %130

140:                                              ; preds = %130
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* @NELLY_BASE_OFF, align 4
  %143 = mul nsw i32 %141, %142
  %144 = ashr i32 %143, 15
  store i32 %144, i32* %20, align 4
  %145 = load i16, i16* %13, align 2
  %146 = sext i16 %145 to i32
  %147 = load i16, i16* @NELLY_BASE_SHIFT, align 2
  %148 = sext i16 %147 to i32
  %149 = load i16, i16* %12, align 2
  %150 = sext i16 %149 to i32
  %151 = add nsw i32 %148, %150
  %152 = sub nsw i32 %151, 15
  %153 = sub nsw i32 %146, %152
  %154 = trunc i32 %153 to i16
  store i16 %154, i16* %12, align 2
  %155 = load i32, i32* %20, align 4
  %156 = sitofp i32 %155 to float
  %157 = load i16, i16* %12, align 2
  %158 = call i8* @signed_shift(float %156, i16 signext %157)
  %159 = ptrtoint i8* %158 to i32
  store i32 %159, i32* %20, align 4
  store i32 1, i32* %6, align 4
  br label %160

160:                                              ; preds = %185, %140
  %161 = load i32, i32* %6, align 4
  %162 = icmp slt i32 %161, 20
  br i1 %162, label %163, label %188

163:                                              ; preds = %160
  %164 = load i32, i32* %19, align 4
  store i32 %164, i32* %16, align 4
  %165 = load i32, i32* %20, align 4
  %166 = load i32, i32* %19, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %19, align 4
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %9, align 4
  %169 = getelementptr inbounds [128 x i16], [128 x i16]* %7, i64 0, i64 0
  %170 = load i16, i16* %13, align 2
  %171 = load i32, i32* %19, align 4
  %172 = call i32 @sum_bits(i16* %169, i16 signext %170, i32 %171)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = load i16, i16* @NELLY_DETAIL_BITS, align 2
  %175 = sext i16 %174 to i32
  %176 = sub nsw i32 %173, %175
  %177 = load i32, i32* %9, align 4
  %178 = load i16, i16* @NELLY_DETAIL_BITS, align 2
  %179 = sext i16 %178 to i32
  %180 = sub nsw i32 %177, %179
  %181 = mul nsw i32 %176, %180
  %182 = icmp sle i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %163
  br label %188

184:                                              ; preds = %163
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  br label %160

188:                                              ; preds = %183, %160
  %189 = load i32, i32* %8, align 4
  %190 = load i16, i16* @NELLY_DETAIL_BITS, align 2
  %191 = sext i16 %190 to i32
  %192 = icmp sgt i32 %189, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = load i32, i32* %19, align 4
  store i32 %194, i32* %18, align 4
  %195 = load i32, i32* %16, align 4
  store i32 %195, i32* %19, align 4
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %11, align 4
  %197 = load i32, i32* %9, align 4
  store i32 %197, i32* %10, align 4
  br label %202

198:                                              ; preds = %188
  %199 = load i32, i32* %16, align 4
  store i32 %199, i32* %18, align 4
  %200 = load i32, i32* %9, align 4
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %8, align 4
  store i32 %201, i32* %10, align 4
  br label %202

202:                                              ; preds = %198, %193
  br label %203

203:                                              ; preds = %232, %202
  %204 = load i32, i32* %8, align 4
  %205 = load i16, i16* @NELLY_DETAIL_BITS, align 2
  %206 = sext i16 %205 to i32
  %207 = icmp ne i32 %204, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i32, i32* %6, align 4
  %210 = icmp sle i32 %209, 19
  br label %211

211:                                              ; preds = %208, %203
  %212 = phi i1 [ false, %203 ], [ %210, %208 ]
  br i1 %212, label %213, label %235

213:                                              ; preds = %211
  %214 = load i32, i32* %18, align 4
  %215 = load i32, i32* %19, align 4
  %216 = add nsw i32 %214, %215
  %217 = ashr i32 %216, 1
  store i32 %217, i32* %20, align 4
  %218 = getelementptr inbounds [128 x i16], [128 x i16]* %7, i64 0, i64 0
  %219 = load i16, i16* %13, align 2
  %220 = load i32, i32* %20, align 4
  %221 = call i32 @sum_bits(i16* %218, i16 signext %219, i32 %220)
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* %8, align 4
  %223 = load i16, i16* @NELLY_DETAIL_BITS, align 2
  %224 = sext i16 %223 to i32
  %225 = icmp sgt i32 %222, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %213
  %227 = load i32, i32* %20, align 4
  store i32 %227, i32* %18, align 4
  %228 = load i32, i32* %8, align 4
  store i32 %228, i32* %11, align 4
  br label %232

229:                                              ; preds = %213
  %230 = load i32, i32* %20, align 4
  store i32 %230, i32* %19, align 4
  %231 = load i32, i32* %8, align 4
  store i32 %231, i32* %10, align 4
  br label %232

232:                                              ; preds = %229, %226
  %233 = load i32, i32* %6, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %6, align 4
  br label %203

235:                                              ; preds = %211
  %236 = load i32, i32* %11, align 4
  %237 = load i16, i16* @NELLY_DETAIL_BITS, align 2
  %238 = sext i16 %237 to i32
  %239 = sub nsw i32 %236, %238
  %240 = call i64 @abs(i32 %239)
  %241 = load i32, i32* %10, align 4
  %242 = load i16, i16* @NELLY_DETAIL_BITS, align 2
  %243 = sext i16 %242 to i32
  %244 = sub nsw i32 %241, %243
  %245 = call i64 @abs(i32 %244)
  %246 = icmp sge i64 %240, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %235
  %248 = load i32, i32* %10, align 4
  store i32 %248, i32* %8, align 4
  br label %252

249:                                              ; preds = %235
  %250 = load i32, i32* %18, align 4
  store i32 %250, i32* %19, align 4
  %251 = load i32, i32* %11, align 4
  store i32 %251, i32* %8, align 4
  br label %252

252:                                              ; preds = %249, %247
  br label %253

253:                                              ; preds = %252, %79
  store i32 0, i32* %5, align 4
  br label %254

254:                                              ; preds = %280, %253
  %255 = load i32, i32* %5, align 4
  %256 = load i32, i32* @NELLY_FILL_LEN, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %283

258:                                              ; preds = %254
  %259 = load i32, i32* %5, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [128 x i16], [128 x i16]* %7, i64 0, i64 %260
  %262 = load i16, i16* %261, align 2
  %263 = sext i16 %262 to i32
  %264 = load i32, i32* %19, align 4
  %265 = sub nsw i32 %263, %264
  store i32 %265, i32* %17, align 4
  %266 = load i32, i32* %17, align 4
  %267 = load i16, i16* %13, align 2
  %268 = sext i16 %267 to i32
  %269 = sub nsw i32 %268, 1
  %270 = ashr i32 %266, %269
  %271 = add nsw i32 %270, 1
  %272 = ashr i32 %271, 1
  store i32 %272, i32* %17, align 4
  %273 = load i32, i32* %17, align 4
  %274 = load i32, i32* @NELLY_BIT_CAP, align 4
  %275 = call i32 @av_clip(i32 %273, i32 0, i32 %274)
  %276 = load i32*, i32** %4, align 8
  %277 = load i32, i32* %5, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  store i32 %275, i32* %279, align 4
  br label %280

280:                                              ; preds = %258
  %281 = load i32, i32* %5, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %5, align 4
  br label %254

283:                                              ; preds = %254
  %284 = load i32, i32* %8, align 4
  %285 = load i16, i16* @NELLY_DETAIL_BITS, align 2
  %286 = sext i16 %285 to i32
  %287 = icmp sgt i32 %284, %286
  br i1 %287, label %288, label %329

288:                                              ; preds = %283
  store i32 0, i32* %5, align 4
  store i32 0, i32* %17, align 4
  br label %289

289:                                              ; preds = %294, %288
  %290 = load i32, i32* %17, align 4
  %291 = load i16, i16* @NELLY_DETAIL_BITS, align 2
  %292 = sext i16 %291 to i32
  %293 = icmp slt i32 %290, %292
  br i1 %293, label %294, label %304

294:                                              ; preds = %289
  %295 = load i32*, i32** %4, align 8
  %296 = load i32, i32* %5, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %17, align 4
  %301 = add nsw i32 %300, %299
  store i32 %301, i32* %17, align 4
  %302 = load i32, i32* %5, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %5, align 4
  br label %289

304:                                              ; preds = %289
  %305 = load i32, i32* %17, align 4
  %306 = load i16, i16* @NELLY_DETAIL_BITS, align 2
  %307 = sext i16 %306 to i32
  %308 = sub nsw i32 %305, %307
  %309 = load i32*, i32** %4, align 8
  %310 = load i32, i32* %5, align 4
  %311 = sub nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %309, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = sub nsw i32 %314, %308
  store i32 %315, i32* %313, align 4
  br label %316

316:                                              ; preds = %325, %304
  %317 = load i32, i32* %5, align 4
  %318 = load i32, i32* @NELLY_FILL_LEN, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %328

320:                                              ; preds = %316
  %321 = load i32*, i32** %4, align 8
  %322 = load i32, i32* %5, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  store i32 0, i32* %324, align 4
  br label %325

325:                                              ; preds = %320
  %326 = load i32, i32* %5, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %5, align 4
  br label %316

328:                                              ; preds = %316
  br label %329

329:                                              ; preds = %328, %283
  ret void
}

declare dso_local i32 @FFMAX(i32, float) #1

declare dso_local i64 @headroom(i32*) #1

declare dso_local i8* @signed_shift(float, i16 signext) #1

declare dso_local i32 @sum_bits(i16*, i16 signext, i32) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
