; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_cube3x2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_cube3x2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float, float, float, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, float*, i32, i32, [4 x i32]*, [4 x i32]*, float*, float*)* @xyz_to_cube3x2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xyz_to_cube3x2(%struct.TYPE_5__* %0, float* %1, i32 %2, i32 %3, [4 x i32]* %4, [4 x i32]* %5, float* %6, float* %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32]*, align 8
  %14 = alloca [4 x i32]*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
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
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store float* %1, float** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store [4 x i32]* %4, [4 x i32]** %13, align 8
  store [4 x i32]* %5, [4 x i32]** %14, align 8
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load float, float* %40, align 8
  %42 = fcmp ogt float %41, 0.000000e+00
  br i1 %42, label %43, label %53

43:                                               ; preds = %8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load float, float* %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load float, float* %48, align 4
  %50 = fdiv float %49, 3.000000e+00
  %51 = fdiv float %46, %50
  %52 = fsub float 1.000000e+00, %51
  br label %58

53:                                               ; preds = %8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load float, float* %55, align 8
  %57 = fsub float 1.000000e+00, %56
  br label %58

58:                                               ; preds = %53, %43
  %59 = phi float [ %52, %43 ], [ %57, %53 ]
  store float %59, float* %17, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load float, float* %61, align 8
  %63 = fcmp ogt float %62, 0.000000e+00
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load float, float* %66, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load float, float* %69, align 4
  %71 = fdiv float %70, 2.000000e+00
  %72 = fdiv float %67, %71
  %73 = fsub float 1.000000e+00, %72
  br label %79

74:                                               ; preds = %58
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load float, float* %76, align 8
  %78 = fsub float 1.000000e+00, %77
  br label %79

79:                                               ; preds = %74, %64
  %80 = phi float [ %73, %64 ], [ %78, %74 ]
  store float %80, float* %18, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sitofp i32 %81 to float
  %83 = fdiv float %82, 3.000000e+00
  store float %83, float* %19, align 4
  %84 = load i32, i32* %12, align 4
  %85 = sitofp i32 %84 to float
  %86 = fdiv float %85, 2.000000e+00
  store float %86, float* %20, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %88 = load float*, float** %10, align 8
  %89 = call i32 @xyz_to_cube(%struct.TYPE_5__* %87, float* %88, float* %21, float* %22, i32* %27)
  %90 = load float, float* %17, align 4
  %91 = load float, float* %21, align 4
  %92 = fmul float %91, %90
  store float %92, float* %21, align 4
  %93 = load float, float* %18, align 4
  %94 = load float, float* %22, align 4
  %95 = fmul float %94, %93
  store float %95, float* %22, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %27, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %28, align 4
  %103 = load i32, i32* %28, align 4
  %104 = srem i32 %103, 3
  store i32 %104, i32* %29, align 4
  %105 = load i32, i32* %28, align 4
  %106 = sdiv i32 %105, 3
  store i32 %106, i32* %30, align 4
  %107 = load float, float* %19, align 4
  %108 = load i32, i32* %29, align 4
  %109 = add nsw i32 %108, 1
  %110 = sitofp i32 %109 to float
  %111 = fmul float %107, %110
  %112 = call i32 @ceilf(float %111)
  %113 = load float, float* %19, align 4
  %114 = load i32, i32* %29, align 4
  %115 = sitofp i32 %114 to float
  %116 = fmul float %113, %115
  %117 = call i32 @ceilf(float %116)
  %118 = sub nsw i32 %112, %117
  store i32 %118, i32* %25, align 4
  %119 = load float, float* %20, align 4
  %120 = load i32, i32* %30, align 4
  %121 = add nsw i32 %120, 1
  %122 = sitofp i32 %121 to float
  %123 = fmul float %119, %122
  %124 = call i32 @ceilf(float %123)
  %125 = load float, float* %20, align 4
  %126 = load i32, i32* %30, align 4
  %127 = sitofp i32 %126 to float
  %128 = fmul float %125, %127
  %129 = call i32 @ceilf(float %128)
  %130 = sub nsw i32 %124, %129
  store i32 %130, i32* %26, align 4
  %131 = load i32, i32* %25, align 4
  %132 = sitofp i32 %131 to float
  %133 = fmul float 5.000000e-01, %132
  %134 = load float, float* %21, align 4
  %135 = fadd float %134, 1.000000e+00
  %136 = fmul float %133, %135
  %137 = fsub float %136, 5.000000e-01
  store float %137, float* %21, align 4
  %138 = load i32, i32* %26, align 4
  %139 = sitofp i32 %138 to float
  %140 = fmul float 5.000000e-01, %139
  %141 = load float, float* %22, align 4
  %142 = fadd float %141, 1.000000e+00
  %143 = fmul float %140, %142
  %144 = fsub float %143, 5.000000e-01
  store float %144, float* %22, align 4
  %145 = load float, float* %21, align 4
  %146 = call i32 @floorf(float %145)
  store i32 %146, i32* %23, align 4
  %147 = load float, float* %22, align 4
  %148 = call i32 @floorf(float %147)
  store i32 %148, i32* %24, align 4
  %149 = load float, float* %21, align 4
  %150 = load i32, i32* %23, align 4
  %151 = sitofp i32 %150 to float
  %152 = fsub float %149, %151
  %153 = load float*, float** %15, align 8
  store float %152, float* %153, align 4
  %154 = load float, float* %22, align 4
  %155 = load i32, i32* %24, align 4
  %156 = sitofp i32 %155 to float
  %157 = fsub float %154, %156
  %158 = load float*, float** %16, align 8
  store float %157, float* %158, align 4
  store i32 -1, i32* %31, align 4
  br label %159

159:                                              ; preds = %319, %79
  %160 = load i32, i32* %31, align 4
  %161 = icmp slt i32 %160, 3
  br i1 %161, label %162, label %322

162:                                              ; preds = %159
  store i32 -1, i32* %32, align 4
  br label %163

163:                                              ; preds = %315, %162
  %164 = load i32, i32* %32, align 4
  %165 = icmp slt i32 %164, 3
  br i1 %165, label %166, label %318

166:                                              ; preds = %163
  %167 = load i32, i32* %23, align 4
  %168 = load i32, i32* %32, align 4
  %169 = add nsw i32 %167, %168
  store i32 %169, i32* %33, align 4
  %170 = load i32, i32* %24, align 4
  %171 = load i32, i32* %31, align 4
  %172 = add nsw i32 %170, %171
  store i32 %172, i32* %34, align 4
  %173 = load i32, i32* %33, align 4
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %208

175:                                              ; preds = %166
  %176 = load i32, i32* %33, align 4
  %177 = load i32, i32* %25, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %208

179:                                              ; preds = %175
  %180 = load i32, i32* %34, align 4
  %181 = icmp sge i32 %180, 0
  br i1 %181, label %182, label %208

182:                                              ; preds = %179
  %183 = load i32, i32* %34, align 4
  %184 = load i32, i32* %26, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %208

186:                                              ; preds = %182
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %27, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %28, align 4
  %194 = load i32, i32* %28, align 4
  %195 = srem i32 %194, 3
  store i32 %195, i32* %29, align 4
  %196 = load i32, i32* %28, align 4
  %197 = sdiv i32 %196, 3
  store i32 %197, i32* %30, align 4
  %198 = load float, float* %19, align 4
  %199 = load i32, i32* %29, align 4
  %200 = sitofp i32 %199 to float
  %201 = fmul float %198, %200
  %202 = call i32 @ceilf(float %201)
  store i32 %202, i32* %35, align 4
  %203 = load float, float* %20, align 4
  %204 = load i32, i32* %30, align 4
  %205 = sitofp i32 %204 to float
  %206 = fmul float %203, %205
  %207 = call i32 @ceilf(float %206)
  store i32 %207, i32* %36, align 4
  br label %290

208:                                              ; preds = %182, %179, %175, %166
  %209 = load i32, i32* %33, align 4
  %210 = sitofp i32 %209 to float
  %211 = fmul float 2.000000e+00, %210
  %212 = load i32, i32* %25, align 4
  %213 = sitofp i32 %212 to float
  %214 = fdiv float %211, %213
  %215 = fsub float %214, 1.000000e+00
  store float %215, float* %21, align 4
  %216 = load i32, i32* %34, align 4
  %217 = sitofp i32 %216 to float
  %218 = fmul float 2.000000e+00, %217
  %219 = load i32, i32* %26, align 4
  %220 = sitofp i32 %219 to float
  %221 = fdiv float %218, %220
  %222 = fsub float %221, 1.000000e+00
  store float %222, float* %22, align 4
  %223 = load float, float* %17, align 4
  %224 = load float, float* %21, align 4
  %225 = fdiv float %224, %223
  store float %225, float* %21, align 4
  %226 = load float, float* %18, align 4
  %227 = load float, float* %22, align 4
  %228 = fdiv float %227, %226
  store float %228, float* %22, align 4
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %230 = load float, float* %21, align 4
  %231 = load float, float* %22, align 4
  %232 = load i32, i32* %27, align 4
  %233 = call i32 @process_cube_coordinates(%struct.TYPE_5__* %229, float %230, float %231, i32 %232, float* %21, float* %22, i32* %28)
  %234 = load float, float* %17, align 4
  %235 = load float, float* %21, align 4
  %236 = fmul float %235, %234
  store float %236, float* %21, align 4
  %237 = load float, float* %18, align 4
  %238 = load float, float* %22, align 4
  %239 = fmul float %238, %237
  store float %239, float* %22, align 4
  %240 = load i32, i32* %28, align 4
  %241 = srem i32 %240, 3
  store i32 %241, i32* %29, align 4
  %242 = load i32, i32* %28, align 4
  %243 = sdiv i32 %242, 3
  store i32 %243, i32* %30, align 4
  %244 = load float, float* %19, align 4
  %245 = load i32, i32* %29, align 4
  %246 = sitofp i32 %245 to float
  %247 = fmul float %244, %246
  %248 = call i32 @ceilf(float %247)
  store i32 %248, i32* %35, align 4
  %249 = load float, float* %20, align 4
  %250 = load i32, i32* %30, align 4
  %251 = sitofp i32 %250 to float
  %252 = fmul float %249, %251
  %253 = call i32 @ceilf(float %252)
  store i32 %253, i32* %36, align 4
  %254 = load float, float* %19, align 4
  %255 = load i32, i32* %29, align 4
  %256 = add nsw i32 %255, 1
  %257 = sitofp i32 %256 to float
  %258 = fmul float %254, %257
  %259 = call i32 @ceilf(float %258)
  %260 = load i32, i32* %35, align 4
  %261 = sub nsw i32 %259, %260
  store i32 %261, i32* %37, align 4
  %262 = load float, float* %20, align 4
  %263 = load i32, i32* %30, align 4
  %264 = add nsw i32 %263, 1
  %265 = sitofp i32 %264 to float
  %266 = fmul float %262, %265
  %267 = call i32 @ceilf(float %266)
  %268 = load i32, i32* %36, align 4
  %269 = sub nsw i32 %267, %268
  store i32 %269, i32* %38, align 4
  %270 = load i32, i32* %37, align 4
  %271 = sitofp i32 %270 to float
  %272 = fmul float 5.000000e-01, %271
  %273 = load float, float* %21, align 4
  %274 = fadd float %273, 1.000000e+00
  %275 = fmul float %272, %274
  %276 = call i32 @roundf(float %275)
  %277 = load i32, i32* %37, align 4
  %278 = sub nsw i32 %277, 1
  %279 = call i32 @av_clip(i32 %276, i32 0, i32 %278)
  store i32 %279, i32* %33, align 4
  %280 = load i32, i32* %38, align 4
  %281 = sitofp i32 %280 to float
  %282 = fmul float 5.000000e-01, %281
  %283 = load float, float* %22, align 4
  %284 = fadd float %283, 1.000000e+00
  %285 = fmul float %282, %284
  %286 = call i32 @roundf(float %285)
  %287 = load i32, i32* %38, align 4
  %288 = sub nsw i32 %287, 1
  %289 = call i32 @av_clip(i32 %286, i32 0, i32 %288)
  store i32 %289, i32* %34, align 4
  br label %290

290:                                              ; preds = %208, %186
  %291 = load i32, i32* %35, align 4
  %292 = load i32, i32* %33, align 4
  %293 = add nsw i32 %291, %292
  %294 = load [4 x i32]*, [4 x i32]** %13, align 8
  %295 = load i32, i32* %31, align 4
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [4 x i32], [4 x i32]* %294, i64 %297
  %299 = load i32, i32* %32, align 4
  %300 = add nsw i32 %299, 1
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [4 x i32], [4 x i32]* %298, i64 0, i64 %301
  store i32 %293, i32* %302, align 4
  %303 = load i32, i32* %36, align 4
  %304 = load i32, i32* %34, align 4
  %305 = add nsw i32 %303, %304
  %306 = load [4 x i32]*, [4 x i32]** %14, align 8
  %307 = load i32, i32* %31, align 4
  %308 = add nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [4 x i32], [4 x i32]* %306, i64 %309
  %311 = load i32, i32* %32, align 4
  %312 = add nsw i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [4 x i32], [4 x i32]* %310, i64 0, i64 %313
  store i32 %305, i32* %314, align 4
  br label %315

315:                                              ; preds = %290
  %316 = load i32, i32* %32, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %32, align 4
  br label %163

318:                                              ; preds = %163
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %31, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %31, align 4
  br label %159

322:                                              ; preds = %159
  ret void
}

declare dso_local i32 @xyz_to_cube(%struct.TYPE_5__*, float*, float*, float*, i32*) #1

declare dso_local i32 @ceilf(float) #1

declare dso_local i32 @floorf(float) #1

declare dso_local i32 @process_cube_coordinates(%struct.TYPE_5__*, float, float, i32, float*, float*, i32*) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @roundf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
