; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_owdenoise.c_decompose.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_owdenoise.c_decompose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@coeff = common dso_local global float** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i32, i32)* @decompose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decompose(float* %0, float* %1, float* %2, i32 %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %123, %5
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %126

20:                                               ; preds = %16
  %21 = load float*, float** %8, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %21, i64 %25
  %27 = load float, float* %26, align 4
  %28 = load float**, float*** @coeff, align 8
  %29 = getelementptr inbounds float*, float** %28, i64 0
  %30 = load float*, float** %29, align 8
  %31 = getelementptr inbounds float, float* %30, i64 0
  %32 = load float, float* %31, align 4
  %33 = fmul float %27, %32
  %34 = fpext float %33 to double
  store double %34, double* %13, align 8
  %35 = load float*, float** %8, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %35, i64 %39
  %41 = load float, float* %40, align 4
  %42 = load float**, float*** @coeff, align 8
  %43 = getelementptr inbounds float*, float** %42, i64 1
  %44 = load float*, float** %43, align 8
  %45 = getelementptr inbounds float, float* %44, i64 0
  %46 = load float, float* %45, align 4
  %47 = fmul float %41, %46
  %48 = fpext float %47 to double
  store double %48, double* %14, align 8
  store i32 1, i32* %12, align 4
  br label %49

49:                                               ; preds = %103, %20
  %50 = load i32, i32* %12, align 4
  %51 = icmp sle i32 %50, 4
  br i1 %51, label %52, label %106

52:                                               ; preds = %49
  %53 = load float*, float** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 1
  %59 = call i32 @avpriv_mirror(i32 %56, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %53, i64 %62
  %64 = load float, float* %63, align 4
  %65 = load float*, float** %8, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, 1
  %71 = call i32 @avpriv_mirror(i32 %68, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %65, i64 %74
  %76 = load float, float* %75, align 4
  %77 = fadd float %64, %76
  %78 = fpext float %77 to double
  store double %78, double* %15, align 8
  %79 = load float**, float*** @coeff, align 8
  %80 = getelementptr inbounds float*, float** %79, i64 0
  %81 = load float*, float** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  %85 = load float, float* %84, align 4
  %86 = fpext float %85 to double
  %87 = load double, double* %15, align 8
  %88 = fmul double %86, %87
  %89 = load double, double* %13, align 8
  %90 = fadd double %89, %88
  store double %90, double* %13, align 8
  %91 = load float**, float*** @coeff, align 8
  %92 = getelementptr inbounds float*, float** %91, i64 1
  %93 = load float*, float** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %93, i64 %95
  %97 = load float, float* %96, align 4
  %98 = fpext float %97 to double
  %99 = load double, double* %15, align 8
  %100 = fmul double %98, %99
  %101 = load double, double* %14, align 8
  %102 = fadd double %101, %100
  store double %102, double* %14, align 8
  br label %103

103:                                              ; preds = %52
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %49

106:                                              ; preds = %49
  %107 = load double, double* %13, align 8
  %108 = fptrunc double %107 to float
  %109 = load float*, float** %6, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %9, align 4
  %112 = mul nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %109, i64 %113
  store float %108, float* %114, align 4
  %115 = load double, double* %14, align 8
  %116 = fptrunc double %115 to float
  %117 = load float*, float** %7, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %9, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %117, i64 %121
  store float %116, float* %122, align 4
  br label %123

123:                                              ; preds = %106
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %16

126:                                              ; preds = %16
  ret void
}

declare dso_local i32 @avpriv_mirror(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
