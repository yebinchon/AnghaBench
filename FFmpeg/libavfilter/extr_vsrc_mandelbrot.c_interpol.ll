; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vsrc_mandelbrot.c_interpol.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vsrc_mandelbrot.c_interpol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32, i32)* @interpol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpol(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 -16777216, i32* %17, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %31, %28, %5
  store i32 0, i32* %6, align 4
  br label %327

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 1
  %52 = sub nsw i32 %47, %51
  %53 = call i32 @FFABS(i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 1
  %63 = sub nsw i32 %58, %62
  %64 = call i32 @FFABS(i32 %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %64, %67
  %69 = call i32 @FFMAX(i32 %57, i32 %68)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %73, %76
  %78 = ashr i32 %77, 3
  %79 = icmp slt i32 %70, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %327

81:                                               ; preds = %46
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 0
  %87 = load i32, i32* %11, align 4
  %88 = mul nsw i32 %86, %87
  %89 = add nsw i32 %84, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %82, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %12, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sub nsw i32 %94, 1
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %11, align 4
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %95, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %93, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %13, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 0
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  %109 = load i32, i32* %11, align 4
  %110 = mul nsw i32 %108, %109
  %111 = add nsw i32 %106, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %104, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %14, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32, i32* %11, align 4
  %121 = mul nsw i32 %119, %120
  %122 = add nsw i32 %117, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %115, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %154

128:                                              ; preds = %81
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %154

131:                                              ; preds = %128
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sub nsw i32 %133, 1
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 0
  %137 = load i32, i32* %11, align 4
  %138 = mul nsw i32 %136, %137
  %139 = add nsw i32 %134, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %132, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %13, align 4
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 0
  %146 = load i32, i32* %10, align 4
  %147 = sub nsw i32 %146, 1
  %148 = load i32, i32* %11, align 4
  %149 = mul nsw i32 %147, %148
  %150 = add nsw i32 %145, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %143, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %15, align 4
  br label %261

154:                                              ; preds = %128, %81
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %183

157:                                              ; preds = %154
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %157
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  %164 = load i32, i32* %10, align 4
  %165 = sub nsw i32 %164, 1
  %166 = load i32, i32* %11, align 4
  %167 = mul nsw i32 %165, %166
  %168 = add nsw i32 %163, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %161, i64 %169
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %12, align 4
  %172 = load i32*, i32** %8, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sub nsw i32 %173, 1
  %175 = load i32, i32* %10, align 4
  %176 = sub nsw i32 %175, 1
  %177 = load i32, i32* %11, align 4
  %178 = mul nsw i32 %176, %177
  %179 = add nsw i32 %174, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %172, i64 %180
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %14, align 4
  br label %260

183:                                              ; preds = %157, %154
  %184 = load i32, i32* %14, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %220

186:                                              ; preds = %183
  %187 = load i32*, i32** %8, align 8
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 0
  %190 = load i32, i32* %10, align 4
  %191 = sub nsw i32 %190, 1
  %192 = load i32, i32* %11, align 4
  %193 = mul nsw i32 %191, %192
  %194 = add nsw i32 %189, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %187, i64 %195
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %15, align 4
  %198 = load i32*, i32** %8, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sub nsw i32 %199, 1
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, 0
  %203 = load i32, i32* %11, align 4
  %204 = mul nsw i32 %202, %203
  %205 = add nsw i32 %200, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %198, i64 %206
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %12, align 4
  %209 = load i32*, i32** %8, align 8
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %210, 1
  %212 = load i32, i32* %10, align 4
  %213 = sub nsw i32 %212, 1
  %214 = load i32, i32* %11, align 4
  %215 = mul nsw i32 %213, %214
  %216 = add nsw i32 %211, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %209, i64 %217
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %13, align 4
  br label %259

220:                                              ; preds = %183
  %221 = load i32, i32* %15, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %257

223:                                              ; preds = %220
  %224 = load i32*, i32** %8, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sub nsw i32 %225, 1
  %227 = load i32, i32* %10, align 4
  %228 = sub nsw i32 %227, 1
  %229 = load i32, i32* %11, align 4
  %230 = mul nsw i32 %228, %229
  %231 = add nsw i32 %226, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %224, i64 %232
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %14, align 4
  %235 = load i32*, i32** %8, align 8
  %236 = load i32, i32* %9, align 4
  %237 = sub nsw i32 %236, 1
  %238 = load i32, i32* %10, align 4
  %239 = add nsw i32 %238, 0
  %240 = load i32, i32* %11, align 4
  %241 = mul nsw i32 %239, %240
  %242 = add nsw i32 %237, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %235, i64 %243
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %12, align 4
  %246 = load i32*, i32** %8, align 8
  %247 = load i32, i32* %9, align 4
  %248 = add nsw i32 %247, 1
  %249 = load i32, i32* %10, align 4
  %250 = sub nsw i32 %249, 1
  %251 = load i32, i32* %11, align 4
  %252 = mul nsw i32 %250, %251
  %253 = add nsw i32 %248, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %246, i64 %254
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %13, align 4
  br label %258

257:                                              ; preds = %220
  store i32 0, i32* %6, align 4
  br label %327

258:                                              ; preds = %223
  br label %259

259:                                              ; preds = %258, %186
  br label %260

260:                                              ; preds = %259, %160
  br label %261

261:                                              ; preds = %260, %131
  store i32 0, i32* %16, align 4
  br label %262

262:                                              ; preds = %314, %261
  %263 = load i32, i32* %16, align 4
  %264 = icmp slt i32 %263, 3
  br i1 %264, label %265, label %317

265:                                              ; preds = %262
  %266 = load i32, i32* %16, align 4
  %267 = mul nsw i32 8, %266
  store i32 %267, i32* %19, align 4
  %268 = load i32, i32* %12, align 4
  %269 = load i32, i32* %19, align 4
  %270 = ashr i32 %268, %269
  store i32 %270, i32* %20, align 4
  %271 = load i32, i32* %13, align 4
  %272 = load i32, i32* %19, align 4
  %273 = ashr i32 %271, %272
  store i32 %273, i32* %21, align 4
  %274 = load i32, i32* %14, align 4
  %275 = load i32, i32* %19, align 4
  %276 = ashr i32 %274, %275
  store i32 %276, i32* %22, align 4
  %277 = load i32, i32* %15, align 4
  %278 = load i32, i32* %19, align 4
  %279 = ashr i32 %277, %278
  store i32 %279, i32* %23, align 4
  %280 = load i32, i32* %20, align 4
  %281 = load i32, i32* %21, align 4
  %282 = add nsw i32 %280, %281
  store i32 %282, i32* %24, align 4
  %283 = load i32, i32* %22, align 4
  %284 = load i32, i32* %23, align 4
  %285 = add nsw i32 %283, %284
  store i32 %285, i32* %25, align 4
  %286 = load i32, i32* %24, align 4
  %287 = load i32, i32* %25, align 4
  %288 = sub nsw i32 %286, %287
  %289 = call i32 @FFABS(i32 %288)
  %290 = icmp sgt i32 %289, 5
  br i1 %290, label %291, label %292

291:                                              ; preds = %265
  store i32 0, i32* %6, align 4
  br label %327

292:                                              ; preds = %265
  %293 = load i32, i32* %20, align 4
  %294 = load i32, i32* %21, align 4
  %295 = sub nsw i32 %293, %294
  %296 = call i32 @FFABS(i32 %295)
  %297 = load i32, i32* %22, align 4
  %298 = load i32, i32* %23, align 4
  %299 = sub nsw i32 %297, %298
  %300 = call i32 @FFABS(i32 %299)
  %301 = add nsw i32 %296, %300
  %302 = icmp sgt i32 %301, 20
  br i1 %302, label %303, label %304

303:                                              ; preds = %292
  store i32 0, i32* %6, align 4
  br label %327

304:                                              ; preds = %292
  %305 = load i32, i32* %24, align 4
  %306 = load i32, i32* %25, align 4
  %307 = add nsw i32 %305, %306
  %308 = add nsw i32 %307, 2
  %309 = sdiv i32 %308, 4
  %310 = load i32, i32* %19, align 4
  %311 = shl i32 %309, %310
  %312 = load i32, i32* %17, align 4
  %313 = or i32 %312, %311
  store i32 %313, i32* %17, align 4
  br label %314

314:                                              ; preds = %304
  %315 = load i32, i32* %16, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %16, align 4
  br label %262

317:                                              ; preds = %262
  %318 = load i32, i32* %17, align 4
  %319 = load i32*, i32** %8, align 8
  %320 = load i32, i32* %9, align 4
  %321 = load i32, i32* %10, align 4
  %322 = load i32, i32* %11, align 4
  %323 = mul nsw i32 %321, %322
  %324 = add nsw i32 %320, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %319, i64 %325
  store i32 %318, i32* %326, align 4
  store i32 1, i32* %6, align 4
  br label %327

327:                                              ; preds = %317, %303, %291, %257, %80, %45
  %328 = load i32, i32* %6, align 4
  ret i32 %328
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
