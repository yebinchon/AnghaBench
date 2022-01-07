; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mixer.c_audio_mixer_play.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mixer.c_audio_mixer_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, float, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@s_voices = common dso_local global %struct.TYPE_16__* null, align 8
@AUDIO_MIXER_MAX_VOICES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @audio_mixer_play(%struct.TYPE_17__* %0, i32 %1, float %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32 %1, i32* %7, align 4
  store float %2, float* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** @s_voices, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %12, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = icmp ne %struct.TYPE_17__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %5, align 8
  br label %74

17:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @AUDIO_MIXER_MAX_VOICES, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 130
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %45

28:                                               ; preds = %22
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %44 [
    i32 128, label %32
    i32 129, label %39
    i32 132, label %40
    i32 133, label %41
    i32 131, label %42
    i32 130, label %43
  ]

32:                                               ; preds = %28
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load float, float* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @audio_mixer_play_wav(%struct.TYPE_17__* %33, %struct.TYPE_16__* %34, i32 %35, float %36, i32 %37)
  store i32 %38, i32* %11, align 4
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

44:                                               ; preds = %28, %43, %42, %41, %40, %39, %32
  br label %50

45:                                               ; preds = %27
  %46 = load i32, i32* %10, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %10, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 1
  store %struct.TYPE_16__* %49, %struct.TYPE_16__** %12, align 8
  br label %18

50:                                               ; preds = %44, %18
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load float, float* %8, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 2
  store float %62, float* %64, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 4
  store %struct.TYPE_17__* %65, %struct.TYPE_17__** %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  br label %72

71:                                               ; preds = %50
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %12, align 8
  br label %72

72:                                               ; preds = %71, %53
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %73, %struct.TYPE_16__** %5, align 8
  br label %74

74:                                               ; preds = %72, %16
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  ret %struct.TYPE_16__* %75
}

declare dso_local i32 @audio_mixer_play_wav(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
