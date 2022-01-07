; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light_trace.c_TraceLine_r.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light_trace.c_TraceLine_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, float, float*, i32* }
%struct.TYPE_7__ = type { i64, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@qtrue = common dso_local global i32 0, align 4
@MAX_MAP_LEAFS = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@tnodes = common dso_local global %struct.TYPE_8__* null, align 8
@TRACE_ON_EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TraceLine_r(i32 %0, float* %1, float* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float*, align 8
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, -2147483648
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 1073741824
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load float*, float** %7, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @VectorCopy(float* %25, i32 %30)
  %32 = load i32, i32* @qtrue, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @qtrue, align 4
  store i32 %37, i32* %5, align 4
  br label %303

38:                                               ; preds = %20
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MAX_MAP_LEAFS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @qfalse, align 4
  store i32 %45, i32* %5, align 4
  br label %303

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 1073741823
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %48, i32* %55, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load i32, i32* @qfalse, align 4
  store i32 %60, i32* %5, align 4
  br label %303

61:                                               ; preds = %4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tnodes, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %64
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %10, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %114 [
    i32 130, label %69
    i32 129, label %84
    i32 128, label %99
  ]

69:                                               ; preds = %61
  %70 = load float*, float** %7, align 8
  %71 = getelementptr inbounds float, float* %70, i64 0
  %72 = load float, float* %71, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load float, float* %74, align 4
  %76 = fsub float %72, %75
  store float %76, float* %11, align 4
  %77 = load float*, float** %8, align 8
  %78 = getelementptr inbounds float, float* %77, i64 0
  %79 = load float, float* %78, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load float, float* %81, align 4
  %83 = fsub float %79, %82
  store float %83, float* %12, align 4
  br label %181

84:                                               ; preds = %61
  %85 = load float*, float** %7, align 8
  %86 = getelementptr inbounds float, float* %85, i64 1
  %87 = load float, float* %86, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load float, float* %89, align 4
  %91 = fsub float %87, %90
  store float %91, float* %11, align 4
  %92 = load float*, float** %8, align 8
  %93 = getelementptr inbounds float, float* %92, i64 1
  %94 = load float, float* %93, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load float, float* %96, align 4
  %98 = fsub float %94, %97
  store float %98, float* %12, align 4
  br label %181

99:                                               ; preds = %61
  %100 = load float*, float** %7, align 8
  %101 = getelementptr inbounds float, float* %100, i64 2
  %102 = load float, float* %101, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load float, float* %104, align 4
  %106 = fsub float %102, %105
  store float %106, float* %11, align 4
  %107 = load float*, float** %8, align 8
  %108 = getelementptr inbounds float, float* %107, i64 2
  %109 = load float, float* %108, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load float, float* %111, align 4
  %113 = fsub float %109, %112
  store float %113, float* %12, align 4
  br label %181

114:                                              ; preds = %61
  %115 = load float*, float** %7, align 8
  %116 = getelementptr inbounds float, float* %115, i64 0
  %117 = load float, float* %116, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load float*, float** %119, align 8
  %121 = getelementptr inbounds float, float* %120, i64 0
  %122 = load float, float* %121, align 4
  %123 = fmul float %117, %122
  %124 = load float*, float** %7, align 8
  %125 = getelementptr inbounds float, float* %124, i64 1
  %126 = load float, float* %125, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load float*, float** %128, align 8
  %130 = getelementptr inbounds float, float* %129, i64 1
  %131 = load float, float* %130, align 4
  %132 = fmul float %126, %131
  %133 = fadd float %123, %132
  %134 = load float*, float** %7, align 8
  %135 = getelementptr inbounds float, float* %134, i64 2
  %136 = load float, float* %135, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = load float*, float** %138, align 8
  %140 = getelementptr inbounds float, float* %139, i64 2
  %141 = load float, float* %140, align 4
  %142 = fmul float %136, %141
  %143 = fadd float %133, %142
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load float, float* %145, align 4
  %147 = fsub float %143, %146
  store float %147, float* %11, align 4
  %148 = load float*, float** %8, align 8
  %149 = getelementptr inbounds float, float* %148, i64 0
  %150 = load float, float* %149, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = load float*, float** %152, align 8
  %154 = getelementptr inbounds float, float* %153, i64 0
  %155 = load float, float* %154, align 4
  %156 = fmul float %150, %155
  %157 = load float*, float** %8, align 8
  %158 = getelementptr inbounds float, float* %157, i64 1
  %159 = load float, float* %158, align 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = load float*, float** %161, align 8
  %163 = getelementptr inbounds float, float* %162, i64 1
  %164 = load float, float* %163, align 4
  %165 = fmul float %159, %164
  %166 = fadd float %156, %165
  %167 = load float*, float** %8, align 8
  %168 = getelementptr inbounds float, float* %167, i64 2
  %169 = load float, float* %168, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  %172 = load float*, float** %171, align 8
  %173 = getelementptr inbounds float, float* %172, i64 2
  %174 = load float, float* %173, align 4
  %175 = fmul float %169, %174
  %176 = fadd float %166, %175
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load float, float* %178, align 4
  %180 = fsub float %176, %179
  store float %180, float* %12, align 4
  br label %181

181:                                              ; preds = %114, %99, %84, %69
  %182 = load float, float* %11, align 4
  %183 = load float, float* @TRACE_ON_EPSILON, align 4
  %184 = fneg float %183
  %185 = fcmp oge float %182, %184
  br i1 %185, label %186, label %201

186:                                              ; preds = %181
  %187 = load float, float* %12, align 4
  %188 = load float, float* @TRACE_ON_EPSILON, align 4
  %189 = fneg float %188
  %190 = fcmp oge float %187, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %186
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = load float*, float** %7, align 8
  %198 = load float*, float** %8, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %200 = call i32 @TraceLine_r(i32 %196, float* %197, float* %198, %struct.TYPE_7__* %199)
  store i32 %200, i32* %5, align 4
  br label %303

201:                                              ; preds = %186, %181
  %202 = load float, float* %11, align 4
  %203 = load float, float* @TRACE_ON_EPSILON, align 4
  %204 = fcmp olt float %202, %203
  br i1 %204, label %205, label %219

205:                                              ; preds = %201
  %206 = load float, float* %12, align 4
  %207 = load float, float* @TRACE_ON_EPSILON, align 4
  %208 = fcmp olt float %206, %207
  br i1 %208, label %209, label %219

209:                                              ; preds = %205
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = load float*, float** %7, align 8
  %216 = load float*, float** %8, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %218 = call i32 @TraceLine_r(i32 %214, float* %215, float* %216, %struct.TYPE_7__* %217)
  store i32 %218, i32* %5, align 4
  br label %303

219:                                              ; preds = %205, %201
  %220 = load float, float* %11, align 4
  %221 = fcmp olt float %220, 0.000000e+00
  %222 = zext i1 %221 to i32
  store i32 %222, i32* %15, align 4
  %223 = load float, float* %11, align 4
  %224 = load float, float* %11, align 4
  %225 = load float, float* %12, align 4
  %226 = fsub float %224, %225
  %227 = fdiv float %223, %226
  store float %227, float* %14, align 4
  %228 = load float*, float** %7, align 8
  %229 = getelementptr inbounds float, float* %228, i64 0
  %230 = load float, float* %229, align 4
  %231 = load float*, float** %8, align 8
  %232 = getelementptr inbounds float, float* %231, i64 0
  %233 = load float, float* %232, align 4
  %234 = load float*, float** %7, align 8
  %235 = getelementptr inbounds float, float* %234, i64 0
  %236 = load float, float* %235, align 4
  %237 = fsub float %233, %236
  %238 = load float, float* %14, align 4
  %239 = fmul float %237, %238
  %240 = fadd float %230, %239
  %241 = load float*, float** %13, align 8
  %242 = getelementptr inbounds float, float* %241, i64 0
  store float %240, float* %242, align 4
  %243 = load float*, float** %7, align 8
  %244 = getelementptr inbounds float, float* %243, i64 1
  %245 = load float, float* %244, align 4
  %246 = load float*, float** %8, align 8
  %247 = getelementptr inbounds float, float* %246, i64 1
  %248 = load float, float* %247, align 4
  %249 = load float*, float** %7, align 8
  %250 = getelementptr inbounds float, float* %249, i64 1
  %251 = load float, float* %250, align 4
  %252 = fsub float %248, %251
  %253 = load float, float* %14, align 4
  %254 = fmul float %252, %253
  %255 = fadd float %245, %254
  %256 = load float*, float** %13, align 8
  %257 = getelementptr inbounds float, float* %256, i64 1
  store float %255, float* %257, align 4
  %258 = load float*, float** %7, align 8
  %259 = getelementptr inbounds float, float* %258, i64 2
  %260 = load float, float* %259, align 4
  %261 = load float*, float** %8, align 8
  %262 = getelementptr inbounds float, float* %261, i64 2
  %263 = load float, float* %262, align 4
  %264 = load float*, float** %7, align 8
  %265 = getelementptr inbounds float, float* %264, i64 2
  %266 = load float, float* %265, align 4
  %267 = fsub float %263, %266
  %268 = load float, float* %14, align 4
  %269 = fmul float %267, %268
  %270 = fadd float %260, %269
  %271 = load float*, float** %13, align 8
  %272 = getelementptr inbounds float, float* %271, i64 2
  store float %270, float* %272, align 4
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 3
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %15, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load float*, float** %7, align 8
  %281 = load float*, float** %13, align 8
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %283 = call i32 @TraceLine_r(i32 %279, float* %280, float* %281, %struct.TYPE_7__* %282)
  store i32 %283, i32* %16, align 4
  %284 = load i32, i32* %16, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %219
  %287 = load i32, i32* %16, align 4
  store i32 %287, i32* %5, align 4
  br label %303

288:                                              ; preds = %219
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 3
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %15, align 4
  %293 = icmp ne i32 %292, 0
  %294 = xor i1 %293, true
  %295 = zext i1 %294 to i32
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %291, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load float*, float** %13, align 8
  %300 = load float*, float** %8, align 8
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %302 = call i32 @TraceLine_r(i32 %298, float* %299, float* %300, %struct.TYPE_7__* %301)
  store i32 %302, i32* %5, align 4
  br label %303

303:                                              ; preds = %288, %286, %209, %191, %46, %44, %24
  %304 = load i32, i32* %5, align 4
  ret i32 %304
}

declare dso_local i32 @VectorCopy(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
