; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_decode_mv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_decode_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64**, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_14__ = type { i32*** }
%struct.TYPE_16__ = type { i32*, i32***, i32 }
%struct.TYPE_15__ = type { i32 }

@num_mvs = common dso_local global i32* null, align 8
@INVALID_VLC = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@HAVE_THREADS = common dso_local global i32 0, align 4
@FF_THREAD_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32)* @rv34_decode_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv34_decode_mv(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %6, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 8
  store i32* %17, i32** %7, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %20, 2
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 2
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  %30 = add nsw i32 %21, %29
  store i32 %30, i32* %12, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i64**, i64*** %32, align 8
  %34 = call i32 @memset(i64** %33, i32 0, i32 8)
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %108, %2
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** @num_mvs, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %36, %41
  br i1 %42, label %43, label %111

43:                                               ; preds = %35
  %44 = load i32*, i32** %7, align 8
  %45 = call i8* @get_interleaved_se_golomb(i32* %44)
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64**, i64*** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64*, i64** %49, i64 %51
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  store i64 %46, i64* %54, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i8* @get_interleaved_se_golomb(i32* %55)
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i64**, i64*** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64*, i64** %60, i64 %62
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  store i64 %57, i64* %65, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i64**, i64*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64*, i64** %68, i64 %70
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @INVALID_VLC, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %43
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i64**, i64*** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64*, i64** %80, i64 %82
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @INVALID_VLC, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %77, %43
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i64**, i64*** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64*, i64** %92, i64 %94
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i64**, i64*** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64*, i64** %100, i64 %102
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  store i64 0, i64* %105, align 8
  %106 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %106, i32* %3, align 4
  br label %550

107:                                              ; preds = %77
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %35

111:                                              ; preds = %35
  %112 = load i32, i32* %5, align 4
  switch i32 %112, label %549 [
    i32 129, label %113
    i32 128, label %113
    i32 130, label %141
    i32 137, label %179
    i32 135, label %414
    i32 131, label %414
    i32 136, label %421
    i32 139, label %421
    i32 134, label %473
    i32 133, label %473
    i32 138, label %507
    i32 132, label %517
  ]

113:                                              ; preds = %111, %111
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32***, i32**** %117, align 8
  %119 = getelementptr inbounds i32**, i32*** %118, i64 0
  %120 = load i32**, i32*** %119, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = mul nsw i32 %123, 2
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %127, 2
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %128, %131
  %133 = add nsw i32 %124, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %120, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ZERO8x2(i32* %136, i32 %139)
  store i32 0, i32* %3, align 4
  br label %550

141:                                              ; preds = %111
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %178

147:                                              ; preds = %141
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i32***, i32**** %151, align 8
  %153 = getelementptr inbounds i32**, i32*** %152, i64 0
  %154 = load i32**, i32*** %153, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %157, 2
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %161, 2
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = mul nsw i32 %162, %165
  %167 = add nsw i32 %158, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %154, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @ZERO8x2(i32* %170, i32 %173)
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @rv34_mc_1mv(%struct.TYPE_17__* %175, i32 %176, i32 0, i32 0, i32 0, i32 2, i32 2, i32 0)
  br label %549

178:                                              ; preds = %141
  br label %179

179:                                              ; preds = %111, %178
  %180 = load i32, i32* @HAVE_THREADS, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %202

182:                                              ; preds = %179
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 6
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @FF_THREAD_FRAME, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %182
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 5
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = sub nsw i32 %198, 1
  %200 = call i32 @FFMAX(i32 0, i32 %199)
  %201 = call i32 @ff_thread_await_progress(i32* %195, i32 %200, i32 0)
  br label %202

202:                                              ; preds = %191, %182, %179
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 5
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %213, %216
  %218 = add nsw i32 %210, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %207, i64 %219
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %13, align 4
  %222 = load i32, i32* %13, align 4
  %223 = call i32 @IS_INTRA(i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %202
  %226 = load i32, i32* %13, align 4
  %227 = call i32 @IS_SKIP(i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %284

229:                                              ; preds = %225, %202
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 4
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = load i32***, i32**** %233, align 8
  %235 = getelementptr inbounds i32**, i32*** %234, i64 0
  %236 = load i32**, i32*** %235, align 8
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = mul nsw i32 %239, 2
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = mul nsw i32 %243, 2
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = mul nsw i32 %244, %247
  %249 = add nsw i32 %240, %248
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32*, i32** %236, i64 %250
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @ZERO8x2(i32* %252, i32 %255)
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 4
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 0
  %261 = load i32***, i32**** %260, align 8
  %262 = getelementptr inbounds i32**, i32*** %261, i64 1
  %263 = load i32**, i32*** %262, align 8
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = mul nsw i32 %266, 2
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = mul nsw i32 %270, 2
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = mul nsw i32 %271, %274
  %276 = add nsw i32 %267, %275
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32*, i32** %263, i64 %277
  %279 = load i32*, i32** %278, align 8
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @ZERO8x2(i32* %279, i32 %282)
  br label %367

284:                                              ; preds = %225
  store i32 0, i32* %9, align 4
  br label %285

285:                                              ; preds = %363, %284
  %286 = load i32, i32* %9, align 4
  %287 = icmp slt i32 %286, 2
  br i1 %287, label %288, label %366

288:                                              ; preds = %285
  store i32 0, i32* %8, align 4
  br label %289

289:                                              ; preds = %359, %288
  %290 = load i32, i32* %8, align 4
  %291 = icmp slt i32 %290, 2
  br i1 %291, label %292, label %362

292:                                              ; preds = %289
  store i32 0, i32* %10, align 4
  br label %293

293:                                              ; preds = %355, %292
  %294 = load i32, i32* %10, align 4
  %295 = icmp slt i32 %294, 2
  br i1 %295, label %296, label %358

296:                                              ; preds = %293
  store i32 0, i32* %11, align 4
  br label %297

297:                                              ; preds = %351, %296
  %298 = load i32, i32* %11, align 4
  %299 = icmp slt i32 %298, 2
  br i1 %299, label %300, label %354

300:                                              ; preds = %297
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %302 = load i32, i32* %11, align 4
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 5
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 1
  %307 = load i32***, i32**** %306, align 8
  %308 = getelementptr inbounds i32**, i32*** %307, i64 0
  %309 = load i32**, i32*** %308, align 8
  %310 = load i32, i32* %12, align 4
  %311 = load i32, i32* %8, align 4
  %312 = add nsw i32 %310, %311
  %313 = load i32, i32* %9, align 4
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = mul nsw i32 %313, %316
  %318 = add nsw i32 %312, %317
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32*, i32** %309, i64 %319
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %10, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @calc_add_mv(%struct.TYPE_17__* %301, i32 %302, i32 %325)
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i32 0, i32 4
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 0
  %331 = load i32***, i32**** %330, align 8
  %332 = load i32, i32* %11, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32**, i32*** %331, i64 %333
  %335 = load i32**, i32*** %334, align 8
  %336 = load i32, i32* %12, align 4
  %337 = load i32, i32* %8, align 4
  %338 = add nsw i32 %336, %337
  %339 = load i32, i32* %9, align 4
  %340 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = mul nsw i32 %339, %342
  %344 = add nsw i32 %338, %343
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32*, i32** %335, i64 %345
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %10, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  store i32 %326, i32* %350, align 4
  br label %351

351:                                              ; preds = %300
  %352 = load i32, i32* %11, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %11, align 4
  br label %297

354:                                              ; preds = %297
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %10, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %10, align 4
  br label %293

358:                                              ; preds = %293
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %8, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %8, align 4
  br label %289

362:                                              ; preds = %289
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %9, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %9, align 4
  br label %285

366:                                              ; preds = %285
  br label %367

367:                                              ; preds = %366, %229
  %368 = load i32, i32* %13, align 4
  %369 = call i32 @IS_16X8(i32 %368)
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %383, label %371

371:                                              ; preds = %367
  %372 = load i32, i32* %13, align 4
  %373 = call i32 @IS_8X16(i32 %372)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %383, label %375

375:                                              ; preds = %371
  %376 = load i32, i32* %13, align 4
  %377 = call i32 @IS_8X8(i32 %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %383, label %379

379:                                              ; preds = %375
  %380 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %381 = load i32, i32* %5, align 4
  %382 = call i32 @rv34_mc_2mv(%struct.TYPE_17__* %380, i32 %381)
  br label %386

383:                                              ; preds = %375, %371, %367
  %384 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %385 = call i32 @rv34_mc_2mv_skip(%struct.TYPE_17__* %384)
  br label %386

386:                                              ; preds = %383, %379
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i32 0, i32 4
  %389 = load %struct.TYPE_14__*, %struct.TYPE_14__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 0
  %391 = load i32***, i32**** %390, align 8
  %392 = getelementptr inbounds i32**, i32*** %391, i64 0
  %393 = load i32**, i32*** %392, align 8
  %394 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = mul nsw i32 %396, 2
  %398 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = mul nsw i32 %400, 2
  %402 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %403 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 8
  %405 = mul nsw i32 %401, %404
  %406 = add nsw i32 %397, %405
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32*, i32** %393, i64 %407
  %409 = load i32*, i32** %408, align 8
  %410 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 8
  %413 = call i32 @ZERO8x2(i32* %409, i32 %412)
  br label %549

414:                                              ; preds = %111, %111
  %415 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %416 = load i32, i32* %5, align 4
  %417 = call i32 @rv34_pred_mv(%struct.TYPE_17__* %415, i32 %416, i32 0, i32 0)
  %418 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %419 = load i32, i32* %5, align 4
  %420 = call i32 @rv34_mc_1mv(%struct.TYPE_17__* %418, i32 %419, i32 0, i32 0, i32 0, i32 2, i32 2, i32 0)
  br label %549

421:                                              ; preds = %111, %111
  %422 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %422, i32 0, i32 0
  %424 = load i64**, i64*** %423, align 8
  %425 = getelementptr inbounds i64*, i64** %424, i64 0
  %426 = load i64*, i64** %425, align 8
  %427 = getelementptr inbounds i64, i64* %426, i64 0
  %428 = load i64, i64* %427, align 8
  %429 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %429, i32 0, i32 0
  %431 = load i64**, i64*** %430, align 8
  %432 = getelementptr inbounds i64*, i64** %431, i64 1
  %433 = load i64*, i64** %432, align 8
  %434 = getelementptr inbounds i64, i64* %433, i64 0
  store i64 %428, i64* %434, align 8
  %435 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %436 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %435, i32 0, i32 0
  %437 = load i64**, i64*** %436, align 8
  %438 = getelementptr inbounds i64*, i64** %437, i64 0
  %439 = load i64*, i64** %438, align 8
  %440 = getelementptr inbounds i64, i64* %439, i64 1
  %441 = load i64, i64* %440, align 8
  %442 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %442, i32 0, i32 0
  %444 = load i64**, i64*** %443, align 8
  %445 = getelementptr inbounds i64*, i64** %444, i64 1
  %446 = load i64*, i64** %445, align 8
  %447 = getelementptr inbounds i64, i64* %446, i64 1
  store i64 %441, i64* %447, align 8
  %448 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 8
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %459

452:                                              ; preds = %421
  %453 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %454 = load i32, i32* %5, align 4
  %455 = load i32, i32* %5, align 4
  %456 = icmp eq i32 %455, 139
  %457 = zext i1 %456 to i32
  %458 = call i32 @rv34_pred_mv_rv3(%struct.TYPE_17__* %453, i32 %454, i32 %457)
  br label %466

459:                                              ; preds = %421
  %460 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %461 = load i32, i32* %5, align 4
  %462 = load i32, i32* %5, align 4
  %463 = icmp eq i32 %462, 139
  %464 = zext i1 %463 to i32
  %465 = call i32 @rv34_pred_mv_b(%struct.TYPE_17__* %460, i32 %461, i32 %464)
  br label %466

466:                                              ; preds = %459, %452
  %467 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %468 = load i32, i32* %5, align 4
  %469 = load i32, i32* %5, align 4
  %470 = icmp eq i32 %469, 139
  %471 = zext i1 %470 to i32
  %472 = call i32 @rv34_mc_1mv(%struct.TYPE_17__* %467, i32 %468, i32 0, i32 0, i32 0, i32 2, i32 2, i32 %471)
  br label %549

473:                                              ; preds = %111, %111
  %474 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %475 = load i32, i32* %5, align 4
  %476 = call i32 @rv34_pred_mv(%struct.TYPE_17__* %474, i32 %475, i32 0, i32 0)
  %477 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %478 = load i32, i32* %5, align 4
  %479 = load i32, i32* %5, align 4
  %480 = icmp eq i32 %479, 134
  %481 = zext i1 %480 to i32
  %482 = add nsw i32 1, %481
  %483 = call i32 @rv34_pred_mv(%struct.TYPE_17__* %477, i32 %478, i32 %482, i32 1)
  %484 = load i32, i32* %5, align 4
  %485 = icmp eq i32 %484, 134
  br i1 %485, label %486, label %496

486:                                              ; preds = %473
  %487 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %488 = load i32, i32* %5, align 4
  %489 = call i32 @rv34_mc_1mv(%struct.TYPE_17__* %487, i32 %488, i32 0, i32 0, i32 0, i32 2, i32 1, i32 0)
  %490 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %491 = load i32, i32* %5, align 4
  %492 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %493 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %492, i32 0, i32 2
  %494 = load i32, i32* %493, align 8
  %495 = call i32 @rv34_mc_1mv(%struct.TYPE_17__* %490, i32 %491, i32 0, i32 8, i32 %494, i32 2, i32 1, i32 0)
  br label %496

496:                                              ; preds = %486, %473
  %497 = load i32, i32* %5, align 4
  %498 = icmp eq i32 %497, 133
  br i1 %498, label %499, label %506

499:                                              ; preds = %496
  %500 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %501 = load i32, i32* %5, align 4
  %502 = call i32 @rv34_mc_1mv(%struct.TYPE_17__* %500, i32 %501, i32 0, i32 0, i32 0, i32 1, i32 2, i32 0)
  %503 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %504 = load i32, i32* %5, align 4
  %505 = call i32 @rv34_mc_1mv(%struct.TYPE_17__* %503, i32 %504, i32 8, i32 0, i32 1, i32 1, i32 2, i32 0)
  br label %506

506:                                              ; preds = %499, %496
  br label %549

507:                                              ; preds = %111
  %508 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %509 = load i32, i32* %5, align 4
  %510 = call i32 @rv34_pred_mv_b(%struct.TYPE_17__* %508, i32 %509, i32 0)
  %511 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %512 = load i32, i32* %5, align 4
  %513 = call i32 @rv34_pred_mv_b(%struct.TYPE_17__* %511, i32 %512, i32 1)
  %514 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %515 = load i32, i32* %5, align 4
  %516 = call i32 @rv34_mc_2mv(%struct.TYPE_17__* %514, i32 %515)
  br label %549

517:                                              ; preds = %111
  store i32 0, i32* %8, align 4
  br label %518

518:                                              ; preds = %545, %517
  %519 = load i32, i32* %8, align 4
  %520 = icmp slt i32 %519, 4
  br i1 %520, label %521, label %548

521:                                              ; preds = %518
  %522 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %523 = load i32, i32* %5, align 4
  %524 = load i32, i32* %8, align 4
  %525 = load i32, i32* %8, align 4
  %526 = call i32 @rv34_pred_mv(%struct.TYPE_17__* %522, i32 %523, i32 %524, i32 %525)
  %527 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %528 = load i32, i32* %5, align 4
  %529 = load i32, i32* %8, align 4
  %530 = and i32 %529, 1
  %531 = shl i32 %530, 3
  %532 = load i32, i32* %8, align 4
  %533 = and i32 %532, 2
  %534 = shl i32 %533, 2
  %535 = load i32, i32* %8, align 4
  %536 = and i32 %535, 1
  %537 = load i32, i32* %8, align 4
  %538 = ashr i32 %537, 1
  %539 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %540 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %539, i32 0, i32 2
  %541 = load i32, i32* %540, align 8
  %542 = mul nsw i32 %538, %541
  %543 = add nsw i32 %536, %542
  %544 = call i32 @rv34_mc_1mv(%struct.TYPE_17__* %527, i32 %528, i32 %531, i32 %534, i32 %543, i32 1, i32 1, i32 0)
  br label %545

545:                                              ; preds = %521
  %546 = load i32, i32* %8, align 4
  %547 = add nsw i32 %546, 1
  store i32 %547, i32* %8, align 4
  br label %518

548:                                              ; preds = %518
  br label %549

549:                                              ; preds = %111, %548, %507, %506, %466, %414, %386, %147
  store i32 0, i32* %3, align 4
  br label %550

550:                                              ; preds = %549, %113, %89
  %551 = load i32, i32* %3, align 4
  ret i32 %551
}

declare dso_local i32 @memset(i64**, i32, i32) #1

declare dso_local i8* @get_interleaved_se_golomb(i32*) #1

declare dso_local i32 @ZERO8x2(i32*, i32) #1

declare dso_local i32 @rv34_mc_1mv(%struct.TYPE_17__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_thread_await_progress(i32*, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @IS_INTRA(i32) #1

declare dso_local i32 @IS_SKIP(i32) #1

declare dso_local i32 @calc_add_mv(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @IS_16X8(i32) #1

declare dso_local i32 @IS_8X16(i32) #1

declare dso_local i32 @IS_8X8(i32) #1

declare dso_local i32 @rv34_mc_2mv(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @rv34_mc_2mv_skip(%struct.TYPE_17__*) #1

declare dso_local i32 @rv34_pred_mv(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @rv34_pred_mv_rv3(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @rv34_pred_mv_b(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
