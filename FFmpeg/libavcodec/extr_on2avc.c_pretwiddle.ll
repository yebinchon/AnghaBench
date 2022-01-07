; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_on2avc.c_pretwiddle.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_on2avc.c_pretwiddle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, i32, i32, i32, i32, i32, double**)* @pretwiddle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pretwiddle(float* %0, float* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, double** %7) #0 {
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double**, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca double*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  store float* %0, float** %9, align 8
  store float* %1, float** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store double** %7, double*** %16, align 8
  %24 = load float*, float** %10, align 8
  store float* %24, float** %18, align 8
  %25 = load double**, double*** %16, align 8
  %26 = getelementptr inbounds double*, double** %25, i64 0
  %27 = load double*, double** %26, align 8
  store double* %27, double** %19, align 8
  store i32 0, i32* %20, align 4
  br label %28

28:                                               ; preds = %69, %8
  %29 = load i32, i32* %20, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %28
  store double 0.000000e+00, double* %22, align 8
  store i32 0, i32* %21, align 4
  br label %33

33:                                               ; preds = %56, %32
  %34 = load i32, i32* %21, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load float*, float** %9, align 8
  %39 = load i32, i32* %21, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fpext float %42 to double
  %44 = load double*, double** %19, align 8
  %45 = load i32, i32* %21, align 4
  %46 = load i32, i32* %12, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* %20, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %44, i64 %50
  %52 = load double, double* %51, align 8
  %53 = fmul double %43, %52
  %54 = load double, double* %22, align 8
  %55 = fadd double %54, %53
  store double %55, double* %22, align 8
  br label %56

56:                                               ; preds = %37
  %57 = load i32, i32* %21, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %21, align 4
  br label %33

59:                                               ; preds = %33
  %60 = load double, double* %22, align 8
  %61 = load float*, float** %18, align 8
  %62 = load i32, i32* %20, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %61, i64 %63
  %65 = load float, float* %64, align 4
  %66 = fpext float %65 to double
  %67 = fadd double %66, %60
  %68 = fptrunc double %67 to float
  store float %68, float* %64, align 4
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %20, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %20, align 4
  br label %28

72:                                               ; preds = %28
  %73 = load float*, float** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 0, %78
  %80 = getelementptr inbounds float, float* %76, i64 %79
  store float* %80, float** %18, align 8
  %81 = load double**, double*** %16, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double*, double** %81, i64 %83
  %85 = load double*, double** %84, align 8
  store double* %85, double** %19, align 8
  %86 = load float*, float** %9, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sub nsw i32 %87, %88
  %90 = load i32, i32* %13, align 4
  %91 = sdiv i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %86, i64 %92
  %94 = getelementptr inbounds float, float* %93, i64 1
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  store float* %97, float** %17, align 8
  store i32 0, i32* %20, align 4
  br label %98

98:                                               ; preds = %139, %72
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %142

102:                                              ; preds = %98
  store double 0.000000e+00, double* %23, align 8
  store i32 0, i32* %21, align 4
  br label %103

103:                                              ; preds = %126, %102
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %129

107:                                              ; preds = %103
  %108 = load float*, float** %17, align 8
  %109 = load i32, i32* %21, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %108, i64 %110
  %112 = load float, float* %111, align 4
  %113 = fpext float %112 to double
  %114 = load double*, double** %19, align 8
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %12, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* %20, align 4
  %119 = add nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds double, double* %114, i64 %120
  %122 = load double, double* %121, align 8
  %123 = fmul double %113, %122
  %124 = load double, double* %23, align 8
  %125 = fadd double %124, %123
  store double %125, double* %23, align 8
  br label %126

126:                                              ; preds = %107
  %127 = load i32, i32* %21, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %21, align 4
  br label %103

129:                                              ; preds = %103
  %130 = load double, double* %23, align 8
  %131 = load float*, float** %18, align 8
  %132 = load i32, i32* %20, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %131, i64 %133
  %135 = load float, float* %134, align 4
  %136 = fpext float %135 to double
  %137 = fadd double %136, %130
  %138 = fptrunc double %137 to float
  store float %138, float* %134, align 4
  br label %139

139:                                              ; preds = %129
  %140 = load i32, i32* %20, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %20, align 4
  br label %98

142:                                              ; preds = %98
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
