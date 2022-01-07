; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_noise.c_R_NoiseGet4f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_noise.c_R_NoiseGet4f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @R_NoiseGet4f(float %0, float %1, float %2, float %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca [4 x float], align 16
  %19 = alloca [4 x float], align 16
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca [2 x float], align 4
  %23 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %24 = load float, float* %5, align 4
  %25 = call i64 @floor(float %24)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load float, float* %5, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sitofp i32 %28 to float
  %30 = fsub float %27, %29
  store float %30, float* %14, align 4
  %31 = load float, float* %6, align 4
  %32 = call i64 @floor(float %31)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load float, float* %6, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sitofp i32 %35 to float
  %37 = fsub float %34, %36
  store float %37, float* %15, align 4
  %38 = load float, float* %7, align 4
  %39 = call i64 @floor(float %38)
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = load float, float* %7, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sitofp i32 %42 to float
  %44 = fsub float %41, %43
  store float %44, float* %16, align 4
  %45 = load float, float* %8, align 4
  %46 = call i64 @floor(float %45)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %13, align 4
  %48 = load float, float* %8, align 4
  %49 = load i32, i32* %13, align 4
  %50 = sitofp i32 %49 to float
  %51 = fsub float %48, %50
  store float %51, float* %17, align 4
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %167, %4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 2
  br i1 %54, label %55, label %170

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %59, %60
  %62 = call float @GetNoiseValue(i32 %56, i32 %57, i32 %58, i32 %61)
  %63 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 0
  store float %62, float* %63, align 16
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %68, %69
  %71 = call float @GetNoiseValue(i32 %65, i32 %66, i32 %67, i32 %70)
  %72 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 1
  store float %71, float* %72, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %77, %78
  %80 = call float @GetNoiseValue(i32 %73, i32 %75, i32 %76, i32 %79)
  %81 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 2
  store float %80, float* %81, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %87, %88
  %90 = call float @GetNoiseValue(i32 %83, i32 %85, i32 %86, i32 %89)
  %91 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 3
  store float %90, float* %91, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %96, %97
  %99 = call float @GetNoiseValue(i32 %92, i32 %93, i32 %95, i32 %98)
  %100 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 0
  store float %99, float* %100, align 16
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %106, %107
  %109 = call float @GetNoiseValue(i32 %102, i32 %103, i32 %105, i32 %108)
  %110 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 1
  store float %109, float* %110, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %116, %117
  %119 = call float @GetNoiseValue(i32 %111, i32 %113, i32 %115, i32 %118)
  %120 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 2
  store float %119, float* %120, align 8
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %127, %128
  %130 = call float @GetNoiseValue(i32 %122, i32 %124, i32 %126, i32 %129)
  %131 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 3
  store float %130, float* %131, align 4
  %132 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 0
  %133 = load float, float* %132, align 16
  %134 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 1
  %135 = load float, float* %134, align 4
  %136 = load float, float* %14, align 4
  %137 = call float @LERP(float %133, float %135, float %136)
  %138 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 2
  %139 = load float, float* %138, align 8
  %140 = getelementptr inbounds [4 x float], [4 x float]* %18, i64 0, i64 3
  %141 = load float, float* %140, align 4
  %142 = load float, float* %14, align 4
  %143 = call float @LERP(float %139, float %141, float %142)
  %144 = load float, float* %15, align 4
  %145 = call float @LERP(float %137, float %143, float %144)
  store float %145, float* %20, align 4
  %146 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 0
  %147 = load float, float* %146, align 16
  %148 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 1
  %149 = load float, float* %148, align 4
  %150 = load float, float* %14, align 4
  %151 = call float @LERP(float %147, float %149, float %150)
  %152 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 2
  %153 = load float, float* %152, align 8
  %154 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 3
  %155 = load float, float* %154, align 4
  %156 = load float, float* %14, align 4
  %157 = call float @LERP(float %153, float %155, float %156)
  %158 = load float, float* %15, align 4
  %159 = call float @LERP(float %151, float %157, float %158)
  store float %159, float* %21, align 4
  %160 = load float, float* %20, align 4
  %161 = load float, float* %21, align 4
  %162 = load float, float* %16, align 4
  %163 = call float @LERP(float %160, float %161, float %162)
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 %165
  store float %163, float* %166, align 4
  br label %167

167:                                              ; preds = %55
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %52

170:                                              ; preds = %52
  %171 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 0
  %172 = load float, float* %171, align 4
  %173 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 1
  %174 = load float, float* %173, align 4
  %175 = load float, float* %17, align 4
  %176 = call float @LERP(float %172, float %174, float %175)
  store float %176, float* %23, align 4
  %177 = load float, float* %23, align 4
  ret float %177
}

declare dso_local i64 @floor(float) #1

declare dso_local float @GetNoiseValue(i32, i32, i32, i32) #1

declare dso_local float @LERP(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
