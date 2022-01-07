; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3.c_channel_weighting.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3.c_channel_weighting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, i32*)* @channel_weighting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_weighting(float* %0, float* %1, i32* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x [2 x float]], align 16
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 7
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 7
  br i1 %18, label %19, label %117

19:                                               ; preds = %14, %3
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 0
  %27 = getelementptr inbounds [2 x float], [2 x float]* %26, i64 0, i64 0
  %28 = call i32 @get_channel_weights(i32 %22, i32 %25, float* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 1
  %36 = getelementptr inbounds [2 x float], [2 x float]* %35, i64 0, i64 0
  %37 = call i32 @get_channel_weights(i32 %31, i32 %34, float* %36)
  store i32 256, i32* %7, align 4
  br label %38

38:                                               ; preds = %113, %19
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 1024
  br i1 %40, label %41, label %116

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %81, %41
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 8
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %84

48:                                               ; preds = %43
  %49 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 0
  %50 = getelementptr inbounds [2 x float], [2 x float]* %49, i64 0, i64 0
  %51 = load float, float* %50, align 16
  %52 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 0
  %53 = getelementptr inbounds [2 x float], [2 x float]* %52, i64 0, i64 1
  %54 = load float, float* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call float @INTERPOLATE(float %51, float %54, i32 %57)
  %59 = load float*, float** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %59, i64 %61
  %63 = load float, float* %62, align 4
  %64 = fmul float %63, %58
  store float %64, float* %62, align 4
  %65 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 1
  %66 = getelementptr inbounds [2 x float], [2 x float]* %65, i64 0, i64 0
  %67 = load float, float* %66, align 8
  %68 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 1
  %69 = getelementptr inbounds [2 x float], [2 x float]* %68, i64 0, i64 1
  %70 = load float, float* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call float @INTERPOLATE(float %67, float %70, i32 %73)
  %75 = load float*, float** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fmul float %79, %74
  store float %80, float* %78, align 4
  br label %81

81:                                               ; preds = %48
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %43

84:                                               ; preds = %43
  br label %85

85:                                               ; preds = %109, %84
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 256
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %112

90:                                               ; preds = %85
  %91 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 1
  %92 = getelementptr inbounds [2 x float], [2 x float]* %91, i64 0, i64 0
  %93 = load float, float* %92, align 8
  %94 = load float*, float** %4, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  %98 = load float, float* %97, align 4
  %99 = fmul float %98, %93
  store float %99, float* %97, align 4
  %100 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 1
  %101 = getelementptr inbounds [2 x float], [2 x float]* %100, i64 0, i64 1
  %102 = load float, float* %101, align 4
  %103 = load float*, float** %5, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %103, i64 %105
  %107 = load float, float* %106, align 4
  %108 = fmul float %107, %102
  store float %108, float* %106, align 4
  br label %109

109:                                              ; preds = %90
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %85

112:                                              ; preds = %85
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 256
  store i32 %115, i32* %7, align 4
  br label %38

116:                                              ; preds = %38
  br label %117

117:                                              ; preds = %116, %14
  ret void
}

declare dso_local i32 @get_channel_weights(i32, i32, float*) #1

declare dso_local float @INTERPOLATE(float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
