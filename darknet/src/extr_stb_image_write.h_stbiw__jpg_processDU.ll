; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__jpg_processDU.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__jpg_processDU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stbiw__jpg_ZigZag = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, float*, float*, i32, [2 x i16]*, [2 x i16]*)* @stbiw__jpg_processDU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbiw__jpg_processDU(i32* %0, i32* %1, i32* %2, float* %3, float* %4, i32 %5, [2 x i16]* %6, [2 x i16]* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [2 x i16]*, align 8
  %17 = alloca [2 x i16]*, align 8
  %18 = alloca [2 x i16], align 2
  %19 = alloca [2 x i16], align 2
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [64 x i32], align 16
  %25 = alloca float, align 4
  %26 = alloca [2 x i16], align 2
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [2 x i16], align 2
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store float* %3, float** %13, align 8
  store float* %4, float** %14, align 8
  store i32 %5, i32* %15, align 4
  store [2 x i16]* %6, [2 x i16]** %16, align 8
  store [2 x i16]* %7, [2 x i16]** %17, align 8
  %32 = getelementptr inbounds [2 x i16], [2 x i16]* %18, i64 0, i64 0
  %33 = load [2 x i16]*, [2 x i16]** %17, align 8
  %34 = getelementptr inbounds [2 x i16], [2 x i16]* %33, i64 0
  %35 = getelementptr inbounds [2 x i16], [2 x i16]* %34, i64 0, i64 0
  %36 = load i16, i16* %35, align 2
  store i16 %36, i16* %32, align 2
  %37 = getelementptr inbounds i16, i16* %32, i64 1
  %38 = load [2 x i16]*, [2 x i16]** %17, align 8
  %39 = getelementptr inbounds [2 x i16], [2 x i16]* %38, i64 0
  %40 = getelementptr inbounds [2 x i16], [2 x i16]* %39, i64 0, i64 1
  %41 = load i16, i16* %40, align 2
  store i16 %41, i16* %37, align 2
  %42 = getelementptr inbounds [2 x i16], [2 x i16]* %19, i64 0, i64 0
  %43 = load [2 x i16]*, [2 x i16]** %17, align 8
  %44 = getelementptr inbounds [2 x i16], [2 x i16]* %43, i64 240
  %45 = getelementptr inbounds [2 x i16], [2 x i16]* %44, i64 0, i64 0
  %46 = load i16, i16* %45, align 2
  store i16 %46, i16* %42, align 2
  %47 = getelementptr inbounds i16, i16* %42, i64 1
  %48 = load [2 x i16]*, [2 x i16]** %17, align 8
  %49 = getelementptr inbounds [2 x i16], [2 x i16]* %48, i64 240
  %50 = getelementptr inbounds [2 x i16], [2 x i16]* %49, i64 0, i64 1
  %51 = load i16, i16* %50, align 2
  store i16 %51, i16* %47, align 2
  store i32 0, i32* %20, align 4
  br label %52

52:                                               ; preds = %96, %8
  %53 = load i32, i32* %20, align 4
  %54 = icmp slt i32 %53, 64
  br i1 %54, label %55, label %99

55:                                               ; preds = %52
  %56 = load float*, float** %13, align 8
  %57 = load i32, i32* %20, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %56, i64 %58
  %60 = load float*, float** %13, align 8
  %61 = load i32, i32* %20, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %60, i64 %63
  %65 = load float*, float** %13, align 8
  %66 = load i32, i32* %20, align 4
  %67 = add nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %65, i64 %68
  %70 = load float*, float** %13, align 8
  %71 = load i32, i32* %20, align 4
  %72 = add nsw i32 %71, 3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %70, i64 %73
  %75 = load float*, float** %13, align 8
  %76 = load i32, i32* %20, align 4
  %77 = add nsw i32 %76, 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %75, i64 %78
  %80 = load float*, float** %13, align 8
  %81 = load i32, i32* %20, align 4
  %82 = add nsw i32 %81, 5
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %80, i64 %83
  %85 = load float*, float** %13, align 8
  %86 = load i32, i32* %20, align 4
  %87 = add nsw i32 %86, 6
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %85, i64 %88
  %90 = load float*, float** %13, align 8
  %91 = load i32, i32* %20, align 4
  %92 = add nsw i32 %91, 7
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %90, i64 %93
  %95 = call i32 @stbiw__jpg_DCT(float* %59, float* %64, float* %69, float* %74, float* %79, float* %84, float* %89, float* %94)
  br label %96

96:                                               ; preds = %55
  %97 = load i32, i32* %20, align 4
  %98 = add nsw i32 %97, 8
  store i32 %98, i32* %20, align 4
  br label %52

99:                                               ; preds = %52
  store i32 0, i32* %20, align 4
  br label %100

100:                                              ; preds = %144, %99
  %101 = load i32, i32* %20, align 4
  %102 = icmp slt i32 %101, 8
  br i1 %102, label %103, label %147

103:                                              ; preds = %100
  %104 = load float*, float** %13, align 8
  %105 = load i32, i32* %20, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %104, i64 %106
  %108 = load float*, float** %13, align 8
  %109 = load i32, i32* %20, align 4
  %110 = add nsw i32 %109, 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %108, i64 %111
  %113 = load float*, float** %13, align 8
  %114 = load i32, i32* %20, align 4
  %115 = add nsw i32 %114, 16
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %113, i64 %116
  %118 = load float*, float** %13, align 8
  %119 = load i32, i32* %20, align 4
  %120 = add nsw i32 %119, 24
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %118, i64 %121
  %123 = load float*, float** %13, align 8
  %124 = load i32, i32* %20, align 4
  %125 = add nsw i32 %124, 32
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %123, i64 %126
  %128 = load float*, float** %13, align 8
  %129 = load i32, i32* %20, align 4
  %130 = add nsw i32 %129, 40
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %128, i64 %131
  %133 = load float*, float** %13, align 8
  %134 = load i32, i32* %20, align 4
  %135 = add nsw i32 %134, 48
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %133, i64 %136
  %138 = load float*, float** %13, align 8
  %139 = load i32, i32* %20, align 4
  %140 = add nsw i32 %139, 56
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %138, i64 %141
  %143 = call i32 @stbiw__jpg_DCT(float* %107, float* %112, float* %117, float* %122, float* %127, float* %132, float* %137, float* %142)
  br label %144

144:                                              ; preds = %103
  %145 = load i32, i32* %20, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %20, align 4
  br label %100

147:                                              ; preds = %100
  store i32 0, i32* %21, align 4
  br label %148

148:                                              ; preds = %180, %147
  %149 = load i32, i32* %21, align 4
  %150 = icmp slt i32 %149, 64
  br i1 %150, label %151, label %183

151:                                              ; preds = %148
  %152 = load float*, float** %13, align 8
  %153 = load i32, i32* %21, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %152, i64 %154
  %156 = load float, float* %155, align 4
  %157 = load float*, float** %14, align 8
  %158 = load i32, i32* %21, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %157, i64 %159
  %161 = load float, float* %160, align 4
  %162 = fmul float %156, %161
  store float %162, float* %25, align 4
  %163 = load float, float* %25, align 4
  %164 = fcmp olt float %163, 0.000000e+00
  br i1 %164, label %165, label %168

165:                                              ; preds = %151
  %166 = load float, float* %25, align 4
  %167 = fsub float %166, 5.000000e-01
  br label %171

168:                                              ; preds = %151
  %169 = load float, float* %25, align 4
  %170 = fadd float %169, 5.000000e-01
  br label %171

171:                                              ; preds = %168, %165
  %172 = phi float [ %167, %165 ], [ %170, %168 ]
  %173 = fptosi float %172 to i32
  %174 = load i64*, i64** @stbiw__jpg_ZigZag, align 8
  %175 = load i32, i32* %21, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 %178
  store i32 %173, i32* %179, align 4
  br label %180

180:                                              ; preds = %171
  %181 = load i32, i32* %21, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %21, align 4
  br label %148

183:                                              ; preds = %148
  %184 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 0
  %185 = load i32, i32* %184, align 16
  %186 = load i32, i32* %15, align 4
  %187 = sub nsw i32 %185, %186
  store i32 %187, i32* %22, align 4
  %188 = load i32, i32* %22, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %183
  %191 = load i32*, i32** %10, align 8
  %192 = load i32*, i32** %11, align 8
  %193 = load i32*, i32** %12, align 8
  %194 = load [2 x i16]*, [2 x i16]** %16, align 8
  %195 = getelementptr inbounds [2 x i16], [2 x i16]* %194, i64 0
  %196 = getelementptr inbounds [2 x i16], [2 x i16]* %195, i64 0, i64 0
  %197 = call i32 @stbiw__jpg_writeBits(i32* %191, i32* %192, i32* %193, i16* %196)
  br label %217

198:                                              ; preds = %183
  %199 = load i32, i32* %22, align 4
  %200 = getelementptr inbounds [2 x i16], [2 x i16]* %26, i64 0, i64 0
  %201 = call i32 @stbiw__jpg_calcBits(i32 %199, i16* %200)
  %202 = load i32*, i32** %10, align 8
  %203 = load i32*, i32** %11, align 8
  %204 = load i32*, i32** %12, align 8
  %205 = load [2 x i16]*, [2 x i16]** %16, align 8
  %206 = getelementptr inbounds [2 x i16], [2 x i16]* %26, i64 0, i64 1
  %207 = load i16, i16* %206, align 2
  %208 = zext i16 %207 to i64
  %209 = getelementptr inbounds [2 x i16], [2 x i16]* %205, i64 %208
  %210 = getelementptr inbounds [2 x i16], [2 x i16]* %209, i64 0, i64 0
  %211 = call i32 @stbiw__jpg_writeBits(i32* %202, i32* %203, i32* %204, i16* %210)
  %212 = load i32*, i32** %10, align 8
  %213 = load i32*, i32** %11, align 8
  %214 = load i32*, i32** %12, align 8
  %215 = getelementptr inbounds [2 x i16], [2 x i16]* %26, i64 0, i64 0
  %216 = call i32 @stbiw__jpg_writeBits(i32* %212, i32* %213, i32* %214, i16* %215)
  br label %217

217:                                              ; preds = %198, %190
  store i32 63, i32* %23, align 4
  br label %218

218:                                              ; preds = %230, %217
  %219 = load i32, i32* %23, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %218
  %222 = load i32, i32* %23, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 0
  br label %227

227:                                              ; preds = %221, %218
  %228 = phi i1 [ false, %218 ], [ %226, %221 ]
  br i1 %228, label %229, label %233

229:                                              ; preds = %227
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %23, align 4
  %232 = add nsw i32 %231, -1
  store i32 %232, i32* %23, align 4
  br label %218

233:                                              ; preds = %227
  %234 = load i32, i32* %23, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %233
  %237 = load i32*, i32** %10, align 8
  %238 = load i32*, i32** %11, align 8
  %239 = load i32*, i32** %12, align 8
  %240 = getelementptr inbounds [2 x i16], [2 x i16]* %18, i64 0, i64 0
  %241 = call i32 @stbiw__jpg_writeBits(i32* %237, i32* %238, i32* %239, i16* %240)
  %242 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 0
  %243 = load i32, i32* %242, align 16
  store i32 %243, i32* %9, align 4
  br label %333

244:                                              ; preds = %233
  store i32 1, i32* %21, align 4
  br label %245

245:                                              ; preds = %318, %244
  %246 = load i32, i32* %21, align 4
  %247 = load i32, i32* %23, align 4
  %248 = icmp sle i32 %246, %247
  br i1 %248, label %249, label %321

249:                                              ; preds = %245
  %250 = load i32, i32* %21, align 4
  store i32 %250, i32* %27, align 4
  br label %251

251:                                              ; preds = %264, %249
  %252 = load i32, i32* %21, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %251
  %258 = load i32, i32* %21, align 4
  %259 = load i32, i32* %23, align 4
  %260 = icmp sle i32 %258, %259
  br label %261

261:                                              ; preds = %257, %251
  %262 = phi i1 [ false, %251 ], [ %260, %257 ]
  br i1 %262, label %263, label %267

263:                                              ; preds = %261
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %21, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %21, align 4
  br label %251

267:                                              ; preds = %261
  %268 = load i32, i32* %21, align 4
  %269 = load i32, i32* %27, align 4
  %270 = sub nsw i32 %268, %269
  store i32 %270, i32* %28, align 4
  %271 = load i32, i32* %28, align 4
  %272 = icmp sge i32 %271, 16
  br i1 %272, label %273, label %292

273:                                              ; preds = %267
  %274 = load i32, i32* %28, align 4
  %275 = ashr i32 %274, 4
  store i32 %275, i32* %30, align 4
  store i32 1, i32* %31, align 4
  br label %276

276:                                              ; preds = %286, %273
  %277 = load i32, i32* %31, align 4
  %278 = load i32, i32* %30, align 4
  %279 = icmp sle i32 %277, %278
  br i1 %279, label %280, label %289

280:                                              ; preds = %276
  %281 = load i32*, i32** %10, align 8
  %282 = load i32*, i32** %11, align 8
  %283 = load i32*, i32** %12, align 8
  %284 = getelementptr inbounds [2 x i16], [2 x i16]* %19, i64 0, i64 0
  %285 = call i32 @stbiw__jpg_writeBits(i32* %281, i32* %282, i32* %283, i16* %284)
  br label %286

286:                                              ; preds = %280
  %287 = load i32, i32* %31, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %31, align 4
  br label %276

289:                                              ; preds = %276
  %290 = load i32, i32* %28, align 4
  %291 = and i32 %290, 15
  store i32 %291, i32* %28, align 4
  br label %292

292:                                              ; preds = %289, %267
  %293 = load i32, i32* %21, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = getelementptr inbounds [2 x i16], [2 x i16]* %29, i64 0, i64 0
  %298 = call i32 @stbiw__jpg_calcBits(i32 %296, i16* %297)
  %299 = load i32*, i32** %10, align 8
  %300 = load i32*, i32** %11, align 8
  %301 = load i32*, i32** %12, align 8
  %302 = load [2 x i16]*, [2 x i16]** %17, align 8
  %303 = load i32, i32* %28, align 4
  %304 = shl i32 %303, 4
  %305 = getelementptr inbounds [2 x i16], [2 x i16]* %29, i64 0, i64 1
  %306 = load i16, i16* %305, align 2
  %307 = zext i16 %306 to i32
  %308 = add nsw i32 %304, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [2 x i16], [2 x i16]* %302, i64 %309
  %311 = getelementptr inbounds [2 x i16], [2 x i16]* %310, i64 0, i64 0
  %312 = call i32 @stbiw__jpg_writeBits(i32* %299, i32* %300, i32* %301, i16* %311)
  %313 = load i32*, i32** %10, align 8
  %314 = load i32*, i32** %11, align 8
  %315 = load i32*, i32** %12, align 8
  %316 = getelementptr inbounds [2 x i16], [2 x i16]* %29, i64 0, i64 0
  %317 = call i32 @stbiw__jpg_writeBits(i32* %313, i32* %314, i32* %315, i16* %316)
  br label %318

318:                                              ; preds = %292
  %319 = load i32, i32* %21, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %21, align 4
  br label %245

321:                                              ; preds = %245
  %322 = load i32, i32* %23, align 4
  %323 = icmp ne i32 %322, 63
  br i1 %323, label %324, label %330

324:                                              ; preds = %321
  %325 = load i32*, i32** %10, align 8
  %326 = load i32*, i32** %11, align 8
  %327 = load i32*, i32** %12, align 8
  %328 = getelementptr inbounds [2 x i16], [2 x i16]* %18, i64 0, i64 0
  %329 = call i32 @stbiw__jpg_writeBits(i32* %325, i32* %326, i32* %327, i16* %328)
  br label %330

330:                                              ; preds = %324, %321
  %331 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 0
  %332 = load i32, i32* %331, align 16
  store i32 %332, i32* %9, align 4
  br label %333

333:                                              ; preds = %330, %236
  %334 = load i32, i32* %9, align 4
  ret i32 %334
}

declare dso_local i32 @stbiw__jpg_DCT(float*, float*, float*, float*, float*, float*, float*, float*) #1

declare dso_local i32 @stbiw__jpg_writeBits(i32*, i32*, i32*, i16*) #1

declare dso_local i32 @stbiw__jpg_calcBits(i32, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
