; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_extrastereo.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_extrastereo.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, %struct.TYPE_17__** }
%struct.TYPE_15__ = type { float, i64 }
%struct.TYPE_16__ = type { i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %6, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %22, i64 0
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %7, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %8, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to float*
  store float* %33, float** %9, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load float, float* %35, align 8
  store float %36, float* %10, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = call i64 @av_frame_is_writable(%struct.TYPE_16__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %11, align 8
  br label %58

42:                                               ; preds = %2
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.TYPE_16__* @ff_get_audio_buffer(%struct.TYPE_17__* %43, i32 %46)
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %11, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %49 = icmp ne %struct.TYPE_16__* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = call i32 @av_frame_free(%struct.TYPE_16__** %5)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = call i32 @AVERROR(i32 %52)
  store i32 %53, i32* %3, align 4
  br label %141

54:                                               ; preds = %42
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = call i32 @av_frame_copy_props(%struct.TYPE_16__* %55, %struct.TYPE_16__* %56)
  br label %58

58:                                               ; preds = %54, %40
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to float*
  store float* %64, float** %12, align 8
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %128, %58
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %131

71:                                               ; preds = %65
  %72 = load float*, float** %9, align 8
  %73 = load i32, i32* %13, align 4
  %74 = mul nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %72, i64 %75
  %77 = load float, float* %76, align 4
  store float %77, float* %15, align 4
  %78 = load float*, float** %9, align 8
  %79 = load i32, i32* %13, align 4
  %80 = mul nsw i32 %79, 2
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %78, i64 %82
  %84 = load float, float* %83, align 4
  store float %84, float* %16, align 4
  %85 = load float, float* %15, align 4
  %86 = load float, float* %16, align 4
  %87 = fadd float %85, %86
  %88 = fpext float %87 to double
  %89 = fdiv double %88, 2.000000e+00
  %90 = fptrunc double %89 to float
  store float %90, float* %14, align 4
  %91 = load float, float* %14, align 4
  %92 = load float, float* %10, align 4
  %93 = load float, float* %15, align 4
  %94 = load float, float* %14, align 4
  %95 = fsub float %93, %94
  %96 = fmul float %92, %95
  %97 = fadd float %91, %96
  store float %97, float* %15, align 4
  %98 = load float, float* %14, align 4
  %99 = load float, float* %10, align 4
  %100 = load float, float* %16, align 4
  %101 = load float, float* %14, align 4
  %102 = fsub float %100, %101
  %103 = fmul float %99, %102
  %104 = fadd float %98, %103
  store float %104, float* %16, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %71
  %110 = load float, float* %15, align 4
  %111 = call float @av_clipf(float %110, i32 -1, i32 1)
  store float %111, float* %15, align 4
  %112 = load float, float* %16, align 4
  %113 = call float @av_clipf(float %112, i32 -1, i32 1)
  store float %113, float* %16, align 4
  br label %114

114:                                              ; preds = %109, %71
  %115 = load float, float* %15, align 4
  %116 = load float*, float** %12, align 8
  %117 = load i32, i32* %13, align 4
  %118 = mul nsw i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %116, i64 %119
  store float %115, float* %120, align 4
  %121 = load float, float* %16, align 4
  %122 = load float*, float** %12, align 8
  %123 = load i32, i32* %13, align 4
  %124 = mul nsw i32 %123, 2
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %122, i64 %126
  store float %121, float* %127, align 4
  br label %128

128:                                              ; preds = %114
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %65

131:                                              ; preds = %65
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %134 = icmp ne %struct.TYPE_16__* %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = call i32 @av_frame_free(%struct.TYPE_16__** %5)
  br label %137

137:                                              ; preds = %135, %131
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %140 = call i32 @ff_filter_frame(%struct.TYPE_17__* %138, %struct.TYPE_16__* %139)
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %137, %50
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @ff_get_audio_buffer(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_16__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local float @av_clipf(float, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
