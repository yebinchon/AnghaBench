; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_imdct_and_windowing_eld.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_imdct_and_windowing_eld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32, %struct.TYPE_11__, %struct.TYPE_14__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 (i32*, i32*, i32*)* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i32*, i32*, i32)* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32*, i32*, i32* }

@ff_aac_eld_window_480 = common dso_local global i32 0, align 4
@ff_aac_eld_window_512 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*)* @imdct_and_windowing_eld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imdct_and_windowing_eld(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %6, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %7, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %8, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 480, i32 512
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = ashr i32 %39, 2
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 480
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  %44 = load i32, i32* @ff_aac_eld_window_480, align 4
  %45 = call i32* @AAC_RENAME(i32 %44)
  br label %49

46:                                               ; preds = %2
  %47 = load i32, i32* @ff_aac_eld_window_512, align 4
  %48 = call i32* @AAC_RENAME(i32 %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i32* [ %45, %43 ], [ %48, %46 ]
  store i32* %50, i32** %13, align 8
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %110, %49
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %113

55:                                               ; preds = %51
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %14, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 0, %68
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %76, 1
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %75, i64 %80
  store i32 %74, i32* %81, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %14, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sub nsw i32 %90, 2
  %92 = load i32, i32* %9, align 4
  %93 = sub nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %89, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32 %96, i32* %101, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %104, 2
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  store i32 %102, i32* %109, align 4
  br label %110

110:                                              ; preds = %55
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 2
  store i32 %112, i32* %9, align 4
  br label %51

113:                                              ; preds = %51
  %114 = load i32, i32* %10, align 4
  %115 = icmp eq i32 %114, 480
  br i1 %115, label %116, label %128

116:                                              ; preds = %113
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32)** %120, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 %121(%struct.TYPE_14__* %124, i32* %125, i32* %126, i32 1)
  br label %138

128:                                              ; preds = %113
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %131, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load i32*, i32** %8, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 %132(i32* %134, i32* %135, i32* %136)
  br label %138

138:                                              ; preds = %128, %116
  store i32 0, i32* %9, align 4
  br label %139

139:                                              ; preds = %154, %138
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %157

143:                                              ; preds = %139
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 0, %148
  %150 = load i32*, i32** %8, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %149, i32* %153, align 4
  br label %154

154:                                              ; preds = %143
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 2
  store i32 %156, i32* %9, align 4
  br label %139

157:                                              ; preds = %139
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %9, align 4
  br label %159

159:                                              ; preds = %250, %157
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %253

163:                                              ; preds = %159
  %164 = load i32*, i32** %8, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sub nsw i32 %165, 1
  %167 = load i32, i32* %9, align 4
  %168 = sub nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %164, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %13, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %12, align 4
  %175 = sub nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %172, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @AAC_MUL31(i32 %171, i32 %178)
  %180 = load i32*, i32** %7, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %11, align 4
  %183 = add nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %180, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %13, align 8
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i32, i32* %12, align 4
  %192 = sub nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %187, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @AAC_MUL31(i32 %186, i32 %195)
  %197 = add nsw i32 %179, %196
  %198 = load i32*, i32** %7, align 8
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %199, %200
  %202 = sub nsw i32 %201, 1
  %203 = load i32, i32* %9, align 4
  %204 = sub nsw i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %198, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 0, %207
  %209 = load i32*, i32** %13, align 8
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* %10, align 4
  %212 = mul nsw i32 2, %211
  %213 = add nsw i32 %210, %212
  %214 = load i32, i32* %12, align 4
  %215 = sub nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %209, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @AAC_MUL31(i32 %208, i32 %218)
  %220 = add nsw i32 %197, %219
  %221 = load i32*, i32** %7, align 8
  %222 = load i32, i32* %10, align 4
  %223 = mul nsw i32 2, %222
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 %223, %224
  %226 = load i32, i32* %9, align 4
  %227 = add nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %221, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = sub nsw i32 0, %230
  %232 = load i32*, i32** %13, align 8
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* %10, align 4
  %235 = mul nsw i32 3, %234
  %236 = add nsw i32 %233, %235
  %237 = load i32, i32* %12, align 4
  %238 = sub nsw i32 %236, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %232, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @AAC_MUL31(i32 %231, i32 %241)
  %243 = add nsw i32 %220, %242
  %244 = load i32*, i32** %6, align 8
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* %12, align 4
  %247 = sub nsw i32 %245, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %244, i64 %248
  store i32 %243, i32* %249, align 4
  br label %250

250:                                              ; preds = %163
  %251 = load i32, i32* %9, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %9, align 4
  br label %159

253:                                              ; preds = %159
  store i32 0, i32* %9, align 4
  br label %254

254:                                              ; preds = %349, %253
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* %11, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %352

258:                                              ; preds = %254
  %259 = load i32*, i32** %8, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load i32*, i32** %13, align 8
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* %11, align 4
  %267 = add nsw i32 %265, %266
  %268 = load i32, i32* %12, align 4
  %269 = sub nsw i32 %267, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %264, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @AAC_MUL31(i32 %263, i32 %272)
  %274 = load i32*, i32** %7, align 8
  %275 = load i32, i32* %10, align 4
  %276 = sub nsw i32 %275, 1
  %277 = load i32, i32* %9, align 4
  %278 = sub nsw i32 %276, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %274, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = sub nsw i32 0, %281
  %283 = load i32*, i32** %13, align 8
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* %11, align 4
  %286 = add nsw i32 %284, %285
  %287 = load i32, i32* %10, align 4
  %288 = add nsw i32 %286, %287
  %289 = load i32, i32* %12, align 4
  %290 = sub nsw i32 %288, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %283, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @AAC_MUL31(i32 %282, i32 %293)
  %295 = add nsw i32 %273, %294
  %296 = load i32*, i32** %7, align 8
  %297 = load i32, i32* %10, align 4
  %298 = load i32, i32* %9, align 4
  %299 = add nsw i32 %297, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %296, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = sub nsw i32 0, %302
  %304 = load i32*, i32** %13, align 8
  %305 = load i32, i32* %9, align 4
  %306 = load i32, i32* %11, align 4
  %307 = add nsw i32 %305, %306
  %308 = load i32, i32* %10, align 4
  %309 = mul nsw i32 2, %308
  %310 = add nsw i32 %307, %309
  %311 = load i32, i32* %12, align 4
  %312 = sub nsw i32 %310, %311
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %304, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @AAC_MUL31(i32 %303, i32 %315)
  %317 = add nsw i32 %295, %316
  %318 = load i32*, i32** %7, align 8
  %319 = load i32, i32* %10, align 4
  %320 = mul nsw i32 2, %319
  %321 = load i32, i32* %10, align 4
  %322 = add nsw i32 %320, %321
  %323 = sub nsw i32 %322, 1
  %324 = load i32, i32* %9, align 4
  %325 = sub nsw i32 %323, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %318, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load i32*, i32** %13, align 8
  %330 = load i32, i32* %9, align 4
  %331 = load i32, i32* %11, align 4
  %332 = add nsw i32 %330, %331
  %333 = load i32, i32* %10, align 4
  %334 = mul nsw i32 3, %333
  %335 = add nsw i32 %332, %334
  %336 = load i32, i32* %12, align 4
  %337 = sub nsw i32 %335, %336
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %329, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @AAC_MUL31(i32 %328, i32 %340)
  %342 = add nsw i32 %317, %341
  %343 = load i32*, i32** %6, align 8
  %344 = load i32, i32* %12, align 4
  %345 = load i32, i32* %9, align 4
  %346 = add nsw i32 %344, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %343, i64 %347
  store i32 %342, i32* %348, align 4
  br label %349

349:                                              ; preds = %258
  %350 = load i32, i32* %9, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %9, align 4
  br label %254

352:                                              ; preds = %254
  store i32 0, i32* %9, align 4
  br label %353

353:                                              ; preds = %426, %352
  %354 = load i32, i32* %9, align 4
  %355 = load i32, i32* %12, align 4
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %429

357:                                              ; preds = %353
  %358 = load i32*, i32** %8, align 8
  %359 = load i32, i32* %9, align 4
  %360 = load i32, i32* %11, align 4
  %361 = add nsw i32 %359, %360
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %358, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = load i32*, i32** %13, align 8
  %366 = load i32, i32* %9, align 4
  %367 = load i32, i32* %10, align 4
  %368 = add nsw i32 %366, %367
  %369 = load i32, i32* %12, align 4
  %370 = sub nsw i32 %368, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %365, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @AAC_MUL31(i32 %364, i32 %373)
  %375 = load i32*, i32** %7, align 8
  %376 = load i32, i32* %11, align 4
  %377 = sub nsw i32 %376, 1
  %378 = load i32, i32* %9, align 4
  %379 = sub nsw i32 %377, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %375, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = sub nsw i32 0, %382
  %384 = load i32*, i32** %13, align 8
  %385 = load i32, i32* %9, align 4
  %386 = load i32, i32* %10, align 4
  %387 = mul nsw i32 2, %386
  %388 = add nsw i32 %385, %387
  %389 = load i32, i32* %12, align 4
  %390 = sub nsw i32 %388, %389
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %384, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = call i32 @AAC_MUL31(i32 %383, i32 %393)
  %395 = add nsw i32 %374, %394
  %396 = load i32*, i32** %7, align 8
  %397 = load i32, i32* %10, align 4
  %398 = load i32, i32* %11, align 4
  %399 = add nsw i32 %397, %398
  %400 = load i32, i32* %9, align 4
  %401 = add nsw i32 %399, %400
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %396, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = sub nsw i32 0, %404
  %406 = load i32*, i32** %13, align 8
  %407 = load i32, i32* %9, align 4
  %408 = load i32, i32* %10, align 4
  %409 = mul nsw i32 3, %408
  %410 = add nsw i32 %407, %409
  %411 = load i32, i32* %12, align 4
  %412 = sub nsw i32 %410, %411
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %406, i64 %413
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @AAC_MUL31(i32 %405, i32 %415)
  %417 = add nsw i32 %395, %416
  %418 = load i32*, i32** %6, align 8
  %419 = load i32, i32* %11, align 4
  %420 = load i32, i32* %12, align 4
  %421 = add nsw i32 %419, %420
  %422 = load i32, i32* %9, align 4
  %423 = add nsw i32 %421, %422
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %418, i64 %424
  store i32 %417, i32* %425, align 4
  br label %426

426:                                              ; preds = %357
  %427 = load i32, i32* %9, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %9, align 4
  br label %353

429:                                              ; preds = %353
  %430 = load i32*, i32** %7, align 8
  %431 = load i32, i32* %10, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  %434 = load i32*, i32** %7, align 8
  %435 = load i32, i32* %10, align 4
  %436 = mul nsw i32 2, %435
  %437 = sext i32 %436 to i64
  %438 = mul i64 %437, 4
  %439 = trunc i64 %438 to i32
  %440 = call i32 @memmove(i32* %433, i32* %434, i32 %439)
  %441 = load i32*, i32** %7, align 8
  %442 = load i32*, i32** %8, align 8
  %443 = load i32, i32* %10, align 4
  %444 = sext i32 %443 to i64
  %445 = mul i64 %444, 4
  %446 = trunc i64 %445 to i32
  %447 = call i32 @memcpy(i32* %441, i32* %442, i32 %446)
  ret void
}

declare dso_local i32* @AAC_RENAME(i32) #1

declare dso_local i32 @AAC_MUL31(i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
