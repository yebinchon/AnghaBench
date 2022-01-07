; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_convert.c_ff_audio_convert_alloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_convert.c_ff_audio_convert_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@AV_RESAMPLE_DITHER_NONE = common dso_local global i64 0, align 8
@AV_SAMPLE_FMT_S16 = common dso_local global i64 0, align 8
@CONV_FUNC_TYPE_FLAT = common dso_local global i32 0, align 4
@CONV_FUNC_TYPE_INTERLEAVE = common dso_local global i32 0, align 4
@CONV_FUNC_TYPE_DEINTERLEAVE = common dso_local global i32 0, align 4
@ARCH_AARCH64 = common dso_local global i64 0, align 8
@ARCH_ARM = common dso_local global i64 0, align 8
@ARCH_X86 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @ff_audio_convert_alloc(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = call %struct.TYPE_12__* @av_mallocz(i32 40)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %14, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %19 = icmp ne %struct.TYPE_12__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  br label %129

21:                                               ; preds = %6
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 7
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AV_RESAMPLE_DITHER_NONE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %21
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @av_get_packed_sample_fmt(i32 %43)
  %45 = load i64, i64* @AV_SAMPLE_FMT_S16, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @av_get_bytes_per_sample(i32 %48)
  %50 = icmp sgt i32 %49, 2
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @ff_dither_alloc(%struct.TYPE_13__* %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %51
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %67 = call i32 @av_free(%struct.TYPE_12__* %66)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  br label %129

68:                                               ; preds = %51
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %7, align 8
  br label %129

70:                                               ; preds = %47, %42, %21
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @ff_sample_fmt_is_planar(i32 %71, i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @ff_sample_fmt_is_planar(i32 %74, i32 %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %70
  %81 = load i32, i32* @CONV_FUNC_TYPE_FLAT, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  br label %91

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %86
  %92 = phi i32 [ %89, %86 ], [ 1, %90 ]
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  br label %107

95:                                               ; preds = %70
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* @CONV_FUNC_TYPE_INTERLEAVE, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  br label %106

102:                                              ; preds = %95
  %103 = load i32, i32* @CONV_FUNC_TYPE_DEINTERLEAVE, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %106, %91
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %109 = call i32 @set_generic_function(%struct.TYPE_12__* %108)
  %110 = load i64, i64* @ARCH_AARCH64, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %114 = call i32 @ff_audio_convert_init_aarch64(%struct.TYPE_12__* %113)
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i64, i64* @ARCH_ARM, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %120 = call i32 @ff_audio_convert_init_arm(%struct.TYPE_12__* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i64, i64* @ARCH_X86, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %126 = call i32 @ff_audio_convert_init_x86(%struct.TYPE_12__* %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %128, %struct.TYPE_12__** %7, align 8
  br label %129

129:                                              ; preds = %127, %68, %65, %20
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  ret %struct.TYPE_12__* %130
}

declare dso_local %struct.TYPE_12__* @av_mallocz(i32) #1

declare dso_local i64 @av_get_packed_sample_fmt(i32) #1

declare dso_local i32 @av_get_bytes_per_sample(i32) #1

declare dso_local i32 @ff_dither_alloc(%struct.TYPE_13__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_free(%struct.TYPE_12__*) #1

declare dso_local i32 @ff_sample_fmt_is_planar(i32, i32) #1

declare dso_local i32 @set_generic_function(%struct.TYPE_12__*) #1

declare dso_local i32 @ff_audio_convert_init_aarch64(%struct.TYPE_12__*) #1

declare dso_local i32 @ff_audio_convert_init_arm(%struct.TYPE_12__*) #1

declare dso_local i32 @ff_audio_convert_init_x86(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
