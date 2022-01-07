; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_find_best_pitch.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_find_best_pitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, i32, i32, i32*)* @find_best_pitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_best_pitch(float* %0, float* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store float 1.000000e+00, float* %13, align 4
  %18 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 0
  store float -1.000000e+00, float* %18, align 4
  %19 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 1
  store float -1.000000e+00, float* %19, align 4
  %20 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  store float 0.000000e+00, float* %20, align 4
  %21 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  store float 0.000000e+00, float* %21, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 1, i32* %25, align 4
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %44, %5
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load float*, float** %7, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = load float, float* %34, align 4
  %36 = load float*, float** %7, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  %40 = load float, float* %39, align 4
  %41 = fmul float %35, %40
  %42 = load float, float* %13, align 4
  %43 = fadd float %42, %41
  store float %43, float* %13, align 4
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %26

47:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  br label %48

48:                                               ; preds = %150, %47
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %153

52:                                               ; preds = %48
  %53 = load float*, float** %6, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  %57 = load float, float* %56, align 4
  %58 = fcmp ogt float %57, 0.000000e+00
  br i1 %58, label %59, label %118

59:                                               ; preds = %52
  %60 = load float*, float** %6, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  %64 = load float, float* %63, align 4
  store float %64, float* %17, align 4
  %65 = load float, float* %17, align 4
  %66 = fmul float %65, 0x3D71979980000000
  store float %66, float* %17, align 4
  %67 = load float, float* %17, align 4
  %68 = load float, float* %17, align 4
  %69 = fmul float %67, %68
  store float %69, float* %16, align 4
  %70 = load float, float* %16, align 4
  %71 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  %72 = load float, float* %71, align 4
  %73 = fmul float %70, %72
  %74 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 1
  %75 = load float, float* %74, align 4
  %76 = load float, float* %13, align 4
  %77 = fmul float %75, %76
  %78 = fcmp ogt float %73, %77
  br i1 %78, label %79, label %117

79:                                               ; preds = %59
  %80 = load float, float* %16, align 4
  %81 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  %82 = load float, float* %81, align 4
  %83 = fmul float %80, %82
  %84 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 0
  %85 = load float, float* %84, align 4
  %86 = load float, float* %13, align 4
  %87 = fmul float %85, %86
  %88 = fcmp ogt float %83, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %79
  %90 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 0
  %91 = load float, float* %90, align 4
  %92 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 1
  store float %91, float* %92, align 4
  %93 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  %94 = load float, float* %93, align 4
  %95 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  store float %94, float* %95, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %10, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 %98, i32* %100, align 4
  %101 = load float, float* %16, align 4
  %102 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 0
  store float %101, float* %102, align 4
  %103 = load float, float* %13, align 4
  %104 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  store float %103, float* %104, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %105, i32* %107, align 4
  br label %116

108:                                              ; preds = %79
  %109 = load float, float* %16, align 4
  %110 = getelementptr inbounds [2 x float], [2 x float]* %11, i64 0, i64 1
  store float %109, float* %110, align 4
  %111 = load float, float* %13, align 4
  %112 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  store float %111, float* %112, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32*, i32** %10, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %108, %89
  br label %117

117:                                              ; preds = %116, %59
  br label %118

118:                                              ; preds = %117, %52
  %119 = load float*, float** %7, align 8
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %119, i64 %123
  %125 = load float, float* %124, align 4
  %126 = load float*, float** %7, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %126, i64 %130
  %132 = load float, float* %131, align 4
  %133 = fmul float %125, %132
  %134 = load float*, float** %7, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %134, i64 %136
  %138 = load float, float* %137, align 4
  %139 = load float*, float** %7, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %139, i64 %141
  %143 = load float, float* %142, align 4
  %144 = fmul float %138, %143
  %145 = fsub float %133, %144
  %146 = load float, float* %13, align 4
  %147 = fadd float %146, %145
  store float %147, float* %13, align 4
  %148 = load float, float* %13, align 4
  %149 = call float @FFMAX(i32 1, float %148)
  store float %149, float* %13, align 4
  br label %150

150:                                              ; preds = %118
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %15, align 4
  br label %48

153:                                              ; preds = %48
  ret void
}

declare dso_local float @FFMAX(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
