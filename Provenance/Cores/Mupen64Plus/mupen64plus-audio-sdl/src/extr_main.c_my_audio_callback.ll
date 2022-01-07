; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-audio-sdl/src/extr_main.c_my_audio_callback.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-audio-sdl/src/extr_main.c_my_audio_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@l_PluginInit = common dso_local global i32 0, align 4
@last_callback_ticks = common dso_local global i32 0, align 4
@OutputFreq = common dso_local global i32 0, align 4
@speed_factor = common dso_local global i32 0, align 4
@GameFreq = common dso_local global i32 0, align 4
@buffer_pos = common dso_local global i32 0, align 4
@primaryBuffer = common dso_local global i32* null, align 8
@mixBuffer = common dso_local global i8* null, align 8
@VolSDL = common dso_local global i32 0, align 4
@M64MSG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%03i my_audio_callback: used %i samples\00", align 1
@SDL_SAMPLE_BYTES = common dso_local global i32 0, align 4
@N64_SAMPLE_BYTES = common dso_local global i32 0, align 4
@underrun_count = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"%03i Buffer underflow (%i).  %i samples present, %i needed\00", align 1
@VOLUME_TYPE_OSS = common dso_local global i64 0, align 8
@VolumeControlType = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @my_audio_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_audio_callback(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @l_PluginInit, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %87

15:                                               ; preds = %3
  %16 = call i32 (...) @SDL_GetTicks()
  store i32 %16, i32* @last_callback_ticks, align 4
  %17 = load i32, i32* @OutputFreq, align 4
  %18 = mul nsw i32 %17, 100
  %19 = load i32, i32* @speed_factor, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @GameFreq, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @buffer_pos, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = udiv i32 %25, %26
  %28 = icmp ugt i32 %22, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %15
  %30 = load i32*, i32** @primaryBuffer, align 8
  %31 = load i32, i32* @buffer_pos, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i8*, i8** @mixBuffer, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @resample(i32* %30, i32 %31, i32 %32, i8* %33, i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @memset(i8* %37, i32 0, i32 %38)
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** @mixBuffer, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @VolSDL, align 4
  %44 = call i32 @SDL_MixAudio(i8* %40, i8* %41, i32 %42, i32 %43)
  %45 = load i32*, i32** @primaryBuffer, align 8
  %46 = load i32*, i32** @primaryBuffer, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* @buffer_pos, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sub i32 %50, %51
  %53 = call i32 @memmove(i32* %45, i32* %49, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @buffer_pos, align 4
  %56 = sub i32 %55, %54
  store i32 %56, i32* @buffer_pos, align 4
  %57 = load i32, i32* @M64MSG_VERBOSE, align 4
  %58 = load i32, i32* @last_callback_ticks, align 4
  %59 = srem i32 %58, 1000
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @SDL_SAMPLE_BYTES, align 4
  %62 = sdiv i32 %60, %61
  %63 = call i32 (i32, i8*, i32, i32, ...) @DebugMessage(i32 %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62)
  br label %87

64:                                               ; preds = %15
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @SDL_SAMPLE_BYTES, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sdiv i32 %67, %70
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* @buffer_pos, align 4
  %73 = load i32, i32* @N64_SAMPLE_BYTES, align 4
  %74 = udiv i32 %72, %73
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* @underrun_count, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @underrun_count, align 4
  %77 = load i32, i32* @M64MSG_VERBOSE, align 4
  %78 = load i32, i32* @last_callback_ticks, align 4
  %79 = srem i32 %78, 1000
  %80 = load i32, i32* @underrun_count, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 (i32, i8*, i32, i32, ...) @DebugMessage(i32 %77, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @memset(i8* %84, i32 0, i32 %85)
  br label %87

87:                                               ; preds = %14, %64, %29
  ret void
}

declare dso_local i32 @SDL_GetTicks(...) #1

declare dso_local i32 @resample(i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @SDL_MixAudio(i8*, i8*, i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @DebugMessage(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
