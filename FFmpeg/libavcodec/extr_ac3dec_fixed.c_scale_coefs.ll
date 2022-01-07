; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec_fixed.c_scale_coefs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec_fixed.c_scale_coefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @scale_coefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_coefs(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 31
  %23 = add nsw i32 %22, 32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @sign_extend(i32 %24, i32 9)
  %26 = ashr i32 %25, 5
  %27 = sub nsw i32 4, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %193

30:                                               ; preds = %4
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %31, 1
  %33 = shl i32 1, %32
  store i32 %33, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %189, %30
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %192

38:                                               ; preds = %34
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %11, align 4
  %45 = mul i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = mul i32 %51, %52
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = add i32 %54, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = mul i32 %62, %63
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %65, %66
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %10, align 4
  %70 = ashr i32 %68, %69
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 3
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = mul i32 %80, %81
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add i32 %83, %84
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %10, align 4
  %88 = ashr i32 %86, %87
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %88, i32* %93, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = mul i32 %99, %100
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %12, align 4
  %104 = add i32 %102, %103
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %10, align 4
  %107 = ashr i32 %105, %106
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %107, i32* %112, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 5
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %11, align 4
  %120 = mul i32 %118, %119
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %12, align 4
  %123 = add i32 %121, %122
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %10, align 4
  %126 = ashr i32 %124, %125
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 3
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 %126, i32* %131, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 6
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %11, align 4
  %139 = mul i32 %137, %138
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %10, align 4
  %142 = ashr i32 %140, %141
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32 %142, i32* %147, align 4
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %12, align 4
  %150 = add i32 %148, %149
  store i32 %150, i32* %18, align 4
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 7
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %11, align 4
  %158 = mul i32 %156, %157
  store i32 %158, i32* %20, align 4
  %159 = load i32, i32* %19, align 4
  %160 = load i32, i32* %12, align 4
  %161 = add i32 %159, %160
  store i32 %161, i32* %19, align 4
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %10, align 4
  %164 = ashr i32 %162, %163
  %165 = load i32*, i32** %5, align 8
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 5
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 %164, i32* %169, align 4
  %170 = load i32, i32* %20, align 4
  %171 = load i32, i32* %12, align 4
  %172 = add i32 %170, %171
  store i32 %172, i32* %20, align 4
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* %10, align 4
  %175 = ashr i32 %173, %174
  %176 = load i32*, i32** %5, align 8
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 6
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 %175, i32* %180, align 4
  %181 = load i32, i32* %20, align 4
  %182 = load i32, i32* %10, align 4
  %183 = ashr i32 %181, %182
  %184 = load i32*, i32** %5, align 8
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %185, 7
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  store i32 %183, i32* %188, align 4
  br label %189

189:                                              ; preds = %38
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %190, 8
  store i32 %191, i32* %9, align 4
  br label %34

192:                                              ; preds = %34
  br label %331

193:                                              ; preds = %4
  %194 = load i32, i32* %10, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %196

196:                                              ; preds = %327, %193
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %8, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %330

200:                                              ; preds = %196
  %201 = load i32*, i32** %6, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %11, align 4
  %207 = mul i32 %205, %206
  store i32 %207, i32* %13, align 4
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %11, align 4
  %215 = mul i32 %213, %214
  store i32 %215, i32* %14, align 4
  %216 = load i32*, i32** %6, align 8
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 2
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %11, align 4
  %223 = mul i32 %221, %222
  store i32 %223, i32* %15, align 4
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* %10, align 4
  %226 = shl i32 %224, %225
  %227 = load i32*, i32** %5, align 8
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 %226, i32* %230, align 4
  %231 = load i32*, i32** %6, align 8
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 3
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %11, align 4
  %238 = mul i32 %236, %237
  store i32 %238, i32* %16, align 4
  %239 = load i32, i32* %14, align 4
  %240 = load i32, i32* %10, align 4
  %241 = shl i32 %239, %240
  %242 = load i32*, i32** %5, align 8
  %243 = load i32, i32* %9, align 4
  %244 = add nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  store i32 %241, i32* %246, align 4
  %247 = load i32*, i32** %6, align 8
  %248 = load i32, i32* %9, align 4
  %249 = add nsw i32 %248, 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %11, align 4
  %254 = mul i32 %252, %253
  store i32 %254, i32* %17, align 4
  %255 = load i32, i32* %15, align 4
  %256 = load i32, i32* %10, align 4
  %257 = shl i32 %255, %256
  %258 = load i32*, i32** %5, align 8
  %259 = load i32, i32* %9, align 4
  %260 = add nsw i32 %259, 2
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  store i32 %257, i32* %262, align 4
  %263 = load i32*, i32** %6, align 8
  %264 = load i32, i32* %9, align 4
  %265 = add nsw i32 %264, 5
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %11, align 4
  %270 = mul i32 %268, %269
  store i32 %270, i32* %18, align 4
  %271 = load i32, i32* %16, align 4
  %272 = load i32, i32* %10, align 4
  %273 = shl i32 %271, %272
  %274 = load i32*, i32** %5, align 8
  %275 = load i32, i32* %9, align 4
  %276 = add nsw i32 %275, 3
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %274, i64 %277
  store i32 %273, i32* %278, align 4
  %279 = load i32*, i32** %6, align 8
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 6
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %279, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %11, align 4
  %286 = mul i32 %284, %285
  store i32 %286, i32* %19, align 4
  %287 = load i32, i32* %17, align 4
  %288 = load i32, i32* %10, align 4
  %289 = shl i32 %287, %288
  %290 = load i32*, i32** %5, align 8
  %291 = load i32, i32* %9, align 4
  %292 = add nsw i32 %291, 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %290, i64 %293
  store i32 %289, i32* %294, align 4
  %295 = load i32*, i32** %6, align 8
  %296 = load i32, i32* %9, align 4
  %297 = add nsw i32 %296, 7
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %295, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %11, align 4
  %302 = mul i32 %300, %301
  store i32 %302, i32* %20, align 4
  %303 = load i32, i32* %18, align 4
  %304 = load i32, i32* %10, align 4
  %305 = shl i32 %303, %304
  %306 = load i32*, i32** %5, align 8
  %307 = load i32, i32* %9, align 4
  %308 = add nsw i32 %307, 5
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  store i32 %305, i32* %310, align 4
  %311 = load i32, i32* %19, align 4
  %312 = load i32, i32* %10, align 4
  %313 = shl i32 %311, %312
  %314 = load i32*, i32** %5, align 8
  %315 = load i32, i32* %9, align 4
  %316 = add nsw i32 %315, 6
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %314, i64 %317
  store i32 %313, i32* %318, align 4
  %319 = load i32, i32* %20, align 4
  %320 = load i32, i32* %10, align 4
  %321 = shl i32 %319, %320
  %322 = load i32*, i32** %5, align 8
  %323 = load i32, i32* %9, align 4
  %324 = add nsw i32 %323, 7
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %322, i64 %325
  store i32 %321, i32* %326, align 4
  br label %327

327:                                              ; preds = %200
  %328 = load i32, i32* %9, align 4
  %329 = add nsw i32 %328, 8
  store i32 %329, i32* %9, align 4
  br label %196

330:                                              ; preds = %196
  br label %331

331:                                              ; preds = %330, %192
  ret void
}

declare dso_local i32 @sign_extend(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
