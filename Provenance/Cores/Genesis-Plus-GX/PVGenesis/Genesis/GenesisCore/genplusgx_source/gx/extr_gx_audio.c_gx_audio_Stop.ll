; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_audio.c_gx_audio_Stop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_audio.c_gx_audio_Stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@Bg_music_ogg = common dso_local global i64 0, align 8
@Shutdown = common dso_local global i32 0, align 4
@Bg_music_ogg_size = common dso_local global i32 0, align 4
@OGG_INFINITE_TIME = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gx_audio_Stop() #0 {
  %1 = call i32 (...) @DSP_Unhalt()
  %2 = call i32 (...) @ASND_Init()
  %3 = call i32 @ASND_Pause(i32 0)
  %4 = load i64, i64* @Bg_music_ogg, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %0
  %7 = load i32, i32* @Shutdown, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = call i32 @PauseOgg(i32 0)
  %11 = load i64, i64* @Bg_music_ogg, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = load i32, i32* @Bg_music_ogg_size, align 4
  %14 = load i32, i32* @OGG_INFINITE_TIME, align 4
  %15 = call i32 @PlayOgg(i8* %12, i32 %13, i32 0, i32 %14)
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %17 = trunc i64 %16 to i32
  %18 = mul nsw i32 %17, 255
  %19 = sdiv i32 %18, 100
  %20 = call i32 @SetVolumeOgg(i32 %19)
  br label %21

21:                                               ; preds = %9, %6, %0
  ret void
}

declare dso_local i32 @DSP_Unhalt(...) #1

declare dso_local i32 @ASND_Init(...) #1

declare dso_local i32 @ASND_Pause(i32) #1

declare dso_local i32 @PauseOgg(i32) #1

declare dso_local i32 @PlayOgg(i8*, i32, i32, i32) #1

declare dso_local i32 @SetVolumeOgg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
