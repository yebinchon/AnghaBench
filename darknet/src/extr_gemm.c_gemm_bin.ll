; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_gemm.c_gemm_bin.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_gemm.c_gemm_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gemm_bin(i32 %0, i32 %1, i32 %2, float %3, i8* %4, i32 %5, float* %6, i32 %7, float* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store float %3, float* %14, align 4
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store float* %6, float** %17, align 8
  store i32 %7, i32* %18, align 4
  store float* %8, float** %19, align 8
  store i32 %9, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %25

25:                                               ; preds = %109, %10
  %26 = load i32, i32* %21, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %112

29:                                               ; preds = %25
  store i32 0, i32* %23, align 4
  br label %30

30:                                               ; preds = %105, %29
  %31 = load i32, i32* %23, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %108

34:                                               ; preds = %30
  %35 = load i8*, i8** %15, align 8
  %36 = load i32, i32* %21, align 4
  %37 = load i32, i32* %16, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %23, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %35, i64 %41
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %24, align 1
  %44 = load i8, i8* %24, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %34
  store i32 0, i32* %22, align 4
  br label %47

47:                                               ; preds = %71, %46
  %48 = load i32, i32* %22, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %47
  %52 = load float*, float** %17, align 8
  %53 = load i32, i32* %23, align 4
  %54 = load i32, i32* %18, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %22, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %52, i64 %58
  %60 = load float, float* %59, align 4
  %61 = load float*, float** %19, align 8
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* %20, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %22, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %61, i64 %67
  %69 = load float, float* %68, align 4
  %70 = fadd float %69, %60
  store float %70, float* %68, align 4
  br label %71

71:                                               ; preds = %51
  %72 = load i32, i32* %22, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %22, align 4
  br label %47

74:                                               ; preds = %47
  br label %104

75:                                               ; preds = %34
  store i32 0, i32* %22, align 4
  br label %76

76:                                               ; preds = %100, %75
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %76
  %81 = load float*, float** %17, align 8
  %82 = load i32, i32* %23, align 4
  %83 = load i32, i32* %18, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %22, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %81, i64 %87
  %89 = load float, float* %88, align 4
  %90 = load float*, float** %19, align 8
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* %20, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %22, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %90, i64 %96
  %98 = load float, float* %97, align 4
  %99 = fsub float %98, %89
  store float %99, float* %97, align 4
  br label %100

100:                                              ; preds = %80
  %101 = load i32, i32* %22, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %22, align 4
  br label %76

103:                                              ; preds = %76
  br label %104

104:                                              ; preds = %103, %74
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %23, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %23, align 4
  br label %30

108:                                              ; preds = %30
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %21, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %21, align 4
  br label %25

112:                                              ; preds = %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
