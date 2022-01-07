; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_gemm.c_gemm_cpu.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_gemm.c_gemm_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gemm_cpu(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, float %5, float* %6, i32 %7, float* %8, i32 %9, float %10, float* %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float*, align 8
  %21 = alloca i32, align 4
  %22 = alloca float*, align 8
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca float*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %14, align 4
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store float %5, float* %19, align 4
  store float* %6, float** %20, align 8
  store i32 %7, i32* %21, align 4
  store float* %8, float** %22, align 8
  store i32 %9, i32* %23, align 4
  store float %10, float* %24, align 4
  store float* %11, float** %25, align 8
  store i32 %12, i32* %26, align 4
  store i32 0, i32* %27, align 4
  br label %29

29:                                               ; preds = %54, %13
  %30 = load i32, i32* %27, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  store i32 0, i32* %28, align 4
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %28, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load float, float* %24, align 4
  %40 = load float*, float** %25, align 8
  %41 = load i32, i32* %27, align 4
  %42 = load i32, i32* %26, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %28, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %40, i64 %46
  %48 = load float, float* %47, align 4
  %49 = fmul float %48, %39
  store float %49, float* %47, align 4
  br label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %28, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %28, align 4
  br label %34

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %27, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %27, align 4
  br label %29

57:                                               ; preds = %29
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load float, float* %19, align 4
  %68 = load float*, float** %20, align 8
  %69 = load i32, i32* %21, align 4
  %70 = load float*, float** %22, align 8
  %71 = load i32, i32* %23, align 4
  %72 = load float*, float** %25, align 8
  %73 = load i32, i32* %26, align 4
  %74 = call i32 @gemm_nn(i32 %64, i32 %65, i32 %66, float %67, float* %68, i32 %69, float* %70, i32 %71, float* %72, i32 %73)
  br label %125

75:                                               ; preds = %60, %57
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load float, float* %19, align 4
  %86 = load float*, float** %20, align 8
  %87 = load i32, i32* %21, align 4
  %88 = load float*, float** %22, align 8
  %89 = load i32, i32* %23, align 4
  %90 = load float*, float** %25, align 8
  %91 = load i32, i32* %26, align 4
  %92 = call i32 @gemm_tn(i32 %82, i32 %83, i32 %84, float %85, float* %86, i32 %87, float* %88, i32 %89, float* %90, i32 %91)
  br label %124

93:                                               ; preds = %78, %75
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %111, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %96
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load float, float* %19, align 4
  %104 = load float*, float** %20, align 8
  %105 = load i32, i32* %21, align 4
  %106 = load float*, float** %22, align 8
  %107 = load i32, i32* %23, align 4
  %108 = load float*, float** %25, align 8
  %109 = load i32, i32* %26, align 4
  %110 = call i32 @gemm_nt(i32 %100, i32 %101, i32 %102, float %103, float* %104, i32 %105, float* %106, i32 %107, float* %108, i32 %109)
  br label %123

111:                                              ; preds = %96, %93
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %18, align 4
  %115 = load float, float* %19, align 4
  %116 = load float*, float** %20, align 8
  %117 = load i32, i32* %21, align 4
  %118 = load float*, float** %22, align 8
  %119 = load i32, i32* %23, align 4
  %120 = load float*, float** %25, align 8
  %121 = load i32, i32* %26, align 4
  %122 = call i32 @gemm_tt(i32 %112, i32 %113, i32 %114, float %115, float* %116, i32 %117, float* %118, i32 %119, float* %120, i32 %121)
  br label %123

123:                                              ; preds = %111, %99
  br label %124

124:                                              ; preds = %123, %81
  br label %125

125:                                              ; preds = %124, %63
  ret void
}

declare dso_local i32 @gemm_nn(i32, i32, i32, float, float*, i32, float*, i32, float*, i32) #1

declare dso_local i32 @gemm_tn(i32, i32, i32, float, float*, i32, float*, i32, float*, i32) #1

declare dso_local i32 @gemm_nt(i32, i32, i32, float, float*, i32, float*, i32, float*, i32) #1

declare dso_local i32 @gemm_tt(i32, i32, i32, float, float*, i32, float*, i32, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
