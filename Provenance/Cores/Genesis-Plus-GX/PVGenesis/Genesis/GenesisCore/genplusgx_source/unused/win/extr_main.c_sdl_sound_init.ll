; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/win/extr_main.c_sdl_sound_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/win/extr_main.c_sdl_sound_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@SDL_INIT_AUDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SDL Audio initialization failed\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@SOUND_FREQUENCY = common dso_local global i32 0, align 4
@AUDIO_S16LSB = common dso_local global i32 0, align 4
@SOUND_SAMPLES_SIZE = common dso_local global i32 0, align 4
@sdl_sound_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"SDL Audio open failed\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"SDL Audio wrong setup\00", align 1
@sdl_sound = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Can't allocate audio buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sdl_sound_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdl_sound_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = load i32, i32* @SDL_INIT_AUDIO, align 4
  %6 = call i64 @SDL_Init(i32 %5)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @MessageBox(i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 0, i32* %1, align 4
  br label %51

10:                                               ; preds = %0
  %11 = load i32, i32* @SOUND_FREQUENCY, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @AUDIO_S16LSB, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 2, i32* %15, align 4
  %16 = load i32, i32* @SOUND_SAMPLES_SIZE, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @sdl_sound_callback, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = call i32 @SDL_OpenAudio(%struct.TYPE_5__* %3, %struct.TYPE_5__* %4)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = call i32 @MessageBox(i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 0, i32* %1, align 4
  br label %51

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @MessageBox(i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 0, i32* %1, align 4
  br label %51

32:                                               ; preds = %24
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdl_sound, i32 0, i32 2), align 8
  %33 = load i32, i32* @SOUND_SAMPLES_SIZE, align 4
  %34 = mul nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 2
  %37 = mul i64 %36, 11
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i64 @malloc(i32 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdl_sound, i32 0, i32 0), align 8
  %42 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdl_sound, i32 0, i32 0), align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %32
  %45 = call i32 @MessageBox(i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 0, i32* %1, align 4
  br label %51

46:                                               ; preds = %32
  %47 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdl_sound, i32 0, i32 0), align 8
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @memset(i8* %47, i32 0, i32 %48)
  %50 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdl_sound, i32 0, i32 0), align 8
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdl_sound, i32 0, i32 1), align 8
  store i32 1, i32* %1, align 4
  br label %51

51:                                               ; preds = %46, %44, %30, %22, %8
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i64 @SDL_Init(i32) #1

declare dso_local i32 @MessageBox(i32*, i8*, i8*, i32) #1

declare dso_local i32 @SDL_OpenAudio(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
