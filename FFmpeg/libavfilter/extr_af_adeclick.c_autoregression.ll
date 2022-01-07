; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adeclick.c_autoregression.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adeclick.c_autoregression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double*, i32, i32, double*, double*, double*)* @autoregression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @autoregression(double* %0, i32 %1, i32 %2, double* %3, double* %4, double* %5) #0 {
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  store double* %0, double** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store double* %3, double** %10, align 8
  store double* %4, double** %11, align 8
  store double* %5, double** %12, align 8
  %17 = load double*, double** %12, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(double* %17, i32 0, i32 %21)
  %23 = load double*, double** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load double*, double** %11, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sitofp i32 %27 to double
  %29 = fdiv double 1.000000e+00, %28
  %30 = fptosi double %29 to i32
  %31 = call i32 @autocorrelation(double* %23, i32 %24, i32 %25, double* %26, i32 %30)
  %32 = load double*, double** %11, align 8
  %33 = getelementptr inbounds double, double* %32, i64 1
  %34 = load double, double* %33, align 8
  %35 = fneg double %34
  %36 = load double*, double** %11, align 8
  %37 = getelementptr inbounds double, double* %36, i64 0
  %38 = load double, double* %37, align 8
  %39 = fdiv double %35, %38
  %40 = load double*, double** %12, align 8
  %41 = getelementptr inbounds double, double* %40, i64 0
  store double %39, double* %41, align 8
  %42 = load double*, double** %10, align 8
  %43 = getelementptr inbounds double, double* %42, i64 0
  store double %39, double* %43, align 8
  %44 = load double*, double** %11, align 8
  %45 = getelementptr inbounds double, double* %44, i64 0
  %46 = load double, double* %45, align 8
  %47 = load double*, double** %10, align 8
  %48 = getelementptr inbounds double, double* %47, i64 0
  %49 = load double, double* %48, align 8
  %50 = load double*, double** %10, align 8
  %51 = getelementptr inbounds double, double* %50, i64 0
  %52 = load double, double* %51, align 8
  %53 = fmul double %49, %52
  %54 = fsub double 1.000000e+00, %53
  %55 = fmul double %46, %54
  store double %55, double* %13, align 8
  store i32 1, i32* %14, align 4
  br label %56

56:                                               ; preds = %167, %6
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %170

60:                                               ; preds = %56
  store double 0.000000e+00, double* %16, align 8
  store i32 0, i32* %15, align 4
  br label %61

61:                                               ; preds = %81, %60
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load double*, double** %12, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %66, i64 %68
  %70 = load double, double* %69, align 8
  %71 = load double*, double** %11, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %71, i64 %75
  %77 = load double, double* %76, align 8
  %78 = fmul double %70, %77
  %79 = load double, double* %16, align 8
  %80 = fadd double %79, %78
  store double %80, double* %16, align 8
  br label %81

81:                                               ; preds = %65
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %15, align 4
  br label %61

84:                                               ; preds = %61
  %85 = load double*, double** %11, align 8
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %85, i64 %88
  %90 = load double, double* %89, align 8
  %91 = load double, double* %16, align 8
  %92 = fadd double %91, %90
  store double %92, double* %16, align 8
  %93 = load double, double* %16, align 8
  %94 = fneg double %93
  %95 = load double, double* %13, align 8
  %96 = fdiv double %94, %95
  %97 = load double*, double** %10, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, double* %97, i64 %99
  store double %96, double* %100, align 8
  %101 = load double*, double** %10, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %101, i64 %103
  %105 = load double, double* %104, align 8
  %106 = load double*, double** %10, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, double* %106, i64 %108
  %110 = load double, double* %109, align 8
  %111 = fmul double %105, %110
  %112 = fsub double 1.000000e+00, %111
  %113 = load double, double* %13, align 8
  %114 = fmul double %113, %112
  store double %114, double* %13, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sub nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %145, %84
  %118 = load i32, i32* %15, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %148

120:                                              ; preds = %117
  %121 = load double*, double** %12, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, double* %121, i64 %123
  %125 = load double, double* %124, align 8
  %126 = load double*, double** %10, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double, double* %126, i64 %128
  %130 = load double, double* %129, align 8
  %131 = load double*, double** %12, align 8
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %15, align 4
  %134 = sub nsw i32 %132, %133
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds double, double* %131, i64 %136
  %138 = load double, double* %137, align 8
  %139 = fmul double %130, %138
  %140 = fadd double %125, %139
  %141 = load double*, double** %10, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %141, i64 %143
  store double %140, double* %144, align 8
  br label %145

145:                                              ; preds = %120
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %15, align 4
  br label %117

148:                                              ; preds = %117
  store i32 0, i32* %15, align 4
  br label %149

149:                                              ; preds = %163, %148
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp sle i32 %150, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %149
  %154 = load double*, double** %10, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds double, double* %154, i64 %156
  %158 = load double, double* %157, align 8
  %159 = load double*, double** %12, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds double, double* %159, i64 %161
  store double %158, double* %162, align 8
  br label %163

163:                                              ; preds = %153
  %164 = load i32, i32* %15, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %15, align 4
  br label %149

166:                                              ; preds = %149
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  br label %56

170:                                              ; preds = %56
  %171 = load double*, double** %10, align 8
  %172 = getelementptr inbounds double, double* %171, i64 0
  store double 1.000000e+00, double* %172, align 8
  store i32 1, i32* %14, align 4
  br label %173

173:                                              ; preds = %188, %170
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp sle i32 %174, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %173
  %178 = load double*, double** %12, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds double, double* %178, i64 %181
  %183 = load double, double* %182, align 8
  %184 = load double*, double** %10, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds double, double* %184, i64 %186
  store double %183, double* %187, align 8
  br label %188

188:                                              ; preds = %177
  %189 = load i32, i32* %14, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %14, align 4
  br label %173

191:                                              ; preds = %173
  %192 = load double, double* %13, align 8
  %193 = call double @sqrt(double %192) #3
  ret double %193
}

declare dso_local i32 @memset(double*, i32, i32) #1

declare dso_local i32 @autocorrelation(double*, i32, i32, double*, i32) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
