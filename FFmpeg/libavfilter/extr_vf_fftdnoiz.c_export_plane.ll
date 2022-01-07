; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftdnoiz.c_export_plane.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftdnoiz.c_export_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (i32*, i32*, i32, float, i32)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, float*, i32, i32)* @export_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_plane(%struct.TYPE_5__* %0, i32* %1, i32 %2, float* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca float*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store float* %3, float** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %13, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 7
  %51 = sdiv i32 %50, 8
  store i32 %51, i32* %15, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %16, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %17, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %18, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = sdiv i32 %64, 2
  store i32 %65, i32* %20, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %19, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %21, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %22, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %23, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = udiv i64 %78, 4
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %24, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sitofp i32 %83 to float
  %85 = fdiv float 1.000000e+00, %84
  store float %85, float* %25, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 9
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %26, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 8
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %27, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = udiv i64 %93, 4
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %11, align 4
  store i32 0, i32* %29, align 4
  br label %96

96:                                               ; preds = %292, %6
  %97 = load i32, i32* %29, align 4
  %98 = load i32, i32* %23, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %295

100:                                              ; preds = %96
  store i32 0, i32* %28, align 4
  br label %101

101:                                              ; preds = %288, %100
  %102 = load i32, i32* %28, align 4
  %103 = load i32, i32* %22, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %291

105:                                              ; preds = %101
  %106 = load i32, i32* %28, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %111

109:                                              ; preds = %105
  %110 = load i32, i32* %20, align 4
  br label %111

111:                                              ; preds = %109, %108
  %112 = phi i32 [ 0, %108 ], [ %110, %109 ]
  store i32 %112, i32* %32, align 4
  %113 = load i32, i32* %29, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %118

116:                                              ; preds = %111
  %117 = load i32, i32* %20, align 4
  br label %118

118:                                              ; preds = %116, %115
  %119 = phi i32 [ 0, %115 ], [ %117, %116 ]
  store i32 %119, i32* %33, align 4
  %120 = load i32, i32* %28, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* %18, align 4
  br label %134

124:                                              ; preds = %118
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %28, align 4
  %128 = load i32, i32* %21, align 4
  %129 = mul nsw i32 %127, %128
  %130 = sub nsw i32 %126, %129
  %131 = load i32, i32* %32, align 4
  %132 = sub nsw i32 %130, %131
  %133 = call i32 @FFMIN(i32 %125, i32 %132)
  br label %134

134:                                              ; preds = %124, %122
  %135 = phi i32 [ %123, %122 ], [ %133, %124 ]
  store i32 %135, i32* %34, align 4
  %136 = load i32, i32* %29, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* %18, align 4
  br label %150

140:                                              ; preds = %134
  %141 = load i32, i32* %21, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %29, align 4
  %144 = load i32, i32* %21, align 4
  %145 = mul nsw i32 %143, %144
  %146 = sub nsw i32 %142, %145
  %147 = load i32, i32* %33, align 4
  %148 = sub nsw i32 %146, %147
  %149 = call i32 @FFMIN(i32 %141, i32 %148)
  br label %150

150:                                              ; preds = %140, %138
  %151 = phi i32 [ %139, %138 ], [ %149, %140 ]
  store i32 %151, i32* %35, align 4
  %152 = load float*, float** %10, align 8
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %29, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32, i32* %18, align 4
  %157 = mul nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %152, i64 %158
  %160 = load i32, i32* %28, align 4
  %161 = load i32, i32* %18, align 4
  %162 = mul nsw i32 %160, %161
  %163 = mul nsw i32 %162, 2
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %159, i64 %164
  store float* %165, float** %36, align 8
  %166 = load i32*, i32** %8, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %29, align 4
  %169 = load i32, i32* %21, align 4
  %170 = mul nsw i32 %168, %169
  %171 = load i32, i32* %33, align 4
  %172 = add nsw i32 %170, %171
  %173 = mul nsw i32 %167, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %166, i64 %174
  %176 = load i32, i32* %28, align 4
  %177 = load i32, i32* %21, align 4
  %178 = mul nsw i32 %176, %177
  %179 = load i32, i32* %32, align 4
  %180 = add nsw i32 %178, %179
  %181 = load i32, i32* %15, align 4
  %182 = mul nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %175, i64 %183
  store i32* %184, i32** %37, align 8
  %185 = load i32*, i32** %27, align 8
  store i32* %185, i32** %39, align 8
  %186 = load i32*, i32** %26, align 8
  store i32* %186, i32** %38, align 8
  store i32 0, i32* %30, align 4
  br label %187

187:                                              ; preds = %239, %150
  %188 = load i32, i32* %30, align 4
  %189 = load i32, i32* %18, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %242

191:                                              ; preds = %187
  %192 = load i32*, i32** %39, align 8
  %193 = load float*, float** %36, align 8
  %194 = load i32, i32* %18, align 4
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 4
  %197 = trunc i64 %196 to i32
  %198 = call i32 @memcpy(i32* %192, float* %193, i32 %197)
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %39, align 8
  %203 = call i32 @av_fft_permute(i32 %201, i32* %202)
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %39, align 8
  %208 = call i32 @av_fft_calc(i32 %206, i32* %207)
  store i32 0, i32* %31, align 4
  br label %209

209:                                              ; preds = %227, %191
  %210 = load i32, i32* %31, align 4
  %211 = load i32, i32* %18, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %230

213:                                              ; preds = %209
  %214 = load i32*, i32** %39, align 8
  %215 = load i32, i32* %31, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %38, align 8
  %220 = load i32, i32* %31, align 4
  %221 = load i32, i32* %24, align 4
  %222 = mul nsw i32 %220, %221
  %223 = load i32, i32* %30, align 4
  %224 = add nsw i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %219, i64 %225
  store i32 %218, i32* %226, align 4
  br label %227

227:                                              ; preds = %213
  %228 = load i32, i32* %31, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %31, align 4
  br label %209

230:                                              ; preds = %209
  %231 = load i32, i32* %24, align 4
  %232 = load i32*, i32** %39, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32* %234, i32** %39, align 8
  %235 = load i32, i32* %11, align 4
  %236 = load float*, float** %36, align 8
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds float, float* %236, i64 %237
  store float* %238, float** %36, align 8
  br label %239

239:                                              ; preds = %230
  %240 = load i32, i32* %30, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %30, align 4
  br label %187

242:                                              ; preds = %187
  %243 = load i32*, i32** %26, align 8
  %244 = load i32, i32* %33, align 4
  %245 = load i32, i32* %24, align 4
  %246 = mul nsw i32 %244, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %243, i64 %247
  store i32* %248, i32** %38, align 8
  store i32 0, i32* %30, align 4
  br label %249

249:                                              ; preds = %284, %242
  %250 = load i32, i32* %30, align 4
  %251 = load i32, i32* %35, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %287

253:                                              ; preds = %249
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 7
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** %38, align 8
  %258 = call i32 @av_fft_permute(i32 %256, i32* %257)
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 4
  %262 = load i32*, i32** %38, align 8
  %263 = call i32 @av_fft_calc(i32 %261, i32* %262)
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 1
  %266 = load i32 (i32*, i32*, i32, float, i32)*, i32 (i32*, i32*, i32, float, i32)** %265, align 8
  %267 = load i32*, i32** %38, align 8
  %268 = load i32, i32* %32, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32*, i32** %37, align 8
  %272 = load i32, i32* %34, align 4
  %273 = load float, float* %25, align 4
  %274 = load i32, i32* %14, align 4
  %275 = call i32 %266(i32* %270, i32* %271, i32 %272, float %273, i32 %274)
  %276 = load i32, i32* %24, align 4
  %277 = load i32*, i32** %38, align 8
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  store i32* %279, i32** %38, align 8
  %280 = load i32, i32* %9, align 4
  %281 = load i32*, i32** %37, align 8
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  store i32* %283, i32** %37, align 8
  br label %284

284:                                              ; preds = %253
  %285 = load i32, i32* %30, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %30, align 4
  br label %249

287:                                              ; preds = %249
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %28, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %28, align 4
  br label %101

291:                                              ; preds = %101
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %29, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %29, align 4
  br label %96

295:                                              ; preds = %96
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, float*, i32) #1

declare dso_local i32 @av_fft_permute(i32, i32*) #1

declare dso_local i32 @av_fft_calc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
