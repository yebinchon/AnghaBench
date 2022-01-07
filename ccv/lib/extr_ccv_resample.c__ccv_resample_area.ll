; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_resample.c__ccv_resample_area.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_resample.c__ccv_resample_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, double, i32 }
%struct.TYPE_6__ = type { i32, i32, float }

@ccv_matrix_setter = common dso_local global i32 0, align 4
@for_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_5__*)* @_ccv_resample_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_resample_area(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 0
  br label %32

32:                                               ; preds = %27, %2
  %33 = phi i1 [ false, %2 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = mul i64 12, %39
  %41 = mul i64 %40, 2
  %42 = trunc i64 %41 to i32
  %43 = call i64 @alloca(i32 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %5, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @CCV_GET_CHANNEL(i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sitofp i32 %51 to double
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sitofp i32 %55 to double
  %57 = fdiv double %52, %56
  store double %57, double* %7, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load double, double* %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load double, double* %62, align 8
  %64 = fdiv double %60, %63
  store double %64, double* %8, align 8
  %65 = load double, double* %7, align 8
  %66 = load double, double* %8, align 8
  %67 = fmul double %65, %66
  %68 = fdiv double 1.000000e+00, %67
  store double %68, double* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %207, %32
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %210

75:                                               ; preds = %69
  %76 = load i32, i32* %10, align 4
  %77 = sitofp i32 %76 to double
  %78 = load double, double* %7, align 8
  %79 = fmul double %77, %78
  store double %79, double* %16, align 8
  %80 = load double, double* %16, align 8
  %81 = load double, double* %7, align 8
  %82 = fadd double %80, %81
  store double %82, double* %17, align 8
  %83 = load double, double* %16, align 8
  %84 = fadd double %83, 1.000000e+00
  %85 = fsub double %84, 0x3EB0C6F7A0B5ED8D
  %86 = fptosi double %85 to i32
  store i32 %86, i32* %18, align 4
  %87 = load double, double* %17, align 8
  %88 = fptosi double %87 to i32
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 1
  %94 = call i32 @ccv_min(i32 %89, i32 %93)
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1
  %100 = call i32 @ccv_min(i32 %95, i32 %99)
  store i32 %100, i32* %19, align 4
  %101 = load i32, i32* %18, align 4
  %102 = sitofp i32 %101 to double
  %103 = load double, double* %16, align 8
  %104 = fcmp ogt double %102, %103
  br i1 %104, label %105, label %136

105:                                              ; preds = %75
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %6, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i32 %108, i32* %113, align 4
  %114 = load i32, i32* %18, align 4
  %115 = sub nsw i32 %114, 1
  %116 = load i32, i32* %6, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  store i32 %117, i32* %122, align 4
  %123 = load i32, i32* %18, align 4
  %124 = sitofp i32 %123 to double
  %125 = load double, double* %16, align 8
  %126 = fsub double %124, %125
  %127 = load double, double* %9, align 8
  %128 = fmul double %126, %127
  %129 = fptrunc double %128 to float
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %15, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  store float %129, float* %135, align 4
  br label %136

136:                                              ; preds = %105, %75
  %137 = load i32, i32* %18, align 4
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %167, %136
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %19, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %170

142:                                              ; preds = %138
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %6, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i32 %145, i32* %150, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %6, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  store i32 %153, i32* %158, align 4
  %159 = load double, double* %9, align 8
  %160 = fptrunc double %159 to float
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %15, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  store float %160, float* %166, align 4
  br label %167

167:                                              ; preds = %142
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %12, align 4
  br label %138

170:                                              ; preds = %138
  %171 = load double, double* %17, align 8
  %172 = load i32, i32* %19, align 4
  %173 = sitofp i32 %172 to double
  %174 = fsub double %171, %173
  %175 = fcmp ogt double %174, 1.000000e-03
  br i1 %175, label %176, label %206

176:                                              ; preds = %170
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %6, align 4
  %179 = mul nsw i32 %177, %178
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %181 = load i32, i32* %15, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  store i32 %179, i32* %184, align 4
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %6, align 4
  %187 = mul nsw i32 %185, %186
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %189 = load i32, i32* %15, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  store i32 %187, i32* %192, align 4
  %193 = load double, double* %17, align 8
  %194 = load i32, i32* %19, align 4
  %195 = sitofp i32 %194 to double
  %196 = fsub double %193, %195
  %197 = load double, double* %9, align 8
  %198 = fmul double %196, %197
  %199 = fptrunc double %198 to float
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %15, align 4
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 2
  store float %199, float* %205, align 4
  br label %206

206:                                              ; preds = %176, %170
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %10, align 4
  br label %69

210:                                              ; preds = %69
  %211 = load i32, i32* %15, align 4
  store i32 %211, i32* %20, align 4
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %6, align 4
  %216 = mul nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = mul i64 %217, 4
  %219 = trunc i64 %218 to i32
  %220 = call i64 @alloca(i32 %219)
  %221 = inttoptr i64 %220 to float*
  store float* %221, float** %21, align 8
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = mul nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = mul i64 %227, 4
  %229 = trunc i64 %228 to i32
  %230 = call i64 @alloca(i32 %229)
  %231 = inttoptr i64 %230 to float*
  store float* %231, float** %22, align 8
  store i32 0, i32* %10, align 4
  br label %232

232:                                              ; preds = %249, %210
  %233 = load i32, i32* %10, align 4
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %6, align 4
  %238 = mul nsw i32 %236, %237
  %239 = icmp slt i32 %233, %238
  br i1 %239, label %240, label %252

240:                                              ; preds = %232
  %241 = load float*, float** %22, align 8
  %242 = load i32, i32* %10, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %241, i64 %243
  store float 0.000000e+00, float* %244, align 4
  %245 = load float*, float** %21, align 8
  %246 = load i32, i32* %10, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %245, i64 %247
  store float 0.000000e+00, float* %248, align 4
  br label %249

249:                                              ; preds = %240
  %250 = load i32, i32* %10, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %10, align 4
  br label %232

252:                                              ; preds = %232
  store i32 0, i32* %11, align 4
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @ccv_matrix_setter, align 4
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @for_block, align 4
  %261 = call i32 @ccv_matrix_getter(i32 %255, i32 %256, i32 %259, i32 %260)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @CCV_GET_CHANNEL(i32) #1

declare dso_local i32 @ccv_min(i32, i32) #1

declare dso_local i32 @ccv_matrix_getter(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
