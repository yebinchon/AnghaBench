; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aaccoder.c_set_special_band_scalefactors.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aaccoder.c_set_special_band_scalefactors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i32*, i64*, %struct.TYPE_4__, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32, i64* }

@INTENSITY_BT = common dso_local global i64 0, align 8
@INTENSITY_BT2 = common dso_local global i64 0, align 8
@NOISE_BT = common dso_local global i64 0, align 8
@SCALE_MAX_DIFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*)* @set_special_band_scalefactors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_special_band_scalefactors(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 -255, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %152, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %165

17:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %148, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %151

25:                                               ; preds = %18
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 16
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %28, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %148

38:                                               ; preds = %25
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %42, 16
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %41, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @INTENSITY_BT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %64, label %51

51:                                               ; preds = %38
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 %55, 16
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %54, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @INTENSITY_BT2, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %51, %38
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = mul nsw i32 %68, 16
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @log2f(i32 %74)
  %76 = mul nsw i32 %75, 2
  %77 = call i32 @roundf(i32 %76)
  %78 = call i8* @av_clip(i32 %77, i32 -155, i32 100)
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = mul nsw i32 %83, 16
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  store i32 %79, i32* %88, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %147

91:                                               ; preds = %51
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = mul nsw i32 %95, 16
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %94, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @NOISE_BT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %146

104:                                              ; preds = %91
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = mul nsw i32 %108, 16
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %107, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @log2f(i32 %114)
  %116 = mul nsw i32 %115, 2
  %117 = call i32 @ceilf(i32 %116)
  %118 = add nsw i32 3, %117
  %119 = call i8* @av_clip(i32 %118, i32 -100, i32 155)
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = mul nsw i32 %124, 16
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %123, i64 %128
  store i32 %120, i32* %129, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, -255
  br i1 %131, label %132, label %143

132:                                              ; preds = %104
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = mul nsw i32 %136, 16
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %135, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %132, %104
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %143, %91
  br label %147

147:                                              ; preds = %146, %64
  br label %148

148:                                              ; preds = %147, %37
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %6, align 4
  br label %18

151:                                              ; preds = %18
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  %156 = load i64*, i64** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %160
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %5, align 4
  br label %10

165:                                              ; preds = %10
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  br label %312

169:                                              ; preds = %165
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %299, %169
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %171, %175
  br i1 %176, label %177, label %312

177:                                              ; preds = %170
  store i32 0, i32* %6, align 4
  br label %178

178:                                              ; preds = %295, %177
  %179 = load i32, i32* %6, align 4
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %179, %183
  br i1 %184, label %185, label %298

185:                                              ; preds = %178
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  %188 = load i64*, i64** %187, align 8
  %189 = load i32, i32* %5, align 4
  %190 = mul nsw i32 %189, 16
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %188, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  br label %295

198:                                              ; preds = %185
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i64*, i64** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = mul nsw i32 %202, 16
  %204 = load i32, i32* %6, align 4
  %205 = add nsw i32 %203, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %201, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @INTENSITY_BT, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %224, label %211

211:                                              ; preds = %198
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i64*, i64** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = mul nsw i32 %215, 16
  %217 = load i32, i32* %6, align 4
  %218 = add nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %214, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @INTENSITY_BT2, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %252

224:                                              ; preds = %211, %198
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %5, align 4
  %229 = mul nsw i32 %228, 16
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %229, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %227, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* @SCALE_MAX_DIFF, align 4
  %237 = sub nsw i32 %235, %236
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @SCALE_MAX_DIFF, align 4
  %240 = add nsw i32 %238, %239
  %241 = call i8* @av_clip(i32 %234, i32 %237, i32 %240)
  %242 = ptrtoint i8* %241 to i32
  store i32 %242, i32* %8, align 4
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %5, align 4
  %247 = mul nsw i32 %246, 16
  %248 = load i32, i32* %6, align 4
  %249 = add nsw i32 %247, %248
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %245, i64 %250
  store i32 %242, i32* %251, align 4
  br label %294

252:                                              ; preds = %211
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  %255 = load i64*, i64** %254, align 8
  %256 = load i32, i32* %5, align 4
  %257 = mul nsw i32 %256, 16
  %258 = load i32, i32* %6, align 4
  %259 = add nsw i32 %257, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64, i64* %255, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @NOISE_BT, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %293

265:                                              ; preds = %252
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %5, align 4
  %270 = mul nsw i32 %269, 16
  %271 = load i32, i32* %6, align 4
  %272 = add nsw i32 %270, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %268, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %7, align 4
  %277 = load i32, i32* @SCALE_MAX_DIFF, align 4
  %278 = sub nsw i32 %276, %277
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* @SCALE_MAX_DIFF, align 4
  %281 = add nsw i32 %279, %280
  %282 = call i8* @av_clip(i32 %275, i32 %278, i32 %281)
  %283 = ptrtoint i8* %282 to i32
  store i32 %283, i32* %7, align 4
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %5, align 4
  %288 = mul nsw i32 %287, 16
  %289 = load i32, i32* %6, align 4
  %290 = add nsw i32 %288, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %286, i64 %291
  store i32 %283, i32* %292, align 4
  br label %293

293:                                              ; preds = %265, %252
  br label %294

294:                                              ; preds = %293, %224
  br label %295

295:                                              ; preds = %294, %197
  %296 = load i32, i32* %6, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %6, align 4
  br label %178

298:                                              ; preds = %178
  br label %299

299:                                              ; preds = %298
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 2
  %303 = load i64*, i64** %302, align 8
  %304 = load i32, i32* %5, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i64, i64* %303, i64 %305
  %307 = load i64, i64* %306, align 8
  %308 = load i32, i32* %5, align 4
  %309 = sext i32 %308 to i64
  %310 = add nsw i64 %309, %307
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %5, align 4
  br label %170

312:                                              ; preds = %168, %170
  ret void
}

declare dso_local i8* @av_clip(i32, i32, i32) #1

declare dso_local i32 @roundf(i32) #1

declare dso_local i32 @log2f(i32) #1

declare dso_local i32 @ceilf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
