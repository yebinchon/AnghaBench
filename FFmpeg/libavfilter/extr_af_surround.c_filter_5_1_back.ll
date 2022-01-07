; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_filter_5_1_back.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_filter_5_1_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_8__*, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32)*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64* }

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @filter_5_1_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_5_1_back(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  %42 = alloca float, align 4
  %43 = alloca float, align 4
  %44 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %3, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to float*
  store float* %55, float** %4, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to float*
  store float* %63, float** %5, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 2
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to float*
  store float* %71, float** %6, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 3
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to float*
  store float* %79, float** %7, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 4
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to float*
  store float* %87, float** %8, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 5
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to float*
  store float* %95, float** %9, align 8
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %315, %1
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %318

102:                                              ; preds = %96
  %103 = load float*, float** %4, align 8
  %104 = load i32, i32* %10, align 4
  %105 = mul nsw i32 2, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %103, i64 %106
  %108 = load float, float* %107, align 4
  store float %108, float* %11, align 4
  %109 = load float*, float** %5, align 8
  %110 = load i32, i32* %10, align 4
  %111 = mul nsw i32 2, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %109, i64 %112
  %114 = load float, float* %113, align 4
  store float %114, float* %12, align 4
  %115 = load float*, float** %4, align 8
  %116 = load i32, i32* %10, align 4
  %117 = mul nsw i32 2, %116
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %115, i64 %119
  %121 = load float, float* %120, align 4
  store float %121, float* %13, align 4
  %122 = load float*, float** %5, align 8
  %123 = load i32, i32* %10, align 4
  %124 = mul nsw i32 2, %123
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %122, i64 %126
  %128 = load float, float* %127, align 4
  store float %128, float* %14, align 4
  %129 = load float*, float** %6, align 8
  %130 = load i32, i32* %10, align 4
  %131 = mul nsw i32 2, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %129, i64 %132
  %134 = load float, float* %133, align 4
  store float %134, float* %15, align 4
  %135 = load float*, float** %6, align 8
  %136 = load i32, i32* %10, align 4
  %137 = mul nsw i32 2, %136
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %135, i64 %139
  %141 = load float, float* %140, align 4
  store float %141, float* %16, align 4
  %142 = load float*, float** %7, align 8
  %143 = load i32, i32* %10, align 4
  %144 = mul nsw i32 2, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %142, i64 %145
  %147 = load float, float* %146, align 4
  store float %147, float* %17, align 4
  %148 = load float*, float** %7, align 8
  %149 = load i32, i32* %10, align 4
  %150 = mul nsw i32 2, %149
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %148, i64 %152
  %154 = load float, float* %153, align 4
  store float %154, float* %18, align 4
  %155 = load float*, float** %8, align 8
  %156 = load i32, i32* %10, align 4
  %157 = mul nsw i32 2, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %155, i64 %158
  %160 = load float, float* %159, align 4
  store float %160, float* %19, align 4
  %161 = load float*, float** %8, align 8
  %162 = load i32, i32* %10, align 4
  %163 = mul nsw i32 2, %162
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %161, i64 %165
  %167 = load float, float* %166, align 4
  store float %167, float* %20, align 4
  %168 = load float*, float** %9, align 8
  %169 = load i32, i32* %10, align 4
  %170 = mul nsw i32 2, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %168, i64 %171
  %173 = load float, float* %172, align 4
  store float %173, float* %21, align 4
  %174 = load float*, float** %9, align 8
  %175 = load i32, i32* %10, align 4
  %176 = mul nsw i32 2, %175
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds float, float* %174, i64 %178
  %180 = load float, float* %179, align 4
  store float %180, float* %22, align 4
  %181 = load float, float* %11, align 4
  %182 = load float, float* %13, align 4
  %183 = call float @hypotf(float %181, float %182) #4
  store float %183, float* %23, align 4
  %184 = load float, float* %12, align 4
  %185 = load float, float* %14, align 4
  %186 = call float @hypotf(float %184, float %185) #4
  store float %186, float* %24, align 4
  %187 = load float, float* %13, align 4
  %188 = load float, float* %11, align 4
  %189 = call float @atan2f(float %187, float %188) #4
  store float %189, float* %25, align 4
  %190 = load float, float* %14, align 4
  %191 = load float, float* %12, align 4
  %192 = call float @atan2f(float %190, float %191) #4
  store float %192, float* %26, align 4
  %193 = load float, float* %19, align 4
  %194 = load float, float* %20, align 4
  %195 = call float @hypotf(float %193, float %194) #4
  store float %195, float* %27, align 4
  %196 = load float, float* %21, align 4
  %197 = load float, float* %22, align 4
  %198 = call float @hypotf(float %196, float %197) #4
  store float %198, float* %28, align 4
  %199 = load float, float* %20, align 4
  %200 = load float, float* %19, align 4
  %201 = call float @atan2f(float %199, float %200) #4
  store float %201, float* %29, align 4
  %202 = load float, float* %22, align 4
  %203 = load float, float* %21, align 4
  %204 = call float @atan2f(float %202, float %203) #4
  store float %204, float* %30, align 4
  %205 = load float, float* %25, align 4
  %206 = load float, float* %29, align 4
  %207 = fsub float %205, %206
  %208 = call float @llvm.fabs.f32(float %207)
  store float %208, float* %31, align 4
  %209 = load float, float* %26, align 4
  %210 = load float, float* %30, align 4
  %211 = fsub float %209, %210
  %212 = call float @llvm.fabs.f32(float %211)
  store float %212, float* %32, align 4
  %213 = load float, float* %23, align 4
  %214 = load float, float* %27, align 4
  %215 = fadd float %213, %214
  store float %215, float* %33, align 4
  %216 = load float, float* %24, align 4
  %217 = load float, float* %28, align 4
  %218 = fadd float %216, %217
  store float %218, float* %34, align 4
  %219 = load float, float* %33, align 4
  %220 = fpext float %219 to double
  %221 = fcmp olt double %220, 0x3EB0C6F7A0B5ED8D
  br i1 %221, label %222, label %226

222:                                              ; preds = %102
  %223 = load float, float* %23, align 4
  %224 = load float, float* %27, align 4
  %225 = call float @FFDIFFSIGN(float %223, float %224)
  br label %232

226:                                              ; preds = %102
  %227 = load float, float* %23, align 4
  %228 = load float, float* %27, align 4
  %229 = fsub float %227, %228
  %230 = load float, float* %33, align 4
  %231 = fdiv float %229, %230
  br label %232

232:                                              ; preds = %226, %222
  %233 = phi float [ %225, %222 ], [ %231, %226 ]
  store float %233, float* %35, align 4
  %234 = load float, float* %34, align 4
  %235 = fpext float %234 to double
  %236 = fcmp olt double %235, 0x3EB0C6F7A0B5ED8D
  br i1 %236, label %237, label %241

237:                                              ; preds = %232
  %238 = load float, float* %24, align 4
  %239 = load float, float* %28, align 4
  %240 = call float @FFDIFFSIGN(float %238, float %239)
  br label %247

241:                                              ; preds = %232
  %242 = load float, float* %24, align 4
  %243 = load float, float* %28, align 4
  %244 = fsub float %242, %243
  %245 = load float, float* %34, align 4
  %246 = fdiv float %244, %245
  br label %247

247:                                              ; preds = %241, %237
  %248 = phi float [ %240, %237 ], [ %246, %241 ]
  store float %248, float* %36, align 4
  %249 = load float, float* %23, align 4
  %250 = load float, float* %27, align 4
  %251 = call float @hypotf(float %249, float %250) #4
  store float %251, float* %37, align 4
  %252 = load float, float* %24, align 4
  %253 = load float, float* %28, align 4
  %254 = call float @hypotf(float %252, float %253) #4
  store float %254, float* %38, align 4
  %255 = load float, float* %13, align 4
  %256 = load float, float* %20, align 4
  %257 = fadd float %255, %256
  %258 = load float, float* %11, align 4
  %259 = load float, float* %19, align 4
  %260 = fadd float %258, %259
  %261 = call float @atan2f(float %257, float %260) #4
  store float %261, float* %39, align 4
  %262 = load float, float* %14, align 4
  %263 = load float, float* %22, align 4
  %264 = fadd float %262, %263
  %265 = load float, float* %12, align 4
  %266 = load float, float* %21, align 4
  %267 = fadd float %265, %266
  %268 = call float @atan2f(float %264, float %267) #4
  store float %268, float* %40, align 4
  %269 = load float, float* %31, align 4
  %270 = load float, float* @M_PI, align 4
  %271 = fcmp ogt float %269, %270
  br i1 %271, label %272, label %277

272:                                              ; preds = %247
  %273 = load float, float* @M_PI, align 4
  %274 = fmul float 2.000000e+00, %273
  %275 = load float, float* %31, align 4
  %276 = fsub float %274, %275
  store float %276, float* %31, align 4
  br label %277

277:                                              ; preds = %272, %247
  %278 = load float, float* %32, align 4
  %279 = load float, float* @M_PI, align 4
  %280 = fcmp ogt float %278, %279
  br i1 %280, label %281, label %286

281:                                              ; preds = %277
  %282 = load float, float* @M_PI, align 4
  %283 = fmul float 2.000000e+00, %282
  %284 = load float, float* %32, align 4
  %285 = fsub float %283, %284
  store float %285, float* %32, align 4
  br label %286

286:                                              ; preds = %281, %277
  %287 = load float, float* %35, align 4
  %288 = load float, float* %31, align 4
  %289 = call i32 @stereo_position(float %287, float %288, float* %41, float* %42)
  %290 = load float, float* %36, align 4
  %291 = load float, float* %32, align 4
  %292 = call i32 @stereo_position(float %290, float %291, float* %43, float* %44)
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 1
  %295 = load i32 (%struct.TYPE_8__*, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32)*, i32 (%struct.TYPE_8__*, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32)** %294, align 8
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %297 = load float, float* %15, align 4
  %298 = load float, float* %16, align 4
  %299 = load float, float* %17, align 4
  %300 = load float, float* %18, align 4
  %301 = load float, float* %37, align 4
  %302 = load float, float* %38, align 4
  %303 = load float, float* %25, align 4
  %304 = load float, float* %26, align 4
  %305 = load float, float* %29, align 4
  %306 = load float, float* %30, align 4
  %307 = load float, float* %39, align 4
  %308 = load float, float* %40, align 4
  %309 = load float, float* %41, align 4
  %310 = load float, float* %42, align 4
  %311 = load float, float* %43, align 4
  %312 = load float, float* %44, align 4
  %313 = load i32, i32* %10, align 4
  %314 = call i32 %295(%struct.TYPE_8__* %296, float %297, float %298, float %299, float %300, float %301, float %302, float %303, float %304, float %305, float %306, float %307, float %308, float %309, float %310, float %311, float %312, i32 %313)
  br label %315

315:                                              ; preds = %286
  %316 = load i32, i32* %10, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %10, align 4
  br label %96

318:                                              ; preds = %96
  ret void
}

; Function Attrs: nounwind
declare dso_local float @hypotf(float, float) #1

; Function Attrs: nounwind
declare dso_local float @atan2f(float, float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local float @FFDIFFSIGN(float, float) #3

declare dso_local i32 @stereo_position(float, float, float*, float*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
