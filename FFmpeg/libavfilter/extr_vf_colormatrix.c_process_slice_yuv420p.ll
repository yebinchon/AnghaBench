; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colormatrix.c_process_slice_yuv420p.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colormatrix.c_process_slice_yuv420p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32*, i8**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @process_slice_yuv420p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_slice_yuv420p(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = bitcast i8* %39 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %9, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 7
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %10, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 6
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %11, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @FFALIGN(i32 %49, i32 2)
  %51 = ashr i32 %50, 1
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = sdiv i32 %57, %58
  %60 = shl i32 %59, 1
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  %64 = mul nsw i32 %61, %63
  %65 = load i32, i32* %8, align 4
  %66 = sdiv i32 %64, %65
  %67 = shl i32 %66, 1
  store i32 %67, i32* %15, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %16, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %17, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %18, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %19, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i8**, i8*** %89, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %14, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %92, i64 %96
  store i8* %97, i8** %20, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %14, align 4
  %105 = ashr i32 %104, 1
  %106 = mul nsw i32 %103, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %102, i64 %107
  store i8* %108, i8** %21, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i8**, i8*** %110, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 2
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %14, align 4
  %116 = ashr i32 %115, 1
  %117 = mul nsw i32 %114, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %113, i64 %118
  store i8* %119, i8** %22, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load i8**, i8*** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  %128 = mul nsw i32 %125, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %124, i64 %129
  store i8* %130, i8** %23, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i8**, i8*** %132, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 1
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %14, align 4
  %138 = ashr i32 %137, 1
  %139 = mul nsw i32 %136, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %135, i64 %140
  store i8* %141, i8** %24, align 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load i8**, i8*** %143, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 2
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %14, align 4
  %149 = ashr i32 %148, 1
  %150 = mul nsw i32 %147, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %146, i64 %151
  store i8* %152, i8** %25, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  %155 = load i8**, i8*** %154, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 0
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %14, align 4
  %160 = mul nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %157, i64 %161
  store i8* %162, i8** %26, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  %165 = load i8**, i8*** %164, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 1
  %171 = mul nsw i32 %168, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %167, i64 %172
  store i8* %173, i8** %27, align 8
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %28, align 4
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %29, align 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  store i32 %182, i32* %30, align 4
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %31, align 4
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  store i32 %188, i32* %32, align 4
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %33, align 4
  %192 = load i32, i32* %14, align 4
  store i32 %192, i32* %35, align 4
  br label %193

193:                                              ; preds = %369, %4
  %194 = load i32, i32* %35, align 4
  %195 = load i32, i32* %15, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %372

197:                                              ; preds = %193
  store i32 0, i32* %34, align 4
  br label %198

198:                                              ; preds = %329, %197
  %199 = load i32, i32* %34, align 4
  %200 = load i32, i32* %13, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %332

202:                                              ; preds = %198
  %203 = load i8*, i8** %21, align 8
  %204 = load i32, i32* %34, align 4
  %205 = ashr i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = sub nsw i32 %209, 128
  store i32 %210, i32* %36, align 4
  %211 = load i8*, i8** %22, align 8
  %212 = load i32, i32* %34, align 4
  %213 = ashr i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %211, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = sub nsw i32 %217, 128
  store i32 %218, i32* %37, align 4
  %219 = load i32, i32* %28, align 4
  %220 = load i32, i32* %36, align 4
  %221 = mul nsw i32 %219, %220
  %222 = load i32, i32* %29, align 4
  %223 = load i32, i32* %37, align 4
  %224 = mul nsw i32 %222, %223
  %225 = add nsw i32 %221, %224
  %226 = add nsw i32 %225, 1081344
  store i32 %226, i32* %38, align 4
  %227 = load i8*, i8** %20, align 8
  %228 = load i32, i32* %34, align 4
  %229 = add nsw i32 %228, 0
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %227, i64 %230
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = sub nsw i32 %233, 16
  %235 = mul nsw i32 65536, %234
  %236 = load i32, i32* %38, align 4
  %237 = add nsw i32 %235, %236
  %238 = ashr i32 %237, 16
  %239 = call zeroext i8 @CB(i32 %238)
  %240 = load i8*, i8** %26, align 8
  %241 = load i32, i32* %34, align 4
  %242 = add nsw i32 %241, 0
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %240, i64 %243
  store i8 %239, i8* %244, align 1
  %245 = load i8*, i8** %20, align 8
  %246 = load i32, i32* %34, align 4
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %245, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = sub nsw i32 %251, 16
  %253 = mul nsw i32 65536, %252
  %254 = load i32, i32* %38, align 4
  %255 = add nsw i32 %253, %254
  %256 = ashr i32 %255, 16
  %257 = call zeroext i8 @CB(i32 %256)
  %258 = load i8*, i8** %26, align 8
  %259 = load i32, i32* %34, align 4
  %260 = add nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, i8* %258, i64 %261
  store i8 %257, i8* %262, align 1
  %263 = load i8*, i8** %23, align 8
  %264 = load i32, i32* %34, align 4
  %265 = add nsw i32 %264, 0
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %263, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = sub nsw i32 %269, 16
  %271 = mul nsw i32 65536, %270
  %272 = load i32, i32* %38, align 4
  %273 = add nsw i32 %271, %272
  %274 = ashr i32 %273, 16
  %275 = call zeroext i8 @CB(i32 %274)
  %276 = load i8*, i8** %27, align 8
  %277 = load i32, i32* %34, align 4
  %278 = add nsw i32 %277, 0
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %276, i64 %279
  store i8 %275, i8* %280, align 1
  %281 = load i8*, i8** %23, align 8
  %282 = load i32, i32* %34, align 4
  %283 = add nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8, i8* %281, i64 %284
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = sub nsw i32 %287, 16
  %289 = mul nsw i32 65536, %288
  %290 = load i32, i32* %38, align 4
  %291 = add nsw i32 %289, %290
  %292 = ashr i32 %291, 16
  %293 = call zeroext i8 @CB(i32 %292)
  %294 = load i8*, i8** %27, align 8
  %295 = load i32, i32* %34, align 4
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, i8* %294, i64 %297
  store i8 %293, i8* %298, align 1
  %299 = load i32, i32* %30, align 4
  %300 = load i32, i32* %36, align 4
  %301 = mul nsw i32 %299, %300
  %302 = load i32, i32* %31, align 4
  %303 = load i32, i32* %37, align 4
  %304 = mul nsw i32 %302, %303
  %305 = add nsw i32 %301, %304
  %306 = add nsw i32 %305, 8421376
  %307 = ashr i32 %306, 16
  %308 = call zeroext i8 @CB(i32 %307)
  %309 = load i8*, i8** %24, align 8
  %310 = load i32, i32* %34, align 4
  %311 = ashr i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %309, i64 %312
  store i8 %308, i8* %313, align 1
  %314 = load i32, i32* %32, align 4
  %315 = load i32, i32* %36, align 4
  %316 = mul nsw i32 %314, %315
  %317 = load i32, i32* %33, align 4
  %318 = load i32, i32* %37, align 4
  %319 = mul nsw i32 %317, %318
  %320 = add nsw i32 %316, %319
  %321 = add nsw i32 %320, 8421376
  %322 = ashr i32 %321, 16
  %323 = call zeroext i8 @CB(i32 %322)
  %324 = load i8*, i8** %25, align 8
  %325 = load i32, i32* %34, align 4
  %326 = ashr i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %324, i64 %327
  store i8 %323, i8* %328, align 1
  br label %329

329:                                              ; preds = %202
  %330 = load i32, i32* %34, align 4
  %331 = add nsw i32 %330, 2
  store i32 %331, i32* %34, align 4
  br label %198

332:                                              ; preds = %198
  %333 = load i32, i32* %16, align 4
  %334 = shl i32 %333, 1
  %335 = load i8*, i8** %20, align 8
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i8, i8* %335, i64 %336
  store i8* %337, i8** %20, align 8
  %338 = load i32, i32* %18, align 4
  %339 = shl i32 %338, 1
  %340 = load i8*, i8** %26, align 8
  %341 = sext i32 %339 to i64
  %342 = getelementptr inbounds i8, i8* %340, i64 %341
  store i8* %342, i8** %26, align 8
  %343 = load i32, i32* %16, align 4
  %344 = shl i32 %343, 1
  %345 = load i8*, i8** %23, align 8
  %346 = sext i32 %344 to i64
  %347 = getelementptr inbounds i8, i8* %345, i64 %346
  store i8* %347, i8** %23, align 8
  %348 = load i32, i32* %18, align 4
  %349 = shl i32 %348, 1
  %350 = load i8*, i8** %27, align 8
  %351 = sext i32 %349 to i64
  %352 = getelementptr inbounds i8, i8* %350, i64 %351
  store i8* %352, i8** %27, align 8
  %353 = load i32, i32* %17, align 4
  %354 = load i8*, i8** %21, align 8
  %355 = sext i32 %353 to i64
  %356 = getelementptr inbounds i8, i8* %354, i64 %355
  store i8* %356, i8** %21, align 8
  %357 = load i32, i32* %17, align 4
  %358 = load i8*, i8** %22, align 8
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds i8, i8* %358, i64 %359
  store i8* %360, i8** %22, align 8
  %361 = load i32, i32* %19, align 4
  %362 = load i8*, i8** %24, align 8
  %363 = sext i32 %361 to i64
  %364 = getelementptr inbounds i8, i8* %362, i64 %363
  store i8* %364, i8** %24, align 8
  %365 = load i32, i32* %19, align 4
  %366 = load i8*, i8** %25, align 8
  %367 = sext i32 %365 to i64
  %368 = getelementptr inbounds i8, i8* %366, i64 %367
  store i8* %368, i8** %25, align 8
  br label %369

369:                                              ; preds = %332
  %370 = load i32, i32* %35, align 4
  %371 = add nsw i32 %370, 2
  store i32 %371, i32* %35, align 4
  br label %193

372:                                              ; preds = %193
  ret i32 0
}

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local zeroext i8 @CB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
