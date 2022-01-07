; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anlmdn.c_filter_channel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anlmdn.c_filter_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, float, i32, float, float*, %struct.TYPE_10__, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { float (float*, float*, i32)*, i32 (float*, float*, i32, i32, i32, i32)* }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_12__ = type { i64* }

@WEIGHT_LUT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32, i32)* @filter_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_channel(%struct.TYPE_13__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float, align 4
  %17 = alloca float*, align 8
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  %27 = alloca float, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %9, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %10, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %11, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %13, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 11
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to float*
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  store float* %54, float** %14, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 10
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to float*
  store float* %64, float** %15, align 8
  %65 = load i32, i32* %12, align 4
  %66 = mul nsw i32 4, %65
  %67 = add nsw i32 %66, 2
  %68 = sitofp i32 %67 to float
  %69 = fdiv float 6.553600e+04, %68
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 8
  %73 = call float @sqrtf(i32 %72)
  %74 = fdiv float %69, %73
  store float %74, float* %16, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to float*
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %82, i64 %86
  store float* %87, float** %17, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  %90 = load float, float* %89, align 8
  store float %90, float* %18, align 4
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %19, align 4
  br label %92

92:                                               ; preds = %300, %4
  %93 = load i32, i32* %19, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %96, %97
  %99 = icmp slt i32 %93, %98
  br i1 %99, label %100, label %303

100:                                              ; preds = %92
  store float 0.000000e+00, float* %20, align 4
  store float 0.000000e+00, float* %21, align 4
  store i32 0, i32* %22, align 4
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %143

104:                                              ; preds = %100
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %11, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %23, align 4
  br label %108

108:                                              ; preds = %139, %104
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %110, %111
  %113 = icmp sle i32 %109, %112
  br i1 %113, label %114, label %142

114:                                              ; preds = %108
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %23, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %139

119:                                              ; preds = %114
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load float (float*, float*, i32)*, float (float*, float*, i32)** %122, align 8
  %124 = load float*, float** %14, align 8
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %124, i64 %126
  %128 = load float*, float** %14, align 8
  %129 = load i32, i32* %23, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %128, i64 %130
  %132 = load i32, i32* %12, align 4
  %133 = call float %123(float* %127, float* %131, i32 %132)
  %134 = load float*, float** %15, align 8
  %135 = load i32, i32* %22, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %22, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds float, float* %134, i64 %137
  store float %133, float* %138, align 4
  br label %139

139:                                              ; preds = %119, %118
  %140 = load i32, i32* %23, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %23, align 4
  br label %108

142:                                              ; preds = %108
  br label %172

143:                                              ; preds = %100
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load i32 (float*, float*, i32, i32, i32, i32)*, i32 (float*, float*, i32, i32, i32, i32)** %146, align 8
  %148 = load float*, float** %15, align 8
  %149 = load float*, float** %14, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %11, align 4
  %155 = sub nsw i32 %153, %154
  %156 = call i32 %147(float* %148, float* %149, i32 %150, i32 %151, i32 %152, i32 %155)
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i32 (float*, float*, i32, i32, i32, i32)*, i32 (float*, float*, i32, i32, i32, i32)** %159, align 8
  %161 = load float*, float** %15, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %161, i64 %163
  %165 = load float*, float** %14, align 8
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* %19, align 4
  %170 = add nsw i32 %169, 1
  %171 = call i32 %160(float* %164, float* %165, i32 %166, i32 %167, i32 %168, i32 %170)
  br label %172

172:                                              ; preds = %143, %142
  store i32 0, i32* %24, align 4
  br label %173

173:                                              ; preds = %247, %172
  %174 = load i32, i32* %24, align 4
  %175 = load i32, i32* %11, align 4
  %176 = mul nsw i32 2, %175
  %177 = icmp slt i32 %174, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  br label %184

184:                                              ; preds = %178, %173
  %185 = phi i1 [ false, %173 ], [ %183, %178 ]
  br i1 %185, label %186, label %250

186:                                              ; preds = %184
  %187 = load float*, float** %15, align 8
  %188 = load i32, i32* %24, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  %191 = load float, float* %190, align 4
  store float %191, float* %25, align 4
  %192 = load float, float* %25, align 4
  %193 = fcmp olt float %192, 0.000000e+00
  br i1 %193, label %194, label %199

194:                                              ; preds = %186
  %195 = load float*, float** %15, align 8
  %196 = load i32, i32* %24, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %195, i64 %197
  store float 0.000000e+00, float* %198, align 4
  br label %247

199:                                              ; preds = %186
  %200 = load float, float* %25, align 4
  %201 = load float, float* %16, align 4
  %202 = fmul float %200, %201
  store float %202, float* %27, align 4
  %203 = load float, float* %27, align 4
  %204 = load float, float* %18, align 4
  %205 = fcmp oge float %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  br label %247

207:                                              ; preds = %199
  %208 = load float, float* %27, align 4
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 6
  %211 = load float, float* %210, align 8
  %212 = fmul float %208, %211
  %213 = fptoui float %212 to i32
  store i32 %213, i32* %26, align 4
  %214 = load i32, i32* %26, align 4
  %215 = load i32, i32* @WEIGHT_LUT_SIZE, align 4
  %216 = icmp ult i32 %214, %215
  %217 = zext i1 %216 to i32
  %218 = call i32 @av_assert2(i32 %217)
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 7
  %221 = load float*, float** %220, align 8
  %222 = load i32, i32* %26, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds float, float* %221, i64 %223
  %225 = load float, float* %224, align 4
  store float %225, float* %27, align 4
  %226 = load float, float* %27, align 4
  %227 = load float*, float** %14, align 8
  %228 = load i32, i32* %19, align 4
  %229 = load i32, i32* %11, align 4
  %230 = sub nsw i32 %228, %229
  %231 = load i32, i32* %24, align 4
  %232 = add nsw i32 %230, %231
  %233 = load i32, i32* %24, align 4
  %234 = load i32, i32* %11, align 4
  %235 = icmp sge i32 %233, %234
  %236 = zext i1 %235 to i32
  %237 = add nsw i32 %232, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %227, i64 %238
  %240 = load float, float* %239, align 4
  %241 = fmul float %226, %240
  %242 = load float, float* %20, align 4
  %243 = fadd float %242, %241
  store float %243, float* %20, align 4
  %244 = load float, float* %27, align 4
  %245 = load float, float* %21, align 4
  %246 = fadd float %245, %244
  store float %246, float* %21, align 4
  br label %247

247:                                              ; preds = %207, %206, %194
  %248 = load i32, i32* %24, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %24, align 4
  br label %173

250:                                              ; preds = %184
  %251 = load float*, float** %14, align 8
  %252 = load i32, i32* %19, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float, float* %251, i64 %253
  %255 = load float, float* %254, align 4
  %256 = load float, float* %20, align 4
  %257 = fadd float %256, %255
  store float %257, float* %20, align 4
  %258 = load float, float* %21, align 4
  %259 = fadd float %258, 1.000000e+00
  store float %259, float* %21, align 4
  %260 = load i32, i32* %13, align 4
  switch i32 %260, label %299 [
    i32 130, label %261
    i32 128, label %273
    i32 129, label %283
  ]

261:                                              ; preds = %250
  %262 = load float*, float** %14, align 8
  %263 = load i32, i32* %19, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds float, float* %262, i64 %264
  %266 = load float, float* %265, align 4
  %267 = load float*, float** %17, align 8
  %268 = load i32, i32* %19, align 4
  %269 = load i32, i32* %11, align 4
  %270 = sub nsw i32 %268, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %267, i64 %271
  store float %266, float* %272, align 4
  br label %299

273:                                              ; preds = %250
  %274 = load float, float* %20, align 4
  %275 = load float, float* %21, align 4
  %276 = fdiv float %274, %275
  %277 = load float*, float** %17, align 8
  %278 = load i32, i32* %19, align 4
  %279 = load i32, i32* %11, align 4
  %280 = sub nsw i32 %278, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds float, float* %277, i64 %281
  store float %276, float* %282, align 4
  br label %299

283:                                              ; preds = %250
  %284 = load float*, float** %14, align 8
  %285 = load i32, i32* %19, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds float, float* %284, i64 %286
  %288 = load float, float* %287, align 4
  %289 = load float, float* %20, align 4
  %290 = load float, float* %21, align 4
  %291 = fdiv float %289, %290
  %292 = fsub float %288, %291
  %293 = load float*, float** %17, align 8
  %294 = load i32, i32* %19, align 4
  %295 = load i32, i32* %11, align 4
  %296 = sub nsw i32 %294, %295
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds float, float* %293, i64 %297
  store float %292, float* %298, align 4
  br label %299

299:                                              ; preds = %250, %283, %273, %261
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %19, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %19, align 4
  br label %92

303:                                              ; preds = %92
  ret i32 0
}

declare dso_local float @sqrtf(i32) #1

declare dso_local i32 @av_assert2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
