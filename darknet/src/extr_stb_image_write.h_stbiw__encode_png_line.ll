; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__encode_png_line.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__encode_png_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stbiw__encode_png_line.mapping = internal global [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], align 16
@stbiw__encode_png_line.firstmap = internal global [5 x i32] [i32 0, i32 1, i32 0, i32 5, i32 6], align 16
@stbi__flip_vertically_on_write = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32, i32, i32, i8*)* @stbiw__encode_png_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbiw__encode_png_line(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @stbiw__encode_png_line.mapping, i64 0, i64 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @stbiw__encode_png_line.firstmap, i64 0, i64 0)
  store i32* %25, i32** %17, align 8
  %26 = load i32*, i32** %17, align 8
  %27 = load i32, i32* %15, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %19, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i64, i64* @stbi__flip_vertically_on_write, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %8
  %36 = load i32, i32* %12, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %13, align 4
  %39 = sub nsw i32 %37, %38
  br label %42

40:                                               ; preds = %8
  %41 = load i32, i32* %13, align 4
  br label %42

42:                                               ; preds = %40, %35
  %43 = phi i32 [ %39, %35 ], [ %41, %40 ]
  %44 = mul nsw i32 %32, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %31, i64 %45
  store i8* %46, i8** %20, align 8
  %47 = load i64, i64* @stbi__flip_vertically_on_write, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 0, %50
  br label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %10, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi i32 [ %51, %49 ], [ %53, %52 ]
  store i32 %55, i32* %21, align 4
  store i32 0, i32* %18, align 4
  br label %56

56:                                               ; preds = %167, %54
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %170

60:                                               ; preds = %56
  %61 = load i32, i32* %19, align 4
  switch i32 %61, label %166 [
    i32 0, label %62
    i32 1, label %72
    i32 2, label %82
    i32 3, label %103
    i32 4, label %125
    i32 5, label %146
    i32 6, label %156
  ]

62:                                               ; preds = %60
  %63 = load i8*, i8** %20, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %16, align 8
  %69 = load i32, i32* %18, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %67, i8* %71, align 1
  br label %166

72:                                               ; preds = %60
  %73 = load i8*, i8** %20, align 8
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** %16, align 8
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 %77, i8* %81, align 1
  br label %166

82:                                               ; preds = %60
  %83 = load i8*, i8** %20, align 8
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8*, i8** %20, align 8
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %21, align 4
  %92 = sub nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = sub nsw i32 %88, %96
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %16, align 8
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8 %98, i8* %102, align 1
  br label %166

103:                                              ; preds = %60
  %104 = load i8*, i8** %20, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = load i8*, i8** %20, align 8
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %21, align 4
  %113 = sub nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %110, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = ashr i32 %117, 1
  %119 = sub nsw i32 %109, %118
  %120 = trunc i32 %119 to i8
  %121 = load i8*, i8** %16, align 8
  %122 = load i32, i32* %18, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  store i8 %120, i8* %124, align 1
  br label %166

125:                                              ; preds = %60
  %126 = load i8*, i8** %20, align 8
  %127 = load i32, i32* %18, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = load i8*, i8** %20, align 8
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %21, align 4
  %135 = sub nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %132, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = call i32 @stbiw__paeth(i8 zeroext 0, i8 zeroext %138, i8 zeroext 0)
  %140 = sub nsw i32 %131, %139
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** %16, align 8
  %143 = load i32, i32* %18, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8 %141, i8* %145, align 1
  br label %166

146:                                              ; preds = %60
  %147 = load i8*, i8** %20, align 8
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = load i8*, i8** %16, align 8
  %153 = load i32, i32* %18, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  store i8 %151, i8* %155, align 1
  br label %166

156:                                              ; preds = %60
  %157 = load i8*, i8** %20, align 8
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = load i8*, i8** %16, align 8
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  store i8 %161, i8* %165, align 1
  br label %166

166:                                              ; preds = %60, %156, %146, %125, %103, %82, %72, %62
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %18, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %18, align 4
  br label %56

170:                                              ; preds = %56
  %171 = load i32, i32* %14, align 4
  store i32 %171, i32* %18, align 4
  br label %172

172:                                              ; preds = %344, %170
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %14, align 4
  %176 = mul nsw i32 %174, %175
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %347

178:                                              ; preds = %172
  %179 = load i32, i32* %19, align 4
  switch i32 %179, label %343 [
    i32 0, label %180
    i32 1, label %190
    i32 2, label %211
    i32 3, label %232
    i32 4, label %263
    i32 5, label %300
    i32 6, label %322
  ]

180:                                              ; preds = %178
  %181 = load i8*, i8** %20, align 8
  %182 = load i32, i32* %18, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = load i8*, i8** %16, align 8
  %187 = load i32, i32* %18, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  store i8 %185, i8* %189, align 1
  br label %343

190:                                              ; preds = %178
  %191 = load i8*, i8** %20, align 8
  %192 = load i32, i32* %18, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = load i8*, i8** %20, align 8
  %198 = load i32, i32* %18, align 4
  %199 = load i32, i32* %14, align 4
  %200 = sub nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %197, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = sub nsw i32 %196, %204
  %206 = trunc i32 %205 to i8
  %207 = load i8*, i8** %16, align 8
  %208 = load i32, i32* %18, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  store i8 %206, i8* %210, align 1
  br label %343

211:                                              ; preds = %178
  %212 = load i8*, i8** %20, align 8
  %213 = load i32, i32* %18, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = load i8*, i8** %20, align 8
  %219 = load i32, i32* %18, align 4
  %220 = load i32, i32* %21, align 4
  %221 = sub nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %218, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = sub nsw i32 %217, %225
  %227 = trunc i32 %226 to i8
  %228 = load i8*, i8** %16, align 8
  %229 = load i32, i32* %18, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  store i8 %227, i8* %231, align 1
  br label %343

232:                                              ; preds = %178
  %233 = load i8*, i8** %20, align 8
  %234 = load i32, i32* %18, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %233, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = load i8*, i8** %20, align 8
  %240 = load i32, i32* %18, align 4
  %241 = load i32, i32* %14, align 4
  %242 = sub nsw i32 %240, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %239, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = load i8*, i8** %20, align 8
  %248 = load i32, i32* %18, align 4
  %249 = load i32, i32* %21, align 4
  %250 = sub nsw i32 %248, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %247, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = add nsw i32 %246, %254
  %256 = ashr i32 %255, 1
  %257 = sub nsw i32 %238, %256
  %258 = trunc i32 %257 to i8
  %259 = load i8*, i8** %16, align 8
  %260 = load i32, i32* %18, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, i8* %259, i64 %261
  store i8 %258, i8* %262, align 1
  br label %343

263:                                              ; preds = %178
  %264 = load i8*, i8** %20, align 8
  %265 = load i32, i32* %18, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %264, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = load i8*, i8** %20, align 8
  %271 = load i32, i32* %18, align 4
  %272 = load i32, i32* %14, align 4
  %273 = sub nsw i32 %271, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %270, i64 %274
  %276 = load i8, i8* %275, align 1
  %277 = load i8*, i8** %20, align 8
  %278 = load i32, i32* %18, align 4
  %279 = load i32, i32* %21, align 4
  %280 = sub nsw i32 %278, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %277, i64 %281
  %283 = load i8, i8* %282, align 1
  %284 = load i8*, i8** %20, align 8
  %285 = load i32, i32* %18, align 4
  %286 = load i32, i32* %21, align 4
  %287 = sub nsw i32 %285, %286
  %288 = load i32, i32* %14, align 4
  %289 = sub nsw i32 %287, %288
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %284, i64 %290
  %292 = load i8, i8* %291, align 1
  %293 = call i32 @stbiw__paeth(i8 zeroext %276, i8 zeroext %283, i8 zeroext %292)
  %294 = sub nsw i32 %269, %293
  %295 = trunc i32 %294 to i8
  %296 = load i8*, i8** %16, align 8
  %297 = load i32, i32* %18, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %296, i64 %298
  store i8 %295, i8* %299, align 1
  br label %343

300:                                              ; preds = %178
  %301 = load i8*, i8** %20, align 8
  %302 = load i32, i32* %18, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %301, i64 %303
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i32
  %307 = load i8*, i8** %20, align 8
  %308 = load i32, i32* %18, align 4
  %309 = load i32, i32* %14, align 4
  %310 = sub nsw i32 %308, %309
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8, i8* %307, i64 %311
  %313 = load i8, i8* %312, align 1
  %314 = zext i8 %313 to i32
  %315 = ashr i32 %314, 1
  %316 = sub nsw i32 %306, %315
  %317 = trunc i32 %316 to i8
  %318 = load i8*, i8** %16, align 8
  %319 = load i32, i32* %18, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8, i8* %318, i64 %320
  store i8 %317, i8* %321, align 1
  br label %343

322:                                              ; preds = %178
  %323 = load i8*, i8** %20, align 8
  %324 = load i32, i32* %18, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %323, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = zext i8 %327 to i32
  %329 = load i8*, i8** %20, align 8
  %330 = load i32, i32* %18, align 4
  %331 = load i32, i32* %14, align 4
  %332 = sub nsw i32 %330, %331
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8, i8* %329, i64 %333
  %335 = load i8, i8* %334, align 1
  %336 = call i32 @stbiw__paeth(i8 zeroext %335, i8 zeroext 0, i8 zeroext 0)
  %337 = sub nsw i32 %328, %336
  %338 = trunc i32 %337 to i8
  %339 = load i8*, i8** %16, align 8
  %340 = load i32, i32* %18, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %339, i64 %341
  store i8 %338, i8* %342, align 1
  br label %343

343:                                              ; preds = %178, %322, %300, %263, %232, %211, %190, %180
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %18, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %18, align 4
  br label %172

347:                                              ; preds = %172
  ret void
}

declare dso_local i32 @stbiw__paeth(i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
