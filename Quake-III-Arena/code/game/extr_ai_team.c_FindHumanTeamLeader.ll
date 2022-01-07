; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_team.c_FindHumanTeamLeader.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_team.c_FindHumanTeamLeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_10__* null, align 8
@SVF_BOT = common dso_local global i32 0, align 4
@notleader = common dso_local global i32* null, align 8
@SAY_TELL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindHumanTeamLeader(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %60, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @MAX_CLIENTS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %63

9:                                                ; preds = %5
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_entities, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %9
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_entities, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SVF_BOT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %17
  %29 = load i32*, i32** @notleader, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %57, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @BotSameTeam(%struct.TYPE_9__* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ClientName(i32 %41, i32 %44, i32 4)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = call i32 @BotSetLastOrderedTask(%struct.TYPE_9__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @SAY_TELL, align 4
  %53 = call i32 @BotVoiceChat_Defend(%struct.TYPE_9__* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %40
  %55 = load i32, i32* @qtrue, align 4
  store i32 %55, i32* %2, align 4
  br label %65

56:                                               ; preds = %35
  br label %57

57:                                               ; preds = %56, %28
  br label %58

58:                                               ; preds = %57, %17
  br label %59

59:                                               ; preds = %58, %9
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %5

63:                                               ; preds = %5
  %64 = load i32, i32* @qfalse, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %54
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @BotSameTeam(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ClientName(i32, i32, i32) #1

declare dso_local i32 @BotSetLastOrderedTask(%struct.TYPE_9__*) #1

declare dso_local i32 @BotVoiceChat_Defend(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
