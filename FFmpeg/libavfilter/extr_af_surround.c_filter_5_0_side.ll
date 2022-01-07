; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_filter_5_0_side.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_filter_5_0_side.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_8__*, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32)*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64* }

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @filter_5_0_side to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_5_0_side(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
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
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %3, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to float*
  store float* %52, float** %4, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to float*
  store float* %60, float** %5, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 2
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to float*
  store float* %68, float** %6, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 3
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to float*
  store float* %76, float** %7, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 4
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to float*
  store float* %84, float** %8, align 8
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %289, %1
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %292

91:                                               ; preds = %85
  %92 = load float*, float** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = mul nsw i32 2, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %92, i64 %95
  %97 = load float, float* %96, align 4
  store float %97, float* %10, align 4
  %98 = load float*, float** %5, align 8
  %99 = load i32, i32* %9, align 4
  %100 = mul nsw i32 2, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %98, i64 %101
  %103 = load float, float* %102, align 4
  store float %103, float* %11, align 4
  %104 = load float*, float** %4, align 8
  %105 = load i32, i32* %9, align 4
  %106 = mul nsw i32 2, %105
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %104, i64 %108
  %110 = load float, float* %109, align 4
  store float %110, float* %12, align 4
  %111 = load float*, float** %5, align 8
  %112 = load i32, i32* %9, align 4
  %113 = mul nsw i32 2, %112
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %111, i64 %115
  %117 = load float, float* %116, align 4
  store float %117, float* %13, align 4
  %118 = load float*, float** %6, align 8
  %119 = load i32, i32* %9, align 4
  %120 = mul nsw i32 2, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %118, i64 %121
  %123 = load float, float* %122, align 4
  store float %123, float* %14, align 4
  %124 = load float*, float** %6, align 8
  %125 = load i32, i32* %9, align 4
  %126 = mul nsw i32 2, %125
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %124, i64 %128
  %130 = load float, float* %129, align 4
  store float %130, float* %15, align 4
  %131 = load float*, float** %7, align 8
  %132 = load i32, i32* %9, align 4
  %133 = mul nsw i32 2, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, float* %131, i64 %134
  %136 = load float, float* %135, align 4
  store float %136, float* %16, align 4
  %137 = load float*, float** %7, align 8
  %138 = load i32, i32* %9, align 4
  %139 = mul nsw i32 2, %138
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %137, i64 %141
  %143 = load float, float* %142, align 4
  store float %143, float* %17, align 4
  %144 = load float*, float** %8, align 8
  %145 = load i32, i32* %9, align 4
  %146 = mul nsw i32 2, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %144, i64 %147
  %149 = load float, float* %148, align 4
  store float %149, float* %18, align 4
  %150 = load float*, float** %8, align 8
  %151 = load i32, i32* %9, align 4
  %152 = mul nsw i32 2, %151
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %150, i64 %154
  %156 = load float, float* %155, align 4
  store float %156, float* %19, align 4
  %157 = load float, float* %10, align 4
  %158 = load float, float* %12, align 4
  %159 = call float @hypotf(float %157, float %158) #4
  store float %159, float* %20, align 4
  %160 = load float, float* %11, align 4
  %161 = load float, float* %13, align 4
  %162 = call float @hypotf(float %160, float %161) #4
  store float %162, float* %21, align 4
  %163 = load float, float* %12, align 4
  %164 = load float, float* %10, align 4
  %165 = call float @atan2f(float %163, float %164) #4
  store float %165, float* %22, align 4
  %166 = load float, float* %13, align 4
  %167 = load float, float* %11, align 4
  %168 = call float @atan2f(float %166, float %167) #4
  store float %168, float* %23, align 4
  %169 = load float, float* %16, align 4
  %170 = load float, float* %17, align 4
  %171 = call float @hypotf(float %169, float %170) #4
  store float %171, float* %24, align 4
  %172 = load float, float* %18, align 4
  %173 = load float, float* %19, align 4
  %174 = call float @hypotf(float %172, float %173) #4
  store float %174, float* %25, align 4
  %175 = load float, float* %17, align 4
  %176 = load float, float* %16, align 4
  %177 = call float @atan2f(float %175, float %176) #4
  store float %177, float* %26, align 4
  %178 = load float, float* %19, align 4
  %179 = load float, float* %18, align 4
  %180 = call float @atan2f(float %178, float %179) #4
  store float %180, float* %27, align 4
  %181 = load float, float* %22, align 4
  %182 = load float, float* %26, align 4
  %183 = fsub float %181, %182
  %184 = call float @llvm.fabs.f32(float %183)
  store float %184, float* %28, align 4
  %185 = load float, float* %23, align 4
  %186 = load float, float* %27, align 4
  %187 = fsub float %185, %186
  %188 = call float @llvm.fabs.f32(float %187)
  store float %188, float* %29, align 4
  %189 = load float, float* %20, align 4
  %190 = load float, float* %24, align 4
  %191 = fadd float %189, %190
  store float %191, float* %30, align 4
  %192 = load float, float* %21, align 4
  %193 = load float, float* %25, align 4
  %194 = fadd float %192, %193
  store float %194, float* %31, align 4
  %195 = load float, float* %30, align 4
  %196 = fpext float %195 to double
  %197 = fcmp olt double %196, 0x3EB0C6F7A0B5ED8D
  br i1 %197, label %198, label %202

198:                                              ; preds = %91
  %199 = load float, float* %20, align 4
  %200 = load float, float* %24, align 4
  %201 = call float @FFDIFFSIGN(float %199, float %200)
  br label %208

202:                                              ; preds = %91
  %203 = load float, float* %20, align 4
  %204 = load float, float* %24, align 4
  %205 = fsub float %203, %204
  %206 = load float, float* %30, align 4
  %207 = fdiv float %205, %206
  br label %208

208:                                              ; preds = %202, %198
  %209 = phi float [ %201, %198 ], [ %207, %202 ]
  store float %209, float* %32, align 4
  %210 = load float, float* %31, align 4
  %211 = fpext float %210 to double
  %212 = fcmp olt double %211, 0x3EB0C6F7A0B5ED8D
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = load float, float* %21, align 4
  %215 = load float, float* %25, align 4
  %216 = call float @FFDIFFSIGN(float %214, float %215)
  br label %223

217:                                              ; preds = %208
  %218 = load float, float* %21, align 4
  %219 = load float, float* %25, align 4
  %220 = fsub float %218, %219
  %221 = load float, float* %31, align 4
  %222 = fdiv float %220, %221
  br label %223

223:                                              ; preds = %217, %213
  %224 = phi float [ %216, %213 ], [ %222, %217 ]
  store float %224, float* %33, align 4
  %225 = load float, float* %20, align 4
  %226 = load float, float* %24, align 4
  %227 = call float @hypotf(float %225, float %226) #4
  store float %227, float* %34, align 4
  %228 = load float, float* %21, align 4
  %229 = load float, float* %25, align 4
  %230 = call float @hypotf(float %228, float %229) #4
  store float %230, float* %35, align 4
  %231 = load float, float* %12, align 4
  %232 = load float, float* %17, align 4
  %233 = fadd float %231, %232
  %234 = load float, float* %10, align 4
  %235 = load float, float* %16, align 4
  %236 = fadd float %234, %235
  %237 = call float @atan2f(float %233, float %236) #4
  store float %237, float* %36, align 4
  %238 = load float, float* %13, align 4
  %239 = load float, float* %19, align 4
  %240 = fadd float %238, %239
  %241 = load float, float* %11, align 4
  %242 = load float, float* %18, align 4
  %243 = fadd float %241, %242
  %244 = call float @atan2f(float %240, float %243) #4
  store float %244, float* %37, align 4
  %245 = load float, float* %28, align 4
  %246 = load float, float* @M_PI, align 4
  %247 = fcmp ogt float %245, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %223
  %249 = load float, float* @M_PI, align 4
  %250 = fmul float 2.000000e+00, %249
  %251 = load float, float* %28, align 4
  %252 = fsub float %250, %251
  store float %252, float* %28, align 4
  br label %253

253:                                              ; preds = %248, %223
  %254 = load float, float* %29, align 4
  %255 = load float, float* @M_PI, align 4
  %256 = fcmp ogt float %254, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %253
  %258 = load float, float* @M_PI, align 4
  %259 = fmul float 2.000000e+00, %258
  %260 = load float, float* %29, align 4
  %261 = fsub float %259, %260
  store float %261, float* %29, align 4
  br label %262

262:                                              ; preds = %257, %253
  %263 = load float, float* %32, align 4
  %264 = load float, float* %28, align 4
  %265 = call i32 @stereo_position(float %263, float %264, float* %38, float* %39)
  %266 = load float, float* %33, align 4
  %267 = load float, float* %29, align 4
  %268 = call i32 @stereo_position(float %266, float %267, float* %40, float* %41)
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 1
  %271 = load i32 (%struct.TYPE_8__*, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32)*, i32 (%struct.TYPE_8__*, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32)** %270, align 8
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %273 = load float, float* %14, align 4
  %274 = load float, float* %15, align 4
  %275 = load float, float* %34, align 4
  %276 = load float, float* %35, align 4
  %277 = load float, float* %22, align 4
  %278 = load float, float* %23, align 4
  %279 = load float, float* %36, align 4
  %280 = load float, float* %37, align 4
  %281 = load float, float* %26, align 4
  %282 = load float, float* %27, align 4
  %283 = load float, float* %38, align 4
  %284 = load float, float* %39, align 4
  %285 = load float, float* %40, align 4
  %286 = load float, float* %41, align 4
  %287 = load i32, i32* %9, align 4
  %288 = call i32 %271(%struct.TYPE_8__* %272, float %273, float %274, float %275, float %276, float %277, float %278, float %279, float %280, float %281, float %282, float %283, float %284, float %285, float %286, i32 %287)
  br label %289

289:                                              ; preds = %262
  %290 = load i32, i32* %9, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %9, align 4
  br label %85

292:                                              ; preds = %85
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
