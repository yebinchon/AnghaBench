; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_apply_window_and_mdct.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_apply_window_and_mdct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float**, i32*, i32, float*, i64, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i64, float*)* }
%struct.TYPE_6__ = type { i32 (float*, float*, i32, i32)*, i32 (float*, float*, float*, i32)*, i32 (float*, float*, float*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @apply_window_and_mdct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_window_and_mdct(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca float*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load float**, float*** %10, align 8
  %12 = getelementptr inbounds float*, float** %11, i64 1
  %13 = load float*, float** %12, align 8
  store float* %13, float** %4, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = shl i32 1, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = sitofp i32 %26 to float
  %28 = fpext float %27 to double
  %29 = fdiv double %28, 4.000000e+00
  %30 = fptrunc double %29 to float
  store float %30, float* %6, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %7, align 8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %118, %1
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %121

40:                                               ; preds = %34
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load float*, float** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 %44, %45
  %47 = mul nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %43, i64 %48
  store float* %49, float** %8, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32 (float*, float*, float*, i32)*, i32 (float*, float*, float*, i32)** %51, align 8
  %53 = load float*, float** %8, align 8
  %54 = load float*, float** %8, align 8
  %55 = load float*, float** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 %52(float* %53, float* %54, float* %55, i32 %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32 (float*, float*, i32, i32)*, i32 (float*, float*, i32, i32)** %59, align 8
  %61 = load float*, float** %8, align 8
  %62 = load float*, float** %8, align 8
  %63 = load float, float* %6, align 4
  %64 = fdiv float 1.000000e+00, %63
  %65 = fptosi float %64 to i32
  %66 = load i32, i32* %5, align 4
  %67 = call i32 %60(float* %61, float* %62, i32 %65, i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = load float*, float** %8, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds float, float* %69, i64 %70
  store float* %71, float** %8, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32 (float*, float*, float*, i32)*, i32 (float*, float*, float*, i32)** %73, align 8
  %75 = load float*, float** %8, align 8
  %76 = load float*, float** %8, align 8
  %77 = load float*, float** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 %74(float* %75, float* %76, float* %77, i32 %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32 (float*, float*, i32, i32)*, i32 (float*, float*, i32, i32)** %81, align 8
  %83 = load float*, float** %8, align 8
  %84 = load float*, float** %8, align 8
  %85 = load float, float* %6, align 4
  %86 = fdiv float 1.000000e+00, %85
  %87 = fptosi float %86 to i32
  %88 = load i32, i32* %5, align 4
  %89 = call i32 %82(float* %83, float* %84, i32 %87, i32 %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_7__*, i64, float*)*, i32 (%struct.TYPE_7__*, i64, float*)** %94, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 5
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* %5, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %102, %106
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load float*, float** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* %5, align 4
  %113 = mul nsw i32 %111, %112
  %114 = mul nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %110, i64 %115
  %117 = call i32 %95(%struct.TYPE_7__* %99, i64 %107, float* %116)
  br label %118

118:                                              ; preds = %40
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %3, align 4
  br label %34

121:                                              ; preds = %34
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
