; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_bidirectional_obmc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_bidirectional_obmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_10__*, i32*, i32*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32** }
%struct.TYPE_7__ = type { i32, i32 }

@ALPHA_MAX = common dso_local global i32 0, align 4
@obmc_tab_linear = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @bidirectional_obmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bidirectional_obmc(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 7
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 7
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %70, %2
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %66, %49
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 %59, %60
  %62 = add nsw i32 %58, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %50

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %45

73:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %317, %73
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %77, label %320

77:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %313, %77
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %316

84:                                               ; preds = %78
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %309, %84
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %312

91:                                               ; preds = %85
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* %4, align 4
  br label %100

96:                                               ; preds = %91
  %97 = load i32, i32* @ALPHA_MAX, align 4
  %98 = load i32, i32* %4, align 4
  %99 = sub nsw i32 %97, %98
  br label %100

100:                                              ; preds = %96, %94
  %101 = phi i32 [ %95, %94 ], [ %99, %96 ]
  store i32 %101, i32* %12, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 7
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 2, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %112, %115
  %117 = add nsw i32 %111, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %13, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 7
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 2, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %138, %141
  %143 = add nsw i32 %137, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = shl i32 %154, %157
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = sdiv i32 %161, 2
  %163 = sub nsw i32 %158, %162
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %12, align 4
  %166 = mul nsw i32 %164, %165
  %167 = load i32, i32* @ALPHA_MAX, align 4
  %168 = sdiv i32 %166, %167
  %169 = add nsw i32 %163, %168
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = shl i32 %170, %173
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = sdiv i32 %177, 2
  %179 = sub nsw i32 %174, %178
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %12, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load i32, i32* @ALPHA_MAX, align 4
  %184 = sdiv i32 %182, %183
  %185 = add nsw i32 %179, %184
  store i32 %185, i32* %16, align 4
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %7, align 4
  %188 = sub nsw i32 %187, 1
  %189 = call i32 @av_clip(i32 %186, i32 0, i32 %188)
  store i32 %189, i32* %17, align 4
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* %8, align 4
  %192 = sub nsw i32 %191, 1
  %193 = call i32 @av_clip(i32 %190, i32 0, i32 %192)
  store i32 %193, i32* %18, align 4
  %194 = load i32, i32* %15, align 4
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = shl i32 2, %197
  %199 = add nsw i32 %194, %198
  %200 = load i32, i32* %7, align 4
  %201 = sub nsw i32 %200, 1
  %202 = call i32 @av_clip(i32 %199, i32 0, i32 %201)
  store i32 %202, i32* %19, align 4
  %203 = load i32, i32* %16, align 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = shl i32 2, %206
  %208 = add nsw i32 %203, %207
  %209 = load i32, i32* %8, align 4
  %210 = sub nsw i32 %209, 1
  %211 = call i32 @av_clip(i32 %208, i32 0, i32 %210)
  store i32 %211, i32* %20, align 4
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %100
  %215 = load i32, i32* %13, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %13, align 4
  %217 = load i32, i32* %14, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %14, align 4
  br label %219

219:                                              ; preds = %214, %100
  %220 = load i32, i32* %18, align 4
  store i32 %220, i32* %6, align 4
  br label %221

221:                                              ; preds = %305, %219
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %20, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %308

225:                                              ; preds = %221
  %226 = load i32, i32* %6, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %21, align 4
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* %6, align 4
  %230 = sub nsw i32 %228, %229
  %231 = sub nsw i32 %230, 1
  store i32 %231, i32* %22, align 4
  %232 = load i32, i32* %17, align 4
  store i32 %232, i32* %5, align 4
  br label %233

233:                                              ; preds = %301, %225
  %234 = load i32, i32* %5, align 4
  %235 = load i32, i32* %19, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %304

237:                                              ; preds = %233
  %238 = load i32, i32* %5, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %23, align 4
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* %5, align 4
  %242 = sub nsw i32 %240, %241
  %243 = sub nsw i32 %242, 1
  store i32 %243, i32* %24, align 4
  %244 = load i32**, i32*** @obmc_tab_linear, align 8
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = sub nsw i32 4, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32*, i32** %244, i64 %249
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %5, align 4
  %253 = load i32, i32* %15, align 4
  %254 = sub nsw i32 %252, %253
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* %16, align 4
  %257 = sub nsw i32 %255, %256
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = add nsw i32 %260, 1
  %262 = shl i32 %257, %261
  %263 = add nsw i32 %254, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %251, i64 %264
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %25, align 4
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 6
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %5, align 4
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* %7, align 4
  %273 = mul nsw i32 %271, %272
  %274 = add nsw i32 %270, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %269, i64 %275
  store i32* %276, i32** %26, align 8
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 5
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %5, align 4
  %281 = load i32, i32* %6, align 4
  %282 = load i32, i32* %7, align 4
  %283 = mul nsw i32 %281, %282
  %284 = add nsw i32 %280, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %279, i64 %285
  store i32* %286, i32** %27, align 8
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 4
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %288, align 8
  %290 = load i32, i32* %5, align 4
  %291 = load i32, i32* %6, align 4
  %292 = load i32, i32* %7, align 4
  %293 = mul nsw i32 %291, %292
  %294 = add nsw i32 %290, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i64 %295
  store %struct.TYPE_10__* %296, %struct.TYPE_10__** %28, align 8
  %297 = load i32, i32* %25, align 4
  %298 = load i32, i32* %13, align 4
  %299 = load i32, i32* %14, align 4
  %300 = call i32 @ADD_PIXELS(i32 %297, i32 %298, i32 %299)
  br label %301

301:                                              ; preds = %237
  %302 = load i32, i32* %5, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %5, align 4
  br label %233

304:                                              ; preds = %233
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %6, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %6, align 4
  br label %221

308:                                              ; preds = %221
  br label %309

309:                                              ; preds = %308
  %310 = load i32, i32* %10, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %10, align 4
  br label %85

312:                                              ; preds = %85
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %9, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %9, align 4
  br label %78

316:                                              ; preds = %78
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %11, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %11, align 4
  br label %74

320:                                              ; preds = %74
  ret void
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @ADD_PIXELS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
