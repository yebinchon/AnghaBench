; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_get_dc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_get_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_13__, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32** }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32 }

@MB_SIZE = common dso_local global i32 0, align 4
@ff_obmc_tab = common dso_local global i32** null, align 8
@BLOCK_INTRA = common dso_local global i32 0, align 4
@FRAC_BITS = common dso_local global i32 0, align 4
@LOG2_OBMC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32, i32)* @get_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dc(%struct.TYPE_14__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_16__*, align 8
  %26 = alloca %struct.TYPE_16__, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i64 %40
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %12, align 8
  %42 = load i32, i32* @MB_SIZE, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = ashr i32 %42, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %4
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %50, %53
  br label %57

55:                                               ; preds = %4
  %56 = load i32, i32* %13, align 4
  br label %57

57:                                               ; preds = %55, %49
  %58 = phi i32 [ %54, %49 ], [ %56, %55 ]
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = ashr i32 %62, %65
  br label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %13, align 4
  br label %69

69:                                               ; preds = %67, %61
  %70 = phi i32 [ %66, %61 ], [ %68, %67 ]
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load i32**, i32*** @ff_obmc_tab, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %74, i64 %82
  %84 = load i32*, i32** %83, align 8
  br label %93

85:                                               ; preds = %69
  %86 = load i32**, i32*** @ff_obmc_tab, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %86, i64 %90
  %92 = load i32*, i32** %91, align 8
  br label %93

93:                                               ; preds = %85, %73
  %94 = phi i32* [ %84, %73 ], [ %92, %85 ]
  store i32* %94, i32** %16, align 8
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i32, i32* %13, align 4
  %99 = mul nsw i32 2, %98
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %99, %102
  br label %107

104:                                              ; preds = %93
  %105 = load i32, i32* %13, align 4
  %106 = mul nsw i32 2, %105
  br label %107

107:                                              ; preds = %104, %97
  %108 = phi i32 [ %103, %97 ], [ %106, %104 ]
  store i32 %108, i32* %17, align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 7
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %18, align 4
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 6
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  store i32* %126, i32** %19, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i32*
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %13, align 4
  %135 = mul nsw i32 %133, %134
  %136 = load i32, i32* %13, align 4
  %137 = mul nsw i32 %135, %136
  %138 = mul nsw i32 %137, 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %132, i64 %139
  store i32* %140, i32** %20, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = shl i32 %143, %146
  store i32 %147, i32* %21, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %22, align 4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %23, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %21, align 4
  %157 = mul nsw i32 %155, %156
  %158 = add nsw i32 %154, %157
  store i32 %158, i32* %24, align 4
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 4
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = load i32, i32* %24, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i64 %163
  store %struct.TYPE_16__* %164, %struct.TYPE_16__** %25, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %166 = bitcast %struct.TYPE_16__* %26 to i8*
  %167 = bitcast %struct.TYPE_16__* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %166, i8* align 8 %167, i64 16, i1 false)
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %170, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @av_assert2(i32 %175)
  %177 = load i32, i32* @BLOCK_INTRA, align 4
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  store i64 0, i64* %187, align 8
  %188 = load i32*, i32** %20, align 8
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* %17, align 4
  %191 = mul nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 4
  %194 = trunc i64 %193 to i32
  %195 = call i32 @memset(i32* %188, i32 0, i32 %194)
  store i32 0, i32* %9, align 4
  br label %196

196:                                              ; preds = %405, %107
  %197 = load i32, i32* %9, align 4
  %198 = icmp slt i32 %197, 4
  br i1 %198, label %199, label %408

199:                                              ; preds = %196
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* %9, align 4
  %202 = and i32 %201, 1
  %203 = add nsw i32 %200, %202
  %204 = sub nsw i32 %203, 1
  store i32 %204, i32* %29, align 4
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %9, align 4
  %207 = ashr i32 %206, 1
  %208 = add nsw i32 %205, %207
  %209 = sub nsw i32 %208, 1
  store i32 %209, i32* %30, align 4
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %29, align 4
  %212 = mul nsw i32 %210, %211
  %213 = load i32, i32* %14, align 4
  %214 = sdiv i32 %213, 2
  %215 = add nsw i32 %212, %214
  store i32 %215, i32* %31, align 4
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %30, align 4
  %218 = mul nsw i32 %216, %217
  %219 = load i32, i32* %15, align 4
  %220 = sdiv i32 %219, 2
  %221 = add nsw i32 %218, %220
  store i32 %221, i32* %32, align 4
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %223 = load i32*, i32** %20, align 8
  %224 = load i32, i32* %9, align 4
  %225 = and i32 %224, 1
  %226 = load i32, i32* %14, align 4
  %227 = mul nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %223, i64 %228
  %230 = load i32, i32* %9, align 4
  %231 = ashr i32 %230, 1
  %232 = load i32, i32* %17, align 4
  %233 = mul nsw i32 %231, %232
  %234 = load i32, i32* %15, align 4
  %235 = mul nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %229, i64 %236
  %238 = load i32*, i32** %16, align 8
  %239 = load i32, i32* %31, align 4
  %240 = load i32, i32* %32, align 4
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* %15, align 4
  %243 = load i32, i32* %22, align 4
  %244 = load i32, i32* %23, align 4
  %245 = load i32, i32* %17, align 4
  %246 = load i32, i32* %18, align 4
  %247 = load i32, i32* %17, align 4
  %248 = load i32, i32* %29, align 4
  %249 = load i32, i32* %30, align 4
  %250 = load i32, i32* %8, align 4
  %251 = call i32 @add_yblock(%struct.TYPE_14__* %222, i32 0, i32* null, i32* %237, i32* null, i32* %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248, i32 %249, i32 0, i32 0, i32 %250)
  %252 = load i32, i32* %32, align 4
  %253 = call i32 @FFMAX(i32 %252, i32 0)
  store i32 %253, i32* %11, align 4
  br label %254

254:                                              ; preds = %401, %199
  %255 = load i32, i32* %11, align 4
  %256 = load i32, i32* %23, align 4
  %257 = load i32, i32* %32, align 4
  %258 = load i32, i32* %15, align 4
  %259 = add nsw i32 %257, %258
  %260 = call i32 @FFMIN(i32 %256, i32 %259)
  %261 = icmp slt i32 %255, %260
  br i1 %261, label %262, label %404

262:                                              ; preds = %254
  %263 = load i32, i32* %31, align 4
  %264 = call i32 @FFMAX(i32 %263, i32 0)
  store i32 %264, i32* %10, align 4
  br label %265

265:                                              ; preds = %397, %262
  %266 = load i32, i32* %10, align 4
  %267 = load i32, i32* %22, align 4
  %268 = load i32, i32* %31, align 4
  %269 = load i32, i32* %14, align 4
  %270 = add nsw i32 %268, %269
  %271 = call i32 @FFMIN(i32 %267, i32 %270)
  %272 = icmp slt i32 %266, %271
  br i1 %272, label %273, label %400

273:                                              ; preds = %265
  %274 = load i32, i32* %10, align 4
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* %6, align 4
  %277 = mul nsw i32 %275, %276
  %278 = load i32, i32* %14, align 4
  %279 = sdiv i32 %278, 2
  %280 = sub nsw i32 %277, %279
  %281 = sub nsw i32 %274, %280
  %282 = load i32, i32* %11, align 4
  %283 = load i32, i32* %15, align 4
  %284 = load i32, i32* %7, align 4
  %285 = mul nsw i32 %283, %284
  %286 = load i32, i32* %15, align 4
  %287 = sdiv i32 %286, 2
  %288 = sub nsw i32 %285, %287
  %289 = sub nsw i32 %282, %288
  %290 = load i32, i32* %17, align 4
  %291 = mul nsw i32 %289, %290
  %292 = add nsw i32 %281, %291
  store i32 %292, i32* %33, align 4
  %293 = load i32*, i32** %16, align 8
  %294 = load i32, i32* %33, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  store i32 %297, i32* %34, align 4
  %298 = load i32, i32* %32, align 4
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %312

300:                                              ; preds = %273
  %301 = load i32*, i32** %16, align 8
  %302 = load i32, i32* %33, align 4
  %303 = load i32, i32* %15, align 4
  %304 = load i32, i32* %17, align 4
  %305 = mul nsw i32 %303, %304
  %306 = add nsw i32 %302, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %301, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %34, align 4
  %311 = add nsw i32 %310, %309
  store i32 %311, i32* %34, align 4
  br label %312

312:                                              ; preds = %300, %273
  %313 = load i32, i32* %31, align 4
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %315, label %325

315:                                              ; preds = %312
  %316 = load i32*, i32** %16, align 8
  %317 = load i32, i32* %33, align 4
  %318 = load i32, i32* %14, align 4
  %319 = add nsw i32 %317, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %316, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* %34, align 4
  %324 = add nsw i32 %323, %322
  store i32 %324, i32* %34, align 4
  br label %325

325:                                              ; preds = %315, %312
  %326 = load i32, i32* %32, align 4
  %327 = load i32, i32* %15, align 4
  %328 = add nsw i32 %326, %327
  %329 = load i32, i32* %23, align 4
  %330 = icmp sgt i32 %328, %329
  br i1 %330, label %331, label %343

331:                                              ; preds = %325
  %332 = load i32*, i32** %16, align 8
  %333 = load i32, i32* %33, align 4
  %334 = load i32, i32* %15, align 4
  %335 = load i32, i32* %17, align 4
  %336 = mul nsw i32 %334, %335
  %337 = sub nsw i32 %333, %336
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %332, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %34, align 4
  %342 = add nsw i32 %341, %340
  store i32 %342, i32* %34, align 4
  br label %343

343:                                              ; preds = %331, %325
  %344 = load i32, i32* %31, align 4
  %345 = load i32, i32* %14, align 4
  %346 = add nsw i32 %344, %345
  %347 = load i32, i32* %22, align 4
  %348 = icmp sgt i32 %346, %347
  br i1 %348, label %349, label %359

349:                                              ; preds = %343
  %350 = load i32*, i32** %16, align 8
  %351 = load i32, i32* %33, align 4
  %352 = load i32, i32* %14, align 4
  %353 = sub nsw i32 %351, %352
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %350, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %34, align 4
  %358 = add nsw i32 %357, %356
  store i32 %358, i32* %34, align 4
  br label %359

359:                                              ; preds = %349, %343
  %360 = load i32*, i32** %20, align 8
  %361 = load i32, i32* %33, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = sub nsw i32 0, %364
  %366 = load i32, i32* @FRAC_BITS, align 4
  %367 = sub nsw i32 %366, 1
  %368 = shl i32 1, %367
  %369 = add nsw i32 %365, %368
  store i32 %369, i32* %35, align 4
  %370 = load i32, i32* %35, align 4
  %371 = load i32*, i32** %20, align 8
  %372 = load i32, i32* %33, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  store i32 %370, i32* %374, align 4
  %375 = load i32*, i32** %19, align 8
  %376 = load i32, i32* %10, align 4
  %377 = load i32, i32* %11, align 4
  %378 = load i32, i32* %18, align 4
  %379 = mul nsw i32 %377, %378
  %380 = add nsw i32 %376, %379
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %375, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* %35, align 4
  %385 = load i32, i32* @FRAC_BITS, align 4
  %386 = ashr i32 %384, %385
  %387 = sub nsw i32 %383, %386
  %388 = load i32, i32* %34, align 4
  %389 = mul nsw i32 %387, %388
  %390 = load i32, i32* %27, align 4
  %391 = add nsw i32 %390, %389
  store i32 %391, i32* %27, align 4
  %392 = load i32, i32* %34, align 4
  %393 = load i32, i32* %34, align 4
  %394 = mul nsw i32 %392, %393
  %395 = load i32, i32* %28, align 4
  %396 = add nsw i32 %395, %394
  store i32 %396, i32* %28, align 4
  br label %397

397:                                              ; preds = %359
  %398 = load i32, i32* %10, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %10, align 4
  br label %265

400:                                              ; preds = %265
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %11, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %11, align 4
  br label %254

404:                                              ; preds = %254
  br label %405

405:                                              ; preds = %404
  %406 = load i32, i32* %9, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %9, align 4
  br label %196

408:                                              ; preds = %196
  %409 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %410 = bitcast %struct.TYPE_16__* %409 to i8*
  %411 = bitcast %struct.TYPE_16__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %410, i8* align 8 %411, i64 16, i1 false)
  %412 = load i32, i32* %27, align 4
  %413 = load i32, i32* @LOG2_OBMC_MAX, align 4
  %414 = shl i32 %412, %413
  %415 = load i32, i32* %28, align 4
  %416 = call i32 @ROUNDED_DIV(i32 %414, i32 %415)
  %417 = call i32 @av_clip_uint8(i32 %416)
  ret i32 %417
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @av_assert2(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @add_yblock(%struct.TYPE_14__*, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @FFMAX(i32, i32) #2

declare dso_local i32 @FFMIN(i32, i32) #2

declare dso_local i32 @av_clip_uint8(i32) #2

declare dso_local i32 @ROUNDED_DIV(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
