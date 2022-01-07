; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mixer.c_audio_mixer_mix.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mixer.c_audio_mixer_mix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float, i32 }

@s_voices = common dso_local global %struct.TYPE_8__* null, align 8
@AUDIO_MIXER_MAX_VOICES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_mixer_mix(float* %0, i64 %1, float %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i64, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca float*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca float, align 4
  store float* %0, float** %5, align 8
  store i64 %1, i64* %6, align 8
  store float %2, float* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %10, align 8
  store float* null, float** %11, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_voices, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %12, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %45, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @AUDIO_MIXER_MAX_VOICES, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load float, float* %7, align 4
  br label %28

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 4
  br label %28

28:                                               ; preds = %24, %22
  %29 = phi float [ %23, %22 ], [ %27, %24 ]
  store float %29, float* %13, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %44 [
    i32 128, label %33
    i32 129, label %39
    i32 132, label %40
    i32 133, label %41
    i32 131, label %42
    i32 130, label %43
  ]

33:                                               ; preds = %28
  %34 = load float*, float** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %37 = load float, float* %13, align 4
  %38 = call i32 @audio_mixer_mix_wav(float* %34, i64 %35, %struct.TYPE_8__* %36, float %37)
  br label %44

39:                                               ; preds = %28
  br label %44

40:                                               ; preds = %28
  br label %44

41:                                               ; preds = %28
  br label %44

42:                                               ; preds = %28
  br label %44

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %28, %43, %42, %41, %40, %39, %33
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 1
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %12, align 8
  br label %15

50:                                               ; preds = %15
  store i64 0, i64* %10, align 8
  %51 = load float*, float** %5, align 8
  store float* %51, float** %11, align 8
  br label %52

52:                                               ; preds = %70, %50
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %52
  %57 = load float*, float** %11, align 8
  %58 = load float, float* %57, align 4
  %59 = fcmp olt float %58, -1.000000e+00
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load float*, float** %11, align 8
  store float -1.000000e+00, float* %61, align 4
  br label %69

62:                                               ; preds = %56
  %63 = load float*, float** %11, align 8
  %64 = load float, float* %63, align 4
  %65 = fcmp ogt float %64, 1.000000e+00
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load float*, float** %11, align 8
  store float 1.000000e+00, float* %67, align 4
  br label %68

68:                                               ; preds = %66, %62
  br label %69

69:                                               ; preds = %68, %60
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %10, align 8
  %73 = load float*, float** %11, align 8
  %74 = getelementptr inbounds float, float* %73, i32 1
  store float* %74, float** %11, align 8
  br label %52

75:                                               ; preds = %52
  ret void
}

declare dso_local i32 @audio_mixer_mix_wav(float*, i64, %struct.TYPE_8__*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
