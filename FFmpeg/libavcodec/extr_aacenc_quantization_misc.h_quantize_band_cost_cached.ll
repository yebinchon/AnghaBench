; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_quantization_misc.h_quantize_band_cost_cached.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_quantization_misc.h_quantize_band_cost_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AACEncContext = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i32, i32, float, i32, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.AACEncContext*, i32, i32, float*, float*, i32, i32, i32, float, float, i32*, float*, i32)* @quantize_band_cost_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @quantize_band_cost_cached(%struct.AACEncContext* %0, i32 %1, i32 %2, float* %3, float* %4, i32 %5, i32 %6, i32 %7, float %8, float %9, i32* %10, float* %11, i32 %12) #0 {
  %14 = alloca %struct.AACEncContext*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i32*, align 8
  %25 = alloca float*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_2__*, align 8
  store %struct.AACEncContext* %0, %struct.AACEncContext** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store float* %3, float** %17, align 8
  store float* %4, float** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store float %8, float* %22, align 4
  store float %9, float* %23, align 4
  store i32* %10, i32** %24, align 8
  store float* %11, float** %25, align 8
  store i32 %12, i32* %26, align 4
  %28 = load i32, i32* %20, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %13
  %31 = load i32, i32* %20, align 4
  %32 = icmp slt i32 %31, 256
  br label %33

33:                                               ; preds = %30, %13
  %34 = phi i1 [ false, %13 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @av_assert1(i32 %35)
  %37 = load %struct.AACEncContext*, %struct.AACEncContext** %14, align 8
  %38 = getelementptr inbounds %struct.AACEncContext, %struct.AACEncContext* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load i32, i32* %20, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = mul nsw i32 %44, 16
  %46 = load i32, i32* %16, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %48
  store %struct.TYPE_2__* %49, %struct.TYPE_2__** %27, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.AACEncContext*, %struct.AACEncContext** %14, align 8
  %54 = getelementptr inbounds %struct.AACEncContext, %struct.AACEncContext* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %33
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %21, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %26, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %63, %57, %33
  %70 = load %struct.AACEncContext*, %struct.AACEncContext** %14, align 8
  %71 = load float*, float** %17, align 8
  %72 = load float*, float** %18, align 8
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %21, align 4
  %76 = load float, float* %22, align 4
  %77 = load float, float* %23, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 5
  %82 = load i32, i32* %26, align 4
  %83 = call float @quantize_band_cost(%struct.AACEncContext* %70, float* %71, float* %72, i32 %73, i32 %74, i32 %75, float %76, float %77, i32* %79, float* %81, i32 %82)
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  store float %83, float* %85, align 8
  %86 = load i32, i32* %21, align 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %26, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.AACEncContext*, %struct.AACEncContext** %14, align 8
  %93 = getelementptr inbounds %struct.AACEncContext, %struct.AACEncContext* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %69, %63
  %98 = load i32*, i32** %24, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %24, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %97
  %106 = load float*, float** %25, align 8
  %107 = icmp ne float* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 5
  %111 = load float, float* %110, align 8
  %112 = load float*, float** %25, align 8
  store float %111, float* %112, align 4
  br label %113

113:                                              ; preds = %108, %105
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load float, float* %115, align 8
  ret float %116
}

declare dso_local i32 @av_assert1(i32) #1

declare dso_local float @quantize_band_cost(%struct.AACEncContext*, float*, float*, i32, i32, i32, float, float, i32*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
