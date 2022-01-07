; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_lsp.c_Laguerre_With_Deflation.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_lsp.c_Laguerre_With_Deflation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EPSILON = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float*, i32, float*)* @Laguerre_With_Deflation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Laguerre_With_Deflation(float* %0, i32 %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store float* %2, float** %7, align 8
  store double 0.000000e+00, double* %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul i64 8, %20
  %22 = trunc i64 %21 to i32
  %23 = call double* @alloca(i32 %22)
  store double* %23, double** %11, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %39, %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load float*, float** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %29, i64 %31
  %33 = load float, float* %32, align 4
  %34 = fpext float %33 to double
  %35 = load double*, double** %11, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %35, i64 %37
  store double %34, double* %38, align 8
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %189, %42
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %192

47:                                               ; preds = %44
  store double 0.000000e+00, double* %12, align 8
  br label %48

48:                                               ; preds = %47, %154
  %49 = load double*, double** %11, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %49, i64 %51
  %53 = load double, double* %52, align 8
  store double %53, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %16, align 8
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %79, %48
  %56 = load i32, i32* %8, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %55
  %59 = load double, double* %12, align 8
  %60 = load double, double* %16, align 8
  %61 = fmul double %59, %60
  %62 = load double, double* %15, align 8
  %63 = fadd double %61, %62
  store double %63, double* %16, align 8
  %64 = load double, double* %12, align 8
  %65 = load double, double* %15, align 8
  %66 = fmul double %64, %65
  %67 = load double, double* %14, align 8
  %68 = fadd double %66, %67
  store double %68, double* %15, align 8
  %69 = load double, double* %12, align 8
  %70 = load double, double* %14, align 8
  %71 = fmul double %69, %70
  %72 = load double*, double** %11, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %72, i64 %75
  %77 = load double, double* %76, align 8
  %78 = fadd double %71, %77
  store double %78, double* %14, align 8
  br label %79

79:                                               ; preds = %58
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %8, align 4
  br label %55

82:                                               ; preds = %55
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sitofp i32 %84 to double
  %86 = load i32, i32* %9, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sitofp i32 %87 to double
  %89 = load double, double* %15, align 8
  %90 = fmul double %88, %89
  %91 = load double, double* %15, align 8
  %92 = fmul double %90, %91
  %93 = load i32, i32* %9, align 4
  %94 = sitofp i32 %93 to double
  %95 = load double, double* %14, align 8
  %96 = fmul double %94, %95
  %97 = load double, double* %16, align 8
  %98 = fmul double %96, %97
  %99 = fsub double %92, %98
  %100 = fmul double %85, %99
  store double %100, double* %17, align 8
  %101 = load double, double* %17, align 8
  %102 = fcmp olt double %101, 0.000000e+00
  br i1 %102, label %103, label %104

103:                                              ; preds = %82
  store i32 -1, i32* %4, align 4
  br label %193

104:                                              ; preds = %82
  %105 = load double, double* %15, align 8
  %106 = fcmp ogt double %105, 0.000000e+00
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load double, double* %15, align 8
  %109 = load double, double* %17, align 8
  %110 = call double @sqrt(double %109) #3
  %111 = fadd double %108, %110
  store double %111, double* %17, align 8
  %112 = load double, double* %17, align 8
  %113 = load double, double* @EPSILON, align 8
  %114 = fcmp olt double %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load double, double* @EPSILON, align 8
  store double %116, double* %17, align 8
  br label %117

117:                                              ; preds = %115, %107
  br label %131

118:                                              ; preds = %104
  %119 = load double, double* %15, align 8
  %120 = load double, double* %17, align 8
  %121 = call double @sqrt(double %120) #3
  %122 = fsub double %119, %121
  store double %122, double* %17, align 8
  %123 = load double, double* %17, align 8
  %124 = load double, double* @EPSILON, align 8
  %125 = fneg double %124
  %126 = fcmp ogt double %123, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %118
  %128 = load double, double* @EPSILON, align 8
  %129 = fneg double %128
  store double %129, double* %17, align 8
  br label %130

130:                                              ; preds = %127, %118
  br label %131

131:                                              ; preds = %130, %117
  %132 = load i32, i32* %9, align 4
  %133 = sitofp i32 %132 to double
  %134 = load double, double* %14, align 8
  %135 = fmul double %133, %134
  %136 = load double, double* %17, align 8
  %137 = fdiv double %135, %136
  store double %137, double* %13, align 8
  %138 = load double, double* %13, align 8
  %139 = load double, double* %12, align 8
  %140 = fsub double %139, %138
  store double %140, double* %12, align 8
  %141 = load double, double* %13, align 8
  %142 = fcmp olt double %141, 0.000000e+00
  br i1 %142, label %143, label %146

143:                                              ; preds = %131
  %144 = load double, double* %13, align 8
  %145 = fmul double %144, -1.000000e+00
  store double %145, double* %13, align 8
  br label %146

146:                                              ; preds = %143, %131
  %147 = load double, double* %13, align 8
  %148 = load double, double* %12, align 8
  %149 = fdiv double %147, %148
  %150 = call i32 @fabs(double %149)
  %151 = sitofp i32 %150 to double
  %152 = fcmp olt double %151, 0x3DA5FD7FE1796495
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %156

154:                                              ; preds = %146
  %155 = load double, double* %13, align 8
  store double %155, double* %10, align 8
  br label %48

156:                                              ; preds = %153
  %157 = load double, double* %12, align 8
  %158 = fptrunc double %157 to float
  %159 = load float*, float** %7, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %159, i64 %162
  store float %158, float* %163, align 4
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %183, %156
  %166 = load i32, i32* %8, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %186

168:                                              ; preds = %165
  %169 = load double, double* %12, align 8
  %170 = load double*, double** %11, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds double, double* %170, i64 %172
  %174 = load double, double* %173, align 8
  %175 = fmul double %169, %174
  %176 = load double*, double** %11, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds double, double* %176, i64 %179
  %181 = load double, double* %180, align 8
  %182 = fadd double %181, %175
  store double %182, double* %180, align 8
  br label %183

183:                                              ; preds = %168
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %8, align 4
  br label %165

186:                                              ; preds = %165
  %187 = load double*, double** %11, align 8
  %188 = getelementptr inbounds double, double* %187, i32 1
  store double* %188, double** %11, align 8
  br label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %9, align 4
  br label %44

192:                                              ; preds = %44
  store i32 0, i32* %4, align 4
  br label %193

193:                                              ; preds = %192, %103
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local double* @alloca(i32) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i32 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
