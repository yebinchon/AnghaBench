; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_wiener_denoise.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_wiener_denoise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float*, float*, i32, i32, float*, %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, float*)* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, float*)* }

@FCB_TYPE_SILENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, float*, i32, float*)* @wiener_denoise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiener_denoise(%struct.TYPE_7__* %0, i32 %1, float* %2, i32 %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  store float* %4, float** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @FCB_TYPE_SILENCE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %196

22:                                               ; preds = %5
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load float*, float** %24, align 8
  store float* %25, float** %14, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load float*, float** %27, align 8
  store float* %28, float** %15, align 8
  store float 0.000000e+00, float* %16, align 4
  %29 = load float*, float** %14, align 8
  %30 = getelementptr inbounds float, float* %29, i64 0
  store float 1.000000e+00, float* %30, align 4
  %31 = load float*, float** %14, align 8
  %32 = getelementptr inbounds float, float* %31, i64 1
  %33 = load float*, float** %10, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memcpy(float* %32, float* %33, i32 %39)
  %41 = load float*, float** %14, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %41, i64 %46
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 128, %50
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memset(float* %47, i32 0, i32 %55)
  %57 = load float*, float** %10, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call double @tilt_factor(float* %57, i32 %60)
  %62 = fmul double 0x3FE6666666666666, %61
  %63 = load float*, float** %14, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 2
  %68 = call i32 @ff_tilt_compensation(float* %16, double %62, float* %63, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = sub nsw i32 127, %69
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i32 @FFMIN(i32 %70, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = load float*, float** %14, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load float*, float** %15, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @calc_input_response(%struct.TYPE_7__* %74, float* %75, i32 %76, float* %77, i32 %78)
  %80 = load float*, float** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  %84 = load i32, i32* %9, align 4
  %85 = sub nsw i32 128, %84
  %86 = sext i32 %85 to i64
  %87 = mul i64 4, %86
  %88 = trunc i64 %87 to i32
  %89 = call i32 @memset(float* %83, i32 0, i32 %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32 (%struct.TYPE_9__*, float*)*, i32 (%struct.TYPE_9__*, float*)** %92, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 6
  %96 = load float*, float** %8, align 8
  %97 = call i32 %93(%struct.TYPE_9__* %95, float* %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32 (%struct.TYPE_9__*, float*)*, i32 (%struct.TYPE_9__*, float*)** %100, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 6
  %104 = load float*, float** %15, align 8
  %105 = call i32 %101(%struct.TYPE_9__* %103, float* %104)
  %106 = load float*, float** %15, align 8
  %107 = getelementptr inbounds float, float* %106, i64 0
  %108 = load float, float* %107, align 4
  %109 = load float*, float** %8, align 8
  %110 = getelementptr inbounds float, float* %109, i64 0
  %111 = load float, float* %110, align 4
  %112 = fmul float %111, %108
  store float %112, float* %110, align 4
  %113 = load float*, float** %15, align 8
  %114 = getelementptr inbounds float, float* %113, i64 1
  %115 = load float, float* %114, align 4
  %116 = load float*, float** %8, align 8
  %117 = getelementptr inbounds float, float* %116, i64 1
  %118 = load float, float* %117, align 4
  %119 = fmul float %118, %115
  store float %119, float* %117, align 4
  store i32 1, i32* %13, align 4
  br label %120

120:                                              ; preds = %184, %22
  %121 = load i32, i32* %13, align 4
  %122 = icmp slt i32 %121, 64
  br i1 %122, label %123, label %187

123:                                              ; preds = %120
  %124 = load float*, float** %8, align 8
  %125 = load i32, i32* %13, align 4
  %126 = mul nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %124, i64 %127
  %129 = load float, float* %128, align 4
  store float %129, float* %17, align 4
  %130 = load float*, float** %8, align 8
  %131 = load i32, i32* %13, align 4
  %132 = mul nsw i32 %131, 2
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, float* %130, i64 %134
  %136 = load float, float* %135, align 4
  store float %136, float* %18, align 4
  %137 = load float, float* %17, align 4
  %138 = load float*, float** %15, align 8
  %139 = load i32, i32* %13, align 4
  %140 = mul nsw i32 %139, 2
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %138, i64 %141
  %143 = load float, float* %142, align 4
  %144 = fmul float %137, %143
  %145 = load float, float* %18, align 4
  %146 = load float*, float** %15, align 8
  %147 = load i32, i32* %13, align 4
  %148 = mul nsw i32 %147, 2
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %146, i64 %150
  %152 = load float, float* %151, align 4
  %153 = fmul float %145, %152
  %154 = fsub float %144, %153
  %155 = load float*, float** %8, align 8
  %156 = load i32, i32* %13, align 4
  %157 = mul nsw i32 %156, 2
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %155, i64 %158
  store float %154, float* %159, align 4
  %160 = load float, float* %18, align 4
  %161 = load float*, float** %15, align 8
  %162 = load i32, i32* %13, align 4
  %163 = mul nsw i32 %162, 2
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %161, i64 %164
  %166 = load float, float* %165, align 4
  %167 = fmul float %160, %166
  %168 = load float, float* %17, align 4
  %169 = load float*, float** %15, align 8
  %170 = load i32, i32* %13, align 4
  %171 = mul nsw i32 %170, 2
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %169, i64 %173
  %175 = load float, float* %174, align 4
  %176 = fmul float %168, %175
  %177 = fadd float %167, %176
  %178 = load float*, float** %8, align 8
  %179 = load i32, i32* %13, align 4
  %180 = mul nsw i32 %179, 2
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %178, i64 %182
  store float %177, float* %183, align 4
  br label %184

184:                                              ; preds = %123
  %185 = load i32, i32* %13, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %13, align 4
  br label %120

187:                                              ; preds = %120
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i32 (%struct.TYPE_8__*, float*)*, i32 (%struct.TYPE_8__*, float*)** %190, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 5
  %194 = load float*, float** %8, align 8
  %195 = call i32 %191(%struct.TYPE_8__* %193, float* %194)
  br label %196

196:                                              ; preds = %187, %5
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %250

201:                                              ; preds = %196
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @FFMIN(i32 %204, i32 %205)
  store i32 %206, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %207

207:                                              ; preds = %225, %201
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* %12, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %228

211:                                              ; preds = %207
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 4
  %214 = load float*, float** %213, align 8
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %214, i64 %216
  %218 = load float, float* %217, align 4
  %219 = load float*, float** %8, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, float* %219, i64 %221
  %223 = load float, float* %222, align 4
  %224 = fadd float %223, %218
  store float %224, float* %222, align 4
  br label %225

225:                                              ; preds = %211
  %226 = load i32, i32* %13, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %13, align 4
  br label %207

228:                                              ; preds = %207
  %229 = load i32, i32* %12, align 4
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = sub nsw i32 %232, %229
  store i32 %233, i32* %231, align 4
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 4
  %236 = load float*, float** %235, align 8
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 4
  %239 = load float*, float** %238, align 8
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %239, i64 %241
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = mul i64 4, %246
  %248 = trunc i64 %247 to i32
  %249 = call i32 @memmove(float* %236, float* %242, i32 %248)
  br label %250

250:                                              ; preds = %228, %196
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* @FCB_TYPE_SILENCE, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %254, label %311

254:                                              ; preds = %250
  %255 = load i32, i32* %11, align 4
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @FFMIN(i32 %255, i32 %258)
  store i32 %259, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %260

260:                                              ; preds = %280, %254
  %261 = load i32, i32* %13, align 4
  %262 = load i32, i32* %12, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %283

264:                                              ; preds = %260
  %265 = load float*, float** %8, align 8
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* %13, align 4
  %268 = add nsw i32 %266, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds float, float* %265, i64 %269
  %271 = load float, float* %270, align 4
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 4
  %274 = load float*, float** %273, align 8
  %275 = load i32, i32* %13, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds float, float* %274, i64 %276
  %278 = load float, float* %277, align 4
  %279 = fadd float %278, %271
  store float %279, float* %277, align 4
  br label %280

280:                                              ; preds = %264
  %281 = load i32, i32* %13, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %13, align 4
  br label %260

283:                                              ; preds = %260
  %284 = load i32, i32* %12, align 4
  %285 = load i32, i32* %11, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %310

287:                                              ; preds = %283
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 4
  %290 = load float*, float** %289, align 8
  %291 = load i32, i32* %12, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds float, float* %290, i64 %292
  %294 = load float*, float** %8, align 8
  %295 = load i32, i32* %9, align 4
  %296 = load i32, i32* %12, align 4
  %297 = add nsw i32 %295, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float, float* %294, i64 %298
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* %12, align 4
  %302 = sub nsw i32 %300, %301
  %303 = sext i32 %302 to i64
  %304 = mul i64 4, %303
  %305 = trunc i64 %304 to i32
  %306 = call i32 @memcpy(float* %293, float* %299, i32 %305)
  %307 = load i32, i32* %11, align 4
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 3
  store i32 %307, i32* %309, align 4
  br label %310

310:                                              ; preds = %287, %283
  br label %311

311:                                              ; preds = %310, %250
  ret void
}

declare dso_local i32 @memcpy(float*, float*, i32) #1

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @ff_tilt_compensation(float*, double, float*, i32) #1

declare dso_local double @tilt_factor(float*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @calc_input_response(%struct.TYPE_7__*, float*, i32, float*, i32) #1

declare dso_local i32 @memmove(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
