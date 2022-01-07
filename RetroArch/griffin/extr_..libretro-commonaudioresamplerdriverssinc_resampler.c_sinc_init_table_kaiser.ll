; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonaudioresamplerdriverssinc_resampler.c_sinc_init_table_kaiser.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonaudioresamplerdriverssinc_resampler.c_sinc_init_table_kaiser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, double, float*, i32, i32, i32)* @sinc_init_table_kaiser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sinc_init_table_kaiser(%struct.TYPE_3__* %0, double %1, float* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca double, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store double %1, double* %8, align 8
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call double @kaiser_window_function(double 0.000000e+00, i32 %32)
  store double %33, double* %15, align 8
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 2, i32 1
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %39, 2.000000e+00
  store double %40, double* %17, align 8
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %101, %6
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %104

45:                                               ; preds = %41
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %97, %45
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %100

50:                                               ; preds = %46
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %10, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* %20, align 4
  %57 = sitofp i32 %56 to double
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sitofp i32 %60 to double
  %62 = fdiv double %57, %61
  store double %62, double* %21, align 8
  %63 = load double, double* %21, align 8
  %64 = fmul double 2.000000e+00, %63
  %65 = fsub double %64, 1.000000e+00
  store double %65, double* %21, align 8
  %66 = load double, double* %17, align 8
  %67 = load double, double* %21, align 8
  %68 = fmul double %66, %67
  store double %68, double* %18, align 8
  %69 = load double, double* %8, align 8
  %70 = load double, double* @M_PI, align 8
  %71 = load double, double* %18, align 8
  %72 = fmul double %70, %71
  %73 = load double, double* %8, align 8
  %74 = fmul double %72, %73
  %75 = call double @sinc(double %74)
  %76 = fmul double %69, %75
  %77 = load double, double* %21, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call double @kaiser_window_function(double %77, i32 %80)
  %82 = fmul double %76, %81
  %83 = load double, double* %15, align 8
  %84 = fdiv double %82, %83
  %85 = fptrunc double %84 to float
  store float %85, float* %19, align 4
  %86 = load float, float* %19, align 4
  %87 = load float*, float** %9, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %16, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %11, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %87, i64 %95
  store float %86, float* %96, align 4
  br label %97

97:                                               ; preds = %50
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %46

100:                                              ; preds = %46
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %41

104:                                              ; preds = %41
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %235

107:                                              ; preds = %104
  store i32 0, i32* %23, align 4
  br label %108

108:                                              ; preds = %159, %107
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %10, align 4
  %111 = sub nsw i32 %110, 1
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %162

113:                                              ; preds = %108
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %155, %113
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %158

118:                                              ; preds = %114
  %119 = load float*, float** %9, align 8
  %120 = load i32, i32* %23, align 4
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* %16, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %11, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %119, i64 %128
  %130 = load float, float* %129, align 4
  %131 = load float*, float** %9, align 8
  %132 = load i32, i32* %23, align 4
  %133 = load i32, i32* %16, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load i32, i32* %11, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %131, i64 %139
  %141 = load float, float* %140, align 4
  %142 = fsub float %130, %141
  store float %142, float* %24, align 4
  %143 = load float, float* %24, align 4
  %144 = load float*, float** %9, align 8
  %145 = load i32, i32* %23, align 4
  %146 = load i32, i32* %16, align 4
  %147 = mul nsw i32 %145, %146
  %148 = add nsw i32 %147, 1
  %149 = load i32, i32* %11, align 4
  %150 = mul nsw i32 %148, %149
  %151 = load i32, i32* %14, align 4
  %152 = add nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %144, i64 %153
  store float %143, float* %154, align 4
  br label %155

155:                                              ; preds = %118
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %14, align 4
  br label %114

158:                                              ; preds = %114
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %23, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %23, align 4
  br label %108

162:                                              ; preds = %108
  %163 = load i32, i32* %10, align 4
  %164 = sub nsw i32 %163, 1
  store i32 %164, i32* %22, align 4
  store i32 0, i32* %14, align 4
  br label %165

165:                                              ; preds = %231, %162
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %234

169:                                              ; preds = %165
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %10, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load i32, i32* %22, align 4
  %174 = add nsw i32 %173, 1
  %175 = add nsw i32 %172, %174
  store i32 %175, i32* %28, align 4
  %176 = load i32, i32* %28, align 4
  %177 = sitofp i32 %176 to double
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %11, align 4
  %180 = mul nsw i32 %178, %179
  %181 = sitofp i32 %180 to double
  %182 = fdiv double %177, %181
  store double %182, double* %29, align 8
  %183 = load double, double* %29, align 8
  %184 = fmul double 2.000000e+00, %183
  %185 = fsub double %184, 1.000000e+00
  store double %185, double* %29, align 8
  %186 = load double, double* %17, align 8
  %187 = load double, double* %29, align 8
  %188 = fmul double %186, %187
  store double %188, double* %27, align 8
  %189 = load double, double* %8, align 8
  %190 = load double, double* @M_PI, align 8
  %191 = load double, double* %27, align 8
  %192 = fmul double %190, %191
  %193 = load double, double* %8, align 8
  %194 = fmul double %192, %193
  %195 = call double @sinc(double %194)
  %196 = fmul double %189, %195
  %197 = load double, double* %29, align 8
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call double @kaiser_window_function(double %197, i32 %200)
  %202 = fmul double %196, %201
  %203 = load double, double* %15, align 8
  %204 = fdiv double %202, %203
  %205 = fptrunc double %204 to float
  store float %205, float* %25, align 4
  %206 = load float, float* %25, align 4
  %207 = load float*, float** %9, align 8
  %208 = load i32, i32* %22, align 4
  %209 = load i32, i32* %16, align 4
  %210 = mul nsw i32 %208, %209
  %211 = load i32, i32* %11, align 4
  %212 = mul nsw i32 %210, %211
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %207, i64 %215
  %217 = load float, float* %216, align 4
  %218 = fsub float %206, %217
  store float %218, float* %26, align 4
  %219 = load float, float* %26, align 4
  %220 = load float*, float** %9, align 8
  %221 = load i32, i32* %22, align 4
  %222 = load i32, i32* %16, align 4
  %223 = mul nsw i32 %221, %222
  %224 = add nsw i32 %223, 1
  %225 = load i32, i32* %11, align 4
  %226 = mul nsw i32 %224, %225
  %227 = load i32, i32* %14, align 4
  %228 = add nsw i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %220, i64 %229
  store float %219, float* %230, align 4
  br label %231

231:                                              ; preds = %169
  %232 = load i32, i32* %14, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %14, align 4
  br label %165

234:                                              ; preds = %165
  br label %235

235:                                              ; preds = %234, %104
  ret void
}

declare dso_local double @kaiser_window_function(double, i32) #1

declare dso_local double @sinc(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
