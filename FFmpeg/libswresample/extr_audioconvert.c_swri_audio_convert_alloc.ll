; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_audioconvert.c_swri_audio_convert_alloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_audioconvert.c_swri_audio_convert_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32, i32, i32* }

@fmt_pair_to_conv_functions = common dso_local global i32** null, align 8
@AV_SAMPLE_FMT_NB = common dso_local global i64 0, align 8
@AV_SAMPLE_FMT_U8 = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_U8P = common dso_local global i32 0, align 4
@cpy1 = common dso_local global i32 0, align 4
@cpy2 = common dso_local global i32 0, align 4
@cpy4 = common dso_local global i32 0, align 4
@cpy8 = common dso_local global i32 0, align 4
@HAVE_X86ASM = common dso_local global i64 0, align 8
@HAVE_MMX = common dso_local global i64 0, align 8
@ARCH_ARM = common dso_local global i64 0, align 8
@ARCH_AARCH64 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @swri_audio_convert_alloc(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32**, i32*** @fmt_pair_to_conv_functions, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @av_get_packed_sample_fmt(i32 %15)
  %17 = load i64, i64* @AV_SAMPLE_FMT_NB, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @av_get_packed_sample_fmt(i32 %18)
  %20 = mul i64 %17, %19
  %21 = add i64 %16, %20
  %22 = getelementptr inbounds i32*, i32** %14, i64 %21
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %121

27:                                               ; preds = %5
  %28 = call %struct.TYPE_7__* @av_mallocz(i32 32)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %12, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %121

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @av_get_planar_sample_fmt(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @av_get_planar_sample_fmt(i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  store i32* %44, i32** %46, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @AV_SAMPLE_FMT_U8, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @AV_SAMPLE_FMT_U8P, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53, %40
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memset(i32 %60, i32 128, i32 4)
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %62
  %67 = load i32*, i32** %10, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %89, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @av_get_bytes_per_sample(i32 %70)
  switch i32 %71, label %88 [
    i32 1, label %72
    i32 2, label %76
    i32 4, label %80
    i32 8, label %84
  ]

72:                                               ; preds = %69
  %73 = load i32, i32* @cpy1, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  br label %88

76:                                               ; preds = %69
  %77 = load i32, i32* @cpy2, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  br label %88

80:                                               ; preds = %69
  %81 = load i32, i32* @cpy4, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  br label %88

84:                                               ; preds = %69
  %85 = load i32, i32* @cpy8, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %69, %84, %80, %76, %72
  br label %89

89:                                               ; preds = %88, %66, %62
  %90 = load i64, i64* @HAVE_X86ASM, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i64, i64* @HAVE_MMX, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @swri_audio_convert_init_x86(%struct.TYPE_7__* %96, i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %95, %92, %89
  %102 = load i64, i64* @ARCH_ARM, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @swri_audio_convert_init_arm(%struct.TYPE_7__* %105, i32 %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %104, %101
  %111 = load i64, i64* @ARCH_AARCH64, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @swri_audio_convert_init_aarch64(%struct.TYPE_7__* %114, i32 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %113, %110
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %120, %struct.TYPE_7__** %6, align 8
  br label %121

121:                                              ; preds = %119, %31, %26
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  ret %struct.TYPE_7__* %122
}

declare dso_local i64 @av_get_packed_sample_fmt(i32) #1

declare dso_local %struct.TYPE_7__* @av_mallocz(i32) #1

declare dso_local i32 @av_get_planar_sample_fmt(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @av_get_bytes_per_sample(i32) #1

declare dso_local i32 @swri_audio_convert_init_x86(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @swri_audio_convert_init_arm(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @swri_audio_convert_init_aarch64(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
