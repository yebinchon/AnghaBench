; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_psp_audio.c_audioMainLoop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_psp_audio.c_audioMainLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32 }

@AUDIO_OUT_COUNT = common dso_local global i32 0, align 4
@AUDIO_BUFFER_SIZE_MASK = common dso_local global i32 0, align 4
@PSP_AUDIO_VOLUME_MAX = common dso_local global i32 0, align 4
@SCE_AUDIO_OUT_MODE_STEREO = common dso_local global i32 0, align 4
@SCE_AUDIO_OUT_PORT_TYPE_MAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @audioMainLoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audioMainLoop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %3, align 8
  %9 = load i32, i32* @AUDIO_OUT_COUNT, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @sceAudioSRCChReserve(i32 %9, i32 %12, i32 2)
  br label %14

14:                                               ; preds = %85, %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %88

19:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @slock_lock(i32 %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %32, %34
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @AUDIO_BUFFER_SIZE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @AUDIO_OUT_COUNT, align 4
  %40 = mul nsw i32 %39, 2
  %41 = icmp slt i32 %38, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %19
  %46 = load i32, i32* @AUDIO_OUT_COUNT, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @AUDIO_BUFFER_SIZE_MASK, align 4
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %45, %19
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @slock_unlock(i32 %58)
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @slock_lock(i32 %62)
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @scond_signal(i32 %66)
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @slock_unlock(i32 %70)
  %72 = load i32, i32* @PSP_AUDIO_VOLUME_MAX, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %55
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  br label %85

79:                                               ; preds = %55
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %82, %83
  br label %85

85:                                               ; preds = %79, %75
  %86 = phi i32 [ %78, %75 ], [ %84, %79 ]
  %87 = call i32 @sceAudioSRCOutputBlocking(i32 %72, i32 %86)
  br label %14

88:                                               ; preds = %14
  %89 = call i32 (...) @sceAudioSRCChRelease()
  ret void
}

declare dso_local i32 @sceAudioSRCChReserve(i32, i32, i32) #1

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @slock_unlock(i32) #1

declare dso_local i32 @scond_signal(i32) #1

declare dso_local i32 @sceAudioSRCOutputBlocking(i32, i32) #1

declare dso_local i32 @sceAudioSRCChRelease(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
