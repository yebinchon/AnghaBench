; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nellymoserenc.c_get_exponent_dynamic.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nellymoserenc.c_get_exponent_dynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float**, i32 }

@OPT_SIZE = common dso_local global i32 0, align 4
@path = common dso_local global i64** null, align 8
@NELLY_BANDS = common dso_local global i32 0, align 4
@INFINITY = common dso_local global float 0.000000e+00, align 4
@ff_nelly_init_table = common dso_local global i64* null, align 8
@ff_nelly_delta_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, i32*)* @get_exponent_dynamic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_exponent_dynamic(%struct.TYPE_3__* %0, float* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store float* %1, float** %5, align 8
  store i32* %2, i32** %6, align 8
  %20 = load i32, i32* @OPT_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load float**, float*** %23, align 8
  %25 = bitcast float** %24 to float*
  store float* %25, float** %13, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i64**, i64*** @path, align 8
  %30 = load i64*, i64** %29, align 8
  %31 = call i32* @uint8_t(i64* %30)
  %32 = load i32, i32* @OPT_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %49, %3
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @NELLY_BANDS, align 4
  %38 = load i32, i32* @OPT_SIZE, align 4
  %39 = mul nsw i32 %37, %38
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load float, float* @INFINITY, align 4
  %43 = load float*, float** %13, align 8
  %44 = mul nsw i64 0, %21
  %45 = getelementptr inbounds float, float* %43, i64 %44
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  store float %42, float* %48, align 4
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %35

52:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %88, %52
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 64
  br i1 %55, label %56, label %91

56:                                               ; preds = %53
  %57 = load float*, float** %5, align 8
  %58 = getelementptr inbounds float, float* %57, i64 0
  %59 = load float, float* %58, align 4
  %60 = fptosi float %59 to i32
  %61 = load i64*, i64** @ff_nelly_init_table, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = uitofp i64 %65 to float
  %67 = call float @distance(i32 %60, float %66, i32 0)
  %68 = load float*, float** %13, align 8
  %69 = mul nsw i64 0, %21
  %70 = getelementptr inbounds float, float* %68, i64 %69
  %71 = load i64*, i64** @ff_nelly_init_table, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds float, float* %70, i64 %75
  store float %67, float* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64**, i64*** @path, align 8
  %80 = getelementptr inbounds i64*, i64** %79, i64 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i64*, i64** @ff_nelly_init_table, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i64, i64* %81, i64 %86
  store i64 %78, i64* %87, align 8
  br label %88

88:                                               ; preds = %56
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %53

91:                                               ; preds = %53
  store i32 1, i32* %9, align 4
  br label %92

92:                                               ; preds = %253, %91
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @NELLY_BANDS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %256

96:                                               ; preds = %92
  store i32 0, i32* %15, align 4
  %97 = load float*, float** %5, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  %101 = load float, float* %100, align 4
  store float %101, float* %11, align 4
  store i32 1000, i32* %14, align 4
  br label %102

102:                                              ; preds = %247, %96
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @OPT_SIZE, align 4
  %108 = icmp slt i32 %106, %107
  br label %109

109:                                              ; preds = %105, %102
  %110 = phi i1 [ false, %102 ], [ %108, %105 ]
  br i1 %110, label %111, label %250

111:                                              ; preds = %109
  %112 = load float*, float** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %112, i64 %114
  %116 = load float, float* %115, align 4
  %117 = load i32, i32* %14, align 4
  %118 = sitofp i32 %117 to float
  %119 = fsub float %116, %118
  %120 = call i32 @FFMAX(i32 0, float %119)
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* @OPT_SIZE, align 4
  %122 = load float*, float** %5, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %122, i64 %125
  %127 = load float, float* %126, align 4
  %128 = load i32, i32* %14, align 4
  %129 = sitofp i32 %128 to float
  %130 = fadd float %127, %129
  %131 = call i32 @FFMIN(i32 %121, float %130)
  store i32 %131, i32* %18, align 4
  %132 = load float*, float** %5, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %132, i64 %135
  %137 = load float, float* %136, align 4
  %138 = load i32, i32* %14, align 4
  %139 = sitofp i32 %138 to float
  %140 = fsub float %137, %139
  %141 = call i32 @FFMAX(i32 0, float %140)
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %243, %111
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @OPT_SIZE, align 4
  %145 = load float*, float** %5, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %145, i64 %148
  %150 = load float, float* %149, align 4
  %151 = load i32, i32* %14, align 4
  %152 = sitofp i32 %151 to float
  %153 = fadd float %150, %152
  %154 = call i32 @FFMIN(i32 %144, float %153)
  %155 = icmp slt i32 %143, %154
  br i1 %155, label %156, label %246

156:                                              ; preds = %142
  %157 = load float*, float** %13, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = mul nsw i64 %160, %21
  %162 = getelementptr inbounds float, float* %157, i64 %161
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %162, i64 %164
  %166 = load float, float* %165, align 4
  %167 = call i64 @isinf(float %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %156
  br label %243

170:                                              ; preds = %156
  store i32 0, i32* %8, align 4
  br label %171

171:                                              ; preds = %239, %170
  %172 = load i32, i32* %8, align 4
  %173 = icmp slt i32 %172, 32
  br i1 %173, label %174, label %242

174:                                              ; preds = %171
  %175 = load i32, i32* %7, align 4
  %176 = load i32*, i32** @ff_nelly_delta_table, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %175, %180
  store i32 %181, i32* %19, align 4
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* %18, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %174
  br label %242

186:                                              ; preds = %174
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* %17, align 4
  %189 = icmp sge i32 %187, %188
  br i1 %189, label %190, label %238

190:                                              ; preds = %186
  %191 = load float*, float** %13, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = mul nsw i64 %194, %21
  %196 = getelementptr inbounds float, float* %191, i64 %195
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  %200 = load float, float* %199, align 4
  %201 = load i32, i32* %19, align 4
  %202 = load float, float* %11, align 4
  %203 = load i32, i32* %9, align 4
  %204 = call float @distance(i32 %201, float %202, i32 %203)
  %205 = fadd float %200, %204
  store float %205, float* %16, align 4
  %206 = load float*, float** %13, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = mul nsw i64 %208, %21
  %210 = getelementptr inbounds float, float* %206, i64 %209
  %211 = load i32, i32* %19, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds float, float* %210, i64 %212
  %214 = load float, float* %213, align 4
  %215 = load float, float* %16, align 4
  %216 = fcmp ogt float %214, %215
  br i1 %216, label %217, label %237

217:                                              ; preds = %190
  %218 = load float, float* %16, align 4
  %219 = load float*, float** %13, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = mul nsw i64 %221, %21
  %223 = getelementptr inbounds float, float* %219, i64 %222
  %224 = load i32, i32* %19, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %223, i64 %225
  store float %218, float* %226, align 4
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = load i64**, i64*** @path, align 8
  %230 = load i32, i32* %9, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64*, i64** %229, i64 %231
  %233 = load i64*, i64** %232, align 8
  %234 = load i32, i32* %19, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  store i64 %228, i64* %236, align 8
  store i32 1, i32* %15, align 4
  br label %237

237:                                              ; preds = %217, %190
  br label %238

238:                                              ; preds = %237, %186
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %8, align 4
  br label %171

242:                                              ; preds = %185, %171
  br label %243

243:                                              ; preds = %242, %169
  %244 = load i32, i32* %7, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %7, align 4
  br label %142

246:                                              ; preds = %142
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %14, align 4
  %249 = shl i32 %248, 2
  store i32 %249, i32* %14, align 4
  br label %102

250:                                              ; preds = %109
  %251 = load i32, i32* %15, align 4
  %252 = call i32 @av_assert1(i32 %251)
  br label %253

253:                                              ; preds = %250
  %254 = load i32, i32* %9, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %9, align 4
  br label %92

256:                                              ; preds = %92
  %257 = load float, float* @INFINITY, align 4
  store float %257, float* %12, align 4
  store i32 -1, i32* %10, align 4
  %258 = load i32, i32* @NELLY_BANDS, align 4
  %259 = sub nsw i32 %258, 1
  store i32 %259, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %260

260:                                              ; preds = %288, %256
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* @OPT_SIZE, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %291

264:                                              ; preds = %260
  %265 = load float, float* %12, align 4
  %266 = load float*, float** %13, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = mul nsw i64 %268, %21
  %270 = getelementptr inbounds float, float* %266, i64 %269
  %271 = load i32, i32* %7, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds float, float* %270, i64 %272
  %274 = load float, float* %273, align 4
  %275 = fcmp ogt float %265, %274
  br i1 %275, label %276, label %287

276:                                              ; preds = %264
  %277 = load float*, float** %13, align 8
  %278 = load i32, i32* %9, align 4
  %279 = sext i32 %278 to i64
  %280 = mul nsw i64 %279, %21
  %281 = getelementptr inbounds float, float* %277, i64 %280
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds float, float* %281, i64 %283
  %285 = load float, float* %284, align 4
  store float %285, float* %12, align 4
  %286 = load i32, i32* %7, align 4
  store i32 %286, i32* %10, align 4
  br label %287

287:                                              ; preds = %276, %264
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %7, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %7, align 4
  br label %260

291:                                              ; preds = %260
  %292 = load i32, i32* @NELLY_BANDS, align 4
  %293 = sub nsw i32 %292, 1
  store i32 %293, i32* %9, align 4
  br label %294

294:                                              ; preds = %330, %291
  %295 = load i32, i32* %9, align 4
  %296 = icmp sge i32 %295, 0
  br i1 %296, label %297, label %333

297:                                              ; preds = %294
  %298 = load i64**, i64*** @path, align 8
  %299 = load i32, i32* %9, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i64*, i64** %298, i64 %300
  %302 = load i64*, i64** %301, align 8
  %303 = load i32, i32* %10, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i64, i64* %302, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = trunc i64 %306 to i32
  %308 = load i32*, i32** %6, align 8
  %309 = load i32, i32* %9, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32 %307, i32* %311, align 4
  %312 = load i32, i32* %9, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %329

314:                                              ; preds = %297
  %315 = load i32*, i32** @ff_nelly_delta_table, align 8
  %316 = load i64**, i64*** @path, align 8
  %317 = load i32, i32* %9, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i64*, i64** %316, i64 %318
  %320 = load i64*, i64** %319, align 8
  %321 = load i32, i32* %10, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i64, i64* %320, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = getelementptr inbounds i32, i32* %315, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %10, align 4
  %328 = sub nsw i32 %327, %326
  store i32 %328, i32* %10, align 4
  br label %329

329:                                              ; preds = %314, %297
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %9, align 4
  %332 = add nsw i32 %331, -1
  store i32 %332, i32* %9, align 4
  br label %294

333:                                              ; preds = %294
  ret void
}

declare dso_local i32* @uint8_t(i64*) #1

declare dso_local float @distance(i32, float, i32) #1

declare dso_local i32 @FFMAX(i32, float) #1

declare dso_local i32 @FFMIN(i32, float) #1

declare dso_local i64 @isinf(float) #1

declare dso_local i32 @av_assert1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
