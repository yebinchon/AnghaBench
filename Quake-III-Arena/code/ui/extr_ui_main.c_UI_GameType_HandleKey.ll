; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_GameType_HandleKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_GameType_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@K_MOUSE1 = common dso_local global i32 0, align 4
@K_MOUSE2 = common dso_local global i32 0, align 4
@K_ENTER = common dso_local global i32 0, align 4
@K_KP_ENTER = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@ui_gameType = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@uiInfo = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"ui_Q3Model\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ui_gameType\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ui_currentMap = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"ui_currentMap\00", align 1
@FEEDER_MAPS = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, float*, i32, i64)* @UI_GameType_HandleKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @UI_GameType_HandleKey(i32 %0, float* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @K_MOUSE1, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @K_MOUSE2, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @K_ENTER, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @K_KP_ENTER, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %104

26:                                               ; preds = %22, %18, %14, %4
  %27 = load i64, i64* @qtrue, align 8
  %28 = call i32 @UI_MapCountByGameType(i64 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @K_MOUSE2, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  br label %45

38:                                               ; preds = %32
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0), align 8
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %37
  br label %59

46:                                               ; preds = %26
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 0), align 8
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  br label %58

53:                                               ; preds = %46
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  br label %57

57:                                               ; preds = %56, %53
  br label %58

58:                                               ; preds = %57, %52
  br label %59

59:                                               ; preds = %58, %45
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 1), align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @GT_TOURNAMENT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %72

70:                                               ; preds = %59
  %71 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %68
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %74 = sext i32 %73 to i64
  %75 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %74)
  %76 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = load i64, i64* @qtrue, align 8
  %78 = call i32 @UI_SetCapFragLimits(i64 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 2), align 8
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ui_currentMap, i32 0, i32 0), align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @uiInfo, i32 0, i32 1), align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui_gameType, i32 0, i32 0), align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @UI_LoadBestScores(i32 %83, i64 %89)
  %91 = load i64, i64* %9, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %72
  %94 = load i32, i32* %10, align 4
  %95 = load i64, i64* @qtrue, align 8
  %96 = call i32 @UI_MapCountByGameType(i64 %95)
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @FEEDER_MAPS, align 4
  %101 = call i32 @Menu_SetFeederSelection(i32* null, i32 %100, i32 0, i32* null)
  br label %102

102:                                              ; preds = %98, %93, %72
  %103 = load i64, i64* @qtrue, align 8
  store i64 %103, i64* %5, align 8
  br label %106

104:                                              ; preds = %22
  %105 = load i64, i64* @qfalse, align 8
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = load i64, i64* %5, align 8
  ret i64 %107
}

declare dso_local i32 @UI_MapCountByGameType(i64) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

declare dso_local i8* @va(i8*, i64) #1

declare dso_local i32 @UI_SetCapFragLimits(i64) #1

declare dso_local i32 @UI_LoadBestScores(i32, i64) #1

declare dso_local i32 @Menu_SetFeederSelection(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
