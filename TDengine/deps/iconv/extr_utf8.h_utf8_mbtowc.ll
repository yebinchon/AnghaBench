; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf8.h_utf8_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf8.h_utf8_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @utf8_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %10, align 1
  %14 = load i8, i8* %10, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i8, i8* %10, align 1
  %19 = zext i8 %18 to i32
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  store i32 1, i32* %5, align 4
  br label %359

21:                                               ; preds = %4
  %22 = load i8, i8* %10, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp slt i32 %23, 194
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %26, i32* %5, align 4
  br label %359

27:                                               ; preds = %21
  %28 = load i8, i8* %10, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp slt i32 %29, 224
  br i1 %30, label %31, label %57

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @RET_TOOFEW(i32 0)
  store i32 %35, i32* %5, align 4
  br label %359

36:                                               ; preds = %31
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = xor i32 %40, 128
  %42 = icmp slt i32 %41, 64
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %44, i32* %5, align 4
  br label %359

45:                                               ; preds = %36
  %46 = load i8, i8* %10, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 31
  %49 = shl i32 %48, 6
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = xor i32 %53, 128
  %55 = or i32 %49, %54
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  store i32 2, i32* %5, align 4
  br label %359

57:                                               ; preds = %27
  %58 = load i8, i8* %10, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp slt i32 %59, 240
  br i1 %60, label %61, label %111

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 3
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @RET_TOOFEW(i32 0)
  store i32 %65, i32* %5, align 4
  br label %359

66:                                               ; preds = %61
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = xor i32 %70, 128
  %72 = icmp slt i32 %71, 64
  br i1 %72, label %73, label %90

73:                                               ; preds = %66
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = xor i32 %77, 128
  %79 = icmp slt i32 %78, 64
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load i8, i8* %10, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp sge i32 %82, 225
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp sge i32 %88, 160
  br i1 %89, label %92, label %90

90:                                               ; preds = %84, %73, %66
  %91 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %91, i32* %5, align 4
  br label %359

92:                                               ; preds = %84, %80
  %93 = load i8, i8* %10, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 15
  %96 = shl i32 %95, 12
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = xor i32 %100, 128
  %102 = shl i32 %101, 6
  %103 = or i32 %96, %102
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = xor i32 %107, 128
  %109 = or i32 %103, %108
  %110 = load i32*, i32** %7, align 8
  store i32 %109, i32* %110, align 4
  store i32 3, i32* %5, align 4
  br label %359

111:                                              ; preds = %57
  %112 = load i8, i8* %10, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp slt i32 %113, 248
  br i1 %114, label %115, label %179

115:                                              ; preds = %111
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %116, 4
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call i32 @RET_TOOFEW(i32 0)
  store i32 %119, i32* %5, align 4
  br label %359

120:                                              ; preds = %115
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = xor i32 %124, 128
  %126 = icmp slt i32 %125, 64
  br i1 %126, label %127, label %151

127:                                              ; preds = %120
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = xor i32 %131, 128
  %133 = icmp slt i32 %132, 64
  br i1 %133, label %134, label %151

134:                                              ; preds = %127
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 3
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = xor i32 %138, 128
  %140 = icmp slt i32 %139, 64
  br i1 %140, label %141, label %151

141:                                              ; preds = %134
  %142 = load i8, i8* %10, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp sge i32 %143, 241
  br i1 %144, label %153, label %145

145:                                              ; preds = %141
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp sge i32 %149, 144
  br i1 %150, label %153, label %151

151:                                              ; preds = %145, %134, %127, %120
  %152 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %152, i32* %5, align 4
  br label %359

153:                                              ; preds = %145, %141
  %154 = load i8, i8* %10, align 1
  %155 = zext i8 %154 to i32
  %156 = and i32 %155, 7
  %157 = shl i32 %156, 18
  %158 = load i8*, i8** %8, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = xor i32 %161, 128
  %163 = shl i32 %162, 12
  %164 = or i32 %157, %163
  %165 = load i8*, i8** %8, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 2
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = xor i32 %168, 128
  %170 = shl i32 %169, 6
  %171 = or i32 %164, %170
  %172 = load i8*, i8** %8, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 3
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = xor i32 %175, 128
  %177 = or i32 %171, %176
  %178 = load i32*, i32** %7, align 8
  store i32 %177, i32* %178, align 4
  store i32 4, i32* %5, align 4
  br label %359

179:                                              ; preds = %111
  %180 = load i8, i8* %10, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp slt i32 %181, 252
  br i1 %182, label %183, label %261

183:                                              ; preds = %179
  %184 = load i32, i32* %9, align 4
  %185 = icmp slt i32 %184, 5
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = call i32 @RET_TOOFEW(i32 0)
  store i32 %187, i32* %5, align 4
  br label %359

188:                                              ; preds = %183
  %189 = load i8*, i8** %8, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 1
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = xor i32 %192, 128
  %194 = icmp slt i32 %193, 64
  br i1 %194, label %195, label %226

195:                                              ; preds = %188
  %196 = load i8*, i8** %8, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 2
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = xor i32 %199, 128
  %201 = icmp slt i32 %200, 64
  br i1 %201, label %202, label %226

202:                                              ; preds = %195
  %203 = load i8*, i8** %8, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 3
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = xor i32 %206, 128
  %208 = icmp slt i32 %207, 64
  br i1 %208, label %209, label %226

209:                                              ; preds = %202
  %210 = load i8*, i8** %8, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 4
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = xor i32 %213, 128
  %215 = icmp slt i32 %214, 64
  br i1 %215, label %216, label %226

216:                                              ; preds = %209
  %217 = load i8, i8* %10, align 1
  %218 = zext i8 %217 to i32
  %219 = icmp sge i32 %218, 249
  br i1 %219, label %228, label %220

220:                                              ; preds = %216
  %221 = load i8*, i8** %8, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = icmp sge i32 %224, 136
  br i1 %225, label %228, label %226

226:                                              ; preds = %220, %209, %202, %195, %188
  %227 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %227, i32* %5, align 4
  br label %359

228:                                              ; preds = %220, %216
  %229 = load i8, i8* %10, align 1
  %230 = zext i8 %229 to i32
  %231 = and i32 %230, 3
  %232 = shl i32 %231, 24
  %233 = load i8*, i8** %8, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = xor i32 %236, 128
  %238 = shl i32 %237, 18
  %239 = or i32 %232, %238
  %240 = load i8*, i8** %8, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 2
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = xor i32 %243, 128
  %245 = shl i32 %244, 12
  %246 = or i32 %239, %245
  %247 = load i8*, i8** %8, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 3
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = xor i32 %250, 128
  %252 = shl i32 %251, 6
  %253 = or i32 %246, %252
  %254 = load i8*, i8** %8, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 4
  %256 = load i8, i8* %255, align 1
  %257 = zext i8 %256 to i32
  %258 = xor i32 %257, 128
  %259 = or i32 %253, %258
  %260 = load i32*, i32** %7, align 8
  store i32 %259, i32* %260, align 4
  store i32 5, i32* %5, align 4
  br label %359

261:                                              ; preds = %179
  %262 = load i8, i8* %10, align 1
  %263 = zext i8 %262 to i32
  %264 = icmp slt i32 %263, 254
  br i1 %264, label %265, label %357

265:                                              ; preds = %261
  %266 = load i32, i32* %9, align 4
  %267 = icmp slt i32 %266, 6
  br i1 %267, label %268, label %270

268:                                              ; preds = %265
  %269 = call i32 @RET_TOOFEW(i32 0)
  store i32 %269, i32* %5, align 4
  br label %359

270:                                              ; preds = %265
  %271 = load i8*, i8** %8, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 1
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = xor i32 %274, 128
  %276 = icmp slt i32 %275, 64
  br i1 %276, label %277, label %315

277:                                              ; preds = %270
  %278 = load i8*, i8** %8, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 2
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  %282 = xor i32 %281, 128
  %283 = icmp slt i32 %282, 64
  br i1 %283, label %284, label %315

284:                                              ; preds = %277
  %285 = load i8*, i8** %8, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 3
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = xor i32 %288, 128
  %290 = icmp slt i32 %289, 64
  br i1 %290, label %291, label %315

291:                                              ; preds = %284
  %292 = load i8*, i8** %8, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 4
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = xor i32 %295, 128
  %297 = icmp slt i32 %296, 64
  br i1 %297, label %298, label %315

298:                                              ; preds = %291
  %299 = load i8*, i8** %8, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 5
  %301 = load i8, i8* %300, align 1
  %302 = zext i8 %301 to i32
  %303 = xor i32 %302, 128
  %304 = icmp slt i32 %303, 64
  br i1 %304, label %305, label %315

305:                                              ; preds = %298
  %306 = load i8, i8* %10, align 1
  %307 = zext i8 %306 to i32
  %308 = icmp sge i32 %307, 253
  br i1 %308, label %317, label %309

309:                                              ; preds = %305
  %310 = load i8*, i8** %8, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 1
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  %314 = icmp sge i32 %313, 132
  br i1 %314, label %317, label %315

315:                                              ; preds = %309, %298, %291, %284, %277, %270
  %316 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %316, i32* %5, align 4
  br label %359

317:                                              ; preds = %309, %305
  %318 = load i8, i8* %10, align 1
  %319 = zext i8 %318 to i32
  %320 = and i32 %319, 1
  %321 = shl i32 %320, 30
  %322 = load i8*, i8** %8, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 1
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = xor i32 %325, 128
  %327 = shl i32 %326, 24
  %328 = or i32 %321, %327
  %329 = load i8*, i8** %8, align 8
  %330 = getelementptr inbounds i8, i8* %329, i64 2
  %331 = load i8, i8* %330, align 1
  %332 = zext i8 %331 to i32
  %333 = xor i32 %332, 128
  %334 = shl i32 %333, 18
  %335 = or i32 %328, %334
  %336 = load i8*, i8** %8, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 3
  %338 = load i8, i8* %337, align 1
  %339 = zext i8 %338 to i32
  %340 = xor i32 %339, 128
  %341 = shl i32 %340, 12
  %342 = or i32 %335, %341
  %343 = load i8*, i8** %8, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 4
  %345 = load i8, i8* %344, align 1
  %346 = zext i8 %345 to i32
  %347 = xor i32 %346, 128
  %348 = shl i32 %347, 6
  %349 = or i32 %342, %348
  %350 = load i8*, i8** %8, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 5
  %352 = load i8, i8* %351, align 1
  %353 = zext i8 %352 to i32
  %354 = xor i32 %353, 128
  %355 = or i32 %349, %354
  %356 = load i32*, i32** %7, align 8
  store i32 %355, i32* %356, align 4
  store i32 6, i32* %5, align 4
  br label %359

357:                                              ; preds = %261
  %358 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %358, i32* %5, align 4
  br label %359

359:                                              ; preds = %357, %317, %315, %268, %228, %226, %186, %153, %151, %118, %92, %90, %64, %45, %43, %34, %25, %17
  %360 = load i32, i32* %5, align 4
  ret i32 %360
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
