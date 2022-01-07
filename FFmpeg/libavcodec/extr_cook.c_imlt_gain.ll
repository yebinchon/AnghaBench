; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_imlt_gain.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_imlt_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { float*, i32, i32, i32 (%struct.TYPE_10__*, float*, i64, i64)*, i32 (%struct.TYPE_10__*, float*, %struct.TYPE_9__*, float*)*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, float*, float*)* }
%struct.TYPE_9__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, float*, %struct.TYPE_9__*, float*)* @imlt_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imlt_gain(%struct.TYPE_10__* %0, float* %1, %struct.TYPE_9__* %2, float* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store float* %1, float** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store float* %3, float** %8, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load float*, float** %13, align 8
  store float* %14, float** %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load float*, float** %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %17, i64 %21
  store float* %22, float** %10, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_11__*, float*, float*)*, i32 (%struct.TYPE_11__*, float*, float*)** %25, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load float*, float** %30, align 8
  %32 = load float*, float** %6, align 8
  %33 = call i32 %26(%struct.TYPE_11__* %28, float* %31, float* %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 4
  %36 = load i32 (%struct.TYPE_10__*, float*, %struct.TYPE_9__*, float*)*, i32 (%struct.TYPE_10__*, float*, %struct.TYPE_9__*, float*)** %35, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = load float*, float** %10, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = load float*, float** %8, align 8
  %41 = call i32 %36(%struct.TYPE_10__* %37, float* %38, %struct.TYPE_9__* %39, float* %40)
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %94, %4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %97

45:                                               ; preds = %42
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %45
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %54, %45
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load i32 (%struct.TYPE_10__*, float*, i64, i64)*, i32 (%struct.TYPE_10__*, float*, i64, i64)** %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = load float*, float** %10, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %69, i64 %75
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = call i32 %67(%struct.TYPE_10__* %68, float* %76, i64 %83, i64 %91)
  br label %93

93:                                               ; preds = %64, %54
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %42

97:                                               ; preds = %42
  %98 = load float*, float** %8, align 8
  %99 = load float*, float** %9, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = call i32 @memcpy(float* %98, float* %99, i32 %105)
  ret void
}

declare dso_local i32 @memcpy(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
