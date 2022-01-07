; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftdnoiz.c_import_plane.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftdnoiz.c_import_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 (%struct.TYPE_11__*, i32*, i32)*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i32, float*, i32, i32)* @import_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @import_plane(%struct.TYPE_10__* %0, i32* %1, i32 %2, float* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_11__*, align 8
  %24 = alloca %struct.TYPE_11__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca float*, align 8
  %33 = alloca %struct.TYPE_11__*, align 8
  %34 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store float* %3, float** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %39
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %13, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %14, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %15, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %16, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %18, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %19, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %20, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 7
  %66 = sdiv i32 %65, 8
  store i32 %66, i32* %21, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = udiv i64 %70, 16
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %22, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 9
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %23, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %24, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = udiv i64 %80, 4
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %11, align 4
  store i32 0, i32* %26, align 4
  br label %83

83:                                               ; preds = %318, %6
  %84 = load i32, i32* %26, align 4
  %85 = load i32, i32* %20, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %321

87:                                               ; preds = %83
  store i32 0, i32* %25, align 4
  br label %88

88:                                               ; preds = %314, %87
  %89 = load i32, i32* %25, align 4
  %90 = load i32, i32* %19, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %317

92:                                               ; preds = %88
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %26, align 4
  %96 = load i32, i32* %18, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sub nsw i32 %94, %97
  %99 = call i32 @FFMIN(i32 %93, i32 %98)
  store i32 %99, i32* %29, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %25, align 4
  %103 = load i32, i32* %18, align 4
  %104 = mul nsw i32 %102, %103
  %105 = sub nsw i32 %101, %104
  %106 = call i32 @FFMIN(i32 %100, i32 %105)
  store i32 %106, i32* %30, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %26, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32, i32* %18, align 4
  %112 = mul nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %107, i64 %113
  %115 = load i32, i32* %25, align 4
  %116 = load i32, i32* %18, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* %21, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %114, i64 %120
  store i32* %121, i32** %31, align 8
  %122 = load float*, float** %10, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %26, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %16, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %122, i64 %128
  %130 = load i32, i32* %25, align 4
  %131 = load i32, i32* %16, align 4
  %132 = mul nsw i32 %130, %131
  %133 = mul nsw i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, float* %129, i64 %134
  store float* %135, float** %32, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %136, %struct.TYPE_11__** %34, align 8
  store i32 0, i32* %27, align 4
  br label %137

137:                                              ; preds = %196, %92
  %138 = load i32, i32* %27, align 4
  %139 = load i32, i32* %29, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %199

141:                                              ; preds = %137
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32 (%struct.TYPE_11__*, i32*, i32)*, i32 (%struct.TYPE_11__*, i32*, i32)** %143, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %146 = load i32*, i32** %31, align 8
  %147 = load i32, i32* %30, align 4
  %148 = call i32 %144(%struct.TYPE_11__* %145, i32* %146, i32 %147)
  %149 = load i32, i32* %30, align 4
  store i32 %149, i32* %28, align 4
  br label %150

150:                                              ; preds = %174, %141
  %151 = load i32, i32* %28, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %177

154:                                              ; preds = %150
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %28, align 4
  %158 = sub nsw i32 %156, %157
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %165 = load i32, i32* %28, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  store i32 %163, i32* %168, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %170 = load i32, i32* %28, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  store i64 0, i64* %173, align 8
  br label %174

174:                                              ; preds = %154
  %175 = load i32, i32* %28, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %28, align 4
  br label %150

177:                                              ; preds = %150
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %182 = call i32 @av_fft_permute(i32 %180, %struct.TYPE_11__* %181)
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %187 = call i32 @av_fft_calc(i32 %185, %struct.TYPE_11__* %186)
  %188 = load i32, i32* %9, align 4
  %189 = load i32*, i32** %31, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32* %191, i32** %31, align 8
  %192 = load i32, i32* %22, align 4
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i64 %194
  store %struct.TYPE_11__* %195, %struct.TYPE_11__** %34, align 8
  br label %196

196:                                              ; preds = %177
  %197 = load i32, i32* %27, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %27, align 4
  br label %137

199:                                              ; preds = %137
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %200, %struct.TYPE_11__** %34, align 8
  br label %201

201:                                              ; preds = %251, %199
  %202 = load i32, i32* %27, align 4
  %203 = load i32, i32* %16, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %254

205:                                              ; preds = %201
  store i32 0, i32* %28, align 4
  br label %206

206:                                              ; preds = %247, %205
  %207 = load i32, i32* %28, align 4
  %208 = load i32, i32* %16, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %250

210:                                              ; preds = %206
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %212 = load i32, i32* %16, align 4
  %213 = load i32, i32* %27, align 4
  %214 = sub nsw i32 %212, %213
  %215 = sub nsw i32 %214, 1
  %216 = load i32, i32* %22, align 4
  %217 = mul nsw i32 %215, %216
  %218 = load i32, i32* %28, align 4
  %219 = add nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %225 = load i32, i32* %28, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  store i32 %223, i32* %228, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %230 = load i32, i32* %16, align 4
  %231 = load i32, i32* %27, align 4
  %232 = sub nsw i32 %230, %231
  %233 = sub nsw i32 %232, 1
  %234 = load i32, i32* %22, align 4
  %235 = mul nsw i32 %233, %234
  %236 = load i32, i32* %28, align 4
  %237 = add nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %243 = load i32, i32* %28, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  store i64 %241, i64* %246, align 8
  br label %247

247:                                              ; preds = %210
  %248 = load i32, i32* %28, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %28, align 4
  br label %206

250:                                              ; preds = %206
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %27, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %27, align 4
  br label %201

254:                                              ; preds = %201
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %255, %struct.TYPE_11__** %33, align 8
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %256, %struct.TYPE_11__** %34, align 8
  store i32 0, i32* %27, align 4
  br label %257

257:                                              ; preds = %310, %254
  %258 = load i32, i32* %27, align 4
  %259 = load i32, i32* %16, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %313

261:                                              ; preds = %257
  store i32 0, i32* %28, align 4
  br label %262

262:                                              ; preds = %281, %261
  %263 = load i32, i32* %28, align 4
  %264 = load i32, i32* %16, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %284

266:                                              ; preds = %262
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %268 = load i32, i32* %28, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i64 %269
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %272 = load i32, i32* %28, align 4
  %273 = load i32, i32* %22, align 4
  %274 = mul nsw i32 %272, %273
  %275 = load i32, i32* %27, align 4
  %276 = add nsw i32 %274, %275
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i64 %277
  %279 = bitcast %struct.TYPE_11__* %270 to i8*
  %280 = bitcast %struct.TYPE_11__* %278 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %279, i8* align 8 %280, i64 16, i1 false)
  br label %281

281:                                              ; preds = %266
  %282 = load i32, i32* %28, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %28, align 4
  br label %262

284:                                              ; preds = %262
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 7
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %289 = call i32 @av_fft_permute(i32 %287, %struct.TYPE_11__* %288)
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 7
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %294 = call i32 @av_fft_calc(i32 %292, %struct.TYPE_11__* %293)
  %295 = load float*, float** %32, align 8
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %297 = load i32, i32* %16, align 4
  %298 = sext i32 %297 to i64
  %299 = mul i64 %298, 16
  %300 = trunc i64 %299 to i32
  %301 = call i32 @memcpy(float* %295, %struct.TYPE_11__* %296, i32 %300)
  %302 = load i32, i32* %22, align 4
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i64 %304
  store %struct.TYPE_11__* %305, %struct.TYPE_11__** %34, align 8
  %306 = load i32, i32* %11, align 4
  %307 = load float*, float** %32, align 8
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds float, float* %307, i64 %308
  store float* %309, float** %32, align 8
  br label %310

310:                                              ; preds = %284
  %311 = load i32, i32* %27, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %27, align 4
  br label %257

313:                                              ; preds = %257
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %25, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %25, align 4
  br label %88

317:                                              ; preds = %88
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %26, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %26, align 4
  br label %83

321:                                              ; preds = %83
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_fft_permute(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @av_fft_calc(i32, %struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(float*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
