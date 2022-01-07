; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_unfilterScanline.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_unfilterScanline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i64, i8, i64)* @unfilterScanline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unfilterScanline(i8* %0, i8* %1, i8* %2, i64 %3, i8 zeroext %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8 %4, i8* %12, align 1
  store i64 %5, i64* %13, align 8
  %15 = load i8, i8* %12, align 1
  %16 = zext i8 %15 to i32
  switch i32 %16, label %343 [
    i32 0, label %17
    i32 1, label %34
    i32 2, label %78
    i32 3, label %124
    i32 4, label %233
  ]

17:                                               ; preds = %6
  store i64 0, i64* %14, align 8
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i64, i64* %14, align 8
  %20 = load i64, i64* %13, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %14, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %14, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8 %26, i8* %29, align 1
  br label %30

30:                                               ; preds = %22
  %31 = load i64, i64* %14, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %14, align 8
  br label %18

33:                                               ; preds = %18
  br label %344

34:                                               ; preds = %6
  store i64 0, i64* %14, align 8
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %14, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 %43, i8* %46, align 1
  br label %47

47:                                               ; preds = %39
  %48 = load i64, i64* %14, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %14, align 8
  br label %35

50:                                               ; preds = %35
  %51 = load i64, i64* %11, align 8
  store i64 %51, i64* %14, align 8
  br label %52

52:                                               ; preds = %74, %50
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* %13, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %14, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %11, align 8
  %65 = sub i64 %63, %64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = add nsw i32 %61, %68
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %14, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8 %70, i8* %73, align 1
  br label %74

74:                                               ; preds = %56
  %75 = load i64, i64* %14, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %14, align 8
  br label %52

77:                                               ; preds = %52
  br label %344

78:                                               ; preds = %6
  %79 = load i8*, i8** %10, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %106

81:                                               ; preds = %78
  store i64 0, i64* %14, align 8
  br label %82

82:                                               ; preds = %102, %81
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %13, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = load i8*, i8** %9, align 8
  %88 = load i64, i64* %14, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8*, i8** %10, align 8
  %93 = load i64, i64* %14, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = add nsw i32 %91, %96
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %8, align 8
  %100 = load i64, i64* %14, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 %98, i8* %101, align 1
  br label %102

102:                                              ; preds = %86
  %103 = load i64, i64* %14, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %14, align 8
  br label %82

105:                                              ; preds = %82
  br label %123

106:                                              ; preds = %78
  store i64 0, i64* %14, align 8
  br label %107

107:                                              ; preds = %119, %106
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* %13, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load i8*, i8** %9, align 8
  %113 = load i64, i64* %14, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = load i8*, i8** %8, align 8
  %117 = load i64, i64* %14, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8 %115, i8* %118, align 1
  br label %119

119:                                              ; preds = %111
  %120 = load i64, i64* %14, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %14, align 8
  br label %107

122:                                              ; preds = %107
  br label %123

123:                                              ; preds = %122, %105
  br label %344

124:                                              ; preds = %6
  %125 = load i8*, i8** %10, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %187

127:                                              ; preds = %124
  store i64 0, i64* %14, align 8
  br label %128

128:                                              ; preds = %149, %127
  %129 = load i64, i64* %14, align 8
  %130 = load i64, i64* %11, align 8
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %128
  %133 = load i8*, i8** %9, align 8
  %134 = load i64, i64* %14, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8*, i8** %10, align 8
  %139 = load i64, i64* %14, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = sdiv i32 %142, 2
  %144 = add nsw i32 %137, %143
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %8, align 8
  %147 = load i64, i64* %14, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8 %145, i8* %148, align 1
  br label %149

149:                                              ; preds = %132
  %150 = load i64, i64* %14, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %14, align 8
  br label %128

152:                                              ; preds = %128
  %153 = load i64, i64* %11, align 8
  store i64 %153, i64* %14, align 8
  br label %154

154:                                              ; preds = %183, %152
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* %13, align 8
  %157 = icmp ult i64 %155, %156
  br i1 %157, label %158, label %186

158:                                              ; preds = %154
  %159 = load i8*, i8** %9, align 8
  %160 = load i64, i64* %14, align 8
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = load i8*, i8** %8, align 8
  %165 = load i64, i64* %14, align 8
  %166 = load i64, i64* %11, align 8
  %167 = sub i64 %165, %166
  %168 = getelementptr inbounds i8, i8* %164, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = load i8*, i8** %10, align 8
  %172 = load i64, i64* %14, align 8
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = add nsw i32 %170, %175
  %177 = sdiv i32 %176, 2
  %178 = add nsw i32 %163, %177
  %179 = trunc i32 %178 to i8
  %180 = load i8*, i8** %8, align 8
  %181 = load i64, i64* %14, align 8
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  store i8 %179, i8* %182, align 1
  br label %183

183:                                              ; preds = %158
  %184 = load i64, i64* %14, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %14, align 8
  br label %154

186:                                              ; preds = %154
  br label %232

187:                                              ; preds = %124
  store i64 0, i64* %14, align 8
  br label %188

188:                                              ; preds = %200, %187
  %189 = load i64, i64* %14, align 8
  %190 = load i64, i64* %11, align 8
  %191 = icmp ult i64 %189, %190
  br i1 %191, label %192, label %203

192:                                              ; preds = %188
  %193 = load i8*, i8** %9, align 8
  %194 = load i64, i64* %14, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = load i8*, i8** %8, align 8
  %198 = load i64, i64* %14, align 8
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8 %196, i8* %199, align 1
  br label %200

200:                                              ; preds = %192
  %201 = load i64, i64* %14, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %14, align 8
  br label %188

203:                                              ; preds = %188
  %204 = load i64, i64* %11, align 8
  store i64 %204, i64* %14, align 8
  br label %205

205:                                              ; preds = %228, %203
  %206 = load i64, i64* %14, align 8
  %207 = load i64, i64* %13, align 8
  %208 = icmp ult i64 %206, %207
  br i1 %208, label %209, label %231

209:                                              ; preds = %205
  %210 = load i8*, i8** %9, align 8
  %211 = load i64, i64* %14, align 8
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = load i8*, i8** %8, align 8
  %216 = load i64, i64* %14, align 8
  %217 = load i64, i64* %11, align 8
  %218 = sub i64 %216, %217
  %219 = getelementptr inbounds i8, i8* %215, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = sdiv i32 %221, 2
  %223 = add nsw i32 %214, %222
  %224 = trunc i32 %223 to i8
  %225 = load i8*, i8** %8, align 8
  %226 = load i64, i64* %14, align 8
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  store i8 %224, i8* %227, align 1
  br label %228

228:                                              ; preds = %209
  %229 = load i64, i64* %14, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %14, align 8
  br label %205

231:                                              ; preds = %205
  br label %232

232:                                              ; preds = %231, %186
  br label %344

233:                                              ; preds = %6
  %234 = load i8*, i8** %10, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %298

236:                                              ; preds = %233
  store i64 0, i64* %14, align 8
  br label %237

237:                                              ; preds = %257, %236
  %238 = load i64, i64* %14, align 8
  %239 = load i64, i64* %11, align 8
  %240 = icmp ult i64 %238, %239
  br i1 %240, label %241, label %260

241:                                              ; preds = %237
  %242 = load i8*, i8** %9, align 8
  %243 = load i64, i64* %14, align 8
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = load i8*, i8** %10, align 8
  %248 = load i64, i64* %14, align 8
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = add nsw i32 %246, %251
  %253 = trunc i32 %252 to i8
  %254 = load i8*, i8** %8, align 8
  %255 = load i64, i64* %14, align 8
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  store i8 %253, i8* %256, align 1
  br label %257

257:                                              ; preds = %241
  %258 = load i64, i64* %14, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* %14, align 8
  br label %237

260:                                              ; preds = %237
  %261 = load i64, i64* %11, align 8
  store i64 %261, i64* %14, align 8
  br label %262

262:                                              ; preds = %294, %260
  %263 = load i64, i64* %14, align 8
  %264 = load i64, i64* %13, align 8
  %265 = icmp ult i64 %263, %264
  br i1 %265, label %266, label %297

266:                                              ; preds = %262
  %267 = load i8*, i8** %9, align 8
  %268 = load i64, i64* %14, align 8
  %269 = getelementptr inbounds i8, i8* %267, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = load i8*, i8** %8, align 8
  %273 = load i64, i64* %14, align 8
  %274 = load i64, i64* %11, align 8
  %275 = sub i64 %273, %274
  %276 = getelementptr inbounds i8, i8* %272, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = load i8*, i8** %10, align 8
  %279 = load i64, i64* %14, align 8
  %280 = getelementptr inbounds i8, i8* %278, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = load i8*, i8** %10, align 8
  %283 = load i64, i64* %14, align 8
  %284 = load i64, i64* %11, align 8
  %285 = sub i64 %283, %284
  %286 = getelementptr inbounds i8, i8* %282, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = call i32 @paethPredictor(i8 zeroext %277, i8 zeroext %281, i8 zeroext %287)
  %289 = add nsw i32 %271, %288
  %290 = trunc i32 %289 to i8
  %291 = load i8*, i8** %8, align 8
  %292 = load i64, i64* %14, align 8
  %293 = getelementptr inbounds i8, i8* %291, i64 %292
  store i8 %290, i8* %293, align 1
  br label %294

294:                                              ; preds = %266
  %295 = load i64, i64* %14, align 8
  %296 = add i64 %295, 1
  store i64 %296, i64* %14, align 8
  br label %262

297:                                              ; preds = %262
  br label %342

298:                                              ; preds = %233
  store i64 0, i64* %14, align 8
  br label %299

299:                                              ; preds = %311, %298
  %300 = load i64, i64* %14, align 8
  %301 = load i64, i64* %11, align 8
  %302 = icmp ult i64 %300, %301
  br i1 %302, label %303, label %314

303:                                              ; preds = %299
  %304 = load i8*, i8** %9, align 8
  %305 = load i64, i64* %14, align 8
  %306 = getelementptr inbounds i8, i8* %304, i64 %305
  %307 = load i8, i8* %306, align 1
  %308 = load i8*, i8** %8, align 8
  %309 = load i64, i64* %14, align 8
  %310 = getelementptr inbounds i8, i8* %308, i64 %309
  store i8 %307, i8* %310, align 1
  br label %311

311:                                              ; preds = %303
  %312 = load i64, i64* %14, align 8
  %313 = add i64 %312, 1
  store i64 %313, i64* %14, align 8
  br label %299

314:                                              ; preds = %299
  %315 = load i64, i64* %11, align 8
  store i64 %315, i64* %14, align 8
  br label %316

316:                                              ; preds = %338, %314
  %317 = load i64, i64* %14, align 8
  %318 = load i64, i64* %13, align 8
  %319 = icmp ult i64 %317, %318
  br i1 %319, label %320, label %341

320:                                              ; preds = %316
  %321 = load i8*, i8** %9, align 8
  %322 = load i64, i64* %14, align 8
  %323 = getelementptr inbounds i8, i8* %321, i64 %322
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = load i8*, i8** %8, align 8
  %327 = load i64, i64* %14, align 8
  %328 = load i64, i64* %11, align 8
  %329 = sub i64 %327, %328
  %330 = getelementptr inbounds i8, i8* %326, i64 %329
  %331 = load i8, i8* %330, align 1
  %332 = zext i8 %331 to i32
  %333 = add nsw i32 %325, %332
  %334 = trunc i32 %333 to i8
  %335 = load i8*, i8** %8, align 8
  %336 = load i64, i64* %14, align 8
  %337 = getelementptr inbounds i8, i8* %335, i64 %336
  store i8 %334, i8* %337, align 1
  br label %338

338:                                              ; preds = %320
  %339 = load i64, i64* %14, align 8
  %340 = add i64 %339, 1
  store i64 %340, i64* %14, align 8
  br label %316

341:                                              ; preds = %316
  br label %342

342:                                              ; preds = %341, %297
  br label %344

343:                                              ; preds = %6
  store i32 36, i32* %7, align 4
  br label %345

344:                                              ; preds = %342, %232, %123, %77, %33
  store i32 0, i32* %7, align 4
  br label %345

345:                                              ; preds = %344, %343
  %346 = load i32, i32* %7, align 4
  ret i32 %346
}

declare dso_local i32 @paethPredictor(i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
