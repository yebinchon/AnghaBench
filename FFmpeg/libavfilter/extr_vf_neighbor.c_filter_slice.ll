; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_neighbor.c_filter_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_neighbor.c_filter_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32*, i32*, i32*, i32, i32, i32 (i32*, i32*, i32, i32, i32**, i32, i32)* }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i32)* @filter_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_slice(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
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
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [8 x i32*], align 16
  %28 = alloca [8 x i32*], align 16
  %29 = alloca [8 x i32*], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %9, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %10, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %11, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %469, %4
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %472

47:                                               ; preds = %41
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %15, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %16, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %17, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %18, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %19, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %7, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %8, align 4
  %90 = sdiv i32 %88, %89
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  %94 = mul nsw i32 %91, %93
  %95 = load i32, i32* %8, align 4
  %96 = sdiv i32 %94, %95
  store i32 %96, i32* %22, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* %17, align 4
  %106 = mul nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  store i32* %108, i32** %23, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* %18, align 4
  %118 = mul nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  store i32* %120, i32** %24, align 8
  %121 = load i32, i32* %16, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %47
  %124 = load i32*, i32** %24, align 8
  %125 = load i32, i32* %18, align 4
  %126 = load i32*, i32** %23, align 8
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %15, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load i32, i32* %22, align 4
  %132 = load i32, i32* %21, align 4
  %133 = sub nsw i32 %131, %132
  %134 = call i32 @av_image_copy_plane(i32* %124, i32 %125, i32* %126, i32 %127, i32 %130, i32 %133)
  br label %469

135:                                              ; preds = %47
  %136 = load i32, i32* %21, align 4
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %465, %135
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %22, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %468

141:                                              ; preds = %137
  %142 = load i32, i32* %14, align 4
  %143 = icmp sgt i32 %142, 0
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %25, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %19, align 4
  %147 = sub nsw i32 %146, 1
  %148 = icmp slt i32 %145, %147
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %26, align 4
  %150 = getelementptr inbounds [8 x i32*], [8 x i32*]* %27, i64 0, i64 0
  %151 = load i32*, i32** %23, align 8
  %152 = load i32, i32* %25, align 4
  %153 = load i32, i32* %17, align 4
  %154 = mul nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = sub i64 0, %155
  %157 = getelementptr inbounds i32, i32* %151, i64 %156
  store i32* %157, i32** %150, align 8
  %158 = getelementptr inbounds i32*, i32** %150, i64 1
  %159 = load i32*, i32** %23, align 8
  %160 = load i32, i32* %15, align 4
  %161 = mul nsw i32 1, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %25, align 4
  %165 = load i32, i32* %17, align 4
  %166 = mul nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = sub i64 0, %167
  %169 = getelementptr inbounds i32, i32* %163, i64 %168
  store i32* %169, i32** %158, align 8
  %170 = getelementptr inbounds i32*, i32** %158, i64 1
  %171 = load i32*, i32** %23, align 8
  %172 = load i32, i32* %15, align 4
  %173 = mul nsw i32 2, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %25, align 4
  %177 = load i32, i32* %17, align 4
  %178 = mul nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = sub i64 0, %179
  %181 = getelementptr inbounds i32, i32* %175, i64 %180
  store i32* %181, i32** %170, align 8
  %182 = getelementptr inbounds i32*, i32** %170, i64 1
  %183 = load i32*, i32** %23, align 8
  store i32* %183, i32** %182, align 8
  %184 = getelementptr inbounds i32*, i32** %182, i64 1
  %185 = load i32*, i32** %23, align 8
  %186 = load i32, i32* %15, align 4
  %187 = mul nsw i32 2, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  store i32* %189, i32** %184, align 8
  %190 = getelementptr inbounds i32*, i32** %184, i64 1
  %191 = load i32*, i32** %23, align 8
  %192 = load i32, i32* %26, align 4
  %193 = load i32, i32* %17, align 4
  %194 = mul nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %191, i64 %195
  store i32* %196, i32** %190, align 8
  %197 = getelementptr inbounds i32*, i32** %190, i64 1
  %198 = load i32*, i32** %23, align 8
  %199 = load i32, i32* %15, align 4
  %200 = mul nsw i32 1, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* %26, align 4
  %204 = load i32, i32* %17, align 4
  %205 = mul nsw i32 %203, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  store i32* %207, i32** %197, align 8
  %208 = getelementptr inbounds i32*, i32** %197, i64 1
  %209 = load i32*, i32** %23, align 8
  %210 = load i32, i32* %15, align 4
  %211 = mul nsw i32 2, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  %214 = load i32, i32* %26, align 4
  %215 = load i32, i32* %17, align 4
  %216 = mul nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %213, i64 %217
  store i32* %218, i32** %208, align 8
  %219 = getelementptr inbounds [8 x i32*], [8 x i32*]* %28, i64 0, i64 0
  %220 = load i32*, i32** %23, align 8
  %221 = load i32, i32* %15, align 4
  %222 = mul nsw i32 1, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  %225 = load i32, i32* %25, align 4
  %226 = load i32, i32* %17, align 4
  %227 = mul nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = sub i64 0, %228
  %230 = getelementptr inbounds i32, i32* %224, i64 %229
  store i32* %230, i32** %219, align 8
  %231 = getelementptr inbounds i32*, i32** %219, i64 1
  %232 = load i32*, i32** %23, align 8
  %233 = load i32, i32* %25, align 4
  %234 = load i32, i32* %17, align 4
  %235 = mul nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = sub i64 0, %236
  %238 = getelementptr inbounds i32, i32* %232, i64 %237
  store i32* %238, i32** %231, align 8
  %239 = getelementptr inbounds i32*, i32** %231, i64 1
  %240 = load i32*, i32** %23, align 8
  %241 = load i32, i32* %15, align 4
  %242 = mul nsw i32 1, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  %245 = load i32, i32* %25, align 4
  %246 = load i32, i32* %17, align 4
  %247 = mul nsw i32 %245, %246
  %248 = sext i32 %247 to i64
  %249 = sub i64 0, %248
  %250 = getelementptr inbounds i32, i32* %244, i64 %249
  store i32* %250, i32** %239, align 8
  %251 = getelementptr inbounds i32*, i32** %239, i64 1
  %252 = load i32*, i32** %23, align 8
  %253 = load i32, i32* %15, align 4
  %254 = mul nsw i32 1, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  store i32* %256, i32** %251, align 8
  %257 = getelementptr inbounds i32*, i32** %251, i64 1
  %258 = load i32*, i32** %23, align 8
  %259 = load i32, i32* %15, align 4
  %260 = mul nsw i32 1, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  store i32* %262, i32** %257, align 8
  %263 = getelementptr inbounds i32*, i32** %257, i64 1
  %264 = load i32*, i32** %23, align 8
  %265 = load i32, i32* %15, align 4
  %266 = mul nsw i32 1, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %264, i64 %267
  %269 = load i32, i32* %26, align 4
  %270 = load i32, i32* %17, align 4
  %271 = mul nsw i32 %269, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %268, i64 %272
  store i32* %273, i32** %263, align 8
  %274 = getelementptr inbounds i32*, i32** %263, i64 1
  %275 = load i32*, i32** %23, align 8
  %276 = load i32, i32* %26, align 4
  %277 = load i32, i32* %17, align 4
  %278 = mul nsw i32 %276, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %275, i64 %279
  store i32* %280, i32** %274, align 8
  %281 = getelementptr inbounds i32*, i32** %274, i64 1
  %282 = load i32*, i32** %23, align 8
  %283 = load i32, i32* %15, align 4
  %284 = mul nsw i32 1, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  %287 = load i32, i32* %26, align 4
  %288 = load i32, i32* %17, align 4
  %289 = mul nsw i32 %287, %288
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %286, i64 %290
  store i32* %291, i32** %281, align 8
  %292 = getelementptr inbounds [8 x i32*], [8 x i32*]* %29, i64 0, i64 0
  %293 = load i32*, i32** %23, align 8
  %294 = load i32, i32* %20, align 4
  %295 = sub nsw i32 %294, 2
  %296 = load i32, i32* %15, align 4
  %297 = mul nsw i32 %295, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %293, i64 %298
  %300 = load i32, i32* %25, align 4
  %301 = load i32, i32* %17, align 4
  %302 = mul nsw i32 %300, %301
  %303 = sext i32 %302 to i64
  %304 = sub i64 0, %303
  %305 = getelementptr inbounds i32, i32* %299, i64 %304
  store i32* %305, i32** %292, align 8
  %306 = getelementptr inbounds i32*, i32** %292, i64 1
  %307 = load i32*, i32** %23, align 8
  %308 = load i32, i32* %20, align 4
  %309 = sub nsw i32 %308, 1
  %310 = load i32, i32* %15, align 4
  %311 = mul nsw i32 %309, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %307, i64 %312
  %314 = load i32, i32* %25, align 4
  %315 = load i32, i32* %17, align 4
  %316 = mul nsw i32 %314, %315
  %317 = sext i32 %316 to i64
  %318 = sub i64 0, %317
  %319 = getelementptr inbounds i32, i32* %313, i64 %318
  store i32* %319, i32** %306, align 8
  %320 = getelementptr inbounds i32*, i32** %306, i64 1
  %321 = load i32*, i32** %23, align 8
  %322 = load i32, i32* %20, align 4
  %323 = sub nsw i32 %322, 2
  %324 = load i32, i32* %15, align 4
  %325 = mul nsw i32 %323, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %321, i64 %326
  %328 = load i32, i32* %25, align 4
  %329 = load i32, i32* %17, align 4
  %330 = mul nsw i32 %328, %329
  %331 = sext i32 %330 to i64
  %332 = sub i64 0, %331
  %333 = getelementptr inbounds i32, i32* %327, i64 %332
  store i32* %333, i32** %320, align 8
  %334 = getelementptr inbounds i32*, i32** %320, i64 1
  %335 = load i32*, i32** %23, align 8
  %336 = load i32, i32* %20, align 4
  %337 = sub nsw i32 %336, 2
  %338 = load i32, i32* %15, align 4
  %339 = mul nsw i32 %337, %338
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %335, i64 %340
  store i32* %341, i32** %334, align 8
  %342 = getelementptr inbounds i32*, i32** %334, i64 1
  %343 = load i32*, i32** %23, align 8
  %344 = load i32, i32* %20, align 4
  %345 = sub nsw i32 %344, 2
  %346 = load i32, i32* %15, align 4
  %347 = mul nsw i32 %345, %346
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %343, i64 %348
  store i32* %349, i32** %342, align 8
  %350 = getelementptr inbounds i32*, i32** %342, i64 1
  %351 = load i32*, i32** %23, align 8
  %352 = load i32, i32* %20, align 4
  %353 = sub nsw i32 %352, 2
  %354 = load i32, i32* %15, align 4
  %355 = mul nsw i32 %353, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %351, i64 %356
  %358 = load i32, i32* %26, align 4
  %359 = load i32, i32* %17, align 4
  %360 = mul nsw i32 %358, %359
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %357, i64 %361
  store i32* %362, i32** %350, align 8
  %363 = getelementptr inbounds i32*, i32** %350, i64 1
  %364 = load i32*, i32** %23, align 8
  %365 = load i32, i32* %20, align 4
  %366 = sub nsw i32 %365, 1
  %367 = load i32, i32* %15, align 4
  %368 = mul nsw i32 %366, %367
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %364, i64 %369
  %371 = load i32, i32* %26, align 4
  %372 = load i32, i32* %17, align 4
  %373 = mul nsw i32 %371, %372
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %370, i64 %374
  store i32* %375, i32** %363, align 8
  %376 = getelementptr inbounds i32*, i32** %363, i64 1
  %377 = load i32*, i32** %23, align 8
  %378 = load i32, i32* %20, align 4
  %379 = sub nsw i32 %378, 2
  %380 = load i32, i32* %15, align 4
  %381 = mul nsw i32 %379, %380
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %377, i64 %382
  %384 = load i32, i32* %26, align 4
  %385 = load i32, i32* %17, align 4
  %386 = mul nsw i32 %384, %385
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %383, i64 %387
  store i32* %388, i32** %376, align 8
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 7
  %391 = load i32 (i32*, i32*, i32, i32, i32**, i32, i32)*, i32 (i32*, i32*, i32, i32, i32**, i32, i32)** %390, align 8
  %392 = load i32*, i32** %24, align 8
  %393 = load i32*, i32** %23, align 8
  %394 = load i32, i32* %16, align 4
  %395 = getelementptr inbounds [8 x i32*], [8 x i32*]* %28, i64 0, i64 0
  %396 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i32 0, i32 6
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 5
  %401 = load i32, i32* %400, align 8
  %402 = call i32 %391(i32* %392, i32* %393, i32 1, i32 %394, i32** %395, i32 %398, i32 %401)
  %403 = load i32, i32* %20, align 4
  %404 = icmp sgt i32 %403, 1
  br i1 %404, label %405, label %456

405:                                              ; preds = %141
  %406 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %407 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %406, i32 0, i32 7
  %408 = load i32 (i32*, i32*, i32, i32, i32**, i32, i32)*, i32 (i32*, i32*, i32, i32, i32**, i32, i32)** %407, align 8
  %409 = load i32*, i32** %24, align 8
  %410 = load i32, i32* %15, align 4
  %411 = mul nsw i32 1, %410
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %409, i64 %412
  %414 = load i32*, i32** %23, align 8
  %415 = load i32, i32* %15, align 4
  %416 = mul nsw i32 1, %415
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %414, i64 %417
  %419 = load i32, i32* %20, align 4
  %420 = sub nsw i32 %419, 2
  %421 = load i32, i32* %16, align 4
  %422 = getelementptr inbounds [8 x i32*], [8 x i32*]* %27, i64 0, i64 0
  %423 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %424 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %423, i32 0, i32 6
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %427 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %426, i32 0, i32 5
  %428 = load i32, i32* %427, align 8
  %429 = call i32 %408(i32* %413, i32* %418, i32 %420, i32 %421, i32** %422, i32 %425, i32 %428)
  %430 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %430, i32 0, i32 7
  %432 = load i32 (i32*, i32*, i32, i32, i32**, i32, i32)*, i32 (i32*, i32*, i32, i32, i32**, i32, i32)** %431, align 8
  %433 = load i32*, i32** %24, align 8
  %434 = load i32, i32* %20, align 4
  %435 = sub nsw i32 %434, 1
  %436 = load i32, i32* %15, align 4
  %437 = mul nsw i32 %435, %436
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %433, i64 %438
  %440 = load i32*, i32** %23, align 8
  %441 = load i32, i32* %20, align 4
  %442 = sub nsw i32 %441, 1
  %443 = load i32, i32* %15, align 4
  %444 = mul nsw i32 %442, %443
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %440, i64 %445
  %447 = load i32, i32* %16, align 4
  %448 = getelementptr inbounds [8 x i32*], [8 x i32*]* %29, i64 0, i64 0
  %449 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %450 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %449, i32 0, i32 6
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %453 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %452, i32 0, i32 5
  %454 = load i32, i32* %453, align 8
  %455 = call i32 %432(i32* %439, i32* %446, i32 1, i32 %447, i32** %448, i32 %451, i32 %454)
  br label %456

456:                                              ; preds = %405, %141
  %457 = load i32, i32* %17, align 4
  %458 = load i32*, i32** %23, align 8
  %459 = sext i32 %457 to i64
  %460 = getelementptr inbounds i32, i32* %458, i64 %459
  store i32* %460, i32** %23, align 8
  %461 = load i32, i32* %18, align 4
  %462 = load i32*, i32** %24, align 8
  %463 = sext i32 %461 to i64
  %464 = getelementptr inbounds i32, i32* %462, i64 %463
  store i32* %464, i32** %24, align 8
  br label %465

465:                                              ; preds = %456
  %466 = load i32, i32* %14, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %14, align 4
  br label %137

468:                                              ; preds = %137
  br label %469

469:                                              ; preds = %468, %123
  %470 = load i32, i32* %13, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %13, align 4
  br label %41

472:                                              ; preds = %41
  ret i32 0
}

declare dso_local i32 @av_image_copy_plane(i32*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
