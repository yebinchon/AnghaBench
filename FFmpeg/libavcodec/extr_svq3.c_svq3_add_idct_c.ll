; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq3.c_svq3_add_idct_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq3.c_svq3_add_idct_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svq3_dequant_coeff = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @svq3_add_idct_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svq3_add_idct_c(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
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
  %21 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %22 = load i32*, i32** @svq3_dequant_coeff, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %5
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = mul i32 1538, %35
  br label %45

37:                                               ; preds = %29
  %38 = load i32, i32* %11, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = lshr i32 %41, 3
  %43 = mul i32 %38, %42
  %44 = udiv i32 %43, 2
  br label %45

45:                                               ; preds = %37, %32
  %46 = phi i32 [ %36, %32 ], [ %44, %37 ]
  %47 = mul i32 169, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %5
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %157, %50
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %160

54:                                               ; preds = %51
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %12, align 4
  %57 = mul nsw i32 4, %56
  %58 = add nsw i32 0, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %12, align 4
  %64 = mul nsw i32 4, %63
  %65 = add nsw i32 2, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %61, %68
  %70 = mul i32 13, %69
  store i32 %70, i32* %13, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = mul nsw i32 4, %72
  %74 = add nsw i32 0, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %12, align 4
  %80 = mul nsw i32 4, %79
  %81 = add nsw i32 2, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = sub i32 %77, %84
  %86 = mul i32 13, %85
  store i32 %86, i32* %14, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %12, align 4
  %89 = mul nsw i32 4, %88
  %90 = add nsw i32 1, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = mul i32 7, %93
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %12, align 4
  %97 = mul nsw i32 4, %96
  %98 = add nsw i32 3, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = mul i32 17, %101
  %103 = sub i32 %94, %102
  store i32 %103, i32* %15, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %12, align 4
  %106 = mul nsw i32 4, %105
  %107 = add nsw i32 1, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = mul i32 17, %110
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %12, align 4
  %114 = mul nsw i32 4, %113
  %115 = add nsw i32 3, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = mul i32 7, %118
  %120 = add i32 %111, %119
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %12, align 4
  %126 = mul nsw i32 4, %125
  %127 = add nsw i32 0, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  store i32 %123, i32* %129, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %12, align 4
  %135 = mul nsw i32 4, %134
  %136 = add nsw i32 1, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  store i32 %132, i32* %138, align 4
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %15, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %12, align 4
  %144 = mul nsw i32 4, %143
  %145 = add nsw i32 2, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  store i32 %141, i32* %147, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %16, align 4
  %150 = sub nsw i32 %148, %149
  %151 = load i32*, i32** %7, align 8
  %152 = load i32, i32* %12, align 4
  %153 = mul nsw i32 4, %152
  %154 = add nsw i32 3, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %151, i64 %155
  store i32 %150, i32* %156, align 4
  br label %157

157:                                              ; preds = %54
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %51

160:                                              ; preds = %51
  store i32 0, i32* %12, align 4
  br label %161

161:                                              ; preds = %325, %160
  %162 = load i32, i32* %12, align 4
  %163 = icmp slt i32 %162, 4
  br i1 %163, label %164, label %328

164:                                              ; preds = %161
  %165 = load i32*, i32** %7, align 8
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 0
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %7, align 8
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 8
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = add i32 %170, %176
  %178 = mul i32 13, %177
  store i32 %178, i32* %17, align 4
  %179 = load i32*, i32** %7, align 8
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, 0
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %7, align 8
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %186, 8
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = sub i32 %184, %190
  %192 = mul i32 13, %191
  store i32 %192, i32* %18, align 4
  %193 = load i32*, i32** %7, align 8
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = mul i32 7, %198
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 12
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = mul i32 17, %205
  %207 = sub i32 %199, %206
  store i32 %207, i32* %19, align 4
  %208 = load i32*, i32** %7, align 8
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = mul i32 17, %213
  %215 = load i32*, i32** %7, align 8
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 %216, 12
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = mul i32 7, %220
  %222 = add i32 %214, %221
  store i32 %222, i32* %20, align 4
  %223 = load i32, i32* %10, align 4
  %224 = add i32 %223, 524288
  store i32 %224, i32* %21, align 4
  %225 = load i32*, i32** %6, align 8
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* %8, align 4
  %228 = mul nsw i32 %227, 0
  %229 = add nsw i32 %226, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %225, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %17, align 4
  %234 = load i32, i32* %20, align 4
  %235 = add i32 %233, %234
  %236 = load i32, i32* %11, align 4
  %237 = mul i32 %235, %236
  %238 = load i32, i32* %21, align 4
  %239 = add i32 %237, %238
  %240 = ashr i32 %239, 20
  %241 = add nsw i32 %232, %240
  %242 = call i32 @av_clip_uint8(i32 %241)
  %243 = load i32*, i32** %6, align 8
  %244 = load i32, i32* %12, align 4
  %245 = load i32, i32* %8, align 4
  %246 = mul nsw i32 %245, 0
  %247 = add nsw i32 %244, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %243, i64 %248
  store i32 %242, i32* %249, align 4
  %250 = load i32*, i32** %6, align 8
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* %8, align 4
  %253 = mul nsw i32 %252, 1
  %254 = add nsw i32 %251, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %250, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* %19, align 4
  %260 = add i32 %258, %259
  %261 = load i32, i32* %11, align 4
  %262 = mul i32 %260, %261
  %263 = load i32, i32* %21, align 4
  %264 = add i32 %262, %263
  %265 = ashr i32 %264, 20
  %266 = add nsw i32 %257, %265
  %267 = call i32 @av_clip_uint8(i32 %266)
  %268 = load i32*, i32** %6, align 8
  %269 = load i32, i32* %12, align 4
  %270 = load i32, i32* %8, align 4
  %271 = mul nsw i32 %270, 1
  %272 = add nsw i32 %269, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %268, i64 %273
  store i32 %267, i32* %274, align 4
  %275 = load i32*, i32** %6, align 8
  %276 = load i32, i32* %12, align 4
  %277 = load i32, i32* %8, align 4
  %278 = mul nsw i32 %277, 2
  %279 = add nsw i32 %276, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %275, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %18, align 4
  %284 = load i32, i32* %19, align 4
  %285 = sub i32 %283, %284
  %286 = load i32, i32* %11, align 4
  %287 = mul i32 %285, %286
  %288 = load i32, i32* %21, align 4
  %289 = add i32 %287, %288
  %290 = ashr i32 %289, 20
  %291 = add nsw i32 %282, %290
  %292 = call i32 @av_clip_uint8(i32 %291)
  %293 = load i32*, i32** %6, align 8
  %294 = load i32, i32* %12, align 4
  %295 = load i32, i32* %8, align 4
  %296 = mul nsw i32 %295, 2
  %297 = add nsw i32 %294, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %293, i64 %298
  store i32 %292, i32* %299, align 4
  %300 = load i32*, i32** %6, align 8
  %301 = load i32, i32* %12, align 4
  %302 = load i32, i32* %8, align 4
  %303 = mul nsw i32 %302, 3
  %304 = add nsw i32 %301, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %300, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %17, align 4
  %309 = load i32, i32* %20, align 4
  %310 = sub i32 %308, %309
  %311 = load i32, i32* %11, align 4
  %312 = mul i32 %310, %311
  %313 = load i32, i32* %21, align 4
  %314 = add i32 %312, %313
  %315 = ashr i32 %314, 20
  %316 = add nsw i32 %307, %315
  %317 = call i32 @av_clip_uint8(i32 %316)
  %318 = load i32*, i32** %6, align 8
  %319 = load i32, i32* %12, align 4
  %320 = load i32, i32* %8, align 4
  %321 = mul nsw i32 %320, 3
  %322 = add nsw i32 %319, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %318, i64 %323
  store i32 %317, i32* %324, align 4
  br label %325

325:                                              ; preds = %164
  %326 = load i32, i32* %12, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %12, align 4
  br label %161

328:                                              ; preds = %161
  %329 = load i32*, i32** %7, align 8
  %330 = call i32 @memset(i32* %329, i32 0, i32 64)
  ret void
}

declare dso_local i32 @av_clip_uint8(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
