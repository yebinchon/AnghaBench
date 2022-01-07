; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_spp.c_store_slice_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_spp.c_store_slice_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32, [8 x i32]*)* @store_slice_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_slice_c(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, [8 x i32]* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [8 x i32]*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store [8 x i32]* %7, [8 x i32]** %16, align 8
  store i32 0, i32* %17, align 4
  br label %21

21:                                               ; preds = %336, %8
  %22 = load i32, i32* %17, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %339

25:                                               ; preds = %21
  %26 = load [8 x i32]*, [8 x i32]** %16, align 8
  %27 = load i32, i32* %17, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 %28
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %29, i64 0, i64 0
  store i32* %30, i32** %19, align 8
  store i32 0, i32* %18, align 4
  br label %31

31:                                               ; preds = %332, %25
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %335

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %12, align 4
  %41 = mul nsw i32 %39, %40
  %42 = add nsw i32 %38, %41
  %43 = add nsw i32 %42, 0
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %37, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %15, align 4
  %48 = shl i32 %46, %47
  %49 = load i32*, i32** %19, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %48, %51
  %53 = ashr i32 %52, 6
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %20, align 4
  %55 = and i32 %54, 256
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %36
  %58 = load i32, i32* %20, align 4
  %59 = ashr i32 %58, 31
  %60 = xor i32 %59, -1
  store i32 %60, i32* %20, align 4
  br label %61

61:                                               ; preds = %57, %36
  %62 = load i32, i32* %20, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %11, align 4
  %67 = mul nsw i32 %65, %66
  %68 = add nsw i32 %64, %67
  %69 = add nsw i32 %68, 0
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %63, i64 %70
  store i32 %62, i32* %71, align 4
  br label %72

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %12, align 4
  %78 = mul nsw i32 %76, %77
  %79 = add nsw i32 %75, %78
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %74, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %15, align 4
  %85 = shl i32 %83, %84
  %86 = load i32*, i32** %19, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %85, %88
  %90 = ashr i32 %89, 6
  store i32 %90, i32* %20, align 4
  %91 = load i32, i32* %20, align 4
  %92 = and i32 %91, 256
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %73
  %95 = load i32, i32* %20, align 4
  %96 = ashr i32 %95, 31
  %97 = xor i32 %96, -1
  store i32 %97, i32* %20, align 4
  br label %98

98:                                               ; preds = %94, %73
  %99 = load i32, i32* %20, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %11, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add nsw i32 %101, %104
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %100, i64 %107
  store i32 %99, i32* %108, align 4
  br label %109

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %12, align 4
  %115 = mul nsw i32 %113, %114
  %116 = add nsw i32 %112, %115
  %117 = add nsw i32 %116, 2
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %111, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %15, align 4
  %122 = shl i32 %120, %121
  %123 = load i32*, i32** %19, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %122, %125
  %127 = ashr i32 %126, 6
  store i32 %127, i32* %20, align 4
  %128 = load i32, i32* %20, align 4
  %129 = and i32 %128, 256
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %110
  %132 = load i32, i32* %20, align 4
  %133 = ashr i32 %132, 31
  %134 = xor i32 %133, -1
  store i32 %134, i32* %20, align 4
  br label %135

135:                                              ; preds = %131, %110
  %136 = load i32, i32* %20, align 4
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %11, align 4
  %141 = mul nsw i32 %139, %140
  %142 = add nsw i32 %138, %141
  %143 = add nsw i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %137, i64 %144
  store i32 %136, i32* %145, align 4
  br label %146

146:                                              ; preds = %135
  br label %147

147:                                              ; preds = %146
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %12, align 4
  %152 = mul nsw i32 %150, %151
  %153 = add nsw i32 %149, %152
  %154 = add nsw i32 %153, 3
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %148, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %15, align 4
  %159 = shl i32 %157, %158
  %160 = load i32*, i32** %19, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %159, %162
  %164 = ashr i32 %163, 6
  store i32 %164, i32* %20, align 4
  %165 = load i32, i32* %20, align 4
  %166 = and i32 %165, 256
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %147
  %169 = load i32, i32* %20, align 4
  %170 = ashr i32 %169, 31
  %171 = xor i32 %170, -1
  store i32 %171, i32* %20, align 4
  br label %172

172:                                              ; preds = %168, %147
  %173 = load i32, i32* %20, align 4
  %174 = load i32*, i32** %9, align 8
  %175 = load i32, i32* %18, align 4
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %11, align 4
  %178 = mul nsw i32 %176, %177
  %179 = add nsw i32 %175, %178
  %180 = add nsw i32 %179, 3
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %174, i64 %181
  store i32 %173, i32* %182, align 4
  br label %183

183:                                              ; preds = %172
  br label %184

184:                                              ; preds = %183
  %185 = load i32*, i32** %10, align 8
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %17, align 4
  %188 = load i32, i32* %12, align 4
  %189 = mul nsw i32 %187, %188
  %190 = add nsw i32 %186, %189
  %191 = add nsw i32 %190, 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %185, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %15, align 4
  %196 = shl i32 %194, %195
  %197 = load i32*, i32** %19, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 4
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %196, %199
  %201 = ashr i32 %200, 6
  store i32 %201, i32* %20, align 4
  %202 = load i32, i32* %20, align 4
  %203 = and i32 %202, 256
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %184
  %206 = load i32, i32* %20, align 4
  %207 = ashr i32 %206, 31
  %208 = xor i32 %207, -1
  store i32 %208, i32* %20, align 4
  br label %209

209:                                              ; preds = %205, %184
  %210 = load i32, i32* %20, align 4
  %211 = load i32*, i32** %9, align 8
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %11, align 4
  %215 = mul nsw i32 %213, %214
  %216 = add nsw i32 %212, %215
  %217 = add nsw i32 %216, 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %211, i64 %218
  store i32 %210, i32* %219, align 4
  br label %220

220:                                              ; preds = %209
  br label %221

221:                                              ; preds = %220
  %222 = load i32*, i32** %10, align 8
  %223 = load i32, i32* %18, align 4
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* %12, align 4
  %226 = mul nsw i32 %224, %225
  %227 = add nsw i32 %223, %226
  %228 = add nsw i32 %227, 5
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %222, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %15, align 4
  %233 = shl i32 %231, %232
  %234 = load i32*, i32** %19, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 5
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %233, %236
  %238 = ashr i32 %237, 6
  store i32 %238, i32* %20, align 4
  %239 = load i32, i32* %20, align 4
  %240 = and i32 %239, 256
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %221
  %243 = load i32, i32* %20, align 4
  %244 = ashr i32 %243, 31
  %245 = xor i32 %244, -1
  store i32 %245, i32* %20, align 4
  br label %246

246:                                              ; preds = %242, %221
  %247 = load i32, i32* %20, align 4
  %248 = load i32*, i32** %9, align 8
  %249 = load i32, i32* %18, align 4
  %250 = load i32, i32* %17, align 4
  %251 = load i32, i32* %11, align 4
  %252 = mul nsw i32 %250, %251
  %253 = add nsw i32 %249, %252
  %254 = add nsw i32 %253, 5
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %248, i64 %255
  store i32 %247, i32* %256, align 4
  br label %257

257:                                              ; preds = %246
  br label %258

258:                                              ; preds = %257
  %259 = load i32*, i32** %10, align 8
  %260 = load i32, i32* %18, align 4
  %261 = load i32, i32* %17, align 4
  %262 = load i32, i32* %12, align 4
  %263 = mul nsw i32 %261, %262
  %264 = add nsw i32 %260, %263
  %265 = add nsw i32 %264, 6
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %259, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %15, align 4
  %270 = shl i32 %268, %269
  %271 = load i32*, i32** %19, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 6
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %270, %273
  %275 = ashr i32 %274, 6
  store i32 %275, i32* %20, align 4
  %276 = load i32, i32* %20, align 4
  %277 = and i32 %276, 256
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %258
  %280 = load i32, i32* %20, align 4
  %281 = ashr i32 %280, 31
  %282 = xor i32 %281, -1
  store i32 %282, i32* %20, align 4
  br label %283

283:                                              ; preds = %279, %258
  %284 = load i32, i32* %20, align 4
  %285 = load i32*, i32** %9, align 8
  %286 = load i32, i32* %18, align 4
  %287 = load i32, i32* %17, align 4
  %288 = load i32, i32* %11, align 4
  %289 = mul nsw i32 %287, %288
  %290 = add nsw i32 %286, %289
  %291 = add nsw i32 %290, 6
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %285, i64 %292
  store i32 %284, i32* %293, align 4
  br label %294

294:                                              ; preds = %283
  br label %295

295:                                              ; preds = %294
  %296 = load i32*, i32** %10, align 8
  %297 = load i32, i32* %18, align 4
  %298 = load i32, i32* %17, align 4
  %299 = load i32, i32* %12, align 4
  %300 = mul nsw i32 %298, %299
  %301 = add nsw i32 %297, %300
  %302 = add nsw i32 %301, 7
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %296, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %15, align 4
  %307 = shl i32 %305, %306
  %308 = load i32*, i32** %19, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 7
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %307, %310
  %312 = ashr i32 %311, 6
  store i32 %312, i32* %20, align 4
  %313 = load i32, i32* %20, align 4
  %314 = and i32 %313, 256
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %295
  %317 = load i32, i32* %20, align 4
  %318 = ashr i32 %317, 31
  %319 = xor i32 %318, -1
  store i32 %319, i32* %20, align 4
  br label %320

320:                                              ; preds = %316, %295
  %321 = load i32, i32* %20, align 4
  %322 = load i32*, i32** %9, align 8
  %323 = load i32, i32* %18, align 4
  %324 = load i32, i32* %17, align 4
  %325 = load i32, i32* %11, align 4
  %326 = mul nsw i32 %324, %325
  %327 = add nsw i32 %323, %326
  %328 = add nsw i32 %327, 7
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %322, i64 %329
  store i32 %321, i32* %330, align 4
  br label %331

331:                                              ; preds = %320
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %18, align 4
  %334 = add nsw i32 %333, 8
  store i32 %334, i32* %18, align 4
  br label %31

335:                                              ; preds = %31
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %17, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %17, align 4
  br label %21

339:                                              ; preds = %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
