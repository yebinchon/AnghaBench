; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_despill.c_do_despill_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_despill.c_do_despill_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, float, float, float, float, float, float, i64, i64 }
%struct.TYPE_6__ = type { i32, float**, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32)* @do_despill_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_despill_slice(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca float*, align 8
  %29 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %9, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %10, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %12, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %14, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %8, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %15, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  %67 = mul nsw i32 %64, %66
  %68 = load i32, i32* %8, align 4
  %69 = sdiv i32 %67, %68
  store i32 %69, i32* %16, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load float, float* %71, align 8
  store float %72, float* %17, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load float, float* %74, align 4
  store float %75, float* %18, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load float, float* %77, align 8
  store float %78, float* %19, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load float, float* %80, align 4
  store float %81, float* %20, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 5
  %84 = load float, float* %83, align 8
  store float %84, float* %21, align 4
  %85 = load float, float* %21, align 4
  %86 = fsub float 1.000000e+00, %85
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 6
  %89 = load float, float* %88, align 4
  %90 = fsub float 1.000000e+00, %89
  %91 = fmul float %86, %90
  store float %91, float* %22, align 4
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %27, align 4
  br label %93

93:                                               ; preds = %255, %4
  %94 = load i32, i32* %27, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %258

97:                                               ; preds = %93
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load float**, float*** %99, align 8
  %101 = getelementptr inbounds float*, float** %100, i64 0
  %102 = load float*, float** %101, align 8
  %103 = load i32, i32* %27, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %103, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %102, i64 %110
  store float* %111, float** %28, align 8
  store i32 0, i32* %26, align 4
  br label %112

112:                                              ; preds = %251, %97
  %113 = load i32, i32* %26, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %254

118:                                              ; preds = %112
  %119 = load float*, float** %28, align 8
  %120 = load i32, i32* %26, align 4
  %121 = mul nsw i32 %120, 4
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %119, i64 %124
  %126 = load float, float* %125, align 4
  %127 = fdiv float %126, 2.550000e+02
  store float %127, float* %23, align 4
  %128 = load float*, float** %28, align 8
  %129 = load i32, i32* %26, align 4
  %130 = mul nsw i32 %129, 4
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %128, i64 %133
  %135 = load float, float* %134, align 4
  %136 = fdiv float %135, 2.550000e+02
  store float %136, float* %24, align 4
  %137 = load float*, float** %28, align 8
  %138 = load i32, i32* %26, align 4
  %139 = mul nsw i32 %138, 4
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %137, i64 %142
  %144 = load float, float* %143, align 4
  %145 = fdiv float %144, 2.550000e+02
  store float %145, float* %25, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 8
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %118
  %151 = load float, float* %25, align 4
  %152 = load float, float* %23, align 4
  %153 = load float, float* %21, align 4
  %154 = fmul float %152, %153
  %155 = load float, float* %24, align 4
  %156 = load float, float* %22, align 4
  %157 = fmul float %155, %156
  %158 = fadd float %154, %157
  %159 = fsub float %151, %158
  %160 = call float @FFMAX(float %159, float 0.000000e+00)
  store float %160, float* %29, align 4
  br label %172

161:                                              ; preds = %118
  %162 = load float, float* %24, align 4
  %163 = load float, float* %23, align 4
  %164 = load float, float* %21, align 4
  %165 = fmul float %163, %164
  %166 = load float, float* %25, align 4
  %167 = load float, float* %22, align 4
  %168 = fmul float %166, %167
  %169 = fadd float %165, %168
  %170 = fsub float %162, %169
  %171 = call float @FFMAX(float %170, float 0.000000e+00)
  store float %171, float* %29, align 4
  br label %172

172:                                              ; preds = %161, %150
  %173 = load float, float* %23, align 4
  %174 = load float, float* %29, align 4
  %175 = load float, float* %18, align 4
  %176 = fmul float %174, %175
  %177 = fadd float %173, %176
  %178 = load float, float* %17, align 4
  %179 = load float, float* %29, align 4
  %180 = fmul float %178, %179
  %181 = fadd float %177, %180
  %182 = call float @FFMAX(float %181, float 0.000000e+00)
  store float %182, float* %23, align 4
  %183 = load float, float* %24, align 4
  %184 = load float, float* %29, align 4
  %185 = load float, float* %19, align 4
  %186 = fmul float %184, %185
  %187 = fadd float %183, %186
  %188 = load float, float* %17, align 4
  %189 = load float, float* %29, align 4
  %190 = fmul float %188, %189
  %191 = fadd float %187, %190
  %192 = call float @FFMAX(float %191, float 0.000000e+00)
  store float %192, float* %24, align 4
  %193 = load float, float* %25, align 4
  %194 = load float, float* %29, align 4
  %195 = load float, float* %20, align 4
  %196 = fmul float %194, %195
  %197 = fadd float %193, %196
  %198 = load float, float* %17, align 4
  %199 = load float, float* %29, align 4
  %200 = fmul float %198, %199
  %201 = fadd float %197, %200
  %202 = call float @FFMAX(float %201, float 0.000000e+00)
  store float %202, float* %25, align 4
  %203 = load float, float* %23, align 4
  %204 = fmul float %203, 2.550000e+02
  %205 = call float @av_clip_uint8(float %204)
  %206 = load float*, float** %28, align 8
  %207 = load i32, i32* %26, align 4
  %208 = mul nsw i32 %207, 4
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %206, i64 %211
  store float %205, float* %212, align 4
  %213 = load float, float* %24, align 4
  %214 = fmul float %213, 2.550000e+02
  %215 = call float @av_clip_uint8(float %214)
  %216 = load float*, float** %28, align 8
  %217 = load i32, i32* %26, align 4
  %218 = mul nsw i32 %217, 4
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %218, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, float* %216, i64 %221
  store float %215, float* %222, align 4
  %223 = load float, float* %25, align 4
  %224 = fmul float %223, 2.550000e+02
  %225 = call float @av_clip_uint8(float %224)
  %226 = load float*, float** %28, align 8
  %227 = load i32, i32* %26, align 4
  %228 = mul nsw i32 %227, 4
  %229 = load i32, i32* %13, align 4
  %230 = add nsw i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %226, i64 %231
  store float %225, float* %232, align 4
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 7
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %250

237:                                              ; preds = %172
  %238 = load float, float* %29, align 4
  %239 = fsub float 1.000000e+00, %238
  store float %239, float* %29, align 4
  %240 = load float, float* %29, align 4
  %241 = fmul float %240, 2.550000e+02
  %242 = call float @av_clip_uint8(float %241)
  %243 = load float*, float** %28, align 8
  %244 = load i32, i32* %26, align 4
  %245 = mul nsw i32 %244, 4
  %246 = load i32, i32* %14, align 4
  %247 = add nsw i32 %245, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds float, float* %243, i64 %248
  store float %242, float* %249, align 4
  br label %250

250:                                              ; preds = %237, %172
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %26, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %26, align 4
  br label %112

254:                                              ; preds = %112
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %27, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %27, align 4
  br label %93

258:                                              ; preds = %93
  ret i32 0
}

declare dso_local float @FFMAX(float, float) #1

declare dso_local float @av_clip_uint8(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
