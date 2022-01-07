; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_session.c_G_InitSessionData.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_session.c_G_InitSessionData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i8* }

@g_gametype = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@GT_TEAM = common dso_local global i32 0, align 4
@g_teamAutoJoin = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@TEAM_SPECTATOR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"team\00", align 1
@g_maxGameClients = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@level = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@TEAM_FREE = common dso_local global i8* null, align 8
@SPECTATOR_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_InitSessionData(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %5, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_gametype, i32 0, i32 0), align 4
  %10 = load i32, i32* @GT_TEAM, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_teamAutoJoin, i32 0, i32 0), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = call i8* @PickTeam(i32 -1)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = call i32 @BroadcastTeamChange(%struct.TYPE_10__* %19, i32 -1)
  br label %25

21:                                               ; preds = %12
  %22 = load i8*, i8** @TEAM_SPECTATOR, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %21, %15
  br label %71

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @Info_ValueForKey(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 115
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i8*, i8** @TEAM_SPECTATOR, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %70

38:                                               ; preds = %26
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_gametype, i32 0, i32 0), align 4
  switch i32 %39, label %40 [
    i32 130, label %41
    i32 129, label %41
    i32 128, label %57
  ]

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %38, %38, %40
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @g_maxGameClients, i32 0, i32 0), align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @g_maxGameClients, i32 0, i32 0), align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8*, i8** @TEAM_SPECTATOR, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %56

52:                                               ; preds = %44, %41
  %53 = load i8*, i8** @TEAM_FREE, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %48
  br label %69

57:                                               ; preds = %38
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 4
  %59 = icmp sge i32 %58, 2
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i8*, i8** @TEAM_SPECTATOR, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  br label %68

64:                                               ; preds = %57
  %65 = load i8*, i8** @TEAM_FREE, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %56
  br label %70

70:                                               ; preds = %69, %34
  br label %71

71:                                               ; preds = %70, %25
  %72 = load i32, i32* @SPECTATOR_FREE, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 1), align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = call i32 @G_WriteClientSessionData(%struct.TYPE_10__* %78)
  ret void
}

declare dso_local i8* @PickTeam(i32) #1

declare dso_local i32 @BroadcastTeamChange(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @G_WriteClientSessionData(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
