; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_planar2x_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_planar2x_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32)* @planar2x_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @planar2x_c(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %18, i32* %20, align 4
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %67, %6
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %21
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 3, %31
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %32, %38
  %40 = ashr i32 %39, 2
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %13, align 4
  %43 = mul nsw i32 2, %42
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  store i32 %40, i32* %46, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 3, %57
  %59 = add nsw i32 %51, %58
  %60 = ashr i32 %59, 2
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = mul nsw i32 2, %62
  %64 = add nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  store i32 %60, i32* %66, align 4
  br label %67

67:                                               ; preds = %26
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %21

70:                                               ; preds = %21
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = mul nsw i32 2, %78
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  store i32 %76, i32* %82, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %8, align 8
  store i32 1, i32* %14, align 4
  br label %87

87:                                               ; preds = %281, %70
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %284

91:                                               ; preds = %87
  store i32 1, i32* %15, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %94, 3
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %95, %100
  %102 = ashr i32 %101, 2
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 3, %112
  %114 = add nsw i32 %107, %113
  %115 = ashr i32 %114, 2
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  store i32 0, i32* %13, align 4
  br label %120

120:                                              ; preds = %220, %91
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %9, align 4
  %123 = sub nsw i32 %122, 1
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %223

125:                                              ; preds = %120
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 0
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %131, 3
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %134, %135
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %133, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %132, %140
  %142 = ashr i32 %141, 2
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %13, align 4
  %145 = mul nsw i32 2, %144
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  store i32 %142, i32* %148, align 4
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 0
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %156, %157
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %155, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 3, %162
  %164 = add nsw i32 %154, %163
  %165 = ashr i32 %164, 2
  %166 = load i32*, i32** %8, align 8
  %167 = load i32, i32* %13, align 4
  %168 = mul nsw i32 2, %167
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %168, %169
  %171 = add nsw i32 %170, 2
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %166, i64 %172
  store i32 %165, i32* %173, align 4
  %174 = load i32*, i32** %7, align 8
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %7, align 8
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %11, align 4
  %183 = add nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %180, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 3, %186
  %188 = add nsw i32 %179, %187
  %189 = ashr i32 %188, 2
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* %13, align 4
  %192 = mul nsw i32 2, %191
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %192, %193
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %190, i64 %196
  store i32 %189, i32* %197, align 4
  %198 = load i32*, i32** %7, align 8
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 %203, 3
  %205 = load i32*, i32** %7, align 8
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %206, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %205, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %204, %211
  %213 = ashr i32 %212, 2
  %214 = load i32*, i32** %8, align 8
  %215 = load i32, i32* %13, align 4
  %216 = mul nsw i32 2, %215
  %217 = add nsw i32 %216, 2
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %214, i64 %218
  store i32 %213, i32* %219, align 4
  br label %220

220:                                              ; preds = %125
  %221 = load i32, i32* %13, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %13, align 4
  br label %120

223:                                              ; preds = %120
  %224 = load i32*, i32** %7, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sub nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %224, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = mul nsw i32 %229, 3
  %231 = load i32*, i32** %7, align 8
  %232 = load i32, i32* %9, align 4
  %233 = sub nsw i32 %232, 1
  %234 = load i32, i32* %11, align 4
  %235 = add nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %231, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %230, %238
  %240 = ashr i32 %239, 2
  %241 = load i32*, i32** %8, align 8
  %242 = load i32, i32* %9, align 4
  %243 = mul nsw i32 %242, 2
  %244 = sub nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %241, i64 %245
  store i32 %240, i32* %246, align 4
  %247 = load i32*, i32** %7, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32*, i32** %7, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sub nsw i32 %254, 1
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %255, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %253, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = mul nsw i32 3, %260
  %262 = add nsw i32 %252, %261
  %263 = ashr i32 %262, 2
  %264 = load i32*, i32** %8, align 8
  %265 = load i32, i32* %9, align 4
  %266 = mul nsw i32 %265, 2
  %267 = sub nsw i32 %266, 1
  %268 = load i32, i32* %12, align 4
  %269 = add nsw i32 %267, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %264, i64 %270
  store i32 %263, i32* %271, align 4
  %272 = load i32, i32* %12, align 4
  %273 = mul nsw i32 %272, 2
  %274 = load i32*, i32** %8, align 8
  %275 = sext i32 %273 to i64
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  store i32* %276, i32** %8, align 8
  %277 = load i32, i32* %11, align 4
  %278 = load i32*, i32** %7, align 8
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  store i32* %280, i32** %7, align 8
  br label %281

281:                                              ; preds = %223
  %282 = load i32, i32* %14, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %14, align 4
  br label %87

284:                                              ; preds = %87
  %285 = load i32*, i32** %7, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32*, i32** %8, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  store i32 %287, i32* %289, align 4
  store i32 0, i32* %13, align 4
  br label %290

290:                                              ; preds = %336, %284
  %291 = load i32, i32* %13, align 4
  %292 = load i32, i32* %9, align 4
  %293 = sub nsw i32 %292, 1
  %294 = icmp slt i32 %291, %293
  br i1 %294, label %295, label %339

295:                                              ; preds = %290
  %296 = load i32*, i32** %7, align 8
  %297 = load i32, i32* %13, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = mul nsw i32 %300, 3
  %302 = load i32*, i32** %7, align 8
  %303 = load i32, i32* %13, align 4
  %304 = add nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %302, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = add nsw i32 %301, %307
  %309 = ashr i32 %308, 2
  %310 = load i32*, i32** %8, align 8
  %311 = load i32, i32* %13, align 4
  %312 = mul nsw i32 2, %311
  %313 = add nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %310, i64 %314
  store i32 %309, i32* %315, align 4
  %316 = load i32*, i32** %7, align 8
  %317 = load i32, i32* %13, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32*, i32** %7, align 8
  %322 = load i32, i32* %13, align 4
  %323 = add nsw i32 %322, 1
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %321, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = mul nsw i32 3, %326
  %328 = add nsw i32 %320, %327
  %329 = ashr i32 %328, 2
  %330 = load i32*, i32** %8, align 8
  %331 = load i32, i32* %13, align 4
  %332 = mul nsw i32 2, %331
  %333 = add nsw i32 %332, 2
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %330, i64 %334
  store i32 %329, i32* %335, align 4
  br label %336

336:                                              ; preds = %295
  %337 = load i32, i32* %13, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %13, align 4
  br label %290

339:                                              ; preds = %290
  %340 = load i32*, i32** %7, align 8
  %341 = load i32, i32* %9, align 4
  %342 = sub nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %340, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = load i32*, i32** %8, align 8
  %347 = load i32, i32* %9, align 4
  %348 = mul nsw i32 2, %347
  %349 = sub nsw i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %346, i64 %350
  store i32 %345, i32* %351, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
