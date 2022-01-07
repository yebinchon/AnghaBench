; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_getPixelColorRGBA16.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_getPixelColorRGBA16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i64 }

@LCT_GREY = common dso_local global i64 0, align 8
@LCT_RGB = common dso_local global i64 0, align 8
@LCT_GREY_ALPHA = common dso_local global i64 0, align 8
@LCT_RGBA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16*, i16*, i16*, i16*, i8*, i64, %struct.TYPE_3__*)* @getPixelColorRGBA16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getPixelColorRGBA16(i16* %0, i16* %1, i16* %2, i16* %3, i8* %4, i64 %5, %struct.TYPE_3__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  store i16* %0, i16** %9, align 8
  store i16* %1, i16** %10, align 8
  store i16* %2, i16** %11, align 8
  store i16* %3, i16** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 16
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  store i32 85, i32* %8, align 4
  br label %340

21:                                               ; preds = %7
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LCT_GREY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %21
  %28 = load i8*, i8** %13, align 8
  %29 = load i64, i64* %14, align 8
  %30 = mul i64 %29, 2
  %31 = add i64 %30, 0
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = mul nsw i32 256, %34
  %36 = load i8*, i8** %13, align 8
  %37 = load i64, i64* %14, align 8
  %38 = mul i64 %37, 2
  %39 = add i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = add nsw i32 %35, %42
  %44 = trunc i32 %43 to i16
  %45 = load i16*, i16** %11, align 8
  store i16 %44, i16* %45, align 2
  %46 = load i16*, i16** %10, align 8
  store i16 %44, i16* %46, align 2
  %47 = load i16*, i16** %9, align 8
  store i16 %44, i16* %47, align 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %27
  %53 = load i8*, i8** %13, align 8
  %54 = load i64, i64* %14, align 8
  %55 = mul i64 %54, 2
  %56 = add i64 %55, 0
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = mul i32 256, %59
  %61 = load i8*, i8** %13, align 8
  %62 = load i64, i64* %14, align 8
  %63 = mul i64 %62, 2
  %64 = add i64 %63, 1
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = add i32 %60, %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %52
  %74 = load i16*, i16** %12, align 8
  store i16 0, i16* %74, align 2
  br label %77

75:                                               ; preds = %52, %27
  %76 = load i16*, i16** %12, align 8
  store i16 -1, i16* %76, align 2
  br label %77

77:                                               ; preds = %75, %73
  br label %339

78:                                               ; preds = %21
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @LCT_RGB, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %211

84:                                               ; preds = %78
  %85 = load i8*, i8** %13, align 8
  %86 = load i64, i64* %14, align 8
  %87 = mul i64 %86, 6
  %88 = add i64 %87, 0
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = mul nsw i32 256, %91
  %93 = load i8*, i8** %13, align 8
  %94 = load i64, i64* %14, align 8
  %95 = mul i64 %94, 6
  %96 = add i64 %95, 1
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = add nsw i32 %92, %99
  %101 = trunc i32 %100 to i16
  %102 = load i16*, i16** %9, align 8
  store i16 %101, i16* %102, align 2
  %103 = load i8*, i8** %13, align 8
  %104 = load i64, i64* %14, align 8
  %105 = mul i64 %104, 6
  %106 = add i64 %105, 2
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = mul nsw i32 256, %109
  %111 = load i8*, i8** %13, align 8
  %112 = load i64, i64* %14, align 8
  %113 = mul i64 %112, 6
  %114 = add i64 %113, 3
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = add nsw i32 %110, %117
  %119 = trunc i32 %118 to i16
  %120 = load i16*, i16** %10, align 8
  store i16 %119, i16* %120, align 2
  %121 = load i8*, i8** %13, align 8
  %122 = load i64, i64* %14, align 8
  %123 = mul i64 %122, 6
  %124 = add i64 %123, 4
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = mul nsw i32 256, %127
  %129 = load i8*, i8** %13, align 8
  %130 = load i64, i64* %14, align 8
  %131 = mul i64 %130, 6
  %132 = add i64 %131, 5
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = add nsw i32 %128, %135
  %137 = trunc i32 %136 to i16
  %138 = load i16*, i16** %11, align 8
  store i16 %137, i16* %138, align 2
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %208

143:                                              ; preds = %84
  %144 = load i8*, i8** %13, align 8
  %145 = load i64, i64* %14, align 8
  %146 = mul i64 %145, 6
  %147 = add i64 %146, 0
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = mul i32 256, %150
  %152 = load i8*, i8** %13, align 8
  %153 = load i64, i64* %14, align 8
  %154 = mul i64 %153, 6
  %155 = add i64 %154, 1
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = add i32 %151, %158
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %159, %162
  br i1 %163, label %164, label %208

164:                                              ; preds = %143
  %165 = load i8*, i8** %13, align 8
  %166 = load i64, i64* %14, align 8
  %167 = mul i64 %166, 6
  %168 = add i64 %167, 2
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = mul i32 256, %171
  %173 = load i8*, i8** %13, align 8
  %174 = load i64, i64* %14, align 8
  %175 = mul i64 %174, 6
  %176 = add i64 %175, 3
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = add i32 %172, %179
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %180, %183
  br i1 %184, label %185, label %208

185:                                              ; preds = %164
  %186 = load i8*, i8** %13, align 8
  %187 = load i64, i64* %14, align 8
  %188 = mul i64 %187, 6
  %189 = add i64 %188, 4
  %190 = getelementptr inbounds i8, i8* %186, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = mul i32 256, %192
  %194 = load i8*, i8** %13, align 8
  %195 = load i64, i64* %14, align 8
  %196 = mul i64 %195, 6
  %197 = add i64 %196, 5
  %198 = getelementptr inbounds i8, i8* %194, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = add i32 %193, %200
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %201, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %185
  %207 = load i16*, i16** %12, align 8
  store i16 0, i16* %207, align 2
  br label %210

208:                                              ; preds = %185, %164, %143, %84
  %209 = load i16*, i16** %12, align 8
  store i16 -1, i16* %209, align 2
  br label %210

210:                                              ; preds = %208, %206
  br label %338

211:                                              ; preds = %78
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @LCT_GREY_ALPHA, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %256

217:                                              ; preds = %211
  %218 = load i8*, i8** %13, align 8
  %219 = load i64, i64* %14, align 8
  %220 = mul i64 %219, 4
  %221 = add i64 %220, 0
  %222 = getelementptr inbounds i8, i8* %218, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = mul nsw i32 256, %224
  %226 = load i8*, i8** %13, align 8
  %227 = load i64, i64* %14, align 8
  %228 = mul i64 %227, 4
  %229 = add i64 %228, 1
  %230 = getelementptr inbounds i8, i8* %226, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = add nsw i32 %225, %232
  %234 = trunc i32 %233 to i16
  %235 = load i16*, i16** %11, align 8
  store i16 %234, i16* %235, align 2
  %236 = load i16*, i16** %10, align 8
  store i16 %234, i16* %236, align 2
  %237 = load i16*, i16** %9, align 8
  store i16 %234, i16* %237, align 2
  %238 = load i8*, i8** %13, align 8
  %239 = load i64, i64* %14, align 8
  %240 = mul i64 %239, 4
  %241 = add i64 %240, 2
  %242 = getelementptr inbounds i8, i8* %238, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  %245 = mul nsw i32 256, %244
  %246 = load i8*, i8** %13, align 8
  %247 = load i64, i64* %14, align 8
  %248 = mul i64 %247, 4
  %249 = add i64 %248, 3
  %250 = getelementptr inbounds i8, i8* %246, i64 %249
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = add nsw i32 %245, %252
  %254 = trunc i32 %253 to i16
  %255 = load i16*, i16** %12, align 8
  store i16 %254, i16* %255, align 2
  br label %337

256:                                              ; preds = %211
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @LCT_RGBA, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %335

262:                                              ; preds = %256
  %263 = load i8*, i8** %13, align 8
  %264 = load i64, i64* %14, align 8
  %265 = mul i64 %264, 8
  %266 = add i64 %265, 0
  %267 = getelementptr inbounds i8, i8* %263, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = mul nsw i32 256, %269
  %271 = load i8*, i8** %13, align 8
  %272 = load i64, i64* %14, align 8
  %273 = mul i64 %272, 8
  %274 = add i64 %273, 1
  %275 = getelementptr inbounds i8, i8* %271, i64 %274
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = add nsw i32 %270, %277
  %279 = trunc i32 %278 to i16
  %280 = load i16*, i16** %9, align 8
  store i16 %279, i16* %280, align 2
  %281 = load i8*, i8** %13, align 8
  %282 = load i64, i64* %14, align 8
  %283 = mul i64 %282, 8
  %284 = add i64 %283, 2
  %285 = getelementptr inbounds i8, i8* %281, i64 %284
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = mul nsw i32 256, %287
  %289 = load i8*, i8** %13, align 8
  %290 = load i64, i64* %14, align 8
  %291 = mul i64 %290, 8
  %292 = add i64 %291, 3
  %293 = getelementptr inbounds i8, i8* %289, i64 %292
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = add nsw i32 %288, %295
  %297 = trunc i32 %296 to i16
  %298 = load i16*, i16** %10, align 8
  store i16 %297, i16* %298, align 2
  %299 = load i8*, i8** %13, align 8
  %300 = load i64, i64* %14, align 8
  %301 = mul i64 %300, 8
  %302 = add i64 %301, 4
  %303 = getelementptr inbounds i8, i8* %299, i64 %302
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i32
  %306 = mul nsw i32 256, %305
  %307 = load i8*, i8** %13, align 8
  %308 = load i64, i64* %14, align 8
  %309 = mul i64 %308, 8
  %310 = add i64 %309, 5
  %311 = getelementptr inbounds i8, i8* %307, i64 %310
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  %314 = add nsw i32 %306, %313
  %315 = trunc i32 %314 to i16
  %316 = load i16*, i16** %11, align 8
  store i16 %315, i16* %316, align 2
  %317 = load i8*, i8** %13, align 8
  %318 = load i64, i64* %14, align 8
  %319 = mul i64 %318, 8
  %320 = add i64 %319, 6
  %321 = getelementptr inbounds i8, i8* %317, i64 %320
  %322 = load i8, i8* %321, align 1
  %323 = zext i8 %322 to i32
  %324 = mul nsw i32 256, %323
  %325 = load i8*, i8** %13, align 8
  %326 = load i64, i64* %14, align 8
  %327 = mul i64 %326, 8
  %328 = add i64 %327, 7
  %329 = getelementptr inbounds i8, i8* %325, i64 %328
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  %332 = add nsw i32 %324, %331
  %333 = trunc i32 %332 to i16
  %334 = load i16*, i16** %12, align 8
  store i16 %333, i16* %334, align 2
  br label %336

335:                                              ; preds = %256
  store i32 85, i32* %8, align 4
  br label %340

336:                                              ; preds = %262
  br label %337

337:                                              ; preds = %336, %217
  br label %338

338:                                              ; preds = %337, %210
  br label %339

339:                                              ; preds = %338, %77
  store i32 0, i32* %8, align 4
  br label %340

340:                                              ; preds = %339, %335, %20
  %341 = load i32, i32* %8, align 4
  ret i32 %341
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
