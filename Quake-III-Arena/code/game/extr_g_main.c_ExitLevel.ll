; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_main.c_ExitLevel.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_main.c_ExitLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i64*, i64, i32*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64* }
%struct.TYPE_11__ = type { i32 }

@g_gametype = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@level = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"map_restart 0\0A\00", align 1
@qtrue = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"vstr nextmap\0A\00", align 1
@TEAM_RED = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8
@g_maxclients = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@CON_CONNECTED = common dso_local global i64 0, align 8
@PERS_SCORE = common dso_local global i64 0, align 8
@CON_CONNECTING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExitLevel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = call i32 (...) @BotInterbreedEndMatch()
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @g_gametype, i32 0, i32 0), align 8
  %5 = load i64, i64* @GT_TOURNAMENT, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 4), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = call i32 (...) @RemoveTournamentLoser()
  %12 = load i32, i32* @EXEC_APPEND, align 4
  %13 = call i32 @trap_SendConsoleCommand(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @qtrue, align 8
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 2), align 8
  br label %15

15:                                               ; preds = %10, %7
  br label %79

16:                                               ; preds = %0
  %17 = load i32, i32* @EXEC_APPEND, align 4
  %18 = call i32 @trap_SendConsoleCommand(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 2), align 8
  %19 = load i64*, i64** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 1), align 8
  %20 = load i64, i64* @TEAM_RED, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  store i64 0, i64* %21, align 8
  %22 = load i64*, i64** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 1), align 8
  %23 = load i64, i64* @TEAM_BLUE, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 0, i64* %24, align 8
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %48, %16
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_maxclients, i32 0, i32 0), align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 0), align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %32
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %2, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CON_CONNECTED, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %48

41:                                               ; preds = %29
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @PERS_SCORE, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %41, %40
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %25

51:                                               ; preds = %25
  %52 = call i32 (...) @G_WriteSessionData()
  store i32 0, i32* %1, align 4
  br label %53

53:                                               ; preds = %76, %51
  %54 = load i32, i32* %1, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_maxclients, i32 0, i32 0), align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %53
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 0), align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CON_CONNECTED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load i64, i64* @CON_CONNECTING, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 0), align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i64 %68, i64* %74, align 8
  br label %75

75:                                               ; preds = %67, %57
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %1, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %1, align 4
  br label %53

79:                                               ; preds = %15, %53
  ret void
}

declare dso_local i32 @BotInterbreedEndMatch(...) #1

declare dso_local i32 @RemoveTournamentLoser(...) #1

declare dso_local i32 @trap_SendConsoleCommand(i32, i8*) #1

declare dso_local i32 @G_WriteSessionData(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
