; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_fse_compress.c_FSE_buildCTable_wksp.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_fse_compress.c_FSE_buildCTable_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@FSE_MAX_SYMBOL_VALUE = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FSE_buildCTable_wksp(i32* %0, i16* %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i16* %1, i16** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %37 = load i32, i32* %11, align 4
  %38 = shl i32 1, %37
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %15, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = bitcast i32* %41 to i8*
  store i8* %42, i8** %16, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = bitcast i8* %43 to i64*
  %45 = getelementptr inbounds i64, i64* %44, i64 2
  store i64* %45, i64** %17, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %6
  %52 = load i32, i32* %14, align 4
  %53 = ashr i32 %52, 1
  br label %55

54:                                               ; preds = %6
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i32 [ %53, %51 ], [ 1, %54 ]
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %48, i64 %57
  %59 = bitcast i32* %58 to i8*
  store i8* %59, i8** %18, align 8
  %60 = load i8*, i8** %18, align 8
  %61 = bitcast i8* %60 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %19, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @FSE_TABLESTEP(i32 %62)
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* @FSE_MAX_SYMBOL_VALUE, align 4
  %65 = add nsw i32 %64, 2
  %66 = zext i32 %65 to i64
  %67 = call i8* @llvm.stacksave()
  store i8* %67, i8** %21, align 8
  %68 = alloca i32, i64 %66, align 16
  store i64 %66, i64* %22, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = bitcast i8* %69 to i64*
  store i64* %70, i64** %23, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %24, align 4
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = shl i64 1, %74
  %76 = mul i64 %75, 8
  %77 = load i64, i64* %13, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %55
  %80 = load i32, i32* @tableLog_tooLarge, align 4
  %81 = call i64 @ERROR(i32 %80)
  store i64 %81, i64* %7, align 8
  store i32 1, i32* %25, align 4
  br label %329

82:                                               ; preds = %55
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = load i64*, i64** %17, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 -2
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = load i64*, i64** %17, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 -1
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* %11, align 4
  %92 = icmp ult i32 %91, 16
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 0, i32* %95, align 16
  store i32 1, i32* %26, align 4
  br label %96

96:                                               ; preds = %146, %82
  %97 = load i32, i32* %26, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %98, 1
  %100 = icmp ule i32 %97, %99
  br i1 %100, label %101, label %149

101:                                              ; preds = %96
  %102 = load i16*, i16** %9, align 8
  %103 = load i32, i32* %26, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i16, i16* %102, i64 %105
  %107 = load i16, i16* %106, align 2
  %108 = sext i16 %107 to i32
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %128

110:                                              ; preds = %101
  %111 = load i32, i32* %26, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %68, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  %117 = load i32, i32* %26, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %68, i64 %118
  store i32 %116, i32* %119, align 4
  %120 = load i32, i32* %26, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = load i64*, i64** %23, align 8
  %124 = load i32, i32* %24, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %24, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i64, i64* %123, i64 %126
  store i64 %122, i64* %127, align 8
  br label %145

128:                                              ; preds = %101
  %129 = load i32, i32* %26, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %68, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i16*, i16** %9, align 8
  %135 = load i32, i32* %26, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i16, i16* %134, i64 %137
  %139 = load i16, i16* %138, align 2
  %140 = sext i16 %139 to i32
  %141 = add nsw i32 %133, %140
  %142 = load i32, i32* %26, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %68, i64 %143
  store i32 %141, i32* %144, align 4
  br label %145

145:                                              ; preds = %128, %110
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %26, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %26, align 4
  br label %96

149:                                              ; preds = %96
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 1
  %152 = load i32, i32* %10, align 4
  %153 = add i32 %152, 1
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %68, i64 %154
  store i32 %151, i32* %155, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %156

156:                                              ; preds = %198, %149
  %157 = load i32, i32* %28, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp ule i32 %157, %158
  br i1 %159, label %160, label %201

160:                                              ; preds = %156
  %161 = load i16*, i16** %9, align 8
  %162 = load i32, i32* %28, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i16, i16* %161, i64 %163
  %165 = load i16, i16* %164, align 2
  %166 = sext i16 %165 to i32
  store i32 %166, i32* %30, align 4
  store i32 0, i32* %29, align 4
  br label %167

167:                                              ; preds = %194, %160
  %168 = load i32, i32* %29, align 4
  %169 = load i32, i32* %30, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %197

171:                                              ; preds = %167
  %172 = load i32, i32* %28, align 4
  %173 = sext i32 %172 to i64
  %174 = load i64*, i64** %23, align 8
  %175 = load i32, i32* %27, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  store i64 %173, i64* %177, align 8
  %178 = load i32, i32* %27, align 4
  %179 = load i32, i32* %20, align 4
  %180 = add nsw i32 %178, %179
  %181 = load i32, i32* %15, align 4
  %182 = and i32 %180, %181
  store i32 %182, i32* %27, align 4
  br label %183

183:                                              ; preds = %187, %171
  %184 = load i32, i32* %27, align 4
  %185 = load i32, i32* %24, align 4
  %186 = icmp sgt i32 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = load i32, i32* %27, align 4
  %189 = load i32, i32* %20, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i32, i32* %15, align 4
  %192 = and i32 %190, %191
  store i32 %192, i32* %27, align 4
  br label %183

193:                                              ; preds = %183
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %29, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %29, align 4
  br label %167

197:                                              ; preds = %167
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %28, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %28, align 4
  br label %156

201:                                              ; preds = %156
  %202 = load i32, i32* %27, align 4
  %203 = icmp eq i32 %202, 0
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  store i32 0, i32* %31, align 4
  br label %206

206:                                              ; preds = %227, %201
  %207 = load i32, i32* %31, align 4
  %208 = load i32, i32* %14, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %230

210:                                              ; preds = %206
  %211 = load i64*, i64** %23, align 8
  %212 = load i32, i32* %31, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %211, i64 %213
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %32, align 8
  %216 = load i32, i32* %14, align 4
  %217 = load i32, i32* %31, align 4
  %218 = add nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = load i64*, i64** %17, align 8
  %221 = load i64, i64* %32, align 8
  %222 = getelementptr inbounds i32, i32* %68, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i64, i64* %220, i64 %225
  store i64 %219, i64* %226, align 8
  br label %227

227:                                              ; preds = %210
  %228 = load i32, i32* %31, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %31, align 4
  br label %206

230:                                              ; preds = %206
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  br label %231

231:                                              ; preds = %325, %230
  %232 = load i32, i32* %34, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp ule i32 %232, %233
  br i1 %234, label %235, label %328

235:                                              ; preds = %231
  %236 = load i16*, i16** %9, align 8
  %237 = load i32, i32* %34, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i16, i16* %236, i64 %238
  %240 = load i16, i16* %239, align 2
  %241 = sext i16 %240 to i32
  switch i32 %241, label %274 [
    i32 0, label %242
    i32 -1, label %254
    i32 1, label %254
  ]

242:                                              ; preds = %235
  %243 = load i32, i32* %11, align 4
  %244 = add i32 %243, 1
  %245 = shl i32 %244, 16
  %246 = load i32, i32* %11, align 4
  %247 = shl i32 1, %246
  %248 = sub i32 %245, %247
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %250 = load i32, i32* %34, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  store i32 %248, i32* %253, align 4
  br label %324

254:                                              ; preds = %235, %235
  %255 = load i32, i32* %11, align 4
  %256 = shl i32 %255, 16
  %257 = load i32, i32* %11, align 4
  %258 = shl i32 1, %257
  %259 = sub i32 %256, %258
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %261 = load i32, i32* %34, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 0
  store i32 %259, i32* %264, align 4
  %265 = load i32, i32* %33, align 4
  %266 = sub i32 %265, 1
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %268 = load i32, i32* %34, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 1
  store i32 %266, i32* %271, align 4
  %272 = load i32, i32* %33, align 4
  %273 = add i32 %272, 1
  store i32 %273, i32* %33, align 4
  br label %324

274:                                              ; preds = %235
  %275 = load i32, i32* %11, align 4
  %276 = load i16*, i16** %9, align 8
  %277 = load i32, i32* %34, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds i16, i16* %276, i64 %278
  %280 = load i16, i16* %279, align 2
  %281 = sext i16 %280 to i32
  %282 = sub nsw i32 %281, 1
  %283 = trunc i32 %282 to i16
  %284 = call i32 @BIT_highbit32(i16 signext %283)
  %285 = sub i32 %275, %284
  store i32 %285, i32* %35, align 4
  %286 = load i16*, i16** %9, align 8
  %287 = load i32, i32* %34, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds i16, i16* %286, i64 %288
  %290 = load i16, i16* %289, align 2
  %291 = sext i16 %290 to i32
  %292 = load i32, i32* %35, align 4
  %293 = shl i32 %291, %292
  store i32 %293, i32* %36, align 4
  %294 = load i32, i32* %35, align 4
  %295 = shl i32 %294, 16
  %296 = load i32, i32* %36, align 4
  %297 = sub nsw i32 %295, %296
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %299 = load i32, i32* %34, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 0
  store i32 %297, i32* %302, align 4
  %303 = load i32, i32* %33, align 4
  %304 = load i16*, i16** %9, align 8
  %305 = load i32, i32* %34, align 4
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i16, i16* %304, i64 %306
  %308 = load i16, i16* %307, align 2
  %309 = sext i16 %308 to i32
  %310 = sub i32 %303, %309
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %312 = load i32, i32* %34, align 4
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 1
  store i32 %310, i32* %315, align 4
  %316 = load i16*, i16** %9, align 8
  %317 = load i32, i32* %34, align 4
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds i16, i16* %316, i64 %318
  %320 = load i16, i16* %319, align 2
  %321 = sext i16 %320 to i32
  %322 = load i32, i32* %33, align 4
  %323 = add i32 %322, %321
  store i32 %323, i32* %33, align 4
  br label %324

324:                                              ; preds = %274, %254, %242
  br label %325

325:                                              ; preds = %324
  %326 = load i32, i32* %34, align 4
  %327 = add i32 %326, 1
  store i32 %327, i32* %34, align 4
  br label %231

328:                                              ; preds = %231
  store i64 0, i64* %7, align 8
  store i32 1, i32* %25, align 4
  br label %329

329:                                              ; preds = %328, %79
  %330 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %330)
  %331 = load i64, i64* %7, align 8
  ret i64 %331
}

declare dso_local i32 @FSE_TABLESTEP(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BIT_highbit32(i16 signext) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
