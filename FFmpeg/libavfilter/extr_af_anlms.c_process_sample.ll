; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anlms.c_process_sample.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anlms.c_process_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, float, float, float, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { float (float*, float*, i32)*, i32 (float*, float*, float, i32)*, i32 (float*, float*, float, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_6__*, float, float, float*, float*, float*, i32*)* @process_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @process_sample(%struct.TYPE_6__* %0, float %1, float %2, float* %3, float* %4, float* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float* %3, float** %11, align 8
  store float* %4, float** %12, align 8
  store float* %5, float** %13, align 8
  store i32* %6, i32** %14, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %15, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load float, float* %29, align 4
  store float %30, float* %16, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load float, float* %32, align 8
  store float %33, float* %17, align 4
  %34 = load float, float* %16, align 4
  %35 = load float, float* %17, align 4
  %36 = fmul float %34, %35
  %37 = fsub float 1.000000e+00, %36
  store float %37, float* %18, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %24, align 4
  %40 = load float, float* %9, align 4
  %41 = load float*, float** %11, align 8
  %42 = load i32, i32* %24, align 4
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %41, i64 %45
  store float %40, float* %46, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = load float, float* %9, align 4
  %49 = load float*, float** %11, align 8
  %50 = load float*, float** %12, align 8
  %51 = load float*, float** %13, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = call float @fir_sample(%struct.TYPE_6__* %47, float %48, float* %49, float* %50, float* %51, i32* %52)
  store float %53, float* %20, align 4
  %54 = load float, float* %10, align 4
  %55 = load float, float* %20, align 4
  %56 = fsub float %54, %55
  store float %56, float* %21, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 6
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load float (float*, float*, i32)*, float (float*, float*, i32)** %60, align 8
  %62 = load float*, float** %11, align 8
  %63 = load float*, float** %11, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call float %61(float* %62, float* %63, i32 %66)
  store float %67, float* %19, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load float, float* %69, align 4
  %71 = load float, float* %19, align 4
  %72 = fadd float %70, %71
  store float %72, float* %22, align 4
  %73 = load float, float* %17, align 4
  %74 = load float, float* %21, align 4
  %75 = fmul float %73, %74
  %76 = load float, float* %22, align 4
  %77 = fdiv float %75, %76
  store float %77, float* %23, align 4
  %78 = load float*, float** %13, align 8
  %79 = load float*, float** %11, align 8
  %80 = load i32, i32* %24, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %79, i64 %81
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i32 @memcpy(float* %78, float* %82, i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 6
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i32 (float*, float*, float, i32)*, i32 (float*, float*, float, i32)** %91, align 8
  %93 = load float*, float** %12, align 8
  %94 = load float*, float** %12, align 8
  %95 = load float, float* %18, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i32 %92(float* %93, float* %94, float %95, i32 %98)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 6
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32 (float*, float*, float, i32)*, i32 (float*, float*, float, i32)** %103, align 8
  %105 = load float*, float** %12, align 8
  %106 = load float*, float** %13, align 8
  %107 = load float, float* %23, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = call i32 %104(float* %105, float* %106, float %107, i32 %110)
  %112 = load float*, float** %12, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %112, i64 %114
  %116 = load float*, float** %12, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 4
  %120 = trunc i64 %119 to i32
  %121 = call i32 @memcpy(float* %115, float* %116, i32 %120)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  switch i32 %124, label %134 [
    i32 130, label %125
    i32 131, label %127
    i32 128, label %129
    i32 129, label %130
  ]

125:                                              ; preds = %7
  %126 = load float, float* %9, align 4
  store float %126, float* %20, align 4
  br label %134

127:                                              ; preds = %7
  %128 = load float, float* %10, align 4
  store float %128, float* %20, align 4
  br label %134

129:                                              ; preds = %7
  br label %134

130:                                              ; preds = %7
  %131 = load float, float* %10, align 4
  %132 = load float, float* %20, align 4
  %133 = fsub float %131, %132
  store float %133, float* %20, align 4
  br label %134

134:                                              ; preds = %7, %130, %129, %127, %125
  %135 = load float, float* %20, align 4
  ret float %135
}

declare dso_local float @fir_sample(%struct.TYPE_6__*, float, float*, float*, float*, i32*) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
