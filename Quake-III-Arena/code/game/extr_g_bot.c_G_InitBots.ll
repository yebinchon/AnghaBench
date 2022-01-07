; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_G_InitBots.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_G_InitBots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MAX_QPATH = common dso_local global i32 0, align 4
@MAX_INFO_STRING = common dso_local global i32 0, align 4
@bot_minplayers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"bot_minplayers\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@CVAR_SERVERINFO = common dso_local global i32 0, align 4
@g_gametype = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"fraglimit\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"timelimit\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@BOT_BEGIN_DELAY_BASE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"special\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"training\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"bots\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_InitBots(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* @MAX_QPATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @MAX_INFO_STRING, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %19 = call i32 (...) @G_LoadBots()
  %20 = call i32 (...) @G_LoadArenas()
  %21 = load i32, i32* @CVAR_SERVERINFO, align 4
  %22 = call i32 @trap_Cvar_Register(i32* @bot_minplayers, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_gametype, i32 0, i32 0), align 8
  %24 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %88

26:                                               ; preds = %1
  %27 = trunc i64 %17 to i32
  %28 = call i32 @trap_GetServerinfo(i8* %18, i32 %27)
  %29 = call i8* @Info_ValueForKey(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %30 = trunc i64 %13 to i32
  %31 = call i32 @Q_strncpyz(i8* %15, i8* %29, i32 %30)
  %32 = call i8* @G_GetArenaInfoByMap(i8* %15)
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store i32 1, i32* %11, align 4
  br label %89

36:                                               ; preds = %26
  %37 = load i8*, i8** %5, align 8
  %38 = call i8* @Info_ValueForKey(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @atoi(i8* %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  br label %48

46:                                               ; preds = %36
  %47 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i8*, i8** %5, align 8
  %50 = call i8* @Info_ValueForKey(i8* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @atoi(i8* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  br label %60

58:                                               ; preds = %48
  %59 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %68 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63, %60
  %70 = load i32, i32* @BOT_BEGIN_DELAY_BASE, align 4
  store i32 %70, i32* %7, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = call i8* @Info_ValueForKey(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i8* %72, i8** %6, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i64 @Q_stricmp(i8* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 10000
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %76, %69
  %80 = load i32, i32* %2, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %5, align 8
  %84 = call i8* @Info_ValueForKey(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @G_SpawnBots(i8* %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %79
  br label %88

88:                                               ; preds = %87, %1
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %88, %35
  %90 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %11, align 4
  switch i32 %91, label %93 [
    i32 0, label %92
    i32 1, label %92
  ]

92:                                               ; preds = %89, %89
  ret void

93:                                               ; preds = %89
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @G_LoadBots(...) #2

declare dso_local i32 @G_LoadArenas(...) #2

declare dso_local i32 @trap_Cvar_Register(i32*, i8*, i8*, i32) #2

declare dso_local i32 @trap_GetServerinfo(i8*, i32) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i8* @G_GetArenaInfoByMap(i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @G_SpawnBots(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
