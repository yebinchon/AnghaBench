; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_blas.c_reorg_cpu.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_blas.c_reorg_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reorg_cpu(float* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, float* %7) #0 {
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store float* %7, float** %16, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sdiv i32 %28, %31
  store i32 %32, i32* %21, align 4
  store i32 0, i32* %17, align 4
  br label %33

33:                                               ; preds = %138, %8
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %141

37:                                               ; preds = %33
  store i32 0, i32* %20, align 4
  br label %38

38:                                               ; preds = %134, %37
  %39 = load i32, i32* %20, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %137

42:                                               ; preds = %38
  store i32 0, i32* %19, align 4
  br label %43

43:                                               ; preds = %130, %42
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %133

47:                                               ; preds = %43
  store i32 0, i32* %18, align 4
  br label %48

48:                                               ; preds = %126, %47
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %129

52:                                               ; preds = %48
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %17, align 4
  %60 = mul nsw i32 %58, %59
  %61 = add nsw i32 %57, %60
  %62 = mul nsw i32 %56, %61
  %63 = add nsw i32 %55, %62
  %64 = mul nsw i32 %54, %63
  %65 = add nsw i32 %53, %64
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %21, align 4
  %68 = srem i32 %66, %67
  store i32 %68, i32* %23, align 4
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* %21, align 4
  %71 = sdiv i32 %69, %70
  store i32 %71, i32* %24, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %14, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %24, align 4
  %76 = load i32, i32* %14, align 4
  %77 = srem i32 %75, %76
  %78 = add nsw i32 %74, %77
  store i32 %78, i32* %25, align 4
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %14, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %24, align 4
  %83 = load i32, i32* %14, align 4
  %84 = sdiv i32 %82, %83
  %85 = add nsw i32 %81, %84
  store i32 %85, i32* %26, align 4
  %86 = load i32, i32* %25, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %14, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %26, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %14, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %23, align 4
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %17, align 4
  %97 = mul nsw i32 %95, %96
  %98 = add nsw i32 %94, %97
  %99 = mul nsw i32 %93, %98
  %100 = add nsw i32 %90, %99
  %101 = mul nsw i32 %89, %100
  %102 = add nsw i32 %86, %101
  store i32 %102, i32* %27, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %52
  %106 = load float*, float** %9, align 8
  %107 = load i32, i32* %22, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %106, i64 %108
  %110 = load float, float* %109, align 4
  %111 = load float*, float** %16, align 8
  %112 = load i32, i32* %27, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %111, i64 %113
  store float %110, float* %114, align 4
  br label %125

115:                                              ; preds = %52
  %116 = load float*, float** %9, align 8
  %117 = load i32, i32* %27, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %116, i64 %118
  %120 = load float, float* %119, align 4
  %121 = load float*, float** %16, align 8
  %122 = load i32, i32* %22, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %121, i64 %123
  store float %120, float* %124, align 4
  br label %125

125:                                              ; preds = %115, %105
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %18, align 4
  br label %48

129:                                              ; preds = %48
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %19, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %19, align 4
  br label %43

133:                                              ; preds = %43
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %20, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %20, align 4
  br label %38

137:                                              ; preds = %38
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %17, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %17, align 4
  br label %33

141:                                              ; preds = %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
