; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_silk.c_silk_unmix_ms.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_silk.c_silk_unmix_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, float*, float*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SILK_HISTORY = common dso_local global i32 0, align 4
@ff_silk_stereo_interp_len = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, float*, float*)* @silk_unmix_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @silk_unmix_ms(%struct.TYPE_5__* %0, float* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SILK_HISTORY, align 4
  %26 = add nsw i32 %24, %25
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to float*
  store float* %32, float** %7, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SILK_HISTORY, align 4
  %40 = add nsw i32 %38, %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %40, %43
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to float*
  store float* %46, float** %8, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load float*, float** %48, align 8
  %50 = getelementptr inbounds float, float* %49, i64 0
  %51 = load float, float* %50, align 4
  store float %51, float* %9, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load float*, float** %53, align 8
  %55 = getelementptr inbounds float, float* %54, i64 1
  %56 = load float, float* %55, align 4
  store float %56, float* %10, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load float*, float** %58, align 8
  %60 = getelementptr inbounds float, float* %59, i64 0
  %61 = load float, float* %60, align 4
  store float %61, float* %11, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load float*, float** %63, align 8
  %65 = getelementptr inbounds float, float* %64, i64 1
  %66 = load float, float* %65, align 4
  store float %66, float* %12, align 4
  %67 = load i32*, i32** @ff_silk_stereo_interp_len, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %175, %3
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %178

77:                                               ; preds = %73
  %78 = load float, float* %9, align 4
  %79 = load i32, i32* %14, align 4
  %80 = sitofp i32 %79 to float
  %81 = load float, float* %11, align 4
  %82 = load float, float* %9, align 4
  %83 = fsub float %81, %82
  %84 = fmul float %80, %83
  %85 = load i32, i32* %13, align 4
  %86 = sitofp i32 %85 to float
  %87 = fdiv float %84, %86
  %88 = fadd float %78, %87
  store float %88, float* %15, align 4
  %89 = load float, float* %10, align 4
  %90 = load i32, i32* %14, align 4
  %91 = sitofp i32 %90 to float
  %92 = load float, float* %12, align 4
  %93 = load float, float* %10, align 4
  %94 = fsub float %92, %93
  %95 = fmul float %91, %94
  %96 = load i32, i32* %13, align 4
  %97 = sitofp i32 %96 to float
  %98 = fdiv float %95, %97
  %99 = fadd float %89, %98
  store float %99, float* %16, align 4
  %100 = load float*, float** %7, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sub nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %100, i64 %103
  %105 = load float, float* %104, align 4
  %106 = load float*, float** %7, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %106, i64 %109
  %111 = load float, float* %110, align 4
  %112 = fmul float 2.000000e+00, %111
  %113 = fadd float %105, %112
  %114 = load float*, float** %7, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %114, i64 %116
  %118 = load float, float* %117, align 4
  %119 = fadd float %113, %118
  %120 = fpext float %119 to double
  %121 = fmul double 2.500000e-01, %120
  %122 = fptrunc double %121 to float
  store float %122, float* %17, align 4
  %123 = load float, float* %16, align 4
  %124 = fadd float 1.000000e+00, %123
  %125 = load float*, float** %7, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %125, i64 %128
  %130 = load float, float* %129, align 4
  %131 = fmul float %124, %130
  %132 = load float*, float** %8, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %132, i64 %135
  %137 = load float, float* %136, align 4
  %138 = fadd float %131, %137
  %139 = load float, float* %15, align 4
  %140 = load float, float* %17, align 4
  %141 = fmul float %139, %140
  %142 = fadd float %138, %141
  %143 = fptosi float %142 to i32
  %144 = call float @av_clipf(i32 %143, double -1.000000e+00, double 1.000000e+00)
  %145 = load float*, float** %5, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %145, i64 %147
  store float %144, float* %148, align 4
  %149 = load float, float* %16, align 4
  %150 = fsub float 1.000000e+00, %149
  %151 = load float*, float** %7, align 8
  %152 = load i32, i32* %14, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %151, i64 %154
  %156 = load float, float* %155, align 4
  %157 = fmul float %150, %156
  %158 = load float*, float** %8, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %158, i64 %161
  %163 = load float, float* %162, align 4
  %164 = fsub float %157, %163
  %165 = load float, float* %15, align 4
  %166 = load float, float* %17, align 4
  %167 = fmul float %165, %166
  %168 = fsub float %164, %167
  %169 = fptosi float %168 to i32
  %170 = call float @av_clipf(i32 %169, double -1.000000e+00, double 1.000000e+00)
  %171 = load float*, float** %6, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %171, i64 %173
  store float %170, float* %174, align 4
  br label %175

175:                                              ; preds = %77
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %14, align 4
  br label %73

178:                                              ; preds = %73
  br label %179

179:                                              ; preds = %261, %178
  %180 = load i32, i32* %14, align 4
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %264

185:                                              ; preds = %179
  %186 = load float*, float** %7, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sub nsw i32 %187, 2
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %186, i64 %189
  %191 = load float, float* %190, align 4
  %192 = load float*, float** %7, align 8
  %193 = load i32, i32* %14, align 4
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %192, i64 %195
  %197 = load float, float* %196, align 4
  %198 = fmul float 2.000000e+00, %197
  %199 = fadd float %191, %198
  %200 = load float*, float** %7, align 8
  %201 = load i32, i32* %14, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, float* %200, i64 %202
  %204 = load float, float* %203, align 4
  %205 = fadd float %199, %204
  %206 = fpext float %205 to double
  %207 = fmul double 2.500000e-01, %206
  %208 = fptrunc double %207 to float
  store float %208, float* %18, align 4
  %209 = load float, float* %12, align 4
  %210 = fadd float 1.000000e+00, %209
  %211 = load float*, float** %7, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sub nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %211, i64 %214
  %216 = load float, float* %215, align 4
  %217 = fmul float %210, %216
  %218 = load float*, float** %8, align 8
  %219 = load i32, i32* %14, align 4
  %220 = sub nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, float* %218, i64 %221
  %223 = load float, float* %222, align 4
  %224 = fadd float %217, %223
  %225 = load float, float* %11, align 4
  %226 = load float, float* %18, align 4
  %227 = fmul float %225, %226
  %228 = fadd float %224, %227
  %229 = fptosi float %228 to i32
  %230 = call float @av_clipf(i32 %229, double -1.000000e+00, double 1.000000e+00)
  %231 = load float*, float** %5, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, float* %231, i64 %233
  store float %230, float* %234, align 4
  %235 = load float, float* %12, align 4
  %236 = fsub float 1.000000e+00, %235
  %237 = load float*, float** %7, align 8
  %238 = load i32, i32* %14, align 4
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %237, i64 %240
  %242 = load float, float* %241, align 4
  %243 = fmul float %236, %242
  %244 = load float*, float** %8, align 8
  %245 = load i32, i32* %14, align 4
  %246 = sub nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %244, i64 %247
  %249 = load float, float* %248, align 4
  %250 = fsub float %243, %249
  %251 = load float, float* %11, align 4
  %252 = load float, float* %18, align 4
  %253 = fmul float %251, %252
  %254 = fsub float %250, %253
  %255 = fptosi float %254 to i32
  %256 = call float @av_clipf(i32 %255, double -1.000000e+00, double 1.000000e+00)
  %257 = load float*, float** %6, align 8
  %258 = load i32, i32* %14, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds float, float* %257, i64 %259
  store float %256, float* %260, align 4
  br label %261

261:                                              ; preds = %185
  %262 = load i32, i32* %14, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %14, align 4
  br label %179

264:                                              ; preds = %179
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 1
  %267 = load float*, float** %266, align 8
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 2
  %270 = load float*, float** %269, align 8
  %271 = call i32 @memcpy(float* %267, float* %270, i32 8)
  ret void
}

declare dso_local float @av_clipf(i32, double, double) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
