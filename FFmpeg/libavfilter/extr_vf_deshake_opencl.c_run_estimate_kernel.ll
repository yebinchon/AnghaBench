; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_run_estimate_kernel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_run_estimate_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { double* }
%struct.TYPE_6__ = type { double* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, double*)* @run_estimate_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_estimate_kernel(%struct.TYPE_9__* %0, double* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store double* %1, double** %4, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load double*, double** %22, align 8
  %24 = getelementptr inbounds double, double* %23, i64 0
  %25 = load double, double* %24, align 8
  store double %25, double* %5, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load double*, double** %30, align 8
  %32 = getelementptr inbounds double, double* %31, i64 1
  %33 = load double, double* %32, align 8
  store double %33, double* %6, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load double*, double** %38, align 8
  %40 = getelementptr inbounds double, double* %39, i64 0
  %41 = load double, double* %40, align 8
  store double %41, double* %7, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load double*, double** %46, align 8
  %48 = getelementptr inbounds double, double* %47, i64 1
  %49 = load double, double* %48, align 8
  store double %49, double* %8, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load double*, double** %54, align 8
  %56 = getelementptr inbounds double, double* %55, i64 0
  %57 = load double, double* %56, align 8
  store double %57, double* %9, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load double*, double** %62, align 8
  %64 = getelementptr inbounds double, double* %63, i64 1
  %65 = load double, double* %64, align 8
  store double %65, double* %10, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load double*, double** %70, align 8
  %72 = getelementptr inbounds double, double* %71, i64 0
  %73 = load double, double* %72, align 8
  store double %73, double* %11, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load double*, double** %78, align 8
  %80 = getelementptr inbounds double, double* %79, i64 1
  %81 = load double, double* %80, align 8
  store double %81, double* %12, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load double*, double** %86, align 8
  %88 = getelementptr inbounds double, double* %87, i64 0
  %89 = load double, double* %88, align 8
  store double %89, double* %13, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load double*, double** %94, align 8
  %96 = getelementptr inbounds double, double* %95, i64 1
  %97 = load double, double* %96, align 8
  store double %97, double* %14, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i64 2
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load double*, double** %102, align 8
  %104 = getelementptr inbounds double, double* %103, i64 0
  %105 = load double, double* %104, align 8
  store double %105, double* %15, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load double*, double** %110, align 8
  %112 = getelementptr inbounds double, double* %111, i64 1
  %113 = load double, double* %112, align 8
  store double %113, double* %16, align 8
  %114 = load double, double* %5, align 8
  %115 = load double, double* %8, align 8
  %116 = load double, double* %10, align 8
  %117 = fsub double %115, %116
  %118 = fmul double %114, %117
  %119 = load double, double* %7, align 8
  %120 = load double, double* %10, align 8
  %121 = load double, double* %6, align 8
  %122 = fsub double %120, %121
  %123 = fmul double %119, %122
  %124 = fadd double %118, %123
  %125 = load double, double* %9, align 8
  %126 = load double, double* %6, align 8
  %127 = load double, double* %8, align 8
  %128 = fsub double %126, %127
  %129 = fmul double %125, %128
  %130 = fadd double %124, %129
  %131 = fdiv double 1.000000e+00, %130
  store double %131, double* %17, align 8
  %132 = load double, double* %17, align 8
  %133 = load double, double* %11, align 8
  %134 = load double, double* %8, align 8
  %135 = load double, double* %10, align 8
  %136 = fsub double %134, %135
  %137 = fmul double %133, %136
  %138 = load double, double* %13, align 8
  %139 = load double, double* %10, align 8
  %140 = load double, double* %6, align 8
  %141 = fsub double %139, %140
  %142 = fmul double %138, %141
  %143 = fadd double %137, %142
  %144 = load double, double* %15, align 8
  %145 = load double, double* %6, align 8
  %146 = load double, double* %8, align 8
  %147 = fsub double %145, %146
  %148 = fmul double %144, %147
  %149 = fadd double %143, %148
  %150 = fmul double %132, %149
  %151 = load double*, double** %4, align 8
  %152 = getelementptr inbounds double, double* %151, i64 0
  store double %150, double* %152, align 8
  %153 = load double, double* %17, align 8
  %154 = load double, double* %11, align 8
  %155 = load double, double* %9, align 8
  %156 = load double, double* %7, align 8
  %157 = fsub double %155, %156
  %158 = fmul double %154, %157
  %159 = load double, double* %13, align 8
  %160 = load double, double* %5, align 8
  %161 = load double, double* %9, align 8
  %162 = fsub double %160, %161
  %163 = fmul double %159, %162
  %164 = fadd double %158, %163
  %165 = load double, double* %15, align 8
  %166 = load double, double* %7, align 8
  %167 = load double, double* %5, align 8
  %168 = fsub double %166, %167
  %169 = fmul double %165, %168
  %170 = fadd double %164, %169
  %171 = fmul double %153, %170
  %172 = load double*, double** %4, align 8
  %173 = getelementptr inbounds double, double* %172, i64 1
  store double %171, double* %173, align 8
  %174 = load double, double* %17, align 8
  %175 = load double, double* %11, align 8
  %176 = load double, double* %7, align 8
  %177 = load double, double* %10, align 8
  %178 = fmul double %176, %177
  %179 = load double, double* %9, align 8
  %180 = load double, double* %8, align 8
  %181 = fmul double %179, %180
  %182 = fsub double %178, %181
  %183 = fmul double %175, %182
  %184 = load double, double* %13, align 8
  %185 = load double, double* %9, align 8
  %186 = load double, double* %6, align 8
  %187 = fmul double %185, %186
  %188 = load double, double* %5, align 8
  %189 = load double, double* %10, align 8
  %190 = fmul double %188, %189
  %191 = fsub double %187, %190
  %192 = fmul double %184, %191
  %193 = fadd double %183, %192
  %194 = load double, double* %15, align 8
  %195 = load double, double* %5, align 8
  %196 = load double, double* %8, align 8
  %197 = fmul double %195, %196
  %198 = load double, double* %7, align 8
  %199 = load double, double* %6, align 8
  %200 = fmul double %198, %199
  %201 = fsub double %197, %200
  %202 = fmul double %194, %201
  %203 = fadd double %193, %202
  %204 = fmul double %174, %203
  %205 = load double*, double** %4, align 8
  %206 = getelementptr inbounds double, double* %205, i64 2
  store double %204, double* %206, align 8
  %207 = load double, double* %17, align 8
  %208 = load double, double* %12, align 8
  %209 = load double, double* %8, align 8
  %210 = load double, double* %10, align 8
  %211 = fsub double %209, %210
  %212 = fmul double %208, %211
  %213 = load double, double* %14, align 8
  %214 = load double, double* %10, align 8
  %215 = load double, double* %6, align 8
  %216 = fsub double %214, %215
  %217 = fmul double %213, %216
  %218 = fadd double %212, %217
  %219 = load double, double* %16, align 8
  %220 = load double, double* %6, align 8
  %221 = load double, double* %8, align 8
  %222 = fsub double %220, %221
  %223 = fmul double %219, %222
  %224 = fadd double %218, %223
  %225 = fmul double %207, %224
  %226 = load double*, double** %4, align 8
  %227 = getelementptr inbounds double, double* %226, i64 3
  store double %225, double* %227, align 8
  %228 = load double, double* %17, align 8
  %229 = load double, double* %12, align 8
  %230 = load double, double* %9, align 8
  %231 = load double, double* %7, align 8
  %232 = fsub double %230, %231
  %233 = fmul double %229, %232
  %234 = load double, double* %14, align 8
  %235 = load double, double* %5, align 8
  %236 = load double, double* %9, align 8
  %237 = fsub double %235, %236
  %238 = fmul double %234, %237
  %239 = fadd double %233, %238
  %240 = load double, double* %16, align 8
  %241 = load double, double* %7, align 8
  %242 = load double, double* %5, align 8
  %243 = fsub double %241, %242
  %244 = fmul double %240, %243
  %245 = fadd double %239, %244
  %246 = fmul double %228, %245
  %247 = load double*, double** %4, align 8
  %248 = getelementptr inbounds double, double* %247, i64 4
  store double %246, double* %248, align 8
  %249 = load double, double* %17, align 8
  %250 = load double, double* %12, align 8
  %251 = load double, double* %7, align 8
  %252 = load double, double* %10, align 8
  %253 = fmul double %251, %252
  %254 = load double, double* %9, align 8
  %255 = load double, double* %8, align 8
  %256 = fmul double %254, %255
  %257 = fsub double %253, %256
  %258 = fmul double %250, %257
  %259 = load double, double* %14, align 8
  %260 = load double, double* %9, align 8
  %261 = load double, double* %6, align 8
  %262 = fmul double %260, %261
  %263 = load double, double* %5, align 8
  %264 = load double, double* %10, align 8
  %265 = fmul double %263, %264
  %266 = fsub double %262, %265
  %267 = fmul double %259, %266
  %268 = fadd double %258, %267
  %269 = load double, double* %16, align 8
  %270 = load double, double* %5, align 8
  %271 = load double, double* %8, align 8
  %272 = fmul double %270, %271
  %273 = load double, double* %7, align 8
  %274 = load double, double* %6, align 8
  %275 = fmul double %273, %274
  %276 = fsub double %272, %275
  %277 = fmul double %269, %276
  %278 = fadd double %268, %277
  %279 = fmul double %249, %278
  %280 = load double*, double** %4, align 8
  %281 = getelementptr inbounds double, double* %280, i64 5
  store double %279, double* %281, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
