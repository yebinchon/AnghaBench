; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vaguedenoiser.c_soft_thresholding.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vaguedenoiser.c_soft_thresholding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, i32, i32, float, float, i32)* @soft_thresholding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soft_thresholding(float* %0, i32 %1, i32 %2, i32 %3, float %4, float %5, i32 %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  store float* %0, float** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  %24 = load float, float* %13, align 4
  %25 = fmul float %24, 0x3F847AE140000000
  %26 = fsub float 1.000000e+00, %25
  store float %26, float* %15, align 4
  %27 = load float, float* %12, align 4
  %28 = fmul float %27, 0x3F847AE140000000
  %29 = load float, float* %13, align 4
  %30 = fmul float %28, %29
  store float %30, float* %16, align 4
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %18, align 4
  store i32 0, i32* %21, align 4
  br label %33

33:                                               ; preds = %44, %7
  %34 = load i32, i32* %21, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32, i32* %17, align 4
  %39 = add nsw i32 %38, 1
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %18, align 4
  %42 = add nsw i32 %41, 1
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %18, align 4
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %21, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %21, align 4
  br label %33

47:                                               ; preds = %33
  store i32 0, i32* %19, align 4
  br label %48

48:                                               ; preds = %120, %47
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %123

52:                                               ; preds = %48
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* %18, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %17, align 4
  br label %59

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  store i32 %60, i32* %22, align 4
  %61 = load i32, i32* %22, align 4
  store i32 %61, i32* %20, align 4
  br label %62

62:                                               ; preds = %112, %59
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %115

66:                                               ; preds = %62
  %67 = load float*, float** %8, align 8
  %68 = load i32, i32* %20, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %67, i64 %69
  %71 = load float, float* %70, align 4
  %72 = call float @FFABS(float %71)
  store float %72, float* %23, align 4
  %73 = load float, float* %23, align 4
  %74 = load float, float* %12, align 4
  %75 = fcmp ole float %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %66
  %77 = load float, float* %15, align 4
  %78 = load float*, float** %8, align 8
  %79 = load i32, i32* %20, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %78, i64 %80
  %82 = load float, float* %81, align 4
  %83 = fmul float %82, %77
  store float %83, float* %81, align 4
  br label %111

84:                                               ; preds = %66
  %85 = load float*, float** %8, align 8
  %86 = load i32, i32* %20, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  %89 = load float, float* %88, align 4
  %90 = fcmp olt float %89, 0.000000e+00
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %101

92:                                               ; preds = %84
  %93 = load float*, float** %8, align 8
  %94 = load i32, i32* %20, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %93, i64 %95
  %97 = load float, float* %96, align 4
  %98 = fcmp ogt float %97, 0.000000e+00
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, float 1.000000e+00, float 0.000000e+00
  br label %101

101:                                              ; preds = %92, %91
  %102 = phi float [ -1.000000e+00, %91 ], [ %100, %92 ]
  %103 = load float, float* %23, align 4
  %104 = load float, float* %16, align 4
  %105 = fsub float %103, %104
  %106 = fmul float %102, %105
  %107 = load float*, float** %8, align 8
  %108 = load i32, i32* %20, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %107, i64 %109
  store float %106, float* %110, align 4
  br label %111

111:                                              ; preds = %101, %76
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %20, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %20, align 4
  br label %62

115:                                              ; preds = %62
  %116 = load i32, i32* %11, align 4
  %117 = load float*, float** %8, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds float, float* %117, i64 %118
  store float* %119, float** %8, align 8
  br label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %19, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %19, align 4
  br label %48

123:                                              ; preds = %48
  ret void
}

declare dso_local float @FFABS(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
