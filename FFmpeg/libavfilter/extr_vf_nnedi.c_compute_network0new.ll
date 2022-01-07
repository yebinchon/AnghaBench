; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_compute_network0new.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_compute_network0new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float*, float*, i32*)* @compute_network0new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_network0new(i32* %0, float* %1, float* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float*, align 8
  %12 = alloca [8 x float], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = load float*, float** %6, align 8
  %20 = bitcast float* %19 to i32*
  store i32* %20, i32** %9, align 8
  %21 = load float*, float** %7, align 8
  %22 = bitcast float* %21 to i32*
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 256
  %25 = bitcast i32* %24 to float*
  store float* %25, float** %11, align 8
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %82, %4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %85

29:                                               ; preds = %26
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %55, %29
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 64
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %14, align 4
  %41 = shl i32 %40, 3
  %42 = load i32, i32* %15, align 4
  %43 = ashr i32 %42, 3
  %44 = shl i32 %43, 5
  %45 = add nsw i32 %41, %44
  %46 = load i32, i32* %15, align 4
  %47 = and i32 %46, 7
  %48 = add nsw i32 %45, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %39, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %38, %51
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %16, align 4
  br label %55

55:                                               ; preds = %33
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %30

58:                                               ; preds = %30
  %59 = load i32, i32* %16, align 4
  %60 = sitofp i32 %59 to float
  %61 = load float*, float** %11, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %61, i64 %63
  %65 = load float, float* %64, align 4
  %66 = fmul float %60, %65
  %67 = load float*, float** %11, align 8
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 4, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %67, i64 %70
  %72 = load float, float* %71, align 4
  %73 = fadd float %66, %72
  store float %73, float* %17, align 4
  %74 = load float, float* %17, align 4
  %75 = load float, float* %17, align 4
  %76 = call float @FFABS(float %75)
  %77 = fadd float 1.000000e+00, %76
  %78 = fdiv float %74, %77
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [8 x float], [8 x float]* %12, i64 0, i64 %80
  store float %78, float* %81, align 4
  br label %82

82:                                               ; preds = %58
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %26

85:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %126, %85
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %89, label %129

89:                                               ; preds = %86
  store float 0.000000e+00, float* %18, align 4
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %110, %89
  %91 = load i32, i32* %15, align 4
  %92 = icmp slt i32 %91, 4
  br i1 %92, label %93, label %113

93:                                               ; preds = %90
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [8 x float], [8 x float]* %12, i64 0, i64 %95
  %97 = load float, float* %96, align 4
  %98 = load float*, float** %11, align 8
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 8, %99
  %101 = load i32, i32* %15, align 4
  %102 = shl i32 %101, 2
  %103 = add nsw i32 %100, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %98, i64 %104
  %106 = load float, float* %105, align 4
  %107 = fmul float %97, %106
  %108 = load float, float* %18, align 4
  %109 = fadd float %108, %107
  store float %109, float* %18, align 4
  br label %110

110:                                              ; preds = %93
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %90

113:                                              ; preds = %90
  %114 = load float, float* %18, align 4
  %115 = load float*, float** %11, align 8
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 24, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %115, i64 %118
  %120 = load float, float* %119, align 4
  %121 = fadd float %114, %120
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 4, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [8 x float], [8 x float]* %12, i64 0, i64 %124
  store float %121, float* %125, align 4
  br label %126

126:                                              ; preds = %113
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %86

129:                                              ; preds = %86
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %147, %129
  %131 = load i32, i32* %14, align 4
  %132 = icmp slt i32 %131, 4
  br i1 %132, label %133, label %150

133:                                              ; preds = %130
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 4, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [8 x float], [8 x float]* %12, i64 0, i64 %136
  %138 = load float, float* %137, align 4
  %139 = fcmp ogt float %138, 0.000000e+00
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load i32, i32* %14, align 4
  %142 = shl i32 %141, 3
  %143 = shl i32 1, %142
  %144 = load i32, i32* %13, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %13, align 4
  br label %146

146:                                              ; preds = %140, %133
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %14, align 4
  br label %130

150:                                              ; preds = %130
  %151 = load i32, i32* %13, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %151, i32* %153, align 4
  ret void
}

declare dso_local float @FFABS(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
