; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_bilateral_obmc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_bilateral_obmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, %struct.TYPE_10__*, i32*, i32*, i32*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32**, i32 }

@MC_MODE_AOBMC = common dso_local global i64 0, align 8
@obmc_tab_linear = common dso_local global i32** null, align 8
@UINT64_MAX = common dso_local global i32 0, align 4
@ALPHA_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32, i32)* @bilateral_obmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bilateral_obmc(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [9 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 10
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %13, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 10
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %14, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %61, 2
  store i32 %62, i32* %19, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 2
  store i32 %70, i32* %20, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @MC_MODE_AOBMC, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %167

76:                                               ; preds = %5
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %77, 1
  %79 = call i32 @FFMAX(i32 0, i32 %78)
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %163, %76
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 2
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @FFMIN(i32 %83, i32 %86)
  %88 = icmp slt i32 %81, %87
  br i1 %88, label %89, label %166

89:                                               ; preds = %80
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %90, 1
  %92 = call i32 @FFMAX(i32 0, i32 %91)
  store i32 %92, i32* %16, align 4
  br label %93

93:                                               ; preds = %159, %89
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 2
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @FFMIN(i32 %96, i32 %99)
  %101 = icmp slt i32 %94, %100
  br i1 %101, label %102, label %162

102:                                              ; preds = %93
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = shl i32 %103, %106
  store i32 %107, i32* %27, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = shl i32 %108, %111
  store i32 %112, i32* %28, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %102
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %9, align 4
  %120 = sub nsw i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %158

122:                                              ; preds = %117, %102
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 9
  %125 = load i32, i32* %27, align 4
  %126 = load i32, i32* %28, align 4
  %127 = load i32, i32* %27, align 4
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32**, i32*** %129, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %127, %134
  %136 = load i32, i32* %28, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32**, i32*** %138, align 8
  %140 = getelementptr inbounds i32*, i32** %139, i64 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %136, %143
  %145 = call i32 @get_sbad(i32* %124, i32 %125, i32 %126, i32 %135, i32 %144)
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %8, align 4
  %148 = sub nsw i32 %146, %147
  %149 = add nsw i32 %148, 1
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %9, align 4
  %152 = sub nsw i32 %150, %151
  %153 = add nsw i32 %152, 1
  %154 = mul nsw i32 %153, 3
  %155 = add nsw i32 %149, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [9 x i32], [9 x i32]* %18, i64 0, i64 %156
  store i32 %145, i32* %157, align 4
  br label %158

158:                                              ; preds = %122, %117
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %16, align 4
  br label %93

162:                                              ; preds = %93
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %17, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %17, align 4
  br label %80

166:                                              ; preds = %80
  br label %167

167:                                              ; preds = %166, %5
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = shl i32 %168, %171
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = sdiv i32 %175, 2
  %177 = sub nsw i32 %172, %176
  store i32 %177, i32* %21, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = shl i32 %178, %181
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = sdiv i32 %185, 2
  %187 = sub nsw i32 %182, %186
  store i32 %187, i32* %22, align 4
  %188 = load i32, i32* %21, align 4
  %189 = load i32, i32* %13, align 4
  %190 = sub nsw i32 %189, 1
  %191 = call i32 @av_clip(i32 %188, i32 0, i32 %190)
  store i32 %191, i32* %23, align 4
  %192 = load i32, i32* %22, align 4
  %193 = load i32, i32* %14, align 4
  %194 = sub nsw i32 %193, 1
  %195 = call i32 @av_clip(i32 %192, i32 0, i32 %194)
  store i32 %195, i32* %24, align 4
  %196 = load i32, i32* %21, align 4
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = shl i32 2, %199
  %201 = add nsw i32 %196, %200
  %202 = load i32, i32* %13, align 4
  %203 = sub nsw i32 %202, 1
  %204 = call i32 @av_clip(i32 %201, i32 0, i32 %203)
  store i32 %204, i32* %25, align 4
  %205 = load i32, i32* %22, align 4
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = shl i32 2, %208
  %210 = add nsw i32 %205, %209
  %211 = load i32, i32* %14, align 4
  %212 = sub nsw i32 %211, 1
  %213 = call i32 @av_clip(i32 %210, i32 0, i32 %212)
  store i32 %213, i32* %26, align 4
  %214 = load i32, i32* %24, align 4
  store i32 %214, i32* %12, align 4
  br label %215

215:                                              ; preds = %388, %167
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %26, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %391

219:                                              ; preds = %215
  %220 = load i32, i32* %12, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %29, align 4
  %222 = load i32, i32* %14, align 4
  %223 = load i32, i32* %12, align 4
  %224 = sub nsw i32 %222, %223
  %225 = sub nsw i32 %224, 1
  store i32 %225, i32* %30, align 4
  %226 = load i32, i32* %23, align 4
  store i32 %226, i32* %11, align 4
  br label %227

227:                                              ; preds = %384, %219
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* %25, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %387

231:                                              ; preds = %227
  %232 = load i32, i32* %11, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %31, align 4
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* %11, align 4
  %236 = sub nsw i32 %234, %235
  %237 = sub nsw i32 %236, 1
  store i32 %237, i32* %32, align 4
  %238 = load i32**, i32*** @obmc_tab_linear, align 8
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = sub nsw i32 4, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32*, i32** %238, i64 %243
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %11, align 4
  %247 = load i32, i32* %21, align 4
  %248 = sub nsw i32 %246, %247
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* %22, align 4
  %251 = sub nsw i32 %249, %250
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = add nsw i32 %254, 1
  %256 = shl i32 %251, %255
  %257 = add nsw i32 %248, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %245, i64 %258
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %33, align 4
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 8
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %11, align 4
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* %13, align 4
  %267 = mul nsw i32 %265, %266
  %268 = add nsw i32 %264, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %263, i64 %269
  store i32* %270, i32** %34, align 8
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 7
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* %13, align 4
  %277 = mul nsw i32 %275, %276
  %278 = add nsw i32 %274, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %273, i64 %279
  store i32* %280, i32** %35, align 8
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 6
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %11, align 4
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* %13, align 4
  %287 = mul nsw i32 %285, %286
  %288 = add nsw i32 %284, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %283, i64 %289
  store i32* %290, i32** %36, align 8
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @MC_MODE_AOBMC, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %379

296:                                              ; preds = %231
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* %21, align 4
  %299 = sub nsw i32 %297, %298
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 8
  %303 = sub nsw i32 %302, 1
  %304 = ashr i32 %299, %303
  %305 = mul nsw i32 %304, 2
  %306 = sub nsw i32 %305, 3
  %307 = sdiv i32 %306, 2
  store i32 %307, i32* %16, align 4
  %308 = load i32, i32* %12, align 4
  %309 = load i32, i32* %22, align 4
  %310 = sub nsw i32 %308, %309
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 8
  %314 = sub nsw i32 %313, 1
  %315 = ashr i32 %310, %314
  %316 = mul nsw i32 %315, 2
  %317 = sub nsw i32 %316, 3
  %318 = sdiv i32 %317, 2
  store i32 %318, i32* %17, align 4
  %319 = load i32, i32* %16, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %296
  %322 = load i32, i32* %17, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %378

324:                                              ; preds = %321, %296
  %325 = load i32, i32* %16, align 4
  %326 = add nsw i32 %325, 1
  %327 = load i32, i32* %17, align 4
  %328 = add nsw i32 %327, 1
  %329 = mul nsw i32 %328, 3
  %330 = add nsw i32 %326, %329
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [9 x i32], [9 x i32]* %18, i64 0, i64 %331
  %333 = load i32, i32* %332, align 4
  store i32 %333, i32* %37, align 4
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 5
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %335, align 8
  %337 = load i32, i32* %8, align 4
  %338 = load i32, i32* %16, align 4
  %339 = add nsw i32 %337, %338
  %340 = load i32, i32* %9, align 4
  %341 = load i32, i32* %17, align 4
  %342 = add nsw i32 %340, %341
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = mul nsw i32 %342, %345
  %347 = add nsw i32 %339, %346
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i64 %348
  store %struct.TYPE_10__* %349, %struct.TYPE_10__** %15, align 8
  %350 = load i32, i32* %37, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %377

352:                                              ; preds = %324
  %353 = load i32, i32* %37, align 4
  %354 = load i32, i32* @UINT64_MAX, align 4
  %355 = icmp ne i32 %353, %354
  br i1 %355, label %356, label %377

356:                                              ; preds = %352
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @UINT64_MAX, align 4
  %361 = icmp ne i32 %359, %360
  br i1 %361, label %362, label %377

362:                                              ; preds = %356
  %363 = load i32, i32* @ALPHA_MAX, align 4
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = mul nsw i32 %363, %366
  %368 = load i32, i32* %37, align 4
  %369 = sdiv i32 %367, %368
  %370 = load i32, i32* @ALPHA_MAX, align 4
  %371 = call i32 @av_clip(i32 %369, i32 0, i32 %370)
  store i32 %371, i32* %38, align 4
  %372 = load i32, i32* %33, align 4
  %373 = load i32, i32* %38, align 4
  %374 = mul nsw i32 %372, %373
  %375 = load i32, i32* @ALPHA_MAX, align 4
  %376 = sdiv i32 %374, %375
  store i32 %376, i32* %33, align 4
  br label %377

377:                                              ; preds = %362, %356, %352, %324
  br label %378

378:                                              ; preds = %377, %321
  br label %379

379:                                              ; preds = %378, %231
  %380 = load i32, i32* %33, align 4
  %381 = load i32, i32* %19, align 4
  %382 = load i32, i32* %20, align 4
  %383 = call i32 @ADD_PIXELS(i32 %380, i32 %381, i32 %382)
  br label %384

384:                                              ; preds = %379
  %385 = load i32, i32* %11, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %11, align 4
  br label %227

387:                                              ; preds = %227
  br label %388

388:                                              ; preds = %387
  %389 = load i32, i32* %12, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %12, align 4
  br label %215

391:                                              ; preds = %215
  ret void
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @get_sbad(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @ADD_PIXELS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
