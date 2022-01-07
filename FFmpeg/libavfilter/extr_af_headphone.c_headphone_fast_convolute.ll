; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_headphone.c_headphone_fast_convolute.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_headphone.c_headphone_fast_convolute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, float, i32**, i32**, %struct.TYPE_12__**, %struct.TYPE_12__**, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { float, float }
%struct.TYPE_10__ = type { i32*, i32*, float**, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32, i32)* @headphone_fast_convolute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @headphone_fast_convolute(%struct.TYPE_14__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_12__*, align 8
  %25 = alloca %struct.TYPE_12__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca float, align 4
  %30 = alloca %struct.TYPE_12__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_12__*, align 8
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %9, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = bitcast i8* %42 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %10, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %11, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %12, align 8
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %13, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32* %56, i32** %14, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 9
  %59 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %59, i64 %61
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %15, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32* %69, i32** %16, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load float**, float*** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float*, float** %72, i64 %74
  %76 = load float*, float** %75, align 8
  store float* %76, float** %17, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %18, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to float*
  store float* %85, float** %19, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to float*
  store float* %91, float** %20, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %21, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %22, align 4
  %98 = load i32, i32* %22, align 4
  %99 = sub nsw i32 %98, 1
  store i32 %99, i32* %23, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 8
  %102 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %102, i64 %104
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  store %struct.TYPE_12__* %106, %struct.TYPE_12__** %24, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 7
  %109 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %109, i64 %111
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  store %struct.TYPE_12__* %113, %struct.TYPE_12__** %25, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 6
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %26, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 5
  %123 = load i32**, i32*** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  store i32* %127, i32** %27, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %28, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sitofp i32 %133 to float
  %135 = fdiv float 1.000000e+00, %134
  store float %135, float* %29, align 4
  %136 = load i32*, i32** %14, align 8
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %31, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load float*, float** %20, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds float, float* %139, i64 %140
  store float* %141, float** %20, align 8
  %142 = load i32, i32* %18, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @FFMIN(i32 %142, i32 %145)
  store i32 %146, i32* %32, align 4
  store i32 0, i32* %34, align 4
  br label %147

147:                                              ; preds = %170, %4
  %148 = load i32, i32* %34, align 4
  %149 = load i32, i32* %32, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %173

151:                                              ; preds = %147
  %152 = load float*, float** %17, align 8
  %153 = load i32, i32* %31, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %152, i64 %154
  %156 = load float, float* %155, align 4
  %157 = load float*, float** %20, align 8
  %158 = load i32, i32* %34, align 4
  %159 = mul nsw i32 2, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %157, i64 %160
  store float %156, float* %161, align 4
  %162 = load float*, float** %17, align 8
  %163 = load i32, i32* %31, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %162, i64 %164
  store float 0.000000e+00, float* %165, align 4
  %166 = load i32, i32* %31, align 4
  %167 = add nsw i32 %166, 1
  %168 = load i32, i32* %23, align 4
  %169 = and i32 %167, %168
  store i32 %169, i32* %31, align 4
  br label %170

170:                                              ; preds = %151
  %171 = load i32, i32* %34, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %34, align 4
  br label %147

173:                                              ; preds = %147
  %174 = load i32, i32* %32, align 4
  store i32 %174, i32* %34, align 4
  br label %175

175:                                              ; preds = %187, %173
  %176 = load i32, i32* %34, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %175
  %182 = load float*, float** %20, align 8
  %183 = load i32, i32* %34, align 4
  %184 = mul nsw i32 2, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %182, i64 %185
  store float 0.000000e+00, float* %186, align 4
  br label %187

187:                                              ; preds = %181
  %188 = load i32, i32* %34, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %34, align 4
  br label %175

190:                                              ; preds = %175
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %192 = load i32, i32* %28, align 4
  %193 = sext i32 %192 to i64
  %194 = mul i64 8, %193
  %195 = trunc i64 %194 to i32
  %196 = call i32 @memset(%struct.TYPE_12__* %191, i32 0, i32 %195)
  store i32 0, i32* %33, align 4
  br label %197

197:                                              ; preds = %345, %190
  %198 = load i32, i32* %33, align 4
  %199 = load i32, i32* %21, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %348

201:                                              ; preds = %197
  %202 = load i32, i32* %33, align 4
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %202, %205
  br i1 %206, label %207, label %239

207:                                              ; preds = %201
  store i32 0, i32* %34, align 4
  br label %208

208:                                              ; preds = %235, %207
  %209 = load i32, i32* %34, align 4
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %238

214:                                              ; preds = %208
  %215 = load float*, float** %19, align 8
  %216 = load i32, i32* %33, align 4
  %217 = load i32, i32* %34, align 4
  %218 = load i32, i32* %21, align 4
  %219 = mul nsw i32 %217, %218
  %220 = add nsw i32 %216, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, float* %215, i64 %221
  %223 = load float, float* %222, align 4
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 4
  %226 = load float, float* %225, align 8
  %227 = fmul float %223, %226
  %228 = load float*, float** %20, align 8
  %229 = load i32, i32* %34, align 4
  %230 = mul nsw i32 2, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %228, i64 %231
  %233 = load float, float* %232, align 4
  %234 = fadd float %233, %227
  store float %234, float* %232, align 4
  br label %235

235:                                              ; preds = %214
  %236 = load i32, i32* %34, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %34, align 4
  br label %208

238:                                              ; preds = %208
  br label %345

239:                                              ; preds = %201
  %240 = load i32, i32* %33, align 4
  %241 = load i32, i32* %28, align 4
  %242 = mul nsw i32 %240, %241
  store i32 %242, i32* %13, align 4
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i64 %245
  store %struct.TYPE_12__* %246, %struct.TYPE_12__** %30, align 8
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %248 = load i32, i32* %28, align 4
  %249 = sext i32 %248 to i64
  %250 = mul i64 8, %249
  %251 = trunc i64 %250 to i32
  %252 = call i32 @memset(%struct.TYPE_12__* %247, i32 0, i32 %251)
  store i32 0, i32* %34, align 4
  br label %253

253:                                              ; preds = %274, %239
  %254 = load i32, i32* %34, align 4
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = icmp slt i32 %254, %257
  br i1 %258, label %259, label %277

259:                                              ; preds = %253
  %260 = load float*, float** %19, align 8
  %261 = load i32, i32* %34, align 4
  %262 = load i32, i32* %21, align 4
  %263 = mul nsw i32 %261, %262
  %264 = load i32, i32* %33, align 4
  %265 = add nsw i32 %263, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %260, i64 %266
  %268 = load float, float* %267, align 4
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %270 = load i32, i32* %34, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  store float %268, float* %273, align 4
  br label %274

274:                                              ; preds = %259
  %275 = load i32, i32* %34, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %34, align 4
  br label %253

277:                                              ; preds = %253
  %278 = load i32*, i32** %27, align 8
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %280 = call i32 @av_fft_permute(i32* %278, %struct.TYPE_12__* %279)
  %281 = load i32*, i32** %27, align 8
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %283 = call i32 @av_fft_calc(i32* %281, %struct.TYPE_12__* %282)
  store i32 0, i32* %34, align 4
  br label %284

284:                                              ; preds = %341, %277
  %285 = load i32, i32* %34, align 4
  %286 = load i32, i32* %28, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %344

288:                                              ; preds = %284
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %290 = load i32, i32* %34, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i64 %291
  store %struct.TYPE_12__* %292, %struct.TYPE_12__** %35, align 8
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %294 = load i32, i32* %34, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 0
  %298 = load float, float* %297, align 4
  store float %298, float* %36, align 4
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %300 = load i32, i32* %34, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 1
  %304 = load float, float* %303, align 4
  store float %304, float* %37, align 4
  %305 = load float, float* %36, align 4
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 0
  %308 = load float, float* %307, align 4
  %309 = fmul float %305, %308
  %310 = load float, float* %37, align 4
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 1
  %313 = load float, float* %312, align 4
  %314 = fmul float %310, %313
  %315 = fsub float %309, %314
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %317 = load i32, i32* %34, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 0
  %321 = load float, float* %320, align 4
  %322 = fadd float %321, %315
  store float %322, float* %320, align 4
  %323 = load float, float* %36, align 4
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 1
  %326 = load float, float* %325, align 4
  %327 = fmul float %323, %326
  %328 = load float, float* %37, align 4
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 0
  %331 = load float, float* %330, align 4
  %332 = fmul float %328, %331
  %333 = fadd float %327, %332
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %335 = load i32, i32* %34, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 1
  %339 = load float, float* %338, align 4
  %340 = fadd float %339, %333
  store float %340, float* %338, align 4
  br label %341

341:                                              ; preds = %288
  %342 = load i32, i32* %34, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %34, align 4
  br label %284

344:                                              ; preds = %284
  br label %345

345:                                              ; preds = %344, %238
  %346 = load i32, i32* %33, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %33, align 4
  br label %197

348:                                              ; preds = %197
  %349 = load i32*, i32** %26, align 8
  %350 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %351 = call i32 @av_fft_permute(i32* %349, %struct.TYPE_12__* %350)
  %352 = load i32*, i32** %26, align 8
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %354 = call i32 @av_fft_calc(i32* %352, %struct.TYPE_12__* %353)
  store i32 0, i32* %34, align 4
  br label %355

355:                                              ; preds = %377, %348
  %356 = load i32, i32* %34, align 4
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = icmp slt i32 %356, %359
  br i1 %360, label %361, label %380

361:                                              ; preds = %355
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %363 = load i32, i32* %34, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 0
  %367 = load float, float* %366, align 4
  %368 = load float, float* %29, align 4
  %369 = fmul float %367, %368
  %370 = load float*, float** %20, align 8
  %371 = load i32, i32* %34, align 4
  %372 = mul nsw i32 2, %371
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds float, float* %370, i64 %373
  %375 = load float, float* %374, align 4
  %376 = fadd float %375, %369
  store float %376, float* %374, align 4
  br label %377

377:                                              ; preds = %361
  %378 = load i32, i32* %34, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %34, align 4
  br label %355

380:                                              ; preds = %355
  store i32 0, i32* %34, align 4
  br label %381

381:                                              ; preds = %410, %380
  %382 = load i32, i32* %34, align 4
  %383 = load i32, i32* %18, align 4
  %384 = sub nsw i32 %383, 1
  %385 = icmp slt i32 %382, %384
  br i1 %385, label %386, label %413

386:                                              ; preds = %381
  %387 = load i32, i32* %31, align 4
  %388 = load i32, i32* %34, align 4
  %389 = add nsw i32 %387, %388
  %390 = load i32, i32* %23, align 4
  %391 = and i32 %389, %390
  store i32 %391, i32* %38, align 4
  %392 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %393 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %394 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* %34, align 4
  %397 = add nsw i32 %395, %396
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %399, i32 0, i32 0
  %401 = load float, float* %400, align 4
  %402 = load float, float* %29, align 4
  %403 = fmul float %401, %402
  %404 = load float*, float** %17, align 8
  %405 = load i32, i32* %38, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds float, float* %404, i64 %406
  %408 = load float, float* %407, align 4
  %409 = fadd float %408, %403
  store float %409, float* %407, align 4
  br label %410

410:                                              ; preds = %386
  %411 = load i32, i32* %34, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %34, align 4
  br label %381

413:                                              ; preds = %381
  store i32 0, i32* %33, align 4
  br label %414

414:                                              ; preds = %434, %413
  %415 = load i32, i32* %33, align 4
  %416 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %417 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = icmp slt i32 %415, %418
  br i1 %419, label %420, label %437

420:                                              ; preds = %414
  %421 = load float*, float** %20, align 8
  %422 = getelementptr inbounds float, float* %421, i64 0
  %423 = load float, float* %422, align 4
  %424 = call i32 @fabsf(float %423)
  %425 = icmp sgt i32 %424, 1
  br i1 %425, label %426, label %431

426:                                              ; preds = %420
  %427 = load i32*, i32** %16, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 0
  %429 = load i32, i32* %428, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %428, align 4
  br label %431

431:                                              ; preds = %426, %420
  %432 = load float*, float** %20, align 8
  %433 = getelementptr inbounds float, float* %432, i64 2
  store float* %433, float** %20, align 8
  br label %434

434:                                              ; preds = %431
  %435 = load i32, i32* %33, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %33, align 4
  br label %414

437:                                              ; preds = %414
  %438 = load i32, i32* %31, align 4
  %439 = load i32*, i32** %14, align 8
  store i32 %438, i32* %439, align 4
  ret i32 0
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @av_fft_permute(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @av_fft_calc(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @fabsf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
