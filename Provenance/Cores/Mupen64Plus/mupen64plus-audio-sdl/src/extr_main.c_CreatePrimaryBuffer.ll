; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-audio-sdl/src/extr_main.c_CreatePrimaryBuffer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-audio-sdl/src/extr_main.c_CreatePrimaryBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PrimaryBufferSize = common dso_local global i64 0, align 8
@GameFreq = common dso_local global i64 0, align 8
@speed_factor = common dso_local global i64 0, align 8
@OutputFreq = common dso_local global i32 0, align 4
@N64_SAMPLE_BYTES = common dso_local global i32 0, align 4
@primaryBuffer = common dso_local global i8* null, align 8
@M64MSG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Allocating memory for audio buffer: %i bytes.\00", align 1
@primaryBufferBytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CreatePrimaryBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreatePrimaryBuffer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = load i64, i64* @PrimaryBufferSize, align 8
  %5 = load i64, i64* @GameFreq, align 8
  %6 = mul nsw i64 %4, %5
  %7 = load i64, i64* @speed_factor, align 8
  %8 = mul nsw i64 %6, %7
  %9 = load i32, i32* @OutputFreq, align 4
  %10 = mul nsw i32 %9, 100
  %11 = sext i32 %10 to i64
  %12 = sdiv i64 %8, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @N64_SAMPLE_BYTES, align 4
  %15 = mul i32 %13, %14
  store i32 %15, i32* %1, align 4
  %16 = load i8*, i8** @primaryBuffer, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %0
  %19 = load i32, i32* @M64MSG_VERBOSE, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @DebugMessage(i32 %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = call i64 @malloc(i32 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** @primaryBuffer, align 8
  %25 = load i8*, i8** @primaryBuffer, align 8
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @memset(i8* %25, i32 0, i32 %26)
  %28 = load i32, i32* %1, align 4
  store i32 %28, i32* @primaryBufferBytes, align 4
  br label %57

29:                                               ; preds = %0
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @primaryBufferBytes, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load i32, i32* %1, align 4
  %35 = call i64 @malloc(i32 %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %2, align 8
  %37 = load i8*, i8** @primaryBuffer, align 8
  store i8* %37, i8** %3, align 8
  %38 = call i32 (...) @SDL_LockAudio()
  %39 = load i8*, i8** %2, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* @primaryBufferBytes, align 4
  %42 = call i32 @memcpy(i8* %39, i8* %40, i32 %41)
  %43 = load i8*, i8** %2, align 8
  %44 = load i32, i32* @primaryBufferBytes, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* @primaryBufferBytes, align 4
  %49 = sub i32 %47, %48
  %50 = call i32 @memset(i8* %46, i32 0, i32 %49)
  %51 = load i8*, i8** %2, align 8
  store i8* %51, i8** @primaryBuffer, align 8
  %52 = load i32, i32* %1, align 4
  store i32 %52, i32* @primaryBufferBytes, align 4
  %53 = call i32 (...) @SDL_UnlockAudio()
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @free(i8* %54)
  br label %56

56:                                               ; preds = %33, %29
  br label %57

57:                                               ; preds = %56, %18
  ret void
}

declare dso_local i32 @DebugMessage(i32, i8*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @SDL_LockAudio(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @SDL_UnlockAudio(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
