; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_uspp.c_store_slice_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_uspp.c_store_slice_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dither = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32)* @store_slice_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_slice_c(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %335, %7
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %338

23:                                               ; preds = %19
  %24 = load i32**, i32*** @dither, align 8
  %25 = load i32, i32* %15, align 4
  %26 = and i32 %25, 7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %24, i64 %27
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %17, align 8
  store i32 0, i32* %16, align 4
  br label %30

30:                                               ; preds = %331, %23
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %334

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 %38, %39
  %41 = add nsw i32 %37, %40
  %42 = add nsw i32 %41, 0
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %36, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %14, align 4
  %47 = shl i32 %45, %46
  %48 = load i32*, i32** %17, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = ashr i32 %51, 8
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = and i32 %53, 256
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %35
  %57 = load i32, i32* %18, align 4
  %58 = ashr i32 %57, 31
  %59 = xor i32 %58, -1
  store i32 %59, i32* %18, align 4
  br label %60

60:                                               ; preds = %56, %35
  %61 = load i32, i32* %18, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %10, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %63, %66
  %68 = add nsw i32 %67, 0
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %62, i64 %69
  store i32 %61, i32* %70, align 4
  br label %71

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %11, align 4
  %77 = mul nsw i32 %75, %76
  %78 = add nsw i32 %74, %77
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %73, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %14, align 4
  %84 = shl i32 %82, %83
  %85 = load i32*, i32** %17, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %84, %87
  %89 = ashr i32 %88, 8
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = and i32 %90, 256
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %72
  %94 = load i32, i32* %18, align 4
  %95 = ashr i32 %94, 31
  %96 = xor i32 %95, -1
  store i32 %96, i32* %18, align 4
  br label %97

97:                                               ; preds = %93, %72
  %98 = load i32, i32* %18, align 4
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %10, align 4
  %103 = mul nsw i32 %101, %102
  %104 = add nsw i32 %100, %103
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %99, i64 %106
  store i32 %98, i32* %107, align 4
  br label %108

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %11, align 4
  %114 = mul nsw i32 %112, %113
  %115 = add nsw i32 %111, %114
  %116 = add nsw i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %110, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %14, align 4
  %121 = shl i32 %119, %120
  %122 = load i32*, i32** %17, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %121, %124
  %126 = ashr i32 %125, 8
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = and i32 %127, 256
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %109
  %131 = load i32, i32* %18, align 4
  %132 = ashr i32 %131, 31
  %133 = xor i32 %132, -1
  store i32 %133, i32* %18, align 4
  br label %134

134:                                              ; preds = %130, %109
  %135 = load i32, i32* %18, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %10, align 4
  %140 = mul nsw i32 %138, %139
  %141 = add nsw i32 %137, %140
  %142 = add nsw i32 %141, 2
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %136, i64 %143
  store i32 %135, i32* %144, align 4
  br label %145

145:                                              ; preds = %134
  br label %146

146:                                              ; preds = %145
  %147 = load i32*, i32** %9, align 8
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %11, align 4
  %151 = mul nsw i32 %149, %150
  %152 = add nsw i32 %148, %151
  %153 = add nsw i32 %152, 3
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %147, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %14, align 4
  %158 = shl i32 %156, %157
  %159 = load i32*, i32** %17, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %158, %161
  %163 = ashr i32 %162, 8
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* %18, align 4
  %165 = and i32 %164, 256
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %146
  %168 = load i32, i32* %18, align 4
  %169 = ashr i32 %168, 31
  %170 = xor i32 %169, -1
  store i32 %170, i32* %18, align 4
  br label %171

171:                                              ; preds = %167, %146
  %172 = load i32, i32* %18, align 4
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %10, align 4
  %177 = mul nsw i32 %175, %176
  %178 = add nsw i32 %174, %177
  %179 = add nsw i32 %178, 3
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %173, i64 %180
  store i32 %172, i32* %181, align 4
  br label %182

182:                                              ; preds = %171
  br label %183

183:                                              ; preds = %182
  %184 = load i32*, i32** %9, align 8
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %11, align 4
  %188 = mul nsw i32 %186, %187
  %189 = add nsw i32 %185, %188
  %190 = add nsw i32 %189, 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %184, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %14, align 4
  %195 = shl i32 %193, %194
  %196 = load i32*, i32** %17, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 4
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %195, %198
  %200 = ashr i32 %199, 8
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %18, align 4
  %202 = and i32 %201, 256
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %183
  %205 = load i32, i32* %18, align 4
  %206 = ashr i32 %205, 31
  %207 = xor i32 %206, -1
  store i32 %207, i32* %18, align 4
  br label %208

208:                                              ; preds = %204, %183
  %209 = load i32, i32* %18, align 4
  %210 = load i32*, i32** %8, align 8
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* %10, align 4
  %214 = mul nsw i32 %212, %213
  %215 = add nsw i32 %211, %214
  %216 = add nsw i32 %215, 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %210, i64 %217
  store i32 %209, i32* %218, align 4
  br label %219

219:                                              ; preds = %208
  br label %220

220:                                              ; preds = %219
  %221 = load i32*, i32** %9, align 8
  %222 = load i32, i32* %16, align 4
  %223 = load i32, i32* %15, align 4
  %224 = load i32, i32* %11, align 4
  %225 = mul nsw i32 %223, %224
  %226 = add nsw i32 %222, %225
  %227 = add nsw i32 %226, 5
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %221, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %14, align 4
  %232 = shl i32 %230, %231
  %233 = load i32*, i32** %17, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 5
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %232, %235
  %237 = ashr i32 %236, 8
  store i32 %237, i32* %18, align 4
  %238 = load i32, i32* %18, align 4
  %239 = and i32 %238, 256
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %220
  %242 = load i32, i32* %18, align 4
  %243 = ashr i32 %242, 31
  %244 = xor i32 %243, -1
  store i32 %244, i32* %18, align 4
  br label %245

245:                                              ; preds = %241, %220
  %246 = load i32, i32* %18, align 4
  %247 = load i32*, i32** %8, align 8
  %248 = load i32, i32* %16, align 4
  %249 = load i32, i32* %15, align 4
  %250 = load i32, i32* %10, align 4
  %251 = mul nsw i32 %249, %250
  %252 = add nsw i32 %248, %251
  %253 = add nsw i32 %252, 5
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %247, i64 %254
  store i32 %246, i32* %255, align 4
  br label %256

256:                                              ; preds = %245
  br label %257

257:                                              ; preds = %256
  %258 = load i32*, i32** %9, align 8
  %259 = load i32, i32* %16, align 4
  %260 = load i32, i32* %15, align 4
  %261 = load i32, i32* %11, align 4
  %262 = mul nsw i32 %260, %261
  %263 = add nsw i32 %259, %262
  %264 = add nsw i32 %263, 6
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %258, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %14, align 4
  %269 = shl i32 %267, %268
  %270 = load i32*, i32** %17, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 6
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %269, %272
  %274 = ashr i32 %273, 8
  store i32 %274, i32* %18, align 4
  %275 = load i32, i32* %18, align 4
  %276 = and i32 %275, 256
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %257
  %279 = load i32, i32* %18, align 4
  %280 = ashr i32 %279, 31
  %281 = xor i32 %280, -1
  store i32 %281, i32* %18, align 4
  br label %282

282:                                              ; preds = %278, %257
  %283 = load i32, i32* %18, align 4
  %284 = load i32*, i32** %8, align 8
  %285 = load i32, i32* %16, align 4
  %286 = load i32, i32* %15, align 4
  %287 = load i32, i32* %10, align 4
  %288 = mul nsw i32 %286, %287
  %289 = add nsw i32 %285, %288
  %290 = add nsw i32 %289, 6
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %284, i64 %291
  store i32 %283, i32* %292, align 4
  br label %293

293:                                              ; preds = %282
  br label %294

294:                                              ; preds = %293
  %295 = load i32*, i32** %9, align 8
  %296 = load i32, i32* %16, align 4
  %297 = load i32, i32* %15, align 4
  %298 = load i32, i32* %11, align 4
  %299 = mul nsw i32 %297, %298
  %300 = add nsw i32 %296, %299
  %301 = add nsw i32 %300, 7
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %295, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %14, align 4
  %306 = shl i32 %304, %305
  %307 = load i32*, i32** %17, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 7
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %306, %309
  %311 = ashr i32 %310, 8
  store i32 %311, i32* %18, align 4
  %312 = load i32, i32* %18, align 4
  %313 = and i32 %312, 256
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %294
  %316 = load i32, i32* %18, align 4
  %317 = ashr i32 %316, 31
  %318 = xor i32 %317, -1
  store i32 %318, i32* %18, align 4
  br label %319

319:                                              ; preds = %315, %294
  %320 = load i32, i32* %18, align 4
  %321 = load i32*, i32** %8, align 8
  %322 = load i32, i32* %16, align 4
  %323 = load i32, i32* %15, align 4
  %324 = load i32, i32* %10, align 4
  %325 = mul nsw i32 %323, %324
  %326 = add nsw i32 %322, %325
  %327 = add nsw i32 %326, 7
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %321, i64 %328
  store i32 %320, i32* %329, align 4
  br label %330

330:                                              ; preds = %319
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %16, align 4
  %333 = add nsw i32 %332, 8
  store i32 %333, i32* %16, align 4
  br label %30

334:                                              ; preds = %30
  br label %335

335:                                              ; preds = %334
  %336 = load i32, i32* %15, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %15, align 4
  br label %19

338:                                              ; preds = %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
