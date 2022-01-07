; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_wiiu_audio.c_wiiu_ax_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_wiiu_audio.c_wiiu_ax_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@wiiu_cb_ax = common dso_local global i32* null, align 8
@AX_AUDIO_SAMPLE_MIN = common dso_local global i64 0, align 8
@AX_VOICE_STATE_STOPPED = common dso_local global i32 0, align 4
@AX_AUDIO_SAMPLE_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiu_ax_callback() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = load i32*, i32** @wiiu_cb_ax, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %40

5:                                                ; preds = %0
  %6 = load i32*, i32** @wiiu_cb_ax, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %1, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @AXIsMultiVoiceRunning(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i64 @OSUninterruptibleSpinLock_Acquire(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AX_AUDIO_SAMPLE_MIN, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AX_VOICE_STATE_STOPPED, align 4
  %29 = call i32 @AXSetMultiVoiceState(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %18
  %31 = load i64, i64* @AX_AUDIO_SAMPLE_COUNT, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = call i32 @OSUninterruptibleSpinLock_Release(i32* %37)
  br label %39

39:                                               ; preds = %30, %13
  br label %40

40:                                               ; preds = %4, %39, %5
  ret void
}

declare dso_local i64 @AXIsMultiVoiceRunning(i32) #1

declare dso_local i64 @OSUninterruptibleSpinLock_Acquire(i32*) #1

declare dso_local i32 @AXSetMultiVoiceState(i32, i32) #1

declare dso_local i32 @OSUninterruptibleSpinLock_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
