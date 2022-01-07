; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pp7.c_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pp7.c_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32 (%struct.TYPE_4__*, i32*, i32)*, i32 (i32*, i32*)*, i32 }

@dither = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*, i32, i32, i32, i32, i32*, i32, i32)* @filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %38 = load i32, i32* %20, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %10
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  br label %49

44:                                               ; preds = %10
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %45, 16
  %47 = add nsw i32 %46, 15
  %48 = and i32 %47, -16
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi i32 [ %43, %40 ], [ %48, %44 ]
  store i32 %50, i32* %23, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %23, align 4
  %55 = mul nsw i32 8, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32* %57, i32** %24, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %25, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 32
  store i32* %64, i32** %26, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %49
  %68 = load i32*, i32** %12, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %67, %49
  br label %351

71:                                               ; preds = %67
  store i32 0, i32* %22, align 4
  br label %72

72:                                               ; preds = %136, %71
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %139

76:                                               ; preds = %72
  %77 = load i32, i32* %23, align 4
  %78 = mul nsw i32 8, %77
  %79 = add nsw i32 8, %78
  %80 = load i32, i32* %22, align 4
  %81 = load i32, i32* %23, align 4
  %82 = mul nsw i32 %80, %81
  %83 = add nsw i32 %79, %82
  store i32 %83, i32* %27, align 4
  %84 = load i32*, i32** %24, align 8
  %85 = load i32, i32* %27, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32*, i32** %13, align 8
  %89 = load i32, i32* %22, align 4
  %90 = load i32, i32* %15, align 4
  %91 = mul nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @memcpy(i32* %87, i32* %93, i32 %94)
  store i32 0, i32* %21, align 4
  br label %96

96:                                               ; preds = %132, %76
  %97 = load i32, i32* %21, align 4
  %98 = icmp slt i32 %97, 8
  br i1 %98, label %99, label %135

99:                                               ; preds = %96
  %100 = load i32*, i32** %24, align 8
  %101 = load i32, i32* %27, align 4
  %102 = load i32, i32* %21, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %24, align 8
  %108 = load i32, i32* %27, align 4
  %109 = load i32, i32* %21, align 4
  %110 = sub nsw i32 %108, %109
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %107, i64 %112
  store i32 %106, i32* %113, align 4
  %114 = load i32*, i32** %24, align 8
  %115 = load i32, i32* %27, align 4
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* %21, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %114, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %24, align 8
  %125 = load i32, i32* %27, align 4
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %21, align 4
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %124, i64 %130
  store i32 %123, i32* %131, align 4
  br label %132

132:                                              ; preds = %99
  %133 = load i32, i32* %21, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %21, align 4
  br label %96

135:                                              ; preds = %96
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %22, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %22, align 4
  br label %72

139:                                              ; preds = %72
  store i32 0, i32* %22, align 4
  br label %140

140:                                              ; preds = %180, %139
  %141 = load i32, i32* %22, align 4
  %142 = icmp slt i32 %141, 8
  br i1 %142, label %143, label %183

143:                                              ; preds = %140
  %144 = load i32*, i32** %24, align 8
  %145 = load i32, i32* %22, align 4
  %146 = sub nsw i32 7, %145
  %147 = load i32, i32* %23, align 4
  %148 = mul nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %144, i64 %149
  %151 = load i32*, i32** %24, align 8
  %152 = load i32, i32* %22, align 4
  %153 = add nsw i32 %152, 8
  %154 = load i32, i32* %23, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %151, i64 %156
  %158 = load i32, i32* %23, align 4
  %159 = call i32 @memcpy(i32* %150, i32* %157, i32 %158)
  %160 = load i32*, i32** %24, align 8
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, 8
  %163 = load i32, i32* %22, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* %23, align 4
  %166 = mul nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %160, i64 %167
  %169 = load i32*, i32** %24, align 8
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %22, align 4
  %172 = sub nsw i32 %170, %171
  %173 = add nsw i32 %172, 7
  %174 = load i32, i32* %23, align 4
  %175 = mul nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %169, i64 %176
  %178 = load i32, i32* %23, align 4
  %179 = call i32 @memcpy(i32* %168, i32* %177, i32 %178)
  br label %180

180:                                              ; preds = %143
  %181 = load i32, i32* %22, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %22, align 4
  br label %140

183:                                              ; preds = %140
  store i32 0, i32* %22, align 4
  br label %184

184:                                              ; preds = %348, %183
  %185 = load i32, i32* %22, align 4
  %186 = load i32, i32* %17, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %351

188:                                              ; preds = %184
  store i32 -8, i32* %21, align 4
  br label %189

189:                                              ; preds = %217, %188
  %190 = load i32, i32* %21, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %220

192:                                              ; preds = %189
  %193 = load i32, i32* %21, align 4
  %194 = load i32, i32* %22, align 4
  %195 = load i32, i32* %23, align 4
  %196 = mul nsw i32 %194, %195
  %197 = add nsw i32 %193, %196
  %198 = load i32, i32* %23, align 4
  %199 = add nsw i32 1, %198
  %200 = mul nsw i32 5, %199
  %201 = add nsw i32 %197, %200
  %202 = add nsw i32 %201, 8
  store i32 %202, i32* %28, align 4
  %203 = load i32*, i32** %24, align 8
  %204 = load i32, i32* %28, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32* %206, i32** %29, align 8
  %207 = load i32*, i32** %26, align 8
  %208 = load i32, i32* %21, align 4
  %209 = mul nsw i32 4, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  store i32* %211, i32** %30, align 8
  %212 = load i32*, i32** %30, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 32
  %214 = load i32*, i32** %29, align 8
  %215 = load i32, i32* %23, align 4
  %216 = call i32 @dctA_c(i32* %213, i32* %214, i32 %215)
  br label %217

217:                                              ; preds = %192
  %218 = load i32, i32* %21, align 4
  %219 = add nsw i32 %218, 4
  store i32 %219, i32* %21, align 4
  br label %189

220:                                              ; preds = %189
  store i32 0, i32* %21, align 4
  br label %221

221:                                              ; preds = %346, %220
  %222 = load i32, i32* %21, align 4
  %223 = load i32, i32* %16, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %347

225:                                              ; preds = %221
  %226 = load i32, i32* %20, align 4
  %227 = add nsw i32 3, %226
  store i32 %227, i32* %31, align 4
  %228 = load i32, i32* %21, align 4
  %229 = add nsw i32 %228, 8
  %230 = load i32, i32* %16, align 4
  %231 = call i32 @FFMIN(i32 %229, i32 %230)
  store i32 %231, i32* %33, align 4
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %225
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  store i32 %239, i32* %32, align 4
  br label %265

240:                                              ; preds = %225
  %241 = load i32*, i32** %18, align 8
  %242 = load i32, i32* %21, align 4
  %243 = load i32, i32* %16, align 4
  %244 = sub nsw i32 %243, 1
  %245 = call i32 @FFMIN(i32 %242, i32 %244)
  %246 = load i32, i32* %31, align 4
  %247 = ashr i32 %245, %246
  %248 = load i32, i32* %22, align 4
  %249 = load i32, i32* %17, align 4
  %250 = sub nsw i32 %249, 1
  %251 = call i32 @FFMIN(i32 %248, i32 %250)
  %252 = load i32, i32* %31, align 4
  %253 = ashr i32 %251, %252
  %254 = load i32, i32* %19, align 4
  %255 = mul nsw i32 %253, %254
  %256 = add nsw i32 %247, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %241, i64 %257
  %259 = load i32, i32* %258, align 4
  store i32 %259, i32* %32, align 4
  %260 = load i32, i32* %32, align 4
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @ff_norm_qscale(i32 %260, i32 %263)
  store i32 %264, i32* %32, align 4
  br label %265

265:                                              ; preds = %240, %236
  br label %266

266:                                              ; preds = %343, %265
  %267 = load i32, i32* %21, align 4
  %268 = load i32, i32* %33, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %346

270:                                              ; preds = %266
  %271 = load i32, i32* %21, align 4
  %272 = load i32, i32* %22, align 4
  %273 = load i32, i32* %23, align 4
  %274 = mul nsw i32 %272, %273
  %275 = add nsw i32 %271, %274
  %276 = load i32, i32* %23, align 4
  %277 = add nsw i32 1, %276
  %278 = mul nsw i32 5, %277
  %279 = add nsw i32 %275, %278
  %280 = add nsw i32 %279, 8
  store i32 %280, i32* %34, align 4
  %281 = load i32*, i32** %24, align 8
  %282 = load i32, i32* %34, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  store i32* %284, i32** %35, align 8
  %285 = load i32*, i32** %26, align 8
  %286 = load i32, i32* %21, align 4
  %287 = mul nsw i32 4, %286
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %285, i64 %288
  store i32* %289, i32** %36, align 8
  %290 = load i32, i32* %21, align 4
  %291 = and i32 %290, 3
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %270
  %294 = load i32*, i32** %36, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 32
  %296 = load i32*, i32** %35, align 8
  %297 = load i32, i32* %23, align 4
  %298 = call i32 @dctA_c(i32* %295, i32* %296, i32 %297)
  br label %299

299:                                              ; preds = %293, %270
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 4
  %302 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %301, align 8
  %303 = load i32*, i32** %25, align 8
  %304 = load i32*, i32** %36, align 8
  %305 = call i32 %302(i32* %303, i32* %304)
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 3
  %308 = load i32 (%struct.TYPE_4__*, i32*, i32)*, i32 (%struct.TYPE_4__*, i32*, i32)** %307, align 8
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %310 = load i32*, i32** %25, align 8
  %311 = load i32, i32* %32, align 4
  %312 = call i32 %308(%struct.TYPE_4__* %309, i32* %310, i32 %311)
  store i32 %312, i32* %37, align 4
  %313 = load i32, i32* %37, align 4
  %314 = load i32**, i32*** @dither, align 8
  %315 = load i32, i32* %22, align 4
  %316 = and i32 %315, 7
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32*, i32** %314, i64 %317
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %21, align 4
  %321 = and i32 %320, 7
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %319, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %313, %324
  %326 = ashr i32 %325, 6
  store i32 %326, i32* %37, align 4
  %327 = load i32, i32* %37, align 4
  %328 = icmp ugt i32 %327, 255
  br i1 %328, label %329, label %333

329:                                              ; preds = %299
  %330 = load i32, i32* %37, align 4
  %331 = sub nsw i32 0, %330
  %332 = ashr i32 %331, 31
  store i32 %332, i32* %37, align 4
  br label %333

333:                                              ; preds = %329, %299
  %334 = load i32, i32* %37, align 4
  %335 = load i32*, i32** %12, align 8
  %336 = load i32, i32* %21, align 4
  %337 = load i32, i32* %22, align 4
  %338 = load i32, i32* %14, align 4
  %339 = mul nsw i32 %337, %338
  %340 = add nsw i32 %336, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %335, i64 %341
  store i32 %334, i32* %342, align 4
  br label %343

343:                                              ; preds = %333
  %344 = load i32, i32* %21, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %21, align 4
  br label %266

346:                                              ; preds = %266
  br label %221

347:                                              ; preds = %221
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %22, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %22, align 4
  br label %184

351:                                              ; preds = %70, %184
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dctA_c(i32*, i32*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_norm_qscale(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
