; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_vis.c_TryMergeWinding.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_vis.c_TryMergeWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64** }

@CONTINUOUS_EPSILON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @TryMergeWinding(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* null, i64** %9, align 8
  store i64* null, i64** %8, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %128, %3
  %24 = load i32, i32* %14, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %131

29:                                               ; preds = %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64**, i64*** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64*, i64** %32, i64 %34
  %36 = load i64*, i64** %35, align 8
  store i64* %36, i64** %8, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64**, i64*** %38, align 8
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = srem i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64*, i64** %39, i64 %46
  %48 = load i64*, i64** %47, align 8
  store i64* %48, i64** %9, align 8
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %117, %29
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %120

55:                                               ; preds = %49
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64**, i64*** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64*, i64** %58, i64 %60
  %62 = load i64*, i64** %61, align 8
  store i64* %62, i64** %10, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64**, i64*** %64, align 8
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = srem i32 %67, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64*, i64** %65, i64 %72
  %74 = load i64*, i64** %73, align 8
  store i64* %74, i64** %11, align 8
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %109, %55
  %76 = load i32, i32* %16, align 4
  %77 = icmp slt i32 %76, 3
  br i1 %77, label %78, label %112

78:                                               ; preds = %75
  %79 = load i64*, i64** %8, align 8
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %11, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %83, %88
  %90 = call double @fabs(i64 %89)
  %91 = fcmp ogt double %90, 1.000000e-01
  br i1 %91, label %92, label %93

92:                                               ; preds = %78
  br label %112

93:                                               ; preds = %78
  %94 = load i64*, i64** %9, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %10, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %98, %103
  %105 = call double @fabs(i64 %104)
  %106 = fcmp ogt double %105, 1.000000e-01
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  br label %112

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  br label %75

112:                                              ; preds = %107, %92, %75
  %113 = load i32, i32* %16, align 4
  %114 = icmp eq i32 %113, 3
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %120

116:                                              ; preds = %112
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %49

120:                                              ; preds = %115, %49
  %121 = load i32, i32* %15, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %131

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %23

131:                                              ; preds = %126, %23
  %132 = load i32, i32* %14, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %132, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %368

138:                                              ; preds = %131
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i64**, i64*** %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %142, %145
  %147 = sub nsw i32 %146, 1
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = srem i32 %147, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64*, i64** %141, i64 %152
  %154 = load i64*, i64** %153, align 8
  store i64* %154, i64** %12, align 8
  %155 = load i64*, i64** %8, align 8
  %156 = load i64*, i64** %12, align 8
  %157 = load i32, i32* %19, align 4
  %158 = call i32 @VectorSubtract(i64* %155, i64* %156, i32 %157)
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* %18, align 4
  %162 = call i32 @CrossProduct(i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %18, align 4
  %165 = call i32 @VectorNormalize(i32 %163, i32 %164)
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i64**, i64*** %167, align 8
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %169, 2
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = srem i32 %170, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64*, i64** %168, i64 %175
  %177 = load i64*, i64** %176, align 8
  store i64* %177, i64** %12, align 8
  %178 = load i64*, i64** %12, align 8
  %179 = load i64*, i64** %8, align 8
  %180 = load i32, i32* %19, align 4
  %181 = call i32 @VectorSubtract(i64* %178, i64* %179, i32 %180)
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* %18, align 4
  %184 = call i64 @DotProduct(i32 %182, i32 %183)
  store i64 %184, i64* %20, align 8
  %185 = load i64, i64* %20, align 8
  %186 = load i64, i64* @CONTINUOUS_EPSILON, align 8
  %187 = icmp sgt i64 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %138
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %368

189:                                              ; preds = %138
  %190 = load i64, i64* %20, align 8
  %191 = load i64, i64* @CONTINUOUS_EPSILON, align 8
  %192 = sub nsw i64 0, %191
  %193 = icmp slt i64 %190, %192
  %194 = zext i1 %193 to i32
  %195 = sext i32 %194 to i64
  store i64 %195, i64* %21, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  %198 = load i64**, i64*** %197, align 8
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %199, 2
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = srem i32 %200, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64*, i64** %198, i64 %205
  %207 = load i64*, i64** %206, align 8
  store i64* %207, i64** %12, align 8
  %208 = load i64*, i64** %12, align 8
  %209 = load i64*, i64** %9, align 8
  %210 = load i32, i32* %19, align 4
  %211 = call i32 @VectorSubtract(i64* %208, i64* %209, i32 %210)
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* %19, align 4
  %214 = load i32, i32* %18, align 4
  %215 = call i32 @CrossProduct(i32 %212, i32 %213, i32 %214)
  %216 = load i32, i32* %18, align 4
  %217 = load i32, i32* %18, align 4
  %218 = call i32 @VectorNormalize(i32 %216, i32 %217)
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 1
  %221 = load i64**, i64*** %220, align 8
  %222 = load i32, i32* %15, align 4
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %222, %225
  %227 = sub nsw i32 %226, 1
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = srem i32 %227, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64*, i64** %221, i64 %232
  %234 = load i64*, i64** %233, align 8
  store i64* %234, i64** %12, align 8
  %235 = load i64*, i64** %12, align 8
  %236 = load i64*, i64** %9, align 8
  %237 = load i32, i32* %19, align 4
  %238 = call i32 @VectorSubtract(i64* %235, i64* %236, i32 %237)
  %239 = load i32, i32* %19, align 4
  %240 = load i32, i32* %18, align 4
  %241 = call i64 @DotProduct(i32 %239, i32 %240)
  store i64 %241, i64* %20, align 8
  %242 = load i64, i64* %20, align 8
  %243 = load i64, i64* @CONTINUOUS_EPSILON, align 8
  %244 = icmp sgt i64 %242, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %189
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %368

246:                                              ; preds = %189
  %247 = load i64, i64* %20, align 8
  %248 = load i64, i64* @CONTINUOUS_EPSILON, align 8
  %249 = sub nsw i64 0, %248
  %250 = icmp slt i64 %247, %249
  %251 = zext i1 %250 to i32
  %252 = sext i32 %251 to i64
  store i64 %252, i64* %22, align 8
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = add nsw i32 %255, %258
  %260 = call %struct.TYPE_6__* @NewWinding(i32 %259)
  store %struct.TYPE_6__* %260, %struct.TYPE_6__** %13, align 8
  %261 = load i32, i32* %14, align 4
  %262 = add nsw i32 %261, 1
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = srem i32 %262, %265
  store i32 %266, i32* %16, align 4
  br label %267

267:                                              ; preds = %306, %246
  %268 = load i32, i32* %16, align 4
  %269 = load i32, i32* %14, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %313

271:                                              ; preds = %267
  %272 = load i32, i32* %16, align 4
  %273 = load i32, i32* %14, align 4
  %274 = add nsw i32 %273, 1
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = srem i32 %274, %277
  %279 = icmp eq i32 %272, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %271
  %281 = load i64, i64* %22, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %280
  br label %306

284:                                              ; preds = %280, %271
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  %287 = load i64**, i64*** %286, align 8
  %288 = load i32, i32* %16, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64*, i64** %287, i64 %289
  %291 = load i64*, i64** %290, align 8
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 1
  %294 = load i64**, i64*** %293, align 8
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i64*, i64** %294, i64 %298
  %300 = load i64*, i64** %299, align 8
  %301 = call i32 @VectorCopy(i64* %291, i64* %300)
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %303, align 8
  br label %306

306:                                              ; preds = %284, %283
  %307 = load i32, i32* %16, align 4
  %308 = add nsw i32 %307, 1
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = srem i32 %308, %311
  store i32 %312, i32* %16, align 4
  br label %267

313:                                              ; preds = %267
  %314 = load i32, i32* %15, align 4
  %315 = add nsw i32 %314, 1
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = srem i32 %315, %318
  store i32 %319, i32* %17, align 4
  br label %320

320:                                              ; preds = %359, %313
  %321 = load i32, i32* %17, align 4
  %322 = load i32, i32* %15, align 4
  %323 = icmp ne i32 %321, %322
  br i1 %323, label %324, label %366

324:                                              ; preds = %320
  %325 = load i32, i32* %17, align 4
  %326 = load i32, i32* %15, align 4
  %327 = add nsw i32 %326, 1
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = srem i32 %327, %330
  %332 = icmp eq i32 %325, %331
  br i1 %332, label %333, label %337

333:                                              ; preds = %324
  %334 = load i64, i64* %21, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %337, label %336

336:                                              ; preds = %333
  br label %359

337:                                              ; preds = %333, %324
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 1
  %340 = load i64**, i64*** %339, align 8
  %341 = load i32, i32* %17, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i64*, i64** %340, i64 %342
  %344 = load i64*, i64** %343, align 8
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 1
  %347 = load i64**, i64*** %346, align 8
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i64*, i64** %347, i64 %351
  %353 = load i64*, i64** %352, align 8
  %354 = call i32 @VectorCopy(i64* %344, i64* %353)
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %356, align 8
  br label %359

359:                                              ; preds = %337, %336
  %360 = load i32, i32* %17, align 4
  %361 = add nsw i32 %360, 1
  %362 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = srem i32 %361, %364
  store i32 %365, i32* %17, align 4
  br label %320

366:                                              ; preds = %320
  %367 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %367, %struct.TYPE_6__** %4, align 8
  br label %368

368:                                              ; preds = %366, %245, %188, %137
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %369
}

declare dso_local double @fabs(i64) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local i32 @VectorNormalize(i32, i32) #1

declare dso_local i64 @DotProduct(i32, i32) #1

declare dso_local %struct.TYPE_6__* @NewWinding(i32) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
