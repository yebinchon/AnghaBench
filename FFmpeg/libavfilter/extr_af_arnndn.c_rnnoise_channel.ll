; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_rnnoise_channel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_rnnoise_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float*, i32, i32 }
%struct.TYPE_12__ = type { float, float }

@FREQ_SIZE = common dso_local global i32 0, align 4
@WINDOW_SIZE = common dso_local global i32 0, align 4
@FRAME_SIZE = common dso_local global i32 0, align 4
@NB_BANDS = common dso_local global i32 0, align 4
@NB_FEATURES = common dso_local global i32 0, align 4
@rnnoise_channel.a_hp = internal constant [2 x float] [float 0xBFFFEF9340000000, float 0x3FEFDF3B60000000], align 4
@rnnoise_channel.b_hp = internal constant [2 x float] [float -2.000000e+00, float 1.000000e+00], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32*, %struct.TYPE_11__*, float*, float*)* @rnnoise_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @rnnoise_channel(i32* %0, %struct.TYPE_11__* %1, float* %2, float* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %24 = load i32, i32* @FREQ_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca %struct.TYPE_12__, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %28 = load i32, i32* @WINDOW_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca %struct.TYPE_12__, i64 %29, align 16
  store i64 %29, i64* %11, align 8
  %31 = load i32, i32* @FRAME_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca float, i64 %32, align 16
  store i64 %32, i64* %12, align 8
  %34 = load i32, i32* @NB_BANDS, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca float, i64 %35, align 16
  store i64 %35, i64* %13, align 8
  %37 = load i32, i32* @NB_BANDS, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca float, i64 %38, align 16
  store i64 %38, i64* %14, align 8
  %40 = load i32, i32* @NB_BANDS, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca float, i64 %41, align 16
  store i64 %41, i64* %15, align 8
  %43 = load i32, i32* @NB_FEATURES, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca float, i64 %44, align 16
  store i64 %44, i64* %16, align 8
  %46 = load i32, i32* @NB_BANDS, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca float, i64 %47, align 16
  store i64 %47, i64* %17, align 8
  %49 = load i32, i32* @FREQ_SIZE, align 4
  %50 = zext i32 %49 to i64
  %51 = alloca float, i64 %50, align 16
  store i64 %50, i64* %18, align 8
  store float 0.000000e+00, float* %19, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load float*, float** %8, align 8
  %56 = load i32, i32* @FRAME_SIZE, align 4
  %57 = call i32 @biquad(float* %33, i32 %54, float* %55, float* getelementptr inbounds ([2 x float], [2 x float]* @rnnoise_channel.b_hp, i64 0, i64 0), float* getelementptr inbounds ([2 x float], [2 x float]* @rnnoise_channel.a_hp, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = call i32 @compute_frame_features(i32* %58, %struct.TYPE_11__* %59, %struct.TYPE_12__* %27, %struct.TYPE_12__* %30, float* %36, float* %39, float* %42, float* %45, float* %33)
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %20, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %135, label %63

63:                                               ; preds = %4
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = call i32 @compute_rnn(i32* %64, i32* %66, float* %48, float* %19, float* %45)
  %68 = call i32 @pitch_filter(%struct.TYPE_12__* %27, %struct.TYPE_12__* %30, float* %36, float* %39, float* %42, float* %48)
  store i32 0, i32* %21, align 4
  br label %69

69:                                               ; preds = %101, %63
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* @NB_BANDS, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %104

73:                                               ; preds = %69
  store float 0x3FE3333340000000, float* %22, align 4
  %74 = load i32, i32* %21, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %48, i64 %75
  %77 = load float, float* %76, align 4
  %78 = load float, float* %22, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load float*, float** %80, align 8
  %82 = load i32, i32* %21, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  %85 = load float, float* %84, align 4
  %86 = fmul float %78, %85
  %87 = call float @FFMAX(float %77, float %86)
  %88 = load i32, i32* %21, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %48, i64 %89
  store float %87, float* %90, align 4
  %91 = load i32, i32* %21, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %48, i64 %92
  %94 = load float, float* %93, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load float*, float** %96, align 8
  %98 = load i32, i32* %21, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  store float %94, float* %100, align 4
  br label %101

101:                                              ; preds = %73
  %102 = load i32, i32* %21, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %21, align 4
  br label %69

104:                                              ; preds = %69
  %105 = call i32 @interp_band_gain(float* %51, float* %48)
  store i32 0, i32* %23, align 4
  br label %106

106:                                              ; preds = %131, %104
  %107 = load i32, i32* %23, align 4
  %108 = load i32, i32* @FREQ_SIZE, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %134

110:                                              ; preds = %106
  %111 = load i32, i32* %23, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %51, i64 %112
  %114 = load float, float* %113, align 4
  %115 = load i32, i32* %23, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load float, float* %118, align 8
  %120 = fmul float %119, %114
  store float %120, float* %118, align 8
  %121 = load i32, i32* %23, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %51, i64 %122
  %124 = load float, float* %123, align 4
  %125 = load i32, i32* %23, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load float, float* %128, align 4
  %130 = fmul float %129, %124
  store float %130, float* %128, align 4
  br label %131

131:                                              ; preds = %110
  %132 = load i32, i32* %23, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %23, align 4
  br label %106

134:                                              ; preds = %106
  br label %135

135:                                              ; preds = %134, %4
  %136 = load i32*, i32** %5, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %138 = load float*, float** %7, align 8
  %139 = call i32 @frame_synthesis(i32* %136, %struct.TYPE_11__* %137, float* %138, %struct.TYPE_12__* %27)
  %140 = load float, float* %19, align 4
  %141 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %141)
  ret float %140
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @biquad(float*, i32, float*, float*, float*, i32) #2

declare dso_local i32 @compute_frame_features(i32*, %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_12__*, float*, float*, float*, float*, float*) #2

declare dso_local i32 @compute_rnn(i32*, i32*, float*, float*, float*) #2

declare dso_local i32 @pitch_filter(%struct.TYPE_12__*, %struct.TYPE_12__*, float*, float*, float*, float*) #2

declare dso_local float @FFMAX(float, float) #2

declare dso_local i32 @interp_band_gain(float*, float*) #2

declare dso_local i32 @frame_synthesis(i32*, %struct.TYPE_11__*, float*, %struct.TYPE_12__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
