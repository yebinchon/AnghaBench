; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_rgb_from_cqt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_rgb_from_cqt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { float, float, float }
%struct.TYPE_7__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, float, i32, float*)* @rgb_from_cqt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgb_from_cqt(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, float %2, i32 %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store float %2, float* %8, align 4
  store i32 %3, i32* %9, align 4
  store float* %4, float** %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %110, %5
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %113

16:                                               ; preds = %12
  %17 = load float*, float** %10, align 8
  %18 = getelementptr inbounds float, float* %17, i64 0
  %19 = load float, float* %18, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load float, float* %24, align 4
  %26 = fmul float %19, %25
  %27 = load float*, float** %10, align 8
  %28 = getelementptr inbounds float, float* %27, i64 3
  %29 = load float, float* %28, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load float, float* %34, align 4
  %36 = fmul float %29, %35
  %37 = fadd float %26, %36
  %38 = call i32 @FFMIN(float 1.000000e+00, float %37)
  %39 = load float, float* %8, align 4
  %40 = call float @calculate_gamma(i32 %38, float %39)
  %41 = fmul float 2.550000e+02, %40
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store float %41, float* %47, align 4
  %48 = load float*, float** %10, align 8
  %49 = getelementptr inbounds float, float* %48, i64 1
  %50 = load float, float* %49, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load float, float* %55, align 4
  %57 = fmul float %50, %56
  %58 = load float*, float** %10, align 8
  %59 = getelementptr inbounds float, float* %58, i64 4
  %60 = load float, float* %59, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load float, float* %65, align 4
  %67 = fmul float %60, %66
  %68 = fadd float %57, %67
  %69 = call i32 @FFMIN(float 1.000000e+00, float %68)
  %70 = load float, float* %8, align 4
  %71 = call float @calculate_gamma(i32 %69, float %70)
  %72 = fmul float 2.550000e+02, %71
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store float %72, float* %78, align 4
  %79 = load float*, float** %10, align 8
  %80 = getelementptr inbounds float, float* %79, i64 2
  %81 = load float, float* %80, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load float, float* %86, align 4
  %88 = fmul float %81, %87
  %89 = load float*, float** %10, align 8
  %90 = getelementptr inbounds float, float* %89, i64 5
  %91 = load float, float* %90, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load float, float* %96, align 4
  %98 = fmul float %91, %97
  %99 = fadd float %88, %98
  %100 = call i32 @FFMIN(float 1.000000e+00, float %99)
  %101 = load float, float* %8, align 4
  %102 = call float @calculate_gamma(i32 %100, float %101)
  %103 = fmul float 2.550000e+02, %102
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  store float %103, float* %109, align 4
  br label %110

110:                                              ; preds = %16
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %12

113:                                              ; preds = %12
  ret void
}

declare dso_local float @calculate_gamma(i32, float) #1

declare dso_local i32 @FFMIN(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
