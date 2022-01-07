; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_w3fdif.c_deinterlace_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_w3fdif.c_deinterlace_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32*, i32*, i32, i64, %struct.TYPE_7__, i32** }
%struct.TYPE_7__ = type { i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32**, i32**, i32, i32)*, i32 (i32*, i32**, i32**, i32, i32)*, i32 (i32*, i32**, i32, i32)*, i32 (i32*, i32**, i32, i32)* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i64, i32** }

@n_coef_lf = common dso_local global i32* null, align 8
@coef_lf = common dso_local global i32* null, align 8
@n_coef_hf = common dso_local global i32* null, align 8
@coef_hf = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32, i32)* @deinterlace_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deinterlace_slice(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca [5 x i32*], align 16
  %18 = alloca [5 x i32*], align 16
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %9, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = bitcast i8* %40 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %10, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %11, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %12, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %13, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %14, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %15, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %23, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %24, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %25, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %26, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %27, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %28, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %29, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %30, align 4
  %113 = load i32, i32* %27, align 4
  %114 = load i32, i32* %7, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %8, align 4
  %117 = sdiv i32 %115, %116
  store i32 %117, i32* %31, align 4
  %118 = load i32, i32* %27, align 4
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  %121 = mul nsw i32 %118, %120
  %122 = load i32, i32* %8, align 4
  %123 = sdiv i32 %121, %122
  store i32 %123, i32* %32, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %33, align 4
  %127 = load i32, i32* %31, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %130, %133
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %31, align 4
  %137 = and i32 %136, 1
  %138 = xor i32 %135, %137
  %139 = add nsw i32 %127, %138
  store i32 %139, i32* %36, align 4
  %140 = load i32*, i32** %23, align 8
  %141 = load i32, i32* %36, align 4
  %142 = load i32, i32* %28, align 4
  %143 = mul nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  store i32* %145, i32** %16, align 8
  %146 = load i32*, i32** %25, align 8
  %147 = load i32, i32* %36, align 4
  %148 = load i32, i32* %30, align 4
  %149 = mul nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  store i32* %151, i32** %19, align 8
  br label %152

152:                                              ; preds = %156, %4
  %153 = load i32, i32* %36, align 4
  %154 = load i32, i32* %32, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %173

156:                                              ; preds = %152
  %157 = load i32*, i32** %19, align 8
  %158 = load i32*, i32** %16, align 8
  %159 = load i32, i32* %26, align 4
  %160 = call i32 @memcpy(i32* %157, i32* %158, i32 %159)
  %161 = load i32, i32* %36, align 4
  %162 = add nsw i32 %161, 2
  store i32 %162, i32* %36, align 4
  %163 = load i32, i32* %28, align 4
  %164 = mul nsw i32 %163, 2
  %165 = load i32*, i32** %16, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32* %167, i32** %16, align 8
  %168 = load i32, i32* %30, align 4
  %169 = mul nsw i32 %168, 2
  %170 = load i32*, i32** %19, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32* %172, i32** %19, align 8
  br label %152

173:                                              ; preds = %152
  %174 = load i32, i32* %31, align 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %177, %180
  %182 = zext i1 %181 to i32
  %183 = load i32, i32* %31, align 4
  %184 = and i32 %183, 1
  %185 = xor i32 %182, %184
  %186 = add nsw i32 %174, %185
  store i32 %186, i32* %36, align 4
  %187 = load i32*, i32** %25, align 8
  %188 = load i32, i32* %36, align 4
  %189 = load i32, i32* %30, align 4
  %190 = mul nsw i32 %188, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %187, i64 %191
  store i32* %192, i32** %19, align 8
  br label %193

193:                                              ; preds = %386, %173
  %194 = load i32, i32* %36, align 4
  %195 = load i32, i32* %32, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %411

197:                                              ; preds = %193
  store i32 0, i32* %34, align 4
  br label %198

198:                                              ; preds = %242, %197
  %199 = load i32, i32* %34, align 4
  %200 = load i32*, i32** @n_coef_lf, align 8
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = icmp slt i32 %199, %204
  br i1 %205, label %206, label %245

206:                                              ; preds = %198
  %207 = load i32, i32* %36, align 4
  %208 = add nsw i32 %207, 1
  %209 = load i32, i32* %34, align 4
  %210 = mul nsw i32 %209, 2
  %211 = add nsw i32 %208, %210
  %212 = load i32*, i32** @n_coef_lf, align 8
  %213 = load i32, i32* %15, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %211, %216
  store i32 %217, i32* %35, align 4
  br label %218

218:                                              ; preds = %221, %206
  %219 = load i32, i32* %35, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load i32, i32* %35, align 4
  %223 = add nsw i32 %222, 2
  store i32 %223, i32* %35, align 4
  br label %218

224:                                              ; preds = %218
  br label %225

225:                                              ; preds = %229, %224
  %226 = load i32, i32* %35, align 4
  %227 = load i32, i32* %27, align 4
  %228 = icmp sge i32 %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i32, i32* %35, align 4
  %231 = sub nsw i32 %230, 2
  store i32 %231, i32* %35, align 4
  br label %225

232:                                              ; preds = %225
  %233 = load i32*, i32** %23, align 8
  %234 = load i32, i32* %35, align 4
  %235 = load i32, i32* %28, align 4
  %236 = mul nsw i32 %234, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %233, i64 %237
  %239 = load i32, i32* %34, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [5 x i32*], [5 x i32*]* %17, i64 0, i64 %240
  store i32* %238, i32** %241, align 8
  br label %242

242:                                              ; preds = %232
  %243 = load i32, i32* %34, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %34, align 4
  br label %198

245:                                              ; preds = %198
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 6
  %248 = load i32**, i32*** %247, align 8
  %249 = load i32, i32* %7, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32*, i32** %248, i64 %250
  %252 = load i32*, i32** %251, align 8
  store i32* %252, i32** %21, align 8
  %253 = load i32*, i32** @n_coef_lf, align 8
  %254 = load i32, i32* %15, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  switch i32 %257, label %286 [
    i32 2, label %258
    i32 4, label %272
  ]

258:                                              ; preds = %245
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 5
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 4
  %262 = load i32 (i32*, i32**, i32, i32)*, i32 (i32*, i32**, i32, i32)** %261, align 8
  %263 = load i32*, i32** %21, align 8
  %264 = getelementptr inbounds [5 x i32*], [5 x i32*]* %17, i64 0, i64 0
  %265 = load i32*, i32** @coef_lf, align 8
  %266 = load i32, i32* %15, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %26, align 4
  %271 = call i32 %262(i32* %263, i32** %264, i32 %269, i32 %270)
  br label %286

272:                                              ; preds = %245
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 5
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 3
  %276 = load i32 (i32*, i32**, i32, i32)*, i32 (i32*, i32**, i32, i32)** %275, align 8
  %277 = load i32*, i32** %21, align 8
  %278 = getelementptr inbounds [5 x i32*], [5 x i32*]* %17, i64 0, i64 0
  %279 = load i32*, i32** @coef_lf, align 8
  %280 = load i32, i32* %15, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %26, align 4
  %285 = call i32 %276(i32* %277, i32** %278, i32 %283, i32 %284)
  br label %286

286:                                              ; preds = %272, %245, %258
  store i32 0, i32* %34, align 4
  br label %287

287:                                              ; preds = %340, %286
  %288 = load i32, i32* %34, align 4
  %289 = load i32*, i32** @n_coef_hf, align 8
  %290 = load i32, i32* %15, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = icmp slt i32 %288, %293
  br i1 %294, label %295, label %343

295:                                              ; preds = %287
  %296 = load i32, i32* %36, align 4
  %297 = add nsw i32 %296, 1
  %298 = load i32, i32* %34, align 4
  %299 = mul nsw i32 %298, 2
  %300 = add nsw i32 %297, %299
  %301 = load i32*, i32** @n_coef_hf, align 8
  %302 = load i32, i32* %15, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = sub nsw i32 %300, %305
  store i32 %306, i32* %35, align 4
  br label %307

307:                                              ; preds = %310, %295
  %308 = load i32, i32* %35, align 4
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load i32, i32* %35, align 4
  %312 = add nsw i32 %311, 2
  store i32 %312, i32* %35, align 4
  br label %307

313:                                              ; preds = %307
  br label %314

314:                                              ; preds = %318, %313
  %315 = load i32, i32* %35, align 4
  %316 = load i32, i32* %27, align 4
  %317 = icmp sge i32 %315, %316
  br i1 %317, label %318, label %321

318:                                              ; preds = %314
  %319 = load i32, i32* %35, align 4
  %320 = sub nsw i32 %319, 2
  store i32 %320, i32* %35, align 4
  br label %314

321:                                              ; preds = %314
  %322 = load i32*, i32** %23, align 8
  %323 = load i32, i32* %35, align 4
  %324 = load i32, i32* %28, align 4
  %325 = mul nsw i32 %323, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %322, i64 %326
  %328 = load i32, i32* %34, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [5 x i32*], [5 x i32*]* %17, i64 0, i64 %329
  store i32* %327, i32** %330, align 8
  %331 = load i32*, i32** %24, align 8
  %332 = load i32, i32* %35, align 4
  %333 = load i32, i32* %29, align 4
  %334 = mul nsw i32 %332, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %331, i64 %335
  %337 = load i32, i32* %34, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [5 x i32*], [5 x i32*]* %18, i64 0, i64 %338
  store i32* %336, i32** %339, align 8
  br label %340

340:                                              ; preds = %321
  %341 = load i32, i32* %34, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %34, align 4
  br label %287

343:                                              ; preds = %287
  %344 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 6
  %346 = load i32**, i32*** %345, align 8
  %347 = load i32, i32* %7, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32*, i32** %346, i64 %348
  %350 = load i32*, i32** %349, align 8
  store i32* %350, i32** %21, align 8
  %351 = load i32*, i32** @n_coef_hf, align 8
  %352 = load i32, i32* %15, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32, i32* %354, align 4
  switch i32 %355, label %386 [
    i32 3, label %356
    i32 5, label %371
  ]

356:                                              ; preds = %343
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 5
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 2
  %360 = load i32 (i32*, i32**, i32**, i32, i32)*, i32 (i32*, i32**, i32**, i32, i32)** %359, align 8
  %361 = load i32*, i32** %21, align 8
  %362 = getelementptr inbounds [5 x i32*], [5 x i32*]* %17, i64 0, i64 0
  %363 = getelementptr inbounds [5 x i32*], [5 x i32*]* %18, i64 0, i64 0
  %364 = load i32*, i32** @coef_hf, align 8
  %365 = load i32, i32* %15, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %26, align 4
  %370 = call i32 %360(i32* %361, i32** %362, i32** %363, i32 %368, i32 %369)
  br label %386

371:                                              ; preds = %343
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 5
  %374 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %373, i32 0, i32 1
  %375 = load i32 (i32*, i32**, i32**, i32, i32)*, i32 (i32*, i32**, i32**, i32, i32)** %374, align 8
  %376 = load i32*, i32** %21, align 8
  %377 = getelementptr inbounds [5 x i32*], [5 x i32*]* %17, i64 0, i64 0
  %378 = getelementptr inbounds [5 x i32*], [5 x i32*]* %18, i64 0, i64 0
  %379 = load i32*, i32** @coef_hf, align 8
  %380 = load i32, i32* %15, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* %26, align 4
  %385 = call i32 %375(i32* %376, i32** %377, i32** %378, i32 %383, i32 %384)
  br label %386

386:                                              ; preds = %371, %343, %356
  %387 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 6
  %389 = load i32**, i32*** %388, align 8
  %390 = load i32, i32* %7, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32*, i32** %389, i64 %391
  %393 = load i32*, i32** %392, align 8
  store i32* %393, i32** %22, align 8
  %394 = load i32*, i32** %19, align 8
  store i32* %394, i32** %20, align 8
  %395 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 5
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i32 0, i32 0
  %398 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %397, align 8
  %399 = load i32*, i32** %20, align 8
  %400 = load i32*, i32** %22, align 8
  %401 = load i32, i32* %26, align 4
  %402 = load i32, i32* %33, align 4
  %403 = call i32 %398(i32* %399, i32* %400, i32 %401, i32 %402)
  %404 = load i32, i32* %36, align 4
  %405 = add nsw i32 %404, 2
  store i32 %405, i32* %36, align 4
  %406 = load i32, i32* %30, align 4
  %407 = mul nsw i32 %406, 2
  %408 = load i32*, i32** %19, align 8
  %409 = sext i32 %407 to i64
  %410 = getelementptr inbounds i32, i32* %408, i64 %409
  store i32* %410, i32** %19, align 8
  br label %193

411:                                              ; preds = %193
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
