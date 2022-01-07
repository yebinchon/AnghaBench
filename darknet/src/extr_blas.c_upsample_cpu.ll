; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_blas.c_upsample_cpu.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_blas.c_upsample_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @upsample_cpu(float* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, float %7, float* %8) #0 {
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store float* %0, float** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store float %7, float* %17, align 4
  store float* %8, float** %18, align 8
  store i32 0, i32* %22, align 4
  br label %25

25:                                               ; preds = %142, %9
  %26 = load i32, i32* %22, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %145

29:                                               ; preds = %25
  store i32 0, i32* %21, align 4
  br label %30

30:                                               ; preds = %138, %29
  %31 = load i32, i32* %21, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %141

34:                                               ; preds = %30
  store i32 0, i32* %20, align 4
  br label %35

35:                                               ; preds = %134, %34
  %36 = load i32, i32* %20, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %15, align 4
  %39 = mul nsw i32 %37, %38
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %137

41:                                               ; preds = %35
  store i32 0, i32* %19, align 4
  br label %42

42:                                               ; preds = %130, %41
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %15, align 4
  %46 = mul nsw i32 %44, %45
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %133

48:                                               ; preds = %42
  %49 = load i32, i32* %22, align 4
  %50 = load i32, i32* %11, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %12, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %13, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %21, align 4
  %57 = load i32, i32* %11, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %12, align 4
  %60 = mul nsw i32 %58, %59
  %61 = add nsw i32 %55, %60
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* %15, align 4
  %64 = sdiv i32 %62, %63
  %65 = load i32, i32* %11, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %61, %66
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %15, align 4
  %70 = sdiv i32 %68, %69
  %71 = add nsw i32 %67, %70
  store i32 %71, i32* %23, align 4
  %72 = load i32, i32* %22, align 4
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %12, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %13, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* %15, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %15, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %21, align 4
  %84 = load i32, i32* %11, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %12, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %15, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %15, align 4
  %91 = mul nsw i32 %89, %90
  %92 = add nsw i32 %82, %91
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %15, align 4
  %97 = mul nsw i32 %95, %96
  %98 = add nsw i32 %92, %97
  %99 = load i32, i32* %19, align 4
  %100 = add nsw i32 %98, %99
  store i32 %100, i32* %24, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %48
  %104 = load float, float* %17, align 4
  %105 = load float*, float** %10, align 8
  %106 = load i32, i32* %23, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %105, i64 %107
  %109 = load float, float* %108, align 4
  %110 = fmul float %104, %109
  %111 = load float*, float** %18, align 8
  %112 = load i32, i32* %24, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %111, i64 %113
  store float %110, float* %114, align 4
  br label %129

115:                                              ; preds = %48
  %116 = load float, float* %17, align 4
  %117 = load float*, float** %18, align 8
  %118 = load i32, i32* %24, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %117, i64 %119
  %121 = load float, float* %120, align 4
  %122 = fmul float %116, %121
  %123 = load float*, float** %10, align 8
  %124 = load i32, i32* %23, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %123, i64 %125
  %127 = load float, float* %126, align 4
  %128 = fadd float %127, %122
  store float %128, float* %126, align 4
  br label %129

129:                                              ; preds = %115, %103
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %19, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %19, align 4
  br label %42

133:                                              ; preds = %42
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %20, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %20, align 4
  br label %35

137:                                              ; preds = %35
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %21, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %21, align 4
  br label %30

141:                                              ; preds = %30
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %22, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %22, align 4
  br label %25

145:                                              ; preds = %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
