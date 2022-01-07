; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_owdenoise.c_compose.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_owdenoise.c_compose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@icoeff = common dso_local global float** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i32, i32)* @compose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compose(float* %0, float* %1, float* %2, i32 %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %129, %5
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %132

21:                                               ; preds = %17
  %22 = load float*, float** %7, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %22, i64 %26
  %28 = load float, float* %27, align 4
  %29 = load float**, float*** @icoeff, align 8
  %30 = getelementptr inbounds float*, float** %29, i64 0
  %31 = load float*, float** %30, align 8
  %32 = getelementptr inbounds float, float* %31, i64 0
  %33 = load float, float* %32, align 4
  %34 = fmul float %28, %33
  %35 = fpext float %34 to double
  store double %35, double* %13, align 8
  %36 = load float*, float** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %36, i64 %40
  %42 = load float, float* %41, align 4
  %43 = load float**, float*** @icoeff, align 8
  %44 = getelementptr inbounds float*, float** %43, i64 1
  %45 = load float*, float** %44, align 8
  %46 = getelementptr inbounds float, float* %45, i64 0
  %47 = load float, float* %46, align 4
  %48 = fmul float %42, %47
  %49 = fpext float %48 to double
  store double %49, double* %14, align 8
  store i32 1, i32* %12, align 4
  br label %50

50:                                               ; preds = %114, %21
  %51 = load i32, i32* %12, align 4
  %52 = icmp sle i32 %51, 4
  br i1 %52, label %53, label %117

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 1
  %59 = call i32 @avpriv_mirror(i32 %56, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %59, %60
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @avpriv_mirror(i32 %64, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* %16, align 4
  %70 = load float**, float*** @icoeff, align 8
  %71 = getelementptr inbounds float*, float** %70, i64 0
  %72 = load float*, float** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %72, i64 %74
  %76 = load float, float* %75, align 4
  %77 = load float*, float** %7, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  %82 = load float*, float** %7, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  %86 = load float, float* %85, align 4
  %87 = fadd float %81, %86
  %88 = fmul float %76, %87
  %89 = fpext float %88 to double
  %90 = load double, double* %13, align 8
  %91 = fadd double %90, %89
  store double %91, double* %13, align 8
  %92 = load float**, float*** @icoeff, align 8
  %93 = getelementptr inbounds float*, float** %92, i64 1
  %94 = load float*, float** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  %98 = load float, float* %97, align 4
  %99 = load float*, float** %8, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %99, i64 %101
  %103 = load float, float* %102, align 4
  %104 = load float*, float** %8, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %104, i64 %106
  %108 = load float, float* %107, align 4
  %109 = fadd float %103, %108
  %110 = fmul float %98, %109
  %111 = fpext float %110 to double
  %112 = load double, double* %14, align 8
  %113 = fadd double %112, %111
  store double %113, double* %14, align 8
  br label %114

114:                                              ; preds = %53
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %50

117:                                              ; preds = %50
  %118 = load double, double* %13, align 8
  %119 = load double, double* %14, align 8
  %120 = fadd double %118, %119
  %121 = fmul double %120, 5.000000e-01
  %122 = fptrunc double %121 to float
  %123 = load float*, float** %6, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %9, align 4
  %126 = mul nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %123, i64 %127
  store float %122, float* %128, align 4
  br label %129

129:                                              ; preds = %117
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %17

132:                                              ; preds = %17
  ret void
}

declare dso_local i32 @avpriv_mirror(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
