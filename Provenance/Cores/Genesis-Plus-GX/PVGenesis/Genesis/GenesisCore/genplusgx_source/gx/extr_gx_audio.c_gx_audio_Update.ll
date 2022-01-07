; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_audio.c_gx_audio_Update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_audio.c_gx_audio_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@audio_sync = common dso_local global i32 0, align 4
@soundbuffer = common dso_local global i64* null, align 8
@mixbuffer = common dso_local global i64 0, align 8
@SOUND_BUFFER_NUM = common dso_local global i64 0, align 8
@audioStarted = common dso_local global i32 0, align 4
@SYNC_AUDIO = common dso_local global i32 0, align 4
@NO_SYNC = common dso_local global i32 0, align 4
@LOGSIZE = common dso_local global i32 0, align 4
@delta_samp = common dso_local global i32* null, align 8
@frame_cnt = common dso_local global i32 0, align 4
@prevtime = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gx_audio_Update() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @audio_sync, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %0
  %7 = load i64*, i64** @soundbuffer, align 8
  %8 = load i64, i64* @mixbuffer, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @audio_update(i32* %12)
  %14 = mul nsw i32 %13, 4
  store i32 %14, i32* %3, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @DCFlushRange(i8* %16, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = ptrtoint i32* %19 to i32
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @AUDIO_InitDMA(i32 %20, i32 %21)
  %23 = load i64, i64* @mixbuffer, align 8
  %24 = add i64 %23, 1
  %25 = load i64, i64* @SOUND_BUFFER_NUM, align 8
  %26 = urem i64 %24, %25
  store i64 %26, i64* @mixbuffer, align 8
  store i32 1, i32* @audio_sync, align 4
  %27 = load i32, i32* @audioStarted, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = call i32 (...) @AUDIO_StopDMA()
  %31 = call i32 (...) @AUDIO_StartDMA()
  store i32 1, i32* @audioStarted, align 4
  br label %32

32:                                               ; preds = %29, %6
  %33 = load i32, i32* @SYNC_AUDIO, align 4
  store i32 %33, i32* %1, align 4
  br label %36

34:                                               ; preds = %0
  %35 = load i32, i32* @NO_SYNC, align 4
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @audio_update(i32*) #1

declare dso_local i32 @DCFlushRange(i8*, i32) #1

declare dso_local i32 @AUDIO_InitDMA(i32, i32) #1

declare dso_local i32 @AUDIO_StopDMA(...) #1

declare dso_local i32 @AUDIO_StartDMA(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
