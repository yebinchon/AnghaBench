; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_mdct.c_mdct_forward.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_mdct.c_mdct_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdct_forward(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %24, 2
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 3
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i32* @alloca(i32 %31)
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %15, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32* %45, i32** %16, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %18, align 4
  br label %52

52:                                               ; preds = %110, %3
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %113

56:                                               ; preds = %52
  %57 = load i32*, i32** %15, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 -4
  store i32* %58, i32** %15, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 -2
  store i32* %60, i32** %17, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %16, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  store i32 %67, i32* %13, align 4
  %68 = load i32*, i32** %15, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %16, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32*, i32** %17, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = load i32, i32* %13, align 4
  %81 = load i32*, i32** %17, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %80, %83
  %85 = add nsw i32 %79, %84
  %86 = call i32 @MULT_NORM(i32 %85)
  %87 = load i32*, i32** %12, align 8
  %88 = load i32, i32* %18, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32*, i32** %17, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %91, %94
  %96 = load i32, i32* %13, align 4
  %97 = load i32*, i32** %17, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %96, %99
  %101 = sub nsw i32 %95, %100
  %102 = call i32 @MULT_NORM(i32 %101)
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32 %102, i32* %107, align 4
  %108 = load i32*, i32** %16, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  store i32* %109, i32** %16, align 8
  br label %110

110:                                              ; preds = %56
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, 2
  store i32 %112, i32* %18, align 4
  br label %52

113:                                              ; preds = %52
  %114 = load i32*, i32** %5, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  store i32* %115, i32** %16, align 8
  br label %116

116:                                              ; preds = %176, %113
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %10, align 4
  %120 = sub nsw i32 %118, %119
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %179

122:                                              ; preds = %116
  %123 = load i32*, i32** %17, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 -2
  store i32* %124, i32** %17, align 8
  %125 = load i32*, i32** %15, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 -4
  store i32* %126, i32** %15, align 8
  %127 = load i32*, i32** %15, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %16, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %129, %132
  store i32 %133, i32* %13, align 4
  %134 = load i32*, i32** %15, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %16, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %136, %139
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32*, i32** %17, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %141, %144
  %146 = load i32, i32* %13, align 4
  %147 = load i32*, i32** %17, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %146, %149
  %151 = add nsw i32 %145, %150
  %152 = call i32 @MULT_NORM(i32 %151)
  %153 = load i32*, i32** %12, align 8
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %152, i32* %156, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i32*, i32** %17, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %157, %160
  %162 = load i32, i32* %13, align 4
  %163 = load i32*, i32** %17, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = mul nsw i32 %162, %165
  %167 = sub nsw i32 %161, %166
  %168 = call i32 @MULT_NORM(i32 %167)
  %169 = load i32*, i32** %12, align 8
  %170 = load i32, i32* %18, align 4
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  store i32 %168, i32* %173, align 4
  %174 = load i32*, i32** %16, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 4
  store i32* %175, i32** %16, align 8
  br label %176

176:                                              ; preds = %122
  %177 = load i32, i32* %18, align 4
  %178 = add nsw i32 %177, 2
  store i32 %178, i32* %18, align 4
  br label %116

179:                                              ; preds = %116
  %180 = load i32*, i32** %5, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32* %183, i32** %15, align 8
  br label %184

184:                                              ; preds = %244, %179
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %247

188:                                              ; preds = %184
  %189 = load i32*, i32** %17, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 -2
  store i32* %190, i32** %17, align 8
  %191 = load i32*, i32** %15, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 -4
  store i32* %192, i32** %15, align 8
  %193 = load i32*, i32** %15, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 2
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 0, %195
  %197 = load i32*, i32** %16, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %196, %199
  store i32 %200, i32* %13, align 4
  %201 = load i32*, i32** %15, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 0, %203
  %205 = load i32*, i32** %16, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %204, %207
  store i32 %208, i32* %14, align 4
  %209 = load i32, i32* %14, align 4
  %210 = load i32*, i32** %17, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %209, %212
  %214 = load i32, i32* %13, align 4
  %215 = load i32*, i32** %17, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = mul nsw i32 %214, %217
  %219 = add nsw i32 %213, %218
  %220 = call i32 @MULT_NORM(i32 %219)
  %221 = load i32*, i32** %12, align 8
  %222 = load i32, i32* %18, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 %220, i32* %224, align 4
  %225 = load i32, i32* %14, align 4
  %226 = load i32*, i32** %17, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 %225, %228
  %230 = load i32, i32* %13, align 4
  %231 = load i32*, i32** %17, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %230, %233
  %235 = sub nsw i32 %229, %234
  %236 = call i32 @MULT_NORM(i32 %235)
  %237 = load i32*, i32** %12, align 8
  %238 = load i32, i32* %18, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  store i32 %236, i32* %241, align 4
  %242 = load i32*, i32** %16, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 4
  store i32* %243, i32** %16, align 8
  br label %244

244:                                              ; preds = %188
  %245 = load i32, i32* %18, align 4
  %246 = add nsw i32 %245, 2
  store i32 %246, i32* %18, align 4
  br label %184

247:                                              ; preds = %184
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %249 = load i32*, i32** %11, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %8, align 4
  %254 = call i32 @mdct_butterflies(%struct.TYPE_5__* %248, i32* %252, i32 %253)
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %256 = load i32*, i32** %11, align 8
  %257 = call i32 @mdct_bitreverse(%struct.TYPE_5__* %255, i32* %256)
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  store i32* %263, i32** %17, align 8
  %264 = load i32*, i32** %6, align 8
  %265 = load i32, i32* %8, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  store i32* %267, i32** %15, align 8
  store i32 0, i32* %18, align 4
  br label %268

268:                                              ; preds = %325, %247
  %269 = load i32, i32* %18, align 4
  %270 = load i32, i32* %9, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %328

272:                                              ; preds = %268
  %273 = load i32*, i32** %15, align 8
  %274 = getelementptr inbounds i32, i32* %273, i32 -1
  store i32* %274, i32** %15, align 8
  %275 = load i32*, i32** %11, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  %277 = load i32, i32* %276, align 4
  %278 = load i32*, i32** %17, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = load i32, i32* %279, align 4
  %281 = mul nsw i32 %277, %280
  %282 = load i32*, i32** %11, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 1
  %284 = load i32, i32* %283, align 4
  %285 = load i32*, i32** %17, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  %287 = load i32, i32* %286, align 4
  %288 = mul nsw i32 %284, %287
  %289 = add nsw i32 %281, %288
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = mul nsw i32 %289, %292
  %294 = call i32 @MULT_NORM(i32 %293)
  %295 = load i32*, i32** %6, align 8
  %296 = load i32, i32* %18, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  store i32 %294, i32* %298, align 4
  %299 = load i32*, i32** %11, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  %301 = load i32, i32* %300, align 4
  %302 = load i32*, i32** %17, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 1
  %304 = load i32, i32* %303, align 4
  %305 = mul nsw i32 %301, %304
  %306 = load i32*, i32** %11, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32*, i32** %17, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 0
  %311 = load i32, i32* %310, align 4
  %312 = mul nsw i32 %308, %311
  %313 = sub nsw i32 %305, %312
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = mul nsw i32 %313, %316
  %318 = call i32 @MULT_NORM(i32 %317)
  %319 = load i32*, i32** %15, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 0
  store i32 %318, i32* %320, align 4
  %321 = load i32*, i32** %11, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 2
  store i32* %322, i32** %11, align 8
  %323 = load i32*, i32** %17, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 2
  store i32* %324, i32** %17, align 8
  br label %325

325:                                              ; preds = %272
  %326 = load i32, i32* %18, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %18, align 4
  br label %268

328:                                              ; preds = %268
  ret void
}

declare dso_local i32* @alloca(i32) #1

declare dso_local i32 @MULT_NORM(i32) #1

declare dso_local i32 @mdct_butterflies(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @mdct_bitreverse(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
