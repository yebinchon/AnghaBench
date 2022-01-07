; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_pix_median_abs8_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_pix_median_abs8_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32)* @pix_median_abs8_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pix_median_abs8_c(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  %21 = sext i32 %20 to i64
  %22 = call i64 @abs(i64 %21)
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  %41 = sub nsw i32 %33, %40
  %42 = sext i32 %41 to i64
  %43 = call i64 @abs(i64 %42)
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %11, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  %62 = sub nsw i32 %54, %61
  %63 = sext i32 %62 to i64
  %64 = call i64 @abs(i64 %63)
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %11, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %71, %74
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  %83 = sub nsw i32 %75, %82
  %84 = sext i32 %83 to i64
  %85 = call i64 @abs(i64 %84)
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %11, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %92, %95
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %99, %102
  %104 = sub nsw i32 %96, %103
  %105 = sext i32 %104 to i64
  %106 = call i64 @abs(i64 %105)
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %11, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 5
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 5
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %113, %116
  %118 = load i32*, i32** %7, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %120, %123
  %125 = sub nsw i32 %117, %124
  %126 = sext i32 %125 to i64
  %127 = call i64 @abs(i64 %126)
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %11, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 6
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %8, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 6
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %134, %137
  %139 = load i32*, i32** %7, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 5
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 5
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %141, %144
  %146 = sub nsw i32 %138, %145
  %147 = sext i32 %146 to i64
  %148 = call i64 @abs(i64 %147)
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %148
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %11, align 4
  %153 = load i32*, i32** %7, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 7
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %8, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 7
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %155, %158
  %160 = load i32*, i32** %7, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 6
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %8, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 6
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %162, %165
  %167 = sub nsw i32 %159, %166
  %168 = sext i32 %167 to i64
  %169 = call i64 @abs(i64 %168)
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %9, align 4
  %175 = load i32*, i32** %7, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32* %177, i32** %7, align 8
  %178 = load i32, i32* %9, align 4
  %179 = load i32*, i32** %8, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32* %181, i32** %8, align 8
  store i32 1, i32* %12, align 4
  br label %182

182:                                              ; preds = %327, %5
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %330

186:                                              ; preds = %182
  %187 = load i32*, i32** %7, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %8, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %189, %192
  %194 = load i32*, i32** %7, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sub nsw i32 0, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %8, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sub nsw i32 0, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 %199, %205
  %207 = sub nsw i32 %193, %206
  %208 = sext i32 %207 to i64
  %209 = call i64 @abs(i64 %208)
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %211, %209
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %214

214:                                              ; preds = %315, %186
  %215 = load i32, i32* %13, align 4
  %216 = icmp slt i32 %215, 8
  br i1 %216, label %217, label %318

217:                                              ; preds = %214
  %218 = load i32*, i32** %7, align 8
  %219 = load i32, i32* %13, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %8, align 8
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %222, %227
  %229 = sext i32 %228 to i64
  %230 = load i32*, i32** %7, align 8
  %231 = load i32, i32* %13, align 4
  %232 = load i32, i32* %9, align 4
  %233 = sub nsw i32 %231, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %230, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32*, i32** %8, align 8
  %238 = load i32, i32* %13, align 4
  %239 = load i32, i32* %9, align 4
  %240 = sub nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %237, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = sub nsw i32 %236, %243
  %245 = sext i32 %244 to i64
  %246 = load i32*, i32** %7, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sub nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %246, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** %8, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sub nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = sub nsw i32 %251, %257
  %259 = sext i32 %258 to i64
  %260 = load i32*, i32** %7, align 8
  %261 = load i32, i32* %13, align 4
  %262 = load i32, i32* %9, align 4
  %263 = sub nsw i32 %261, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %260, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = load i32*, i32** %8, align 8
  %268 = load i32, i32* %13, align 4
  %269 = load i32, i32* %9, align 4
  %270 = sub nsw i32 %268, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %267, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = sub nsw i32 %266, %273
  %275 = load i32*, i32** %7, align 8
  %276 = load i32, i32* %13, align 4
  %277 = sub nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %275, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load i32*, i32** %8, align 8
  %282 = load i32, i32* %13, align 4
  %283 = sub nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 %280, %286
  %288 = add nsw i32 %274, %287
  %289 = load i32*, i32** %7, align 8
  %290 = load i32, i32* %13, align 4
  %291 = load i32, i32* %9, align 4
  %292 = sub nsw i32 %290, %291
  %293 = sub nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %289, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load i32*, i32** %8, align 8
  %298 = load i32, i32* %13, align 4
  %299 = load i32, i32* %9, align 4
  %300 = sub nsw i32 %298, %299
  %301 = sub nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %297, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = sub nsw i32 %296, %304
  %306 = sub nsw i32 %288, %305
  %307 = sext i32 %306 to i64
  %308 = call i64 @mid_pred(i64 %245, i64 %259, i64 %307)
  %309 = sub nsw i64 %229, %308
  %310 = call i64 @abs(i64 %309)
  %311 = load i32, i32* %11, align 4
  %312 = sext i32 %311 to i64
  %313 = add nsw i64 %312, %310
  %314 = trunc i64 %313 to i32
  store i32 %314, i32* %11, align 4
  br label %315

315:                                              ; preds = %217
  %316 = load i32, i32* %13, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %13, align 4
  br label %214

318:                                              ; preds = %214
  %319 = load i32, i32* %9, align 4
  %320 = load i32*, i32** %7, align 8
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds i32, i32* %320, i64 %321
  store i32* %322, i32** %7, align 8
  %323 = load i32, i32* %9, align 4
  %324 = load i32*, i32** %8, align 8
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i32, i32* %324, i64 %325
  store i32* %326, i32** %8, align 8
  br label %327

327:                                              ; preds = %318
  %328 = load i32, i32* %12, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %12, align 4
  br label %182

330:                                              ; preds = %182
  %331 = load i32, i32* %11, align 4
  ret i32 %331
}

declare dso_local i64 @abs(i64) #1

declare dso_local i64 @mid_pred(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
