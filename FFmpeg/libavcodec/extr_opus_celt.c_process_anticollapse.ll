; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_celt.c_process_anticollapse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_celt.c_process_anticollapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { float**, float*, i32* }

@ff_celt_freq_range = common dso_local global i32* null, align 8
@ff_celt_freq_bands = common dso_local global i32* null, align 8
@M_SQRT2 = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*, float*)* @process_anticollapse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_anticollapse(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca [2 x float], align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store float* %2, float** %6, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %240, %3
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %243

28:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 1, %35
  %37 = load i32*, i32** @ff_celt_freq_range, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %41, %44
  %46 = sdiv i32 %36, %45
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = sitofp i32 %47 to float
  %49 = fmul float 1.250000e-01, %48
  %50 = fpext float %49 to double
  %51 = fsub double -1.000000e+00, %50
  %52 = fptosi double %51 to i32
  %53 = call float @exp2f(i32 %52)
  store float %53, float* %15, align 4
  %54 = load i32*, i32** @ff_celt_freq_range, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %58, %61
  %63 = call float @sqrtf(i32 %62)
  %64 = fdiv float 1.000000e+00, %63
  store float %64, float* %16, align 4
  %65 = load float*, float** %6, align 8
  %66 = load i32*, i32** @ff_celt_freq_bands, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 %70, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %65, i64 %75
  store float* %76, float** %11, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load float**, float*** %78, align 8
  %80 = getelementptr inbounds float*, float** %79, i64 0
  %81 = load float*, float** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  %85 = load float, float* %84, align 4
  %86 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  store float %85, float* %86, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load float**, float*** %88, align 8
  %90 = getelementptr inbounds float*, float** %89, i64 1
  %91 = load float*, float** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  %95 = load float, float* %94, align 4
  %96 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  store float %95, float* %96, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %132

101:                                              ; preds = %28
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 5
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 1
  store %struct.TYPE_7__* %105, %struct.TYPE_7__** %18, align 8
  %106 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  %107 = load float, float* %106, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load float**, float*** %109, align 8
  %111 = getelementptr inbounds float*, float** %110, i64 0
  %112 = load float*, float** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %112, i64 %114
  %116 = load float, float* %115, align 4
  %117 = call float @FFMAX(float %107, float %116)
  %118 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  store float %117, float* %118, align 4
  %119 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  %120 = load float, float* %119, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load float**, float*** %122, align 8
  %124 = getelementptr inbounds float*, float** %123, i64 1
  %125 = load float*, float** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %125, i64 %127
  %129 = load float, float* %128, align 4
  %130 = call float @FFMAX(float %120, float %129)
  %131 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  store float %130, float* %131, align 4
  br label %132

132:                                              ; preds = %101, %28
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load float*, float** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %135, i64 %137
  %139 = load float, float* %138, align 4
  %140 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  %141 = load float, float* %140, align 4
  %142 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  %143 = load float, float* %142, align 4
  %144 = call float @FFMIN(float %141, float %143)
  %145 = fsub float %139, %144
  store float %145, float* %13, align 4
  %146 = load float, float* %13, align 4
  %147 = call float @FFMAX(float 0.000000e+00, float %146)
  store float %147, float* %13, align 4
  %148 = load float, float* %13, align 4
  %149 = fsub float 1.000000e+00, %148
  %150 = fptosi float %149 to i32
  %151 = call float @exp2f(i32 %150)
  store float %151, float* %14, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 3
  br i1 %155, label %156, label %160

156:                                              ; preds = %132
  %157 = load float, float* @M_SQRT2, align 4
  %158 = load float, float* %14, align 4
  %159 = fmul float %158, %157
  store float %159, float* %14, align 4
  br label %160

160:                                              ; preds = %156, %132
  %161 = load float, float* %15, align 4
  %162 = load float, float* %14, align 4
  %163 = call float @FFMIN(float %161, float %162)
  %164 = load float, float* %16, align 4
  %165 = fmul float %163, %164
  store float %165, float* %14, align 4
  store i32 0, i32* %9, align 4
  br label %166

166:                                              ; preds = %221, %160
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = shl i32 1, %170
  %172 = icmp slt i32 %167, %171
  br i1 %172, label %173, label %224

173:                                              ; preds = %166
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %9, align 4
  %182 = shl i32 1, %181
  %183 = and i32 %180, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %220, label %185

185:                                              ; preds = %173
  store i32 0, i32* %8, align 4
  br label %186

186:                                              ; preds = %216, %185
  %187 = load i32, i32* %8, align 4
  %188 = load i32*, i32** @ff_celt_freq_range, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %187, %192
  br i1 %193, label %194, label %219

194:                                              ; preds = %186
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %196 = call i32 @celt_rng(%struct.TYPE_6__* %195)
  %197 = and i32 %196, 32768
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = load float, float* %14, align 4
  br label %204

201:                                              ; preds = %194
  %202 = load float, float* %14, align 4
  %203 = fneg float %202
  br label %204

204:                                              ; preds = %201, %199
  %205 = phi float [ %200, %199 ], [ %203, %201 ]
  %206 = load float*, float** %11, align 8
  %207 = load i32, i32* %8, align 4
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = shl i32 %207, %210
  %212 = load i32, i32* %9, align 4
  %213 = add nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %206, i64 %214
  store float %205, float* %215, align 4
  br label %216

216:                                              ; preds = %204
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %8, align 4
  br label %186

219:                                              ; preds = %186
  store i32 1, i32* %10, align 4
  br label %220

220:                                              ; preds = %219, %173
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %9, align 4
  br label %166

224:                                              ; preds = %166
  %225 = load i32, i32* %10, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %239

227:                                              ; preds = %224
  %228 = load float*, float** %11, align 8
  %229 = load i32*, i32** @ff_celt_freq_range, align 8
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = shl i32 %233, %236
  %238 = call i32 @celt_renormalize_vector(float* %228, i32 %237, float 1.000000e+00)
  br label %239

239:                                              ; preds = %227, %224
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %7, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %7, align 4
  br label %22

243:                                              ; preds = %22
  ret void
}

declare dso_local float @exp2f(i32) #1

declare dso_local float @sqrtf(i32) #1

declare dso_local float @FFMAX(float, float) #1

declare dso_local float @FFMIN(float, float) #1

declare dso_local i32 @celt_rng(%struct.TYPE_6__*) #1

declare dso_local i32 @celt_renormalize_vector(float*, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
