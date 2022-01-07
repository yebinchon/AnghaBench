; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_celt.c_celt_postfilter_apply_transition.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_celt.c_celt_postfilter_apply_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, double*, double* }

@CELT_OVERLAP = common dso_local global i32 0, align 4
@ff_celt_window2 = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*)* @celt_postfilter_apply_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @celt_postfilter_apply_transition(%struct.TYPE_3__* %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store float* %1, float** %4, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load double*, double** %27, align 8
  %29 = getelementptr inbounds double, double* %28, i64 0
  %30 = load double, double* %29, align 8
  %31 = fcmp oeq double %30, 0.000000e+00
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load double*, double** %34, align 8
  %36 = getelementptr inbounds double, double* %35, i64 0
  %37 = load double, double* %36, align 8
  %38 = fcmp oeq double %37, 0.000000e+00
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %229

40:                                               ; preds = %32, %2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load double*, double** %42, align 8
  %44 = getelementptr inbounds double, double* %43, i64 0
  %45 = load double, double* %44, align 8
  %46 = fptrunc double %45 to float
  store float %46, float* %7, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load double*, double** %48, align 8
  %50 = getelementptr inbounds double, double* %49, i64 1
  %51 = load double, double* %50, align 8
  %52 = fptrunc double %51 to float
  store float %52, float* %8, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load double*, double** %54, align 8
  %56 = getelementptr inbounds double, double* %55, i64 2
  %57 = load double, double* %56, align 8
  %58 = fptrunc double %57 to float
  store float %58, float* %9, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load double*, double** %60, align 8
  %62 = getelementptr inbounds double, double* %61, i64 0
  %63 = load double, double* %62, align 8
  %64 = fptrunc double %63 to float
  store float %64, float* %10, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load double*, double** %66, align 8
  %68 = getelementptr inbounds double, double* %67, i64 1
  %69 = load double, double* %68, align 8
  %70 = fptrunc double %69 to float
  store float %70, float* %11, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load double*, double** %72, align 8
  %74 = getelementptr inbounds double, double* %73, i64 2
  %75 = load double, double* %74, align 8
  %76 = fptrunc double %75 to float
  store float %76, float* %12, align 4
  %77 = load float*, float** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sub nsw i32 0, %78
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %77, i64 %81
  %83 = load float, float* %82, align 4
  store float %83, float* %14, align 4
  %84 = load float*, float** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 0, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %84, i64 %87
  %89 = load float, float* %88, align 4
  store float %89, float* %15, align 4
  %90 = load float*, float** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 0, %91
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %90, i64 %94
  %96 = load float, float* %95, align 4
  store float %96, float* %16, align 4
  %97 = load float*, float** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 0, %98
  %100 = sub nsw i32 %99, 2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %97, i64 %101
  %103 = load float, float* %102, align 4
  store float %103, float* %17, align 4
  store i32 0, i32* %18, align 4
  br label %104

104:                                              ; preds = %226, %40
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* @CELT_OVERLAP, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %229

108:                                              ; preds = %104
  %109 = load float*, float** @ff_celt_window2, align 8
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %109, i64 %111
  %113 = load float, float* %112, align 4
  store float %113, float* %19, align 4
  %114 = load float*, float** %4, align 8
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %6, align 4
  %117 = sub nsw i32 %115, %116
  %118 = add nsw i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %114, i64 %119
  %121 = load float, float* %120, align 4
  store float %121, float* %13, align 4
  %122 = load float, float* %19, align 4
  %123 = fpext float %122 to double
  %124 = fsub double 1.000000e+00, %123
  %125 = load float, float* %7, align 4
  %126 = fpext float %125 to double
  %127 = fmul double %124, %126
  %128 = load float*, float** %4, align 8
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %5, align 4
  %131 = sub nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %128, i64 %132
  %134 = load float, float* %133, align 4
  %135 = fpext float %134 to double
  %136 = fmul double %127, %135
  %137 = load float, float* %19, align 4
  %138 = fpext float %137 to double
  %139 = fsub double 1.000000e+00, %138
  %140 = load float, float* %8, align 4
  %141 = fpext float %140 to double
  %142 = fmul double %139, %141
  %143 = load float*, float** %4, align 8
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %5, align 4
  %146 = sub nsw i32 %144, %145
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %143, i64 %148
  %150 = load float, float* %149, align 4
  %151 = load float*, float** %4, align 8
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %5, align 4
  %154 = sub nsw i32 %152, %153
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %151, i64 %156
  %158 = load float, float* %157, align 4
  %159 = fadd float %150, %158
  %160 = fpext float %159 to double
  %161 = fmul double %142, %160
  %162 = fadd double %136, %161
  %163 = load float, float* %19, align 4
  %164 = fpext float %163 to double
  %165 = fsub double 1.000000e+00, %164
  %166 = load float, float* %9, align 4
  %167 = fpext float %166 to double
  %168 = fmul double %165, %167
  %169 = load float*, float** %4, align 8
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %5, align 4
  %172 = sub nsw i32 %170, %171
  %173 = sub nsw i32 %172, 2
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %169, i64 %174
  %176 = load float, float* %175, align 4
  %177 = load float*, float** %4, align 8
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* %5, align 4
  %180 = sub nsw i32 %178, %179
  %181 = add nsw i32 %180, 2
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %177, i64 %182
  %184 = load float, float* %183, align 4
  %185 = fadd float %176, %184
  %186 = fpext float %185 to double
  %187 = fmul double %168, %186
  %188 = fadd double %162, %187
  %189 = load float, float* %19, align 4
  %190 = load float, float* %10, align 4
  %191 = fmul float %189, %190
  %192 = load float, float* %15, align 4
  %193 = fmul float %191, %192
  %194 = fpext float %193 to double
  %195 = fadd double %188, %194
  %196 = load float, float* %19, align 4
  %197 = load float, float* %11, align 4
  %198 = fmul float %196, %197
  %199 = load float, float* %14, align 4
  %200 = load float, float* %16, align 4
  %201 = fadd float %199, %200
  %202 = fmul float %198, %201
  %203 = fpext float %202 to double
  %204 = fadd double %195, %203
  %205 = load float, float* %19, align 4
  %206 = load float, float* %12, align 4
  %207 = fmul float %205, %206
  %208 = load float, float* %13, align 4
  %209 = load float, float* %17, align 4
  %210 = fadd float %208, %209
  %211 = fmul float %207, %210
  %212 = fpext float %211 to double
  %213 = fadd double %204, %212
  %214 = load float*, float** %4, align 8
  %215 = load i32, i32* %18, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %214, i64 %216
  %218 = load float, float* %217, align 4
  %219 = fpext float %218 to double
  %220 = fadd double %219, %213
  %221 = fptrunc double %220 to float
  store float %221, float* %217, align 4
  %222 = load float, float* %16, align 4
  store float %222, float* %17, align 4
  %223 = load float, float* %15, align 4
  store float %223, float* %16, align 4
  %224 = load float, float* %14, align 4
  store float %224, float* %15, align 4
  %225 = load float, float* %13, align 4
  store float %225, float* %14, align 4
  br label %226

226:                                              ; preds = %108
  %227 = load i32, i32* %18, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %18, align 4
  br label %104

229:                                              ; preds = %39, %104
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
