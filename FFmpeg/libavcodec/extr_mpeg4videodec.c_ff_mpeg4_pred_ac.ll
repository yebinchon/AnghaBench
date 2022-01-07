; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_ff_mpeg4_pred_ac.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_ff_mpeg4_pred_ac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32***, i32*, i32, i32, i32, i32, i32*, %struct.TYPE_6__, i64, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_mpeg4_pred_ac(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %12, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32***, i32**** %20, align 8
  %22 = getelementptr inbounds i32**, i32*** %21, i64 0
  %23 = load i32**, i32*** %22, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 16
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %26, i64 %35
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  store i32* %37, i32** %11, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %263

42:                                               ; preds = %4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %147

45:                                               ; preds = %42
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %52, %55
  %57 = add nsw i32 %49, %56
  store i32 %57, i32* %13, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 -16
  store i32* %59, i32** %10, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %45
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %67, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %107

80:                                               ; preds = %77, %74, %64, %45
  store i32 1, i32* %9, align 4
  br label %81

81:                                               ; preds = %103, %80
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 8
  br i1 %83, label %84, label %106

84:                                               ; preds = %81
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = shl i32 %95, 3
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %94, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %90, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, %89
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %84
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %81

106:                                              ; preds = %81
  br label %146

107:                                              ; preds = %77
  store i32 1, i32* %9, align 4
  br label %108

108:                                              ; preds = %142, %107
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 8
  br i1 %110, label %111, label %145

111:                                              ; preds = %108
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %116, %121
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @ROUNDED_DIV(i32 %122, i32 %125)
  %127 = load i32*, i32** %6, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 7
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = shl i32 %132, 3
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %131, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i32, i32* %127, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %126
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %137, align 4
  br label %142

142:                                              ; preds = %111
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %108

145:                                              ; preds = %108
  br label %146

146:                                              ; preds = %145, %106
  br label %262

147:                                              ; preds = %42
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = mul nsw i32 %153, %156
  %158 = add nsw i32 %150, %157
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %158, %161
  store i32 %162, i32* %14, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 6
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 16, %169
  %171 = load i32*, i32** %10, align 8
  %172 = sext i32 %170 to i64
  %173 = sub i64 0, %172
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32* %174, i32** %10, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %195, label %179

179:                                              ; preds = %147
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %12, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %182, %187
  br i1 %188, label %195, label %189

189:                                              ; preds = %179
  %190 = load i32, i32* %7, align 4
  %191 = icmp eq i32 %190, 2
  br i1 %191, label %195, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %7, align 4
  %194 = icmp eq i32 %193, 3
  br i1 %194, label %195, label %222

195:                                              ; preds = %192, %189, %179, %147
  store i32 1, i32* %9, align 4
  br label %196

196:                                              ; preds = %218, %195
  %197 = load i32, i32* %9, align 4
  %198 = icmp slt i32 %197, 8
  br i1 %198, label %199, label %221

199:                                              ; preds = %196
  %200 = load i32*, i32** %10, align 8
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, 8
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** %6, align 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 7
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i64*, i64** %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds i32, i32* %206, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, %205
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %199
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %9, align 4
  br label %196

221:                                              ; preds = %196
  br label %261

222:                                              ; preds = %192
  store i32 1, i32* %9, align 4
  br label %223

223:                                              ; preds = %257, %222
  %224 = load i32, i32* %9, align 4
  %225 = icmp slt i32 %224, 8
  br i1 %225, label %226, label %260

226:                                              ; preds = %223
  %227 = load i32*, i32** %10, align 8
  %228 = load i32, i32* %9, align 4
  %229 = add nsw i32 %228, 8
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %227, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32*, i32** %12, align 8
  %234 = load i32, i32* %14, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = mul nsw i32 %232, %237
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = call i64 @ROUNDED_DIV(i32 %238, i32 %241)
  %243 = load i32*, i32** %6, align 8
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 7
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i64*, i64** %246, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %247, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds i32, i32* %243, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = add nsw i64 %254, %242
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %252, align 4
  br label %257

257:                                              ; preds = %226
  %258 = load i32, i32* %9, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %9, align 4
  br label %223

260:                                              ; preds = %223
  br label %261

261:                                              ; preds = %260, %221
  br label %262

262:                                              ; preds = %261, %146
  br label %263

263:                                              ; preds = %262, %4
  store i32 1, i32* %9, align 4
  br label %264

264:                                              ; preds = %284, %263
  %265 = load i32, i32* %9, align 4
  %266 = icmp slt i32 %265, 8
  br i1 %266, label %267, label %287

267:                                              ; preds = %264
  %268 = load i32*, i32** %6, align 8
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 7
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  %272 = load i64*, i64** %271, align 8
  %273 = load i32, i32* %9, align 4
  %274 = shl i32 %273, 3
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, i64* %272, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds i32, i32* %268, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32*, i32** %11, align 8
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  store i32 %279, i32* %283, align 4
  br label %284

284:                                              ; preds = %267
  %285 = load i32, i32* %9, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %9, align 4
  br label %264

287:                                              ; preds = %264
  store i32 1, i32* %9, align 4
  br label %288

288:                                              ; preds = %308, %287
  %289 = load i32, i32* %9, align 4
  %290 = icmp slt i32 %289, 8
  br i1 %290, label %291, label %311

291:                                              ; preds = %288
  %292 = load i32*, i32** %6, align 8
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 7
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  %296 = load i64*, i64** %295, align 8
  %297 = load i32, i32* %9, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i64, i64* %296, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds i32, i32* %292, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = load i32*, i32** %11, align 8
  %304 = load i32, i32* %9, align 4
  %305 = add nsw i32 8, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %303, i64 %306
  store i32 %302, i32* %307, align 4
  br label %308

308:                                              ; preds = %291
  %309 = load i32, i32* %9, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %9, align 4
  br label %288

311:                                              ; preds = %288
  ret void
}

declare dso_local i64 @ROUNDED_DIV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
