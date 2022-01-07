; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fieldmatch.c_build_diff_map.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fieldmatch.c_build_diff_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32)* @build_diff_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_diff_map(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %32 = load i32, i32* %20, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %10
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  br label %42

38:                                               ; preds = %10
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i32 [ %37, %34 ], [ %41, %38 ]
  store i32 %43, i32* %26, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %26, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32* %49, i32** %27, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %26, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %18, align 4
  %60 = ashr i32 %59, 1
  %61 = call i32 @build_abs_diff_mask(i32* %50, i32 %51, i32* %52, i32 %53, i32* %56, i32 %57, i32 %58, i32 %60)
  store i32 2, i32* %22, align 4
  br label %62

62:                                               ; preds = %325, %42
  %63 = load i32, i32* %22, align 4
  %64 = load i32, i32* %18, align 4
  %65 = sub nsw i32 %64, 2
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %328

67:                                               ; preds = %62
  store i32 1, i32* %21, align 4
  br label %68

68:                                               ; preds = %313, %67
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %19, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %316

73:                                               ; preds = %68
  %74 = load i32*, i32** %27, align 8
  %75 = load i32, i32* %21, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %24, align 4
  %79 = load i32, i32* %24, align 4
  %80 = icmp sgt i32 %79, 3
  br i1 %80, label %81, label %312

81:                                               ; preds = %73
  store i32 0, i32* %25, align 4
  %82 = load i32, i32* %21, align 4
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %23, align 4
  br label %84

84:                                               ; preds = %126, %81
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %21, align 4
  %87 = add nsw i32 %86, 2
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %25, align 4
  %91 = icmp slt i32 %90, 2
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi i1 [ false, %84 ], [ %91, %89 ]
  br i1 %93, label %94, label %129

94:                                               ; preds = %92
  %95 = load i32*, i32** %27, align 8
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* %26, align 4
  %98 = sub nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 3
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %25, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %25, align 4
  %106 = load i32*, i32** %27, align 8
  %107 = load i32, i32* %23, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp sgt i32 %110, 3
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %25, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %25, align 4
  %115 = load i32*, i32** %27, align 8
  %116 = load i32, i32* %23, align 4
  %117 = load i32, i32* %26, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %121, 3
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %25, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %25, align 4
  br label %126

126:                                              ; preds = %94
  %127 = load i32, i32* %23, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %23, align 4
  br label %84

129:                                              ; preds = %92
  %130 = load i32, i32* %25, align 4
  %131 = icmp sgt i32 %130, 1
  br i1 %131, label %132, label %311

132:                                              ; preds = %129
  %133 = load i32*, i32** %16, align 8
  %134 = load i32, i32* %21, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 1, i32* %136, align 4
  %137 = load i32, i32* %24, align 4
  %138 = icmp sgt i32 %137, 19
  br i1 %138, label %139, label %310

139:                                              ; preds = %132
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %25, align 4
  %140 = load i32, i32* %21, align 4
  %141 = sub nsw i32 %140, 1
  store i32 %141, i32* %23, align 4
  br label %142

142:                                              ; preds = %187, %139
  %143 = load i32, i32* %23, align 4
  %144 = load i32, i32* %21, align 4
  %145 = add nsw i32 %144, 2
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32, i32* %25, align 4
  %149 = icmp slt i32 %148, 6
  br label %150

150:                                              ; preds = %147, %142
  %151 = phi i1 [ false, %142 ], [ %149, %147 ]
  br i1 %151, label %152, label %190

152:                                              ; preds = %150
  %153 = load i32*, i32** %27, align 8
  %154 = load i32, i32* %23, align 4
  %155 = load i32, i32* %26, align 4
  %156 = sub nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp sgt i32 %159, 19
  br i1 %160, label %161, label %164

161:                                              ; preds = %152
  %162 = load i32, i32* %25, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %25, align 4
  store i32 1, i32* %28, align 4
  br label %164

164:                                              ; preds = %161, %152
  %165 = load i32*, i32** %27, align 8
  %166 = load i32, i32* %23, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp sgt i32 %169, 19
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = load i32, i32* %25, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %25, align 4
  br label %174

174:                                              ; preds = %171, %164
  %175 = load i32*, i32** %27, align 8
  %176 = load i32, i32* %23, align 4
  %177 = load i32, i32* %26, align 4
  %178 = add nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %175, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = icmp sgt i32 %181, 19
  br i1 %182, label %183, label %186

183:                                              ; preds = %174
  %184 = load i32, i32* %25, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %25, align 4
  store i32 1, i32* %29, align 4
  br label %186

186:                                              ; preds = %183, %174
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %23, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %23, align 4
  br label %142

190:                                              ; preds = %150
  %191 = load i32, i32* %25, align 4
  %192 = icmp sgt i32 %191, 3
  br i1 %192, label %193, label %309

193:                                              ; preds = %190
  %194 = load i32, i32* %28, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %193
  %197 = load i32, i32* %29, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %196
  %200 = load i32*, i32** %16, align 8
  %201 = load i32, i32* %21, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, 2
  store i32 %205, i32* %203, align 4
  br label %308

206:                                              ; preds = %196, %193
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %207 = load i32, i32* %21, align 4
  %208 = sub nsw i32 %207, 4
  %209 = call i32 @FFMAX(i32 %208, i32 0)
  store i32 %209, i32* %23, align 4
  br label %210

210:                                              ; preds = %268, %206
  %211 = load i32, i32* %23, align 4
  %212 = load i32, i32* %21, align 4
  %213 = add nsw i32 %212, 5
  %214 = load i32, i32* %19, align 4
  %215 = call i32 @FFMIN(i32 %213, i32 %214)
  %216 = icmp slt i32 %211, %215
  br i1 %216, label %217, label %271

217:                                              ; preds = %210
  %218 = load i32, i32* %22, align 4
  %219 = icmp ne i32 %218, 2
  br i1 %219, label %220, label %231

220:                                              ; preds = %217
  %221 = load i32*, i32** %27, align 8
  %222 = load i32, i32* %23, align 4
  %223 = load i32, i32* %26, align 4
  %224 = mul nsw i32 2, %223
  %225 = sub nsw i32 %222, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %221, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = icmp sgt i32 %228, 19
  br i1 %229, label %230, label %231

230:                                              ; preds = %220
  store i32 1, i32* %30, align 4
  br label %231

231:                                              ; preds = %230, %220, %217
  %232 = load i32*, i32** %27, align 8
  %233 = load i32, i32* %23, align 4
  %234 = load i32, i32* %26, align 4
  %235 = sub nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %232, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = icmp sgt i32 %238, 19
  br i1 %239, label %240, label %241

240:                                              ; preds = %231
  store i32 1, i32* %28, align 4
  br label %241

241:                                              ; preds = %240, %231
  %242 = load i32*, i32** %27, align 8
  %243 = load i32, i32* %23, align 4
  %244 = load i32, i32* %26, align 4
  %245 = add nsw i32 %243, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %242, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = icmp sgt i32 %248, 19
  br i1 %249, label %250, label %251

250:                                              ; preds = %241
  store i32 1, i32* %29, align 4
  br label %251

251:                                              ; preds = %250, %241
  %252 = load i32, i32* %22, align 4
  %253 = load i32, i32* %18, align 4
  %254 = sub nsw i32 %253, 4
  %255 = icmp ne i32 %252, %254
  br i1 %255, label %256, label %267

256:                                              ; preds = %251
  %257 = load i32*, i32** %27, align 8
  %258 = load i32, i32* %23, align 4
  %259 = load i32, i32* %26, align 4
  %260 = mul nsw i32 2, %259
  %261 = add nsw i32 %258, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %257, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = icmp sgt i32 %264, 19
  br i1 %265, label %266, label %267

266:                                              ; preds = %256
  store i32 1, i32* %31, align 4
  br label %267

267:                                              ; preds = %266, %256, %251
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %23, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %23, align 4
  br label %210

271:                                              ; preds = %210
  %272 = load i32, i32* %28, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %271
  %275 = load i32, i32* %29, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %289, label %277

277:                                              ; preds = %274
  %278 = load i32, i32* %30, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %289, label %280

280:                                              ; preds = %277, %271
  %281 = load i32, i32* %29, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %296

283:                                              ; preds = %280
  %284 = load i32, i32* %28, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %289, label %286

286:                                              ; preds = %283
  %287 = load i32, i32* %31, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %286, %283, %277, %274
  %290 = load i32*, i32** %16, align 8
  %291 = load i32, i32* %21, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = or i32 %294, 2
  store i32 %295, i32* %293, align 4
  br label %307

296:                                              ; preds = %286, %280
  %297 = load i32, i32* %25, align 4
  %298 = icmp sgt i32 %297, 5
  br i1 %298, label %299, label %306

299:                                              ; preds = %296
  %300 = load i32*, i32** %16, align 8
  %301 = load i32, i32* %21, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = or i32 %304, 4
  store i32 %305, i32* %303, align 4
  br label %306

306:                                              ; preds = %299, %296
  br label %307

307:                                              ; preds = %306, %289
  br label %308

308:                                              ; preds = %307, %199
  br label %309

309:                                              ; preds = %308, %190
  br label %310

310:                                              ; preds = %309, %132
  br label %311

311:                                              ; preds = %310, %129
  br label %312

312:                                              ; preds = %311, %73
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %21, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %21, align 4
  br label %68

316:                                              ; preds = %68
  %317 = load i32, i32* %26, align 4
  %318 = load i32*, i32** %27, align 8
  %319 = sext i32 %317 to i64
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  store i32* %320, i32** %27, align 8
  %321 = load i32, i32* %17, align 4
  %322 = load i32*, i32** %16, align 8
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  store i32* %324, i32** %16, align 8
  br label %325

325:                                              ; preds = %316
  %326 = load i32, i32* %22, align 4
  %327 = add nsw i32 %326, 2
  store i32 %327, i32* %22, align 4
  br label %62

328:                                              ; preds = %62
  ret void
}

declare dso_local i32 @build_abs_diff_mask(i32*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
