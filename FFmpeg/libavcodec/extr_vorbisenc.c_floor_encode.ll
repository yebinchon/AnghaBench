; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_floor_encode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_floor_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i64*, %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i64, i64, i32 }
%struct.TYPE_15__ = type { i32, i64, i32, i32* }
%struct.TYPE_19__ = type { i32 }

@MAX_FLOOR_VALUES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_19__*, i32*, float*, i32)* @floor_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @floor_encode(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_19__* %2, i32* %3, float* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_15__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_18__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %10, align 8
  store i32* %3, i32** %11, align 8
  store float* %4, float** %12, align 8
  store i32 %5, i32* %13, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 255, %36
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* @MAX_FLOOR_VALUES, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %15, align 8
  %42 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %16, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %47 = call i32 @put_bits_count(%struct.TYPE_19__* %46)
  %48 = sub nsw i32 %45, %47
  %49 = load i32, i32* %14, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @ilog(i32 %50)
  %52 = mul nsw i32 2, %51
  %53 = add nsw i32 1, %52
  %54 = icmp slt i32 %48, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %6
  %56 = load i32, i32* @EINVAL, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %478

58:                                               ; preds = %6
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %60 = call i32 @put_bits(%struct.TYPE_19__* %59, i32 1, i32 1)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sub nsw i32 %62, 1
  %64 = call i32 @ilog(i32 %63)
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @put_bits(%struct.TYPE_19__* %61, i32 %64, i32 %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sub nsw i32 %70, 1
  %72 = call i32 @ilog(i32 %71)
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @put_bits(%struct.TYPE_19__* %69, i32 %72, i32 %75)
  %77 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 1, i32* %77, align 4
  %78 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 1, i32* %78, align 16
  store i32 2, i32* %17, align 4
  br label %79

79:                                               ; preds = %291, %58
  %80 = load i32, i32* %17, align 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %294

85:                                               ; preds = %79
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %100, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i32, i32* %125, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @render_point(i32 %99, i32 %110, i32 %124, i32 %135, i32 %143)
  store i32 %144, i32* %20, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %20, align 4
  %147 = sub nsw i32 %145, %146
  store i32 %147, i32* %21, align 4
  %148 = load i32, i32* %20, align 4
  store i32 %148, i32* %22, align 4
  %149 = load i32, i32* %21, align 4
  %150 = load i32, i32* %22, align 4
  %151 = call i32 @FFMIN(i32 %149, i32 %150)
  store i32 %151, i32* %23, align 4
  %152 = load i32, i32* %20, align 4
  %153 = load i32*, i32** %11, align 8
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %152, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %85
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %42, i64 %161
  store i32 0, i32* %162, align 4
  br label %291

163:                                              ; preds = %85
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 4
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %165, align 8
  %167 = load i32, i32* %17, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i32, i32* %42, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %185, label %175

175:                                              ; preds = %163
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  %179 = load i32, i32* %17, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i32, i32* %42, i64 %183
  store i32 -1, i32* %184, align 4
  br label %185

185:                                              ; preds = %175, %163
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 4
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = load i32, i32* %17, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds i32, i32* %42, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %207, label %197

197:                                              ; preds = %185
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = load i32, i32* %17, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds i32, i32* %42, i64 %205
  store i32 -1, i32* %206, align 4
  br label %207

207:                                              ; preds = %197, %185
  br label %208

208:                                              ; preds = %207
  %209 = load i32*, i32** %11, align 8
  %210 = load i32, i32* %17, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %20, align 4
  %215 = icmp sgt i32 %213, %214
  br i1 %215, label %216, label %252

216:                                              ; preds = %208
  %217 = load i32*, i32** %11, align 8
  %218 = load i32, i32* %17, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %20, align 4
  %223 = sub nsw i32 %221, %222
  %224 = load i32, i32* %23, align 4
  %225 = icmp sgt i32 %223, %224
  br i1 %225, label %226, label %239

226:                                              ; preds = %216
  %227 = load i32*, i32** %11, align 8
  %228 = load i32, i32* %17, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %20, align 4
  %233 = sub nsw i32 %231, %232
  %234 = load i32, i32* %22, align 4
  %235 = add nsw i32 %233, %234
  %236 = load i32, i32* %17, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %42, i64 %237
  store i32 %235, i32* %238, align 4
  br label %251

239:                                              ; preds = %216
  %240 = load i32*, i32** %11, align 8
  %241 = load i32, i32* %17, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %20, align 4
  %246 = sub nsw i32 %244, %245
  %247 = shl i32 %246, 1
  %248 = load i32, i32* %17, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %42, i64 %249
  store i32 %247, i32* %250, align 4
  br label %251

251:                                              ; preds = %239, %226
  br label %290

252:                                              ; preds = %208
  %253 = load i32, i32* %20, align 4
  %254 = load i32*, i32** %11, align 8
  %255 = load i32, i32* %17, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = sub nsw i32 %253, %258
  %260 = load i32, i32* %23, align 4
  %261 = icmp sgt i32 %259, %260
  br i1 %261, label %262, label %276

262:                                              ; preds = %252
  %263 = load i32, i32* %20, align 4
  %264 = load i32*, i32** %11, align 8
  %265 = load i32, i32* %17, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = sub nsw i32 %263, %268
  %270 = load i32, i32* %21, align 4
  %271 = add nsw i32 %269, %270
  %272 = sub nsw i32 %271, 1
  %273 = load i32, i32* %17, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %42, i64 %274
  store i32 %272, i32* %275, align 4
  br label %289

276:                                              ; preds = %252
  %277 = load i32, i32* %20, align 4
  %278 = load i32*, i32** %11, align 8
  %279 = load i32, i32* %17, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = sub nsw i32 %277, %282
  %284 = shl i32 %283, 1
  %285 = sub nsw i32 %284, 1
  %286 = load i32, i32* %17, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %42, i64 %287
  store i32 %285, i32* %288, align 4
  br label %289

289:                                              ; preds = %276, %262
  br label %290

290:                                              ; preds = %289, %251
  br label %291

291:                                              ; preds = %290, %159
  %292 = load i32, i32* %17, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %17, align 4
  br label %79

294:                                              ; preds = %79
  store i32 2, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %295

295:                                              ; preds = %461, %294
  %296 = load i32, i32* %17, align 4
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = icmp slt i32 %296, %299
  br i1 %300, label %301, label %464

301:                                              ; preds = %295
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 5
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %303, align 8
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 3
  %307 = load i64*, i64** %306, align 8
  %308 = load i32, i32* %17, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i64, i64* %307, i64 %309
  %311 = load i64, i64* %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i64 %311
  store %struct.TYPE_15__* %312, %struct.TYPE_15__** %24, align 8
  store i32 0, i32* %26, align 4
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = shl i32 1, %315
  store i32 %316, i32* %27, align 4
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %407

321:                                              ; preds = %301
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %323, align 8
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i64 %327
  store %struct.TYPE_18__* %328, %struct.TYPE_18__** %28, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %25, align 4
  br label %329

329:                                              ; preds = %394, %321
  %330 = load i32, i32* %25, align 4
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = icmp slt i32 %330, %333
  br i1 %334, label %335, label %397

335:                                              ; preds = %329
  store i32 0, i32* %30, align 4
  br label %336

336:                                              ; preds = %375, %335
  %337 = load i32, i32* %30, align 4
  %338 = load i32, i32* %27, align 4
  %339 = icmp slt i32 %337, %338
  br i1 %339, label %340, label %378

340:                                              ; preds = %336
  store i32 1, i32* %31, align 4
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 3
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %30, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, -1
  br i1 %348, label %349, label %364

349:                                              ; preds = %340
  %350 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_18__*, %struct.TYPE_18__** %351, align 8
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 3
  %355 = load i32*, i32** %354, align 8
  %356 = load i32, i32* %30, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %352, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  store i32 %363, i32* %31, align 4
  br label %364

364:                                              ; preds = %349, %340
  %365 = load i32, i32* %18, align 4
  %366 = load i32, i32* %25, align 4
  %367 = add nsw i32 %365, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %42, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %31, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %373, label %374

373:                                              ; preds = %364
  br label %378

374:                                              ; preds = %364
  br label %375

375:                                              ; preds = %374
  %376 = load i32, i32* %30, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %30, align 4
  br label %336

378:                                              ; preds = %373, %336
  %379 = load i32, i32* %30, align 4
  %380 = load i32, i32* %27, align 4
  %381 = icmp ne i32 %379, %380
  %382 = zext i1 %381 to i32
  %383 = call i32 @assert(i32 %382)
  %384 = load i32, i32* %30, align 4
  %385 = load i32, i32* %29, align 4
  %386 = shl i32 %384, %385
  %387 = load i32, i32* %26, align 4
  %388 = or i32 %387, %386
  store i32 %388, i32* %26, align 4
  %389 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %390 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* %29, align 4
  %393 = add nsw i32 %392, %391
  store i32 %393, i32* %29, align 4
  br label %394

394:                                              ; preds = %378
  %395 = load i32, i32* %25, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %25, align 4
  br label %329

397:                                              ; preds = %329
  %398 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %399 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %400 = load i32, i32* %26, align 4
  %401 = call i64 @put_codeword(%struct.TYPE_19__* %398, %struct.TYPE_18__* %399, i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %397
  %404 = load i32, i32* @EINVAL, align 4
  %405 = call i32 @AVERROR(i32 %404)
  store i32 %405, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %478

406:                                              ; preds = %397
  br label %407

407:                                              ; preds = %406, %301
  store i32 0, i32* %25, align 4
  br label %408

408:                                              ; preds = %457, %407
  %409 = load i32, i32* %25, align 4
  %410 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %411 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 8
  %413 = icmp slt i32 %409, %412
  br i1 %413, label %414, label %460

414:                                              ; preds = %408
  %415 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 3
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %26, align 4
  %419 = load i32, i32* %27, align 4
  %420 = sub nsw i32 %419, 1
  %421 = and i32 %418, %420
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %417, i64 %422
  %424 = load i32, i32* %423, align 4
  store i32 %424, i32* %32, align 4
  %425 = load i32, i32* %18, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %18, align 4
  %427 = sext i32 %425 to i64
  %428 = getelementptr inbounds i32, i32* %42, i64 %427
  %429 = load i32, i32* %428, align 4
  store i32 %429, i32* %33, align 4
  %430 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %431 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = load i32, i32* %26, align 4
  %434 = ashr i32 %433, %432
  store i32 %434, i32* %26, align 4
  %435 = load i32, i32* %32, align 4
  %436 = icmp eq i32 %435, -1
  br i1 %436, label %437, label %438

437:                                              ; preds = %414
  br label %457

438:                                              ; preds = %414
  %439 = load i32, i32* %33, align 4
  %440 = icmp eq i32 %439, -1
  br i1 %440, label %441, label %442

441:                                              ; preds = %438
  store i32 0, i32* %33, align 4
  br label %442

442:                                              ; preds = %441, %438
  %443 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %444 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %445 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %444, i32 0, i32 0
  %446 = load %struct.TYPE_18__*, %struct.TYPE_18__** %445, align 8
  %447 = load i32, i32* %32, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %446, i64 %448
  %450 = load i32, i32* %33, align 4
  %451 = call i64 @put_codeword(%struct.TYPE_19__* %443, %struct.TYPE_18__* %449, i32 %450)
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %456

453:                                              ; preds = %442
  %454 = load i32, i32* @EINVAL, align 4
  %455 = call i32 @AVERROR(i32 %454)
  store i32 %455, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %478

456:                                              ; preds = %442
  br label %457

457:                                              ; preds = %456, %437
  %458 = load i32, i32* %25, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %25, align 4
  br label %408

460:                                              ; preds = %408
  br label %461

461:                                              ; preds = %460
  %462 = load i32, i32* %17, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %17, align 4
  br label %295

464:                                              ; preds = %295
  %465 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %466 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %465, i32 0, i32 4
  %467 = load %struct.TYPE_14__*, %struct.TYPE_14__** %466, align 8
  %468 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %469 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = load i32*, i32** %11, align 8
  %472 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %473 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = load float*, float** %12, align 8
  %476 = load i32, i32* %13, align 4
  %477 = call i32 @ff_vorbis_floor1_render_list(%struct.TYPE_14__* %467, i32 %470, i32* %471, i32* %42, i32 %474, float* %475, i32 %476)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %478

478:                                              ; preds = %464, %453, %403, %55
  %479 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %479)
  %480 = load i32, i32* %7, align 4
  ret i32 %480
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @put_bits_count(%struct.TYPE_19__*) #2

declare dso_local i32 @ilog(i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @put_bits(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @render_point(i32, i32, i32, i32, i32) #2

declare dso_local i32 @FFMIN(i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @put_codeword(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @ff_vorbis_floor1_render_list(%struct.TYPE_14__*, i32, i32*, i32*, i32, float*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
