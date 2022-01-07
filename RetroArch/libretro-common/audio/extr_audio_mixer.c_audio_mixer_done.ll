; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mixer.c_audio_mixer_done.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mixer.c_audio_mixer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@AUDIO_MIXER_MAX_VOICES = common dso_local global i32 0, align 4
@AUDIO_MIXER_TYPE_NONE = common dso_local global i32 0, align 4
@s_voices = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_mixer_done() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %13, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @AUDIO_MIXER_MAX_VOICES, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = load i32, i32* @AUDIO_MIXER_TYPE_NONE, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_voices, align 8
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %7, i32* %12, align 4
  br label %13

13:                                               ; preds = %6
  %14 = load i32, i32* %1, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %2

16:                                               ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
