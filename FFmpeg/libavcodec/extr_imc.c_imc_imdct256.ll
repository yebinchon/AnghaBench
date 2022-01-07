; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imc.c_imc_imdct256.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imc.c_imc_imdct256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { float*, i32*, i32*, float*, float*, float*, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* }
%struct.TYPE_10__ = type { i32*, float* }

@COEFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*, i32)* @imc_imdct256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imc_imdct256(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load float*, float** %13, align 8
  store float* %14, float** %10, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load float*, float** %16, align 8
  %18 = load i32, i32* @COEFFS, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %17, i64 %20
  store float* %21, float** %11, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %115, %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @COEFFS, align 4
  %25 = sdiv i32 %24, 2
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %118

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @COEFFS, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %40, 2
  %42 = sub nsw i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %37, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %34, %45
  %47 = sub nsw i32 0, %46
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %54, %62
  %64 = sub nsw i32 %47, %63
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 6
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 %64, i32* %71, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @COEFFS, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* %7, align 4
  %85 = mul nsw i32 %84, 2
  %86 = sub nsw i32 %83, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %81, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %78, %89
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = mul nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %97, %105
  %107 = sub nsw i32 %90, %106
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 6
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  store i32 %107, i32* %114, align 4
  br label %115

115:                                              ; preds = %27
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %22

118:                                              ; preds = %22
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)** %121, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 7
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 6
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = call i32 %122(%struct.TYPE_11__* %124, %struct.TYPE_12__* %127)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)** %131, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 7
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 6
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = call i32 %132(%struct.TYPE_11__* %134, %struct.TYPE_12__* %137)
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %290, %118
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @COEFFS, align 4
  %142 = sdiv i32 %141, 2
  %143 = icmp slt i32 %140, %142
  br i1 %143, label %144, label %293

144:                                              ; preds = %139
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 6
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sitofp i32 %152 to float
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 3
  %156 = load float*, float** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %156, i64 %158
  %160 = load float, float* %159, align 4
  %161 = fmul float %153, %160
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 6
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 0, %169
  %171 = sitofp i32 %170 to float
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 4
  %174 = load float*, float** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %174, i64 %176
  %178 = load float, float* %177, align 4
  %179 = fmul float %171, %178
  %180 = fadd float %161, %179
  store float %180, float* %8, align 4
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 6
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sub nsw i32 0, %188
  %190 = sitofp i32 %189 to float
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 3
  %193 = load float*, float** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %193, i64 %195
  %197 = load float, float* %196, align 4
  %198 = fmul float %190, %197
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 6
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = sitofp i32 %206 to float
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 4
  %210 = load float*, float** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds float, float* %210, i64 %212
  %214 = load float, float* %213, align 4
  %215 = fmul float %207, %214
  %216 = fsub float %198, %215
  store float %216, float* %9, align 4
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 5
  %219 = load float*, float** %218, align 8
  %220 = load i32, i32* @COEFFS, align 4
  %221 = sub nsw i32 %220, 1
  %222 = load i32, i32* %7, align 4
  %223 = mul nsw i32 %222, 2
  %224 = sub nsw i32 %221, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %219, i64 %225
  %227 = load float, float* %226, align 4
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 1
  %230 = load float*, float** %229, align 8
  %231 = load i32, i32* %7, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %230, i64 %232
  %234 = load float, float* %233, align 4
  %235 = fmul float %227, %234
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 5
  %238 = load float*, float** %237, align 8
  %239 = load i32, i32* %7, align 4
  %240 = mul nsw i32 %239, 2
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %238, i64 %241
  %243 = load float, float* %242, align 4
  %244 = load float, float* %8, align 4
  %245 = fmul float %243, %244
  %246 = fadd float %235, %245
  %247 = load float*, float** %10, align 8
  store float %246, float* %247, align 4
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 5
  %250 = load float*, float** %249, align 8
  %251 = load i32, i32* %7, align 4
  %252 = mul nsw i32 %251, 2
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float, float* %250, i64 %253
  %255 = load float, float* %254, align 4
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 1
  %258 = load float*, float** %257, align 8
  %259 = load i32, i32* %7, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float* %258, i64 %260
  %262 = load float, float* %261, align 4
  %263 = fmul float %255, %262
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 5
  %266 = load float*, float** %265, align 8
  %267 = load i32, i32* @COEFFS, align 4
  %268 = sub nsw i32 %267, 1
  %269 = load i32, i32* %7, align 4
  %270 = mul nsw i32 %269, 2
  %271 = sub nsw i32 %268, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds float, float* %266, i64 %272
  %274 = load float, float* %273, align 4
  %275 = load float, float* %8, align 4
  %276 = fmul float %274, %275
  %277 = fsub float %263, %276
  %278 = load float*, float** %11, align 8
  store float %277, float* %278, align 4
  %279 = load float*, float** %10, align 8
  %280 = getelementptr inbounds float, float* %279, i64 2
  store float* %280, float** %10, align 8
  %281 = load float*, float** %11, align 8
  %282 = getelementptr inbounds float, float* %281, i64 -2
  store float* %282, float** %11, align 8
  %283 = load float, float* %9, align 4
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 1
  %286 = load float*, float** %285, align 8
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, float* %286, i64 %288
  store float %283, float* %289, align 4
  br label %290

290:                                              ; preds = %144
  %291 = load i32, i32* %7, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %7, align 4
  br label %139

293:                                              ; preds = %139
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
