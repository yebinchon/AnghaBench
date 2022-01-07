; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_motion_estimation.c_ff_me_search_umh.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_motion_estimation.c_ff_me_search_umh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32** }

@UINT64_MAX = common dso_local global i32 0, align 4
@hex4 = common dso_local global i32** null, align 8
@hex2 = common dso_local global i32** null, align 8
@dia1 = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_me_search_umh(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  %21 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  %30 = call i32 @FFMAX(i32 %24, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  %39 = call i32 @FFMAX(i32 %33, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @FFMIN(i32 %44, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @FFMIN(i32 %53, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 7
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 0
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %21, align 8
  %62 = load i32, i32* @UINT64_MAX, align 4
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %68, %71
  %73 = call i32 @COST_P_MV(i32 %67, i32 %72)
  store i32 0, i32* %18, align 4
  br label %74

74:                                               ; preds = %104, %4
  %75 = load i32, i32* %18, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %81, %90
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %92, %101
  %103 = call i32 @COST_P_MV(i32 %91, i32 %102)
  br label %104

104:                                              ; preds = %80
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %18, align 4
  br label %74

107:                                              ; preds = %74
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %9, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %10, align 4
  store i32 1, i32* %17, align 4
  br label %114

114:                                              ; preds = %149, %107
  %115 = load i32, i32* %17, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sle i32 %115, %118
  br i1 %119, label %120, label %152

120:                                              ; preds = %114
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %17, align 4
  %123 = sub nsw i32 %121, %122
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @COST_P_MV(i32 %123, i32 %124)
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %17, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @COST_P_MV(i32 %128, i32 %129)
  %131 = load i32, i32* %17, align 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sdiv i32 %134, 2
  %136 = icmp sle i32 %131, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %120
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %17, align 4
  %141 = sub nsw i32 %139, %140
  %142 = call i32 @COST_P_MV(i32 %138, i32 %141)
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %17, align 4
  %146 = add nsw i32 %144, %145
  %147 = call i32 @COST_P_MV(i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %137, %120
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, 2
  store i32 %151, i32* %17, align 4
  br label %114

152:                                              ; preds = %114
  %153 = load i32*, i32** %8, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 2
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @FFMIN(i32 %156, i32 %157)
  store i32 %158, i32* %19, align 4
  %159 = load i32*, i32** %8, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 2
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @FFMIN(i32 %162, i32 %163)
  store i32 %164, i32* %20, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %168, 2
  %170 = call i32 @FFMAX(i32 %165, i32 %169)
  store i32 %170, i32* %10, align 4
  br label %171

171:                                              ; preds = %194, %152
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %20, align 4
  %174 = icmp sle i32 %172, %173
  br i1 %174, label %175, label %197

175:                                              ; preds = %171
  %176 = load i32, i32* %11, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %179, 2
  %181 = call i32 @FFMAX(i32 %176, i32 %180)
  store i32 %181, i32* %9, align 4
  br label %182

182:                                              ; preds = %190, %175
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* %19, align 4
  %185 = icmp sle i32 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %182
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @COST_P_MV(i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %9, align 4
  br label %182

193:                                              ; preds = %182
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %10, align 4
  br label %171

197:                                              ; preds = %171
  %198 = load i32*, i32** %8, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %9, align 4
  %201 = load i32*, i32** %8, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %10, align 4
  store i32 1, i32* %17, align 4
  br label %204

204:                                              ; preds = %243, %197
  %205 = load i32, i32* %17, align 4
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = sdiv i32 %208, 4
  %210 = icmp sle i32 %205, %209
  br i1 %210, label %211, label %246

211:                                              ; preds = %204
  store i32 1, i32* %18, align 4
  br label %212

212:                                              ; preds = %239, %211
  %213 = load i32, i32* %18, align 4
  %214 = icmp slt i32 %213, 16
  br i1 %214, label %215, label %242

215:                                              ; preds = %212
  %216 = load i32, i32* %9, align 4
  %217 = load i32**, i32*** @hex4, align 8
  %218 = load i32, i32* %18, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32*, i32** %217, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %17, align 4
  %225 = mul nsw i32 %223, %224
  %226 = add nsw i32 %216, %225
  %227 = load i32, i32* %10, align 4
  %228 = load i32**, i32*** @hex4, align 8
  %229 = load i32, i32* %18, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32*, i32** %228, i64 %230
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %17, align 4
  %236 = mul nsw i32 %234, %235
  %237 = add nsw i32 %227, %236
  %238 = call i32 @COST_P_MV(i32 %226, i32 %237)
  br label %239

239:                                              ; preds = %215
  %240 = load i32, i32* %18, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %18, align 4
  br label %212

242:                                              ; preds = %212
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %17, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %17, align 4
  br label %204

246:                                              ; preds = %204
  br label %247

247:                                              ; preds = %293, %246
  %248 = load i32*, i32** %8, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %9, align 4
  %251 = load i32*, i32** %8, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 1
  %253 = load i32, i32* %252, align 4
  store i32 %253, i32* %10, align 4
  store i32 0, i32* %18, align 4
  br label %254

254:                                              ; preds = %277, %247
  %255 = load i32, i32* %18, align 4
  %256 = icmp slt i32 %255, 6
  br i1 %256, label %257, label %280

257:                                              ; preds = %254
  %258 = load i32, i32* %9, align 4
  %259 = load i32**, i32*** @hex2, align 8
  %260 = load i32, i32* %18, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32*, i32** %259, i64 %261
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %258, %265
  %267 = load i32, i32* %10, align 4
  %268 = load i32**, i32*** @hex2, align 8
  %269 = load i32, i32* %18, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32*, i32** %268, i64 %270
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 1
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %267, %274
  %276 = call i32 @COST_P_MV(i32 %266, i32 %275)
  br label %277

277:                                              ; preds = %257
  %278 = load i32, i32* %18, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %18, align 4
  br label %254

280:                                              ; preds = %254
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %9, align 4
  %283 = load i32*, i32** %8, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %282, %285
  br i1 %286, label %293, label %287

287:                                              ; preds = %281
  %288 = load i32, i32* %10, align 4
  %289 = load i32*, i32** %8, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 1
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %288, %291
  br label %293

293:                                              ; preds = %287, %281
  %294 = phi i1 [ true, %281 ], [ %292, %287 ]
  br i1 %294, label %247, label %295

295:                                              ; preds = %293
  store i32 0, i32* %18, align 4
  br label %296

296:                                              ; preds = %319, %295
  %297 = load i32, i32* %18, align 4
  %298 = icmp slt i32 %297, 4
  br i1 %298, label %299, label %322

299:                                              ; preds = %296
  %300 = load i32, i32* %9, align 4
  %301 = load i32**, i32*** @dia1, align 8
  %302 = load i32, i32* %18, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32*, i32** %301, i64 %303
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 0
  %307 = load i32, i32* %306, align 4
  %308 = add nsw i32 %300, %307
  %309 = load i32, i32* %10, align 4
  %310 = load i32**, i32*** @dia1, align 8
  %311 = load i32, i32* %18, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32*, i32** %310, i64 %312
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 1
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %309, %316
  %318 = call i32 @COST_P_MV(i32 %308, i32 %317)
  br label %319

319:                                              ; preds = %299
  %320 = load i32, i32* %18, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %18, align 4
  br label %296

322:                                              ; preds = %296
  %323 = load i32, i32* %16, align 4
  ret i32 %323
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @COST_P_MV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
