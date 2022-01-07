; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonaudioresamplerdriverssinc_resampler.c_sinc_init_table_lanczos.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonaudioresamplerdriverssinc_resampler.c_sinc_init_table_lanczos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, double, float*, i32, i32, i32)* @sinc_init_table_lanczos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sinc_init_table_lanczos(i32* %0, double %1, float* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
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
  store i32* %0, i32** %7, align 8
  store double %1, double* %8, align 8
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %30 = call double @lanzcos_window_function(double 0.000000e+00)
  store double %30, double* %15, align 8
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 2, i32 1
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sitofp i32 %35 to double
  %37 = fdiv double %36, 2.000000e+00
  store double %37, double* %17, align 8
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %95, %6
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %98

42:                                               ; preds = %38
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %91, %42
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %94

47:                                               ; preds = %43
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %20, align 4
  %53 = load i32, i32* %20, align 4
  %54 = sitofp i32 %53 to double
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sitofp i32 %57 to double
  %59 = fdiv double %54, %58
  store double %59, double* %21, align 8
  %60 = load double, double* %21, align 8
  %61 = fmul double 2.000000e+00, %60
  %62 = fsub double %61, 1.000000e+00
  store double %62, double* %21, align 8
  %63 = load double, double* %17, align 8
  %64 = load double, double* %21, align 8
  %65 = fmul double %63, %64
  store double %65, double* %18, align 8
  %66 = load double, double* %8, align 8
  %67 = load double, double* @M_PI, align 8
  %68 = load double, double* %18, align 8
  %69 = fmul double %67, %68
  %70 = load double, double* %8, align 8
  %71 = fmul double %69, %70
  %72 = call double @sinc(double %71)
  %73 = fmul double %66, %72
  %74 = load double, double* %21, align 8
  %75 = call double @lanzcos_window_function(double %74)
  %76 = fmul double %73, %75
  %77 = load double, double* %15, align 8
  %78 = fdiv double %76, %77
  %79 = fptrunc double %78 to float
  store float %79, float* %19, align 4
  %80 = load float, float* %19, align 4
  %81 = load float*, float** %9, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %16, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %11, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %81, i64 %89
  store float %80, float* %90, align 4
  br label %91

91:                                               ; preds = %47
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %43

94:                                               ; preds = %43
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %38

98:                                               ; preds = %38
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %226

101:                                              ; preds = %98
  store i32 0, i32* %23, align 4
  br label %102

102:                                              ; preds = %153, %101
  %103 = load i32, i32* %23, align 4
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %104, 1
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %156

107:                                              ; preds = %102
  store i32 0, i32* %14, align 4
  br label %108

108:                                              ; preds = %149, %107
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %152

112:                                              ; preds = %108
  %113 = load float*, float** %9, align 8
  %114 = load i32, i32* %23, align 4
  %115 = add nsw i32 %114, 1
  %116 = load i32, i32* %16, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* %11, align 4
  %119 = mul nsw i32 %117, %118
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %113, i64 %122
  %124 = load float, float* %123, align 4
  %125 = load float*, float** %9, align 8
  %126 = load i32, i32* %23, align 4
  %127 = load i32, i32* %16, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32, i32* %11, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %125, i64 %133
  %135 = load float, float* %134, align 4
  %136 = fsub float %124, %135
  store float %136, float* %24, align 4
  %137 = load float, float* %24, align 4
  %138 = load float*, float** %9, align 8
  %139 = load i32, i32* %23, align 4
  %140 = load i32, i32* %16, align 4
  %141 = mul nsw i32 %139, %140
  %142 = add nsw i32 %141, 1
  %143 = load i32, i32* %11, align 4
  %144 = mul nsw i32 %142, %143
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %138, i64 %147
  store float %137, float* %148, align 4
  br label %149

149:                                              ; preds = %112
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %14, align 4
  br label %108

152:                                              ; preds = %108
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %23, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %23, align 4
  br label %102

156:                                              ; preds = %102
  %157 = load i32, i32* %10, align 4
  %158 = sub nsw i32 %157, 1
  store i32 %158, i32* %22, align 4
  store i32 0, i32* %14, align 4
  br label %159

159:                                              ; preds = %222, %156
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %225

163:                                              ; preds = %159
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %10, align 4
  %166 = mul nsw i32 %164, %165
  %167 = load i32, i32* %22, align 4
  %168 = add nsw i32 %167, 1
  %169 = add nsw i32 %166, %168
  store i32 %169, i32* %28, align 4
  %170 = load i32, i32* %28, align 4
  %171 = sitofp i32 %170 to double
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %11, align 4
  %174 = mul nsw i32 %172, %173
  %175 = sitofp i32 %174 to double
  %176 = fdiv double %171, %175
  store double %176, double* %29, align 8
  %177 = load double, double* %29, align 8
  %178 = fmul double 2.000000e+00, %177
  %179 = fsub double %178, 1.000000e+00
  store double %179, double* %29, align 8
  %180 = load double, double* %17, align 8
  %181 = load double, double* %29, align 8
  %182 = fmul double %180, %181
  store double %182, double* %27, align 8
  %183 = load double, double* %8, align 8
  %184 = load double, double* @M_PI, align 8
  %185 = load double, double* %27, align 8
  %186 = fmul double %184, %185
  %187 = load double, double* %8, align 8
  %188 = fmul double %186, %187
  %189 = call double @sinc(double %188)
  %190 = fmul double %183, %189
  %191 = load double, double* %29, align 8
  %192 = call double @lanzcos_window_function(double %191)
  %193 = fmul double %190, %192
  %194 = load double, double* %15, align 8
  %195 = fdiv double %193, %194
  %196 = fptrunc double %195 to float
  store float %196, float* %25, align 4
  %197 = load float, float* %25, align 4
  %198 = load float*, float** %9, align 8
  %199 = load i32, i32* %22, align 4
  %200 = load i32, i32* %16, align 4
  %201 = mul nsw i32 %199, %200
  %202 = load i32, i32* %11, align 4
  %203 = mul nsw i32 %201, %202
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %203, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %198, i64 %206
  %208 = load float, float* %207, align 4
  %209 = fsub float %197, %208
  store float %209, float* %26, align 4
  %210 = load float, float* %26, align 4
  %211 = load float*, float** %9, align 8
  %212 = load i32, i32* %22, align 4
  %213 = load i32, i32* %16, align 4
  %214 = mul nsw i32 %212, %213
  %215 = add nsw i32 %214, 1
  %216 = load i32, i32* %11, align 4
  %217 = mul nsw i32 %215, %216
  %218 = load i32, i32* %14, align 4
  %219 = add nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %211, i64 %220
  store float %210, float* %221, align 4
  br label %222

222:                                              ; preds = %163
  %223 = load i32, i32* %14, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %14, align 4
  br label %159

225:                                              ; preds = %159
  br label %226

226:                                              ; preds = %225, %98
  ret void
}

declare dso_local double @lanzcos_window_function(double) #1

declare dso_local double @sinc(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
