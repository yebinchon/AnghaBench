; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadsp.c_lfe_iir_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadsp.c_lfe_iir_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, [4 x float]*, [2 x float]*, i32)* @lfe_iir_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lfe_iir_c(float* %0, float* %1, [4 x float]* %2, [2 x float]* %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca [4 x float]*, align 8
  %9 = alloca [2 x float]*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store [4 x float]* %2, [4 x float]** %8, align 8
  store [2 x float]* %3, [2 x float]** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %118, %5
  %17 = load i32, i32* %13, align 4
  %18 = icmp slt i32 %17, 64
  br i1 %18, label %19, label %121

19:                                               ; preds = %16
  %20 = load float*, float** %7, align 8
  %21 = getelementptr inbounds float, float* %20, i32 1
  store float* %21, float** %7, align 8
  %22 = load float, float* %20, align 4
  store float %22, float* %11, align 4
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %114, %19
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %117

27:                                               ; preds = %23
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %107, %27
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %29, 5
  br i1 %30, label %31, label %110

31:                                               ; preds = %28
  %32 = load [2 x float]*, [2 x float]** %9, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x float], [2 x float]* %32, i64 %34
  %36 = getelementptr inbounds [2 x float], [2 x float]* %35, i64 0, i64 0
  %37 = load float, float* %36, align 4
  %38 = load [4 x float]*, [4 x float]** %8, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x float], [4 x float]* %38, i64 %40
  %42 = getelementptr inbounds [4 x float], [4 x float]* %41, i64 0, i64 0
  %43 = load float, float* %42, align 4
  %44 = fmul float %37, %43
  %45 = load [2 x float]*, [2 x float]** %9, align 8
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [2 x float], [2 x float]* %45, i64 %47
  %49 = getelementptr inbounds [2 x float], [2 x float]* %48, i64 0, i64 1
  %50 = load float, float* %49, align 4
  %51 = load [4 x float]*, [4 x float]** %8, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x float], [4 x float]* %51, i64 %53
  %55 = getelementptr inbounds [4 x float], [4 x float]* %54, i64 0, i64 1
  %56 = load float, float* %55, align 4
  %57 = fmul float %50, %56
  %58 = fadd float %44, %57
  %59 = load float, float* %11, align 4
  %60 = fadd float %58, %59
  store float %60, float* %12, align 4
  %61 = load [2 x float]*, [2 x float]** %9, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x float], [2 x float]* %61, i64 %63
  %65 = getelementptr inbounds [2 x float], [2 x float]* %64, i64 0, i64 0
  %66 = load float, float* %65, align 4
  %67 = load [4 x float]*, [4 x float]** %8, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x float], [4 x float]* %67, i64 %69
  %71 = getelementptr inbounds [4 x float], [4 x float]* %70, i64 0, i64 2
  %72 = load float, float* %71, align 4
  %73 = fmul float %66, %72
  %74 = load [2 x float]*, [2 x float]** %9, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [2 x float], [2 x float]* %74, i64 %76
  %78 = getelementptr inbounds [2 x float], [2 x float]* %77, i64 0, i64 1
  %79 = load float, float* %78, align 4
  %80 = load [4 x float]*, [4 x float]** %8, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x float], [4 x float]* %80, i64 %82
  %84 = getelementptr inbounds [4 x float], [4 x float]* %83, i64 0, i64 3
  %85 = load float, float* %84, align 4
  %86 = fmul float %79, %85
  %87 = fadd float %73, %86
  %88 = load float, float* %12, align 4
  %89 = fadd float %87, %88
  store float %89, float* %11, align 4
  %90 = load [2 x float]*, [2 x float]** %9, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [2 x float], [2 x float]* %90, i64 %92
  %94 = getelementptr inbounds [2 x float], [2 x float]* %93, i64 0, i64 1
  %95 = load float, float* %94, align 4
  %96 = load [2 x float]*, [2 x float]** %9, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [2 x float], [2 x float]* %96, i64 %98
  %100 = getelementptr inbounds [2 x float], [2 x float]* %99, i64 0, i64 0
  store float %95, float* %100, align 4
  %101 = load float, float* %12, align 4
  %102 = load [2 x float]*, [2 x float]** %9, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [2 x float], [2 x float]* %102, i64 %104
  %106 = getelementptr inbounds [2 x float], [2 x float]* %105, i64 0, i64 1
  store float %101, float* %106, align 4
  br label %107

107:                                              ; preds = %31
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %28

110:                                              ; preds = %28
  %111 = load float, float* %11, align 4
  %112 = load float*, float** %6, align 8
  %113 = getelementptr inbounds float, float* %112, i32 1
  store float* %113, float** %6, align 8
  store float %111, float* %112, align 4
  store float 0.000000e+00, float* %11, align 4
  br label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %23

117:                                              ; preds = %23
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  br label %16

121:                                              ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
