; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_ClearSoundBuffer.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_ClearSoundBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@s_soundStarted = common dso_local global i32 0, align 4
@loopSounds = common dso_local global i32 0, align 4
@MAX_GENTITIES = common dso_local global i32 0, align 4
@loop_channels = common dso_local global i32 0, align 4
@MAX_CHANNELS = common dso_local global i32 0, align 4
@numLoopChannels = common dso_local global i64 0, align 8
@s_rawend = common dso_local global i64 0, align 8
@dma = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_ClearSoundBuffer() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @s_soundStarted, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %37

5:                                                ; preds = %0
  %6 = load i32, i32* @loopSounds, align 4
  %7 = load i32, i32* @MAX_GENTITIES, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  %11 = call i32 @Com_Memset(i32 %6, i32 0, i32 %10)
  %12 = load i32, i32* @loop_channels, align 4
  %13 = load i32, i32* @MAX_CHANNELS, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i32 @Com_Memset(i32 %12, i32 0, i32 %16)
  store i64 0, i64* @numLoopChannels, align 8
  %18 = call i32 (...) @S_ChannelSetup()
  store i64 0, i64* @s_rawend, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma, i32 0, i32 0), align 8
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 128, i32* %1, align 4
  br label %23

22:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = call i32 (...) @SNDDMA_BeginPainting()
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma, i32 0, i32 2), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma, i32 0, i32 2), align 8
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma, i32 0, i32 1), align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma, i32 0, i32 0), align 8
  %32 = mul nsw i32 %30, %31
  %33 = sdiv i32 %32, 8
  %34 = call i32 @Snd_Memset(i64 %28, i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %27, %23
  %36 = call i32 (...) @SNDDMA_Submit()
  br label %37

37:                                               ; preds = %35, %4
  ret void
}

declare dso_local i32 @Com_Memset(i32, i32, i32) #1

declare dso_local i32 @S_ChannelSetup(...) #1

declare dso_local i32 @SNDDMA_BeginPainting(...) #1

declare dso_local i32 @Snd_Memset(i64, i32, i32) #1

declare dso_local i32 @SNDDMA_Submit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
