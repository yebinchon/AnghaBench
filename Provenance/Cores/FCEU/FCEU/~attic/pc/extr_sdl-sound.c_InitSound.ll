; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-sound.c_InitSound.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-sound.c_InitSound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32 }

@_sound = common dso_local global i32 0, align 4
@SDL_INIT_AUDIO = common dso_local global i32 0, align 4
@soundrate = common dso_local global i32 0, align 4
@AUDIO_S16SYS = common dso_local global i32 0, align 4
@fillaudio = common dso_local global i32 0, align 4
@soundbufsize = common dso_local global i32 0, align 4
@BufferSize = common dso_local global i32 0, align 4
@Buffer = common dso_local global i32 0, align 4
@BufferIn = common dso_local global i64 0, align 8
@BufferWrite = common dso_local global i64 0, align 8
@BufferRead = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitSound(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @_sound, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

8:                                                ; preds = %1
  %9 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 32)
  %10 = load i32, i32* @SDL_INIT_AUDIO, align 4
  %11 = call i64 @SDL_InitSubSystem(i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = call i32 (...) @SDL_GetError()
  %15 = call i32 @puts(i32 %14)
  %16 = call i32 (...) @KillSound()
  store i32 0, i32* %2, align 4
  br label %59

17:                                               ; preds = %8
  %18 = load i32, i32* @soundrate, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @AUDIO_S16SYS, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 256, i32* %23, align 8
  %24 = load i32, i32* @fillaudio, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @soundbufsize, align 4
  %28 = load i32, i32* @soundrate, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sdiv i32 %29, 1000
  store i32 %30, i32* @BufferSize, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %32, 2
  %34 = load i32, i32* @BufferSize, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* @BufferSize, align 4
  %36 = load i32, i32* @BufferSize, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* @BufferSize, align 4
  br label %43

43:                                               ; preds = %40, %17
  %44 = load i32, i32* @BufferSize, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @malloc(i32 %47)
  store i32 %48, i32* @Buffer, align 4
  store i64 0, i64* @BufferIn, align 8
  store i64 0, i64* @BufferWrite, align 8
  store i64 0, i64* @BufferRead, align 8
  %49 = call i64 @SDL_OpenAudio(%struct.TYPE_4__* %4, i32 0)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = call i32 (...) @SDL_GetError()
  %53 = call i32 @puts(i32 %52)
  %54 = call i32 (...) @KillSound()
  store i32 0, i32* %2, align 4
  br label %59

55:                                               ; preds = %43
  %56 = call i32 @SDL_PauseAudio(i32 0)
  %57 = load i32, i32* @soundrate, align 4
  %58 = call i32 @FCEUI_Sound(i32 %57)
  store i32 1, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %51, %13, %7
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @SDL_InitSubSystem(i32) #1

declare dso_local i32 @puts(i32) #1

declare dso_local i32 @SDL_GetError(...) #1

declare dso_local i32 @KillSound(...) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i64 @SDL_OpenAudio(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @SDL_PauseAudio(i32) #1

declare dso_local i32 @FCEUI_Sound(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
