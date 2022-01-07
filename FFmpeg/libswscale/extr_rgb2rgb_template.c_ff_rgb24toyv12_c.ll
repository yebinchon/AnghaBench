; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_ff_rgb24toyv12_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_ff_rgb24toyv12_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RY_IDX = common dso_local global i64 0, align 8
@GY_IDX = common dso_local global i64 0, align 8
@BY_IDX = common dso_local global i64 0, align 8
@RU_IDX = common dso_local global i64 0, align 8
@GU_IDX = common dso_local global i64 0, align 8
@BU_IDX = common dso_local global i64 0, align 8
@RV_IDX = common dso_local global i64 0, align 8
@GV_IDX = common dso_local global i64 0, align 8
@BV_IDX = common dso_local global i64 0, align 8
@RGB2YUV_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_rgb24toyv12_c(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32* %9, i32** %20, align 8
  %43 = load i32*, i32** %20, align 8
  %44 = load i64, i64* @RY_IDX, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %21, align 4
  %47 = load i32*, i32** %20, align 8
  %48 = load i64, i64* @GY_IDX, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %22, align 4
  %51 = load i32*, i32** %20, align 8
  %52 = load i64, i64* @BY_IDX, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %23, align 4
  %55 = load i32*, i32** %20, align 8
  %56 = load i64, i64* @RU_IDX, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %24, align 4
  %59 = load i32*, i32** %20, align 8
  %60 = load i64, i64* @GU_IDX, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %25, align 4
  %63 = load i32*, i32** %20, align 8
  %64 = load i64, i64* @BU_IDX, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %26, align 4
  %67 = load i32*, i32** %20, align 8
  %68 = load i64, i64* @RV_IDX, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %27, align 4
  %71 = load i32*, i32** %20, align 8
  %72 = load i64, i64* @GV_IDX, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %28, align 4
  %75 = load i32*, i32** %20, align 8
  %76 = load i64, i64* @BV_IDX, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %29, align 4
  %79 = load i32, i32* %15, align 4
  %80 = ashr i32 %79, 1
  store i32 %80, i32* %31, align 4
  store i32 0, i32* %30, align 4
  br label %81

81:                                               ; preds = %338, %10
  %82 = load i32, i32* %30, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %341

85:                                               ; preds = %81
  store i32 0, i32* %32, align 4
  br label %86

86:                                               ; preds = %212, %85
  %87 = load i32, i32* %32, align 4
  %88 = load i32, i32* %31, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %215

90:                                               ; preds = %86
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %32, align 4
  %93 = mul nsw i32 6, %92
  %94 = add nsw i32 %93, 0
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %33, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %32, align 4
  %100 = mul nsw i32 6, %99
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %34, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %32, align 4
  %107 = mul nsw i32 6, %106
  %108 = add nsw i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %35, align 4
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %35, align 4
  %114 = mul i32 %112, %113
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %34, align 4
  %117 = mul i32 %115, %116
  %118 = add i32 %114, %117
  %119 = load i32, i32* %23, align 4
  %120 = load i32, i32* %33, align 4
  %121 = mul i32 %119, %120
  %122 = add i32 %118, %121
  %123 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %124 = lshr i32 %122, %123
  %125 = add i32 %124, 16
  store i32 %125, i32* %36, align 4
  %126 = load i32, i32* %27, align 4
  %127 = load i32, i32* %35, align 4
  %128 = mul i32 %126, %127
  %129 = load i32, i32* %28, align 4
  %130 = load i32, i32* %34, align 4
  %131 = mul i32 %129, %130
  %132 = add i32 %128, %131
  %133 = load i32, i32* %29, align 4
  %134 = load i32, i32* %33, align 4
  %135 = mul i32 %133, %134
  %136 = add i32 %132, %135
  %137 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %138 = lshr i32 %136, %137
  %139 = add i32 %138, 128
  store i32 %139, i32* %37, align 4
  %140 = load i32, i32* %24, align 4
  %141 = load i32, i32* %35, align 4
  %142 = mul i32 %140, %141
  %143 = load i32, i32* %25, align 4
  %144 = load i32, i32* %34, align 4
  %145 = mul i32 %143, %144
  %146 = add i32 %142, %145
  %147 = load i32, i32* %26, align 4
  %148 = load i32, i32* %33, align 4
  %149 = mul i32 %147, %148
  %150 = add i32 %146, %149
  %151 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %152 = lshr i32 %150, %151
  %153 = add i32 %152, 128
  store i32 %153, i32* %38, align 4
  %154 = load i32, i32* %38, align 4
  %155 = load i32*, i32** %13, align 8
  %156 = load i32, i32* %32, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %154, i32* %158, align 4
  %159 = load i32, i32* %37, align 4
  %160 = load i32*, i32** %14, align 8
  %161 = load i32, i32* %32, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %159, i32* %163, align 4
  %164 = load i32, i32* %36, align 4
  %165 = load i32*, i32** %12, align 8
  %166 = load i32, i32* %32, align 4
  %167 = mul nsw i32 2, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 %164, i32* %169, align 4
  %170 = load i32*, i32** %11, align 8
  %171 = load i32, i32* %32, align 4
  %172 = mul nsw i32 6, %171
  %173 = add nsw i32 %172, 3
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %33, align 4
  %177 = load i32*, i32** %11, align 8
  %178 = load i32, i32* %32, align 4
  %179 = mul nsw i32 6, %178
  %180 = add nsw i32 %179, 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %177, i64 %181
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %34, align 4
  %184 = load i32*, i32** %11, align 8
  %185 = load i32, i32* %32, align 4
  %186 = mul nsw i32 6, %185
  %187 = add nsw i32 %186, 5
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %184, i64 %188
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %35, align 4
  %191 = load i32, i32* %21, align 4
  %192 = load i32, i32* %35, align 4
  %193 = mul i32 %191, %192
  %194 = load i32, i32* %22, align 4
  %195 = load i32, i32* %34, align 4
  %196 = mul i32 %194, %195
  %197 = add i32 %193, %196
  %198 = load i32, i32* %23, align 4
  %199 = load i32, i32* %33, align 4
  %200 = mul i32 %198, %199
  %201 = add i32 %197, %200
  %202 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %203 = lshr i32 %201, %202
  %204 = add i32 %203, 16
  store i32 %204, i32* %36, align 4
  %205 = load i32, i32* %36, align 4
  %206 = load i32*, i32** %12, align 8
  %207 = load i32, i32* %32, align 4
  %208 = mul nsw i32 2, %207
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %206, i64 %210
  store i32 %205, i32* %211, align 4
  br label %212

212:                                              ; preds = %90
  %213 = load i32, i32* %32, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %32, align 4
  br label %86

215:                                              ; preds = %86
  %216 = load i32, i32* %17, align 4
  %217 = load i32*, i32** %12, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  store i32* %219, i32** %12, align 8
  %220 = load i32, i32* %19, align 4
  %221 = load i32*, i32** %11, align 8
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  store i32* %223, i32** %11, align 8
  %224 = load i32, i32* %30, align 4
  %225 = add nsw i32 %224, 1
  %226 = load i32, i32* %16, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %215
  br label %341

229:                                              ; preds = %215
  store i32 0, i32* %32, align 4
  br label %230

230:                                              ; preds = %318, %229
  %231 = load i32, i32* %32, align 4
  %232 = load i32, i32* %31, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %321

234:                                              ; preds = %230
  %235 = load i32*, i32** %11, align 8
  %236 = load i32, i32* %32, align 4
  %237 = mul nsw i32 6, %236
  %238 = add nsw i32 %237, 0
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %235, i64 %239
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %39, align 4
  %242 = load i32*, i32** %11, align 8
  %243 = load i32, i32* %32, align 4
  %244 = mul nsw i32 6, %243
  %245 = add nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %242, i64 %246
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %40, align 4
  %249 = load i32*, i32** %11, align 8
  %250 = load i32, i32* %32, align 4
  %251 = mul nsw i32 6, %250
  %252 = add nsw i32 %251, 2
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %249, i64 %253
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %41, align 4
  %256 = load i32, i32* %21, align 4
  %257 = load i32, i32* %41, align 4
  %258 = mul i32 %256, %257
  %259 = load i32, i32* %22, align 4
  %260 = load i32, i32* %40, align 4
  %261 = mul i32 %259, %260
  %262 = add i32 %258, %261
  %263 = load i32, i32* %23, align 4
  %264 = load i32, i32* %39, align 4
  %265 = mul i32 %263, %264
  %266 = add i32 %262, %265
  %267 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %268 = lshr i32 %266, %267
  %269 = add i32 %268, 16
  store i32 %269, i32* %42, align 4
  %270 = load i32, i32* %42, align 4
  %271 = load i32*, i32** %12, align 8
  %272 = load i32, i32* %32, align 4
  %273 = mul nsw i32 2, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  store i32 %270, i32* %275, align 4
  %276 = load i32*, i32** %11, align 8
  %277 = load i32, i32* %32, align 4
  %278 = mul nsw i32 6, %277
  %279 = add nsw i32 %278, 3
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %276, i64 %280
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* %39, align 4
  %283 = load i32*, i32** %11, align 8
  %284 = load i32, i32* %32, align 4
  %285 = mul nsw i32 6, %284
  %286 = add nsw i32 %285, 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %283, i64 %287
  %289 = load i32, i32* %288, align 4
  store i32 %289, i32* %40, align 4
  %290 = load i32*, i32** %11, align 8
  %291 = load i32, i32* %32, align 4
  %292 = mul nsw i32 6, %291
  %293 = add nsw i32 %292, 5
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %290, i64 %294
  %296 = load i32, i32* %295, align 4
  store i32 %296, i32* %41, align 4
  %297 = load i32, i32* %21, align 4
  %298 = load i32, i32* %41, align 4
  %299 = mul i32 %297, %298
  %300 = load i32, i32* %22, align 4
  %301 = load i32, i32* %40, align 4
  %302 = mul i32 %300, %301
  %303 = add i32 %299, %302
  %304 = load i32, i32* %23, align 4
  %305 = load i32, i32* %39, align 4
  %306 = mul i32 %304, %305
  %307 = add i32 %303, %306
  %308 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %309 = lshr i32 %307, %308
  %310 = add i32 %309, 16
  store i32 %310, i32* %42, align 4
  %311 = load i32, i32* %42, align 4
  %312 = load i32*, i32** %12, align 8
  %313 = load i32, i32* %32, align 4
  %314 = mul nsw i32 2, %313
  %315 = add nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %312, i64 %316
  store i32 %311, i32* %317, align 4
  br label %318

318:                                              ; preds = %234
  %319 = load i32, i32* %32, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %32, align 4
  br label %230

321:                                              ; preds = %230
  %322 = load i32, i32* %18, align 4
  %323 = load i32*, i32** %13, align 8
  %324 = sext i32 %322 to i64
  %325 = getelementptr inbounds i32, i32* %323, i64 %324
  store i32* %325, i32** %13, align 8
  %326 = load i32, i32* %18, align 4
  %327 = load i32*, i32** %14, align 8
  %328 = sext i32 %326 to i64
  %329 = getelementptr inbounds i32, i32* %327, i64 %328
  store i32* %329, i32** %14, align 8
  %330 = load i32, i32* %17, align 4
  %331 = load i32*, i32** %12, align 8
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i32, i32* %331, i64 %332
  store i32* %333, i32** %12, align 8
  %334 = load i32, i32* %19, align 4
  %335 = load i32*, i32** %11, align 8
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i32, i32* %335, i64 %336
  store i32* %337, i32** %11, align 8
  br label %338

338:                                              ; preds = %321
  %339 = load i32, i32* %30, align 4
  %340 = add nsw i32 %339, 2
  store i32 %340, i32* %30, align 4
  br label %81

341:                                              ; preds = %228, %81
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
