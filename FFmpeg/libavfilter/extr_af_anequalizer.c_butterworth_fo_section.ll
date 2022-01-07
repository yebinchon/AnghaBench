; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_butterworth_fo_section.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_butterworth_fo_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32, double, i32, double, i32, i32, double, i32, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, double, double, double, double, double, double)* @butterworth_fo_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @butterworth_fo_section(%struct.TYPE_3__* %0, double %1, double %2, double %3, double %4, double %5, double %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  %15 = load double, double* %14, align 8
  %16 = fcmp oeq double %15, 1.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = load double, double* %14, align 8
  %19 = fcmp oeq double %18, -1.000000e+00
  br i1 %19, label %20, label %123

20:                                               ; preds = %17, %7
  %21 = load double, double* %11, align 8
  %22 = load double, double* %11, align 8
  %23 = fmul double %21, %22
  %24 = load double, double* %9, align 8
  %25 = fmul double %23, %24
  %26 = load double, double* %9, align 8
  %27 = fmul double %25, %26
  %28 = load double, double* %11, align 8
  %29 = fmul double 2.000000e+00, %28
  %30 = load double, double* %12, align 8
  %31 = fmul double %29, %30
  %32 = load double, double* %10, align 8
  %33 = fmul double %31, %32
  %34 = load double, double* %9, align 8
  %35 = fmul double %33, %34
  %36 = fadd double %27, %35
  %37 = load double, double* %12, align 8
  %38 = load double, double* %12, align 8
  %39 = fmul double %37, %38
  %40 = fadd double %36, %39
  %41 = load double, double* %13, align 8
  %42 = fdiv double %40, %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store double %42, double* %44, align 8
  %45 = load double, double* %14, align 8
  %46 = fmul double 2.000000e+00, %45
  %47 = load double, double* %11, align 8
  %48 = load double, double* %11, align 8
  %49 = fmul double %47, %48
  %50 = load double, double* %9, align 8
  %51 = fmul double %49, %50
  %52 = load double, double* %9, align 8
  %53 = fmul double %51, %52
  %54 = load double, double* %12, align 8
  %55 = load double, double* %12, align 8
  %56 = fmul double %54, %55
  %57 = fsub double %53, %56
  %58 = fmul double %46, %57
  %59 = load double, double* %13, align 8
  %60 = fdiv double %58, %59
  %61 = fptosi double %60 to i32
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load double, double* %11, align 8
  %65 = load double, double* %11, align 8
  %66 = fmul double %64, %65
  %67 = load double, double* %9, align 8
  %68 = fmul double %66, %67
  %69 = load double, double* %9, align 8
  %70 = fmul double %68, %69
  %71 = load double, double* %12, align 8
  %72 = fmul double 2.000000e+00, %71
  %73 = load double, double* %11, align 8
  %74 = fmul double %72, %73
  %75 = load double, double* %9, align 8
  %76 = fmul double %74, %75
  %77 = load double, double* %10, align 8
  %78 = fmul double %76, %77
  %79 = fsub double %70, %78
  %80 = load double, double* %12, align 8
  %81 = load double, double* %12, align 8
  %82 = fmul double %80, %81
  %83 = fadd double %79, %82
  %84 = load double, double* %13, align 8
  %85 = fdiv double %83, %84
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store double %85, double* %87, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  store i32 0, i32* %89, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 4
  store double 0.000000e+00, double* %91, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 5
  store i32 1, i32* %93, align 8
  %94 = load double, double* %14, align 8
  %95 = fmul double 2.000000e+00, %94
  %96 = load double, double* %9, align 8
  %97 = load double, double* %9, align 8
  %98 = fmul double %96, %97
  %99 = fsub double %98, 1.000000e+00
  %100 = fmul double %95, %99
  %101 = load double, double* %13, align 8
  %102 = fdiv double %100, %101
  %103 = fptosi double %102 to i32
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 4
  %106 = load double, double* %9, align 8
  %107 = load double, double* %9, align 8
  %108 = fmul double %106, %107
  %109 = load double, double* %9, align 8
  %110 = fmul double 2.000000e+00, %109
  %111 = load double, double* %10, align 8
  %112 = fmul double %110, %111
  %113 = fsub double %108, %112
  %114 = fadd double %113, 1.000000e+00
  %115 = load double, double* %13, align 8
  %116 = fdiv double %114, %115
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 7
  store double %116, double* %118, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 8
  store i32 0, i32* %120, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 9
  store double 0.000000e+00, double* %122, align 8
  br label %285

123:                                              ; preds = %17
  %124 = load double, double* %11, align 8
  %125 = load double, double* %11, align 8
  %126 = fmul double %124, %125
  %127 = load double, double* %9, align 8
  %128 = fmul double %126, %127
  %129 = load double, double* %9, align 8
  %130 = fmul double %128, %129
  %131 = load double, double* %11, align 8
  %132 = fmul double 2.000000e+00, %131
  %133 = load double, double* %12, align 8
  %134 = fmul double %132, %133
  %135 = load double, double* %10, align 8
  %136 = fmul double %134, %135
  %137 = load double, double* %9, align 8
  %138 = fmul double %136, %137
  %139 = fadd double %130, %138
  %140 = load double, double* %12, align 8
  %141 = load double, double* %12, align 8
  %142 = fmul double %140, %141
  %143 = fadd double %139, %142
  %144 = load double, double* %13, align 8
  %145 = fdiv double %143, %144
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store double %145, double* %147, align 8
  %148 = load double, double* %14, align 8
  %149 = fmul double -4.000000e+00, %148
  %150 = load double, double* %12, align 8
  %151 = load double, double* %12, align 8
  %152 = fmul double %150, %151
  %153 = load double, double* %11, align 8
  %154 = load double, double* %12, align 8
  %155 = fmul double %153, %154
  %156 = load double, double* %10, align 8
  %157 = fmul double %155, %156
  %158 = load double, double* %9, align 8
  %159 = fmul double %157, %158
  %160 = fadd double %152, %159
  %161 = fmul double %149, %160
  %162 = load double, double* %13, align 8
  %163 = fdiv double %161, %162
  %164 = fptosi double %163 to i32
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  %167 = load double, double* %12, align 8
  %168 = load double, double* %12, align 8
  %169 = fmul double %167, %168
  %170 = load double, double* %14, align 8
  %171 = fmul double 2.000000e+00, %170
  %172 = load double, double* %14, align 8
  %173 = fmul double %171, %172
  %174 = fadd double 1.000000e+00, %173
  %175 = fmul double %169, %174
  %176 = load double, double* %11, align 8
  %177 = load double, double* %11, align 8
  %178 = fmul double %176, %177
  %179 = load double, double* %9, align 8
  %180 = fmul double %178, %179
  %181 = load double, double* %9, align 8
  %182 = fmul double %180, %181
  %183 = fsub double %175, %182
  %184 = fmul double 2.000000e+00, %183
  %185 = load double, double* %13, align 8
  %186 = fdiv double %184, %185
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 2
  store double %186, double* %188, align 8
  %189 = load double, double* %14, align 8
  %190 = fmul double -4.000000e+00, %189
  %191 = load double, double* %12, align 8
  %192 = load double, double* %12, align 8
  %193 = fmul double %191, %192
  %194 = load double, double* %11, align 8
  %195 = load double, double* %12, align 8
  %196 = fmul double %194, %195
  %197 = load double, double* %10, align 8
  %198 = fmul double %196, %197
  %199 = load double, double* %9, align 8
  %200 = fmul double %198, %199
  %201 = fsub double %193, %200
  %202 = fmul double %190, %201
  %203 = load double, double* %13, align 8
  %204 = fdiv double %202, %203
  %205 = fptosi double %204 to i32
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 8
  %208 = load double, double* %11, align 8
  %209 = load double, double* %11, align 8
  %210 = fmul double %208, %209
  %211 = load double, double* %9, align 8
  %212 = fmul double %210, %211
  %213 = load double, double* %9, align 8
  %214 = fmul double %212, %213
  %215 = load double, double* %11, align 8
  %216 = fmul double 2.000000e+00, %215
  %217 = load double, double* %12, align 8
  %218 = fmul double %216, %217
  %219 = load double, double* %10, align 8
  %220 = fmul double %218, %219
  %221 = load double, double* %9, align 8
  %222 = fmul double %220, %221
  %223 = fsub double %214, %222
  %224 = load double, double* %12, align 8
  %225 = load double, double* %12, align 8
  %226 = fmul double %224, %225
  %227 = fadd double %223, %226
  %228 = load double, double* %13, align 8
  %229 = fdiv double %227, %228
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 4
  store double %229, double* %231, align 8
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 5
  store i32 1, i32* %233, align 8
  %234 = load double, double* %14, align 8
  %235 = fmul double -4.000000e+00, %234
  %236 = load double, double* %10, align 8
  %237 = load double, double* %9, align 8
  %238 = fmul double %236, %237
  %239 = fadd double 1.000000e+00, %238
  %240 = fmul double %235, %239
  %241 = load double, double* %13, align 8
  %242 = fdiv double %240, %241
  %243 = fptosi double %242 to i32
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 6
  store i32 %243, i32* %245, align 4
  %246 = load double, double* %14, align 8
  %247 = fmul double 2.000000e+00, %246
  %248 = load double, double* %14, align 8
  %249 = fmul double %247, %248
  %250 = fadd double 1.000000e+00, %249
  %251 = load double, double* %9, align 8
  %252 = load double, double* %9, align 8
  %253 = fmul double %251, %252
  %254 = fsub double %250, %253
  %255 = fmul double 2.000000e+00, %254
  %256 = load double, double* %13, align 8
  %257 = fdiv double %255, %256
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 7
  store double %257, double* %259, align 8
  %260 = load double, double* %14, align 8
  %261 = fmul double -4.000000e+00, %260
  %262 = load double, double* %10, align 8
  %263 = load double, double* %9, align 8
  %264 = fmul double %262, %263
  %265 = fsub double 1.000000e+00, %264
  %266 = fmul double %261, %265
  %267 = load double, double* %13, align 8
  %268 = fdiv double %266, %267
  %269 = fptosi double %268 to i32
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 8
  store i32 %269, i32* %271, align 8
  %272 = load double, double* %9, align 8
  %273 = load double, double* %9, align 8
  %274 = fmul double %272, %273
  %275 = load double, double* %10, align 8
  %276 = fmul double 2.000000e+00, %275
  %277 = load double, double* %9, align 8
  %278 = fmul double %276, %277
  %279 = fsub double %274, %278
  %280 = fadd double %279, 1.000000e+00
  %281 = load double, double* %13, align 8
  %282 = fdiv double %280, %281
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 9
  store double %282, double* %284, align 8
  br label %285

285:                                              ; preds = %123, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
