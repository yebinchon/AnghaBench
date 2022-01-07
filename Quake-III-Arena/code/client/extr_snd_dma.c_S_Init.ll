; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_Init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"\0A------- sound initialization -------\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"s_volume\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"0.8\00", align 1
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@s_volume = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"s_musicvolume\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"0.25\00", align 1
@s_musicVolume = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"s_separation\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"0.5\00", align 1
@s_separation = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"s_doppler\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@s_doppler = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"s_khz\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"22\00", align 1
@s_khz = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"s_mixahead\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"0.2\00", align 1
@s_mixahead = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"s_mixPreStep\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"0.05\00", align 1
@s_mixPreStep = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"s_show\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@CVAR_CHEAT = common dso_local global i32 0, align 4
@s_show = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"s_testsound\00", align 1
@s_testsound = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [12 x i8] c"s_initsound\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"not initializing.\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"------------------------------------\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"music\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"s_list\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"s_info\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"s_stop\00", align 1
@s_soundStarted = common dso_local global i32 0, align 4
@s_soundMuted = common dso_local global i32 0, align 4
@sfxHash = common dso_local global i32 0, align 4
@LOOP_HASH = common dso_local global i32 0, align 4
@s_soundtime = common dso_local global i64 0, align 8
@s_paintedtime = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_Init() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = alloca i64, align 8
  %3 = call i32 @Com_Printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @CVAR_ARCHIVE, align 4
  %5 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %4)
  store i8* %5, i8** @s_volume, align 8
  %6 = load i32, i32* @CVAR_ARCHIVE, align 4
  %7 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %6)
  store i8* %7, i8** @s_musicVolume, align 8
  %8 = load i32, i32* @CVAR_ARCHIVE, align 4
  %9 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %8)
  store i8* %9, i8** @s_separation, align 8
  %10 = load i32, i32* @CVAR_ARCHIVE, align 4
  %11 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %10)
  store i8* %11, i8** @s_doppler, align 8
  %12 = load i32, i32* @CVAR_ARCHIVE, align 4
  %13 = call i8* @Cvar_Get(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %12)
  store i8* %13, i8** @s_khz, align 8
  %14 = load i32, i32* @CVAR_ARCHIVE, align 4
  %15 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %14)
  store i8* %15, i8** @s_mixahead, align 8
  %16 = load i32, i32* @CVAR_ARCHIVE, align 4
  %17 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %16)
  store i8* %17, i8** @s_mixPreStep, align 8
  %18 = load i32, i32* @CVAR_CHEAT, align 4
  %19 = call i8* @Cvar_Get(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 %18)
  store i8* %19, i8** @s_show, align 8
  %20 = load i32, i32* @CVAR_CHEAT, align 4
  %21 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 %20)
  store i8* %21, i8** @s_testsound, align 8
  %22 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %23 = bitcast i8* %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %1, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %0
  %29 = call i32 @Com_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  %30 = call i32 @Com_Printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0))
  br label %50

31:                                               ; preds = %0
  %32 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32 (...)* @S_Play_f)
  %33 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 (...)* @S_Music_f)
  %34 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 (...)* @S_SoundList_f)
  %35 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 (...)* @S_SoundInfo_f)
  %36 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i32 (...)* @S_StopAllSounds)
  %37 = call i64 (...) @SNDDMA_Init()
  store i64 %37, i64* %2, align 8
  %38 = call i32 @Com_Printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0))
  %39 = load i64, i64* %2, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %31
  store i32 1, i32* @s_soundStarted, align 4
  store i32 1, i32* @s_soundMuted, align 4
  %42 = load i32, i32* @sfxHash, align 4
  %43 = load i32, i32* @LOOP_HASH, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 8, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @Com_Memset(i32 %42, i32 0, i32 %46)
  store i64 0, i64* @s_soundtime, align 8
  store i64 0, i64* @s_paintedtime, align 8
  %48 = call i32 (...) @S_StopAllSounds()
  %49 = call i32 (...) @S_SoundInfo_f()
  br label %50

50:                                               ; preds = %28, %41, %31
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i8* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i32 @Cmd_AddCommand(i8*, i32 (...)*) #1

declare dso_local i32 @S_Play_f(...) #1

declare dso_local i32 @S_Music_f(...) #1

declare dso_local i32 @S_SoundList_f(...) #1

declare dso_local i32 @S_SoundInfo_f(...) #1

declare dso_local i32 @S_StopAllSounds(...) #1

declare dso_local i64 @SNDDMA_Init(...) #1

declare dso_local i32 @Com_Memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
