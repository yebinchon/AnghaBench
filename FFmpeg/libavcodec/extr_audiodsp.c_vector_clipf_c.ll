; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audiodsp.c_vector_clipf_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audiodsp.c_vector_clipf_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, i32, float, float)* @vector_clipf_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vector_clipf_c(float* %0, float* %1, i32 %2, float %3, float %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %12 = load float, float* %9, align 4
  %13 = fcmp olt float %12, 0.000000e+00
  br i1 %13, label %14, label %22

14:                                               ; preds = %5
  %15 = load float, float* %10, align 4
  %16 = fcmp ogt float %15, 0.000000e+00
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load float*, float** %6, align 8
  %19 = load float*, float** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @vector_clipf_c_opposite_sign(float* %18, float* %19, float* %9, float* %10, i32 %20)
  br label %142

22:                                               ; preds = %14, %5
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %138, %22
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %141

27:                                               ; preds = %23
  %28 = load float*, float** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %28, i64 %30
  %32 = load float, float* %31, align 4
  %33 = load float, float* %9, align 4
  %34 = load float, float* %10, align 4
  %35 = call float @av_clipf(float %32, float %33, float %34)
  %36 = load float*, float** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  store float %35, float* %39, align 4
  %40 = load float*, float** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %40, i64 %43
  %45 = load float, float* %44, align 4
  %46 = load float, float* %9, align 4
  %47 = load float, float* %10, align 4
  %48 = call float @av_clipf(float %45, float %46, float %47)
  %49 = load float*, float** %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %49, i64 %52
  store float %48, float* %53, align 4
  %54 = load float*, float** %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %54, i64 %57
  %59 = load float, float* %58, align 4
  %60 = load float, float* %9, align 4
  %61 = load float, float* %10, align 4
  %62 = call float @av_clipf(float %59, float %60, float %61)
  %63 = load float*, float** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %63, i64 %66
  store float %62, float* %67, align 4
  %68 = load float*, float** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %68, i64 %71
  %73 = load float, float* %72, align 4
  %74 = load float, float* %9, align 4
  %75 = load float, float* %10, align 4
  %76 = call float @av_clipf(float %73, float %74, float %75)
  %77 = load float*, float** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 3
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %77, i64 %80
  store float %76, float* %81, align 4
  %82 = load float*, float** %7, align 8
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %82, i64 %85
  %87 = load float, float* %86, align 4
  %88 = load float, float* %9, align 4
  %89 = load float, float* %10, align 4
  %90 = call float @av_clipf(float %87, float %88, float %89)
  %91 = load float*, float** %6, align 8
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %91, i64 %94
  store float %90, float* %95, align 4
  %96 = load float*, float** %7, align 8
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 5
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %96, i64 %99
  %101 = load float, float* %100, align 4
  %102 = load float, float* %9, align 4
  %103 = load float, float* %10, align 4
  %104 = call float @av_clipf(float %101, float %102, float %103)
  %105 = load float*, float** %6, align 8
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 5
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %105, i64 %108
  store float %104, float* %109, align 4
  %110 = load float*, float** %7, align 8
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 6
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %110, i64 %113
  %115 = load float, float* %114, align 4
  %116 = load float, float* %9, align 4
  %117 = load float, float* %10, align 4
  %118 = call float @av_clipf(float %115, float %116, float %117)
  %119 = load float*, float** %6, align 8
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 6
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %119, i64 %122
  store float %118, float* %123, align 4
  %124 = load float*, float** %7, align 8
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 7
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %124, i64 %127
  %129 = load float, float* %128, align 4
  %130 = load float, float* %9, align 4
  %131 = load float, float* %10, align 4
  %132 = call float @av_clipf(float %129, float %130, float %131)
  %133 = load float*, float** %6, align 8
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 7
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %133, i64 %136
  store float %132, float* %137, align 4
  br label %138

138:                                              ; preds = %27
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 8
  store i32 %140, i32* %11, align 4
  br label %23

141:                                              ; preds = %23
  br label %142

142:                                              ; preds = %141, %17
  ret void
}

declare dso_local i32 @vector_clipf_c_opposite_sign(float*, float*, float*, float*, i32) #1

declare dso_local float @av_clipf(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
