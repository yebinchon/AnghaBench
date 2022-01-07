; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_extract_m8_i16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_extract_m8_i16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLT_EPSILON = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, float*, float*)* @extract_m8_i16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_m8_i16(i32* %0, i32 %1, i32 %2, i32 %3, float* %4, float* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %20 = load float*, float** %12, align 8
  %21 = bitcast float* %20 to i32*
  store i32* %21, i32** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %22

22:                                               ; preds = %76, %6
  %23 = load i32, i32* %17, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %22
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 %28, %29
  %31 = mul nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  store i32* %33, i32** %19, align 8
  store i32 0, i32* %18, align 4
  br label %34

34:                                               ; preds = %68, %26
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %34
  %39 = load i32*, i32** %19, align 8
  %40 = load i32, i32* %18, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %15, align 4
  %46 = load i32*, i32** %19, align 8
  %47 = load i32, i32* %18, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %19, align 8
  %52 = load i32, i32* %18, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %50, %55
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %16, align 4
  %59 = load i32*, i32** %19, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %18, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %38
  %69 = load i32, i32* %18, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %18, align 4
  br label %34

71:                                               ; preds = %34
  %72 = load i32, i32* %9, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %13, align 8
  br label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %17, align 4
  br label %22

79:                                               ; preds = %22
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sitofp i32 %82 to float
  %84 = fdiv float 1.000000e+00, %83
  store float %84, float* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = sitofp i32 %85 to float
  %87 = load float, float* %14, align 4
  %88 = fmul float %86, %87
  %89 = load float*, float** %11, align 8
  %90 = getelementptr inbounds float, float* %89, i64 0
  store float %88, float* %90, align 4
  %91 = load i32, i32* %16, align 4
  %92 = sitofp i32 %91 to float
  %93 = load float, float* %14, align 4
  %94 = fmul float %92, %93
  %95 = load float*, float** %11, align 8
  %96 = getelementptr inbounds float, float* %95, i64 0
  %97 = load float, float* %96, align 4
  %98 = load float*, float** %11, align 8
  %99 = getelementptr inbounds float, float* %98, i64 0
  %100 = load float, float* %99, align 4
  %101 = fmul float %97, %100
  %102 = fsub float %94, %101
  %103 = load float*, float** %11, align 8
  %104 = getelementptr inbounds float, float* %103, i64 1
  store float %102, float* %104, align 4
  %105 = load float*, float** %11, align 8
  %106 = getelementptr inbounds float, float* %105, i64 3
  store float 0.000000e+00, float* %106, align 4
  %107 = load float*, float** %11, align 8
  %108 = getelementptr inbounds float, float* %107, i64 1
  %109 = load float, float* %108, align 4
  %110 = load float, float* @FLT_EPSILON, align 4
  %111 = fcmp ole float %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %79
  %113 = load float*, float** %11, align 8
  %114 = getelementptr inbounds float, float* %113, i64 2
  store float 0.000000e+00, float* %114, align 4
  %115 = load float*, float** %11, align 8
  %116 = getelementptr inbounds float, float* %115, i64 1
  store float 0.000000e+00, float* %116, align 4
  br label %130

117:                                              ; preds = %79
  %118 = load float*, float** %11, align 8
  %119 = getelementptr inbounds float, float* %118, i64 1
  %120 = load float, float* %119, align 4
  %121 = call float @sqrt(float %120)
  %122 = load float*, float** %11, align 8
  %123 = getelementptr inbounds float, float* %122, i64 1
  store float %121, float* %123, align 4
  %124 = load float*, float** %11, align 8
  %125 = getelementptr inbounds float, float* %124, i64 1
  %126 = load float, float* %125, align 4
  %127 = fdiv float 1.000000e+00, %126
  %128 = load float*, float** %11, align 8
  %129 = getelementptr inbounds float, float* %128, i64 2
  store float %127, float* %129, align 4
  br label %130

130:                                              ; preds = %117, %112
  ret void
}

declare dso_local float @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
