; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_chat.c_BotChat_EndLevel.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_chat.c_BotChat_EndLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }

@bot_nochat = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@TIME_BETWEENCHATTING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"vtaunt\00", align 1
@qtrue = common dso_local global i32 0, align 4
@gametype = common dso_local global i64 0, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@CHARACTERISTIC_CHAT_STARTENDLEVEL = common dso_local global i32 0, align 4
@bot_fastchat = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"level_end_victory\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"[invalid var]\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"level_end_lose\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"level_end\00", align 1
@CHAT_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotChat_EndLevel(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bot_nochat, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @qfalse, align 4
  store i32 %9, i32* %2, align 4
  br label %120

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = call i64 @BotIsObserver(%struct.TYPE_10__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @qfalse, align 4
  store i32 %15, i32* %2, align 4
  br label %120

16:                                               ; preds = %10
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 (...) @FloatTime()
  %21 = load i64, i64* @TIME_BETWEENCHATTING, align 8
  %22 = sub nsw i64 %20, %21
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @qfalse, align 4
  store i32 %25, i32* %2, align 4
  br label %120

26:                                               ; preds = %16
  %27 = call i64 (...) @TeamPlayIsOn()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = call i64 @BotIsFirstInRankings(%struct.TYPE_10__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @trap_EA_Command(i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32, i32* @qtrue, align 4
  store i32 %39, i32* %2, align 4
  br label %120

40:                                               ; preds = %26
  %41 = load i64, i64* @gametype, align 8
  %42 = load i64, i64* @GT_TOURNAMENT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @qfalse, align 4
  store i32 %45, i32* %2, align 4
  br label %120

46:                                               ; preds = %40
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CHARACTERISTIC_CHAT_STARTENDLEVEL, align 4
  %51 = call float @trap_Characteristic_BFloat(i32 %49, i32 %50, i32 0, i32 1)
  store float %51, float* %5, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bot_fastchat, i32 0, i32 0), align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %46
  %55 = call float (...) @random()
  %56 = load float, float* %5, align 4
  %57 = fcmp ogt float %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @qfalse, align 4
  store i32 %59, i32* %2, align 4
  br label %120

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %46
  %62 = call i32 (...) @BotNumActivePlayers()
  %63 = icmp sle i32 %62, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @qfalse, align 4
  store i32 %65, i32* %2, align 4
  br label %120

66:                                               ; preds = %61
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = call i64 @BotIsFirstInRankings(%struct.TYPE_10__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %76 = call i32 @EasyClientName(i32 %74, i8* %75, i32 32)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = call i32 @BotRandomOpponentName(%struct.TYPE_10__* %77)
  %79 = call i8* (...) @BotLastClientInRankings()
  %80 = call i32 (...) @BotMapTitle()
  %81 = call i32 @BotAI_BotInitialChat(%struct.TYPE_10__* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %79, i32 %80, i32* null)
  br label %112

82:                                               ; preds = %66
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = call i64 @BotIsLastInRankings(%struct.TYPE_10__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %92 = call i32 @EasyClientName(i32 %90, i8* %91, i32 32)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = call i32 @BotRandomOpponentName(%struct.TYPE_10__* %93)
  %95 = call i8* (...) @BotFirstClientInRankings()
  %96 = call i32 (...) @BotMapTitle()
  %97 = call i32 @BotAI_BotInitialChat(%struct.TYPE_10__* %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %94, i8* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32* null)
  br label %111

98:                                               ; preds = %82
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %104 = call i32 @EasyClientName(i32 %102, i8* %103, i32 32)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = call i32 @BotRandomOpponentName(%struct.TYPE_10__* %105)
  %107 = call i8* (...) @BotFirstClientInRankings()
  %108 = call i8* (...) @BotLastClientInRankings()
  %109 = call i32 (...) @BotMapTitle()
  %110 = call i32 @BotAI_BotInitialChat(%struct.TYPE_10__* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %104, i32 %106, i8* %107, i8* %108, i32 %109, i32* null)
  br label %111

111:                                              ; preds = %98, %86
  br label %112

112:                                              ; preds = %111, %70
  %113 = call i64 (...) @FloatTime()
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @CHAT_ALL, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @qtrue, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %112, %64, %58, %44, %38, %24, %14, %8
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i64 @BotIsObserver(%struct.TYPE_10__*) #1

declare dso_local i64 @FloatTime(...) #1

declare dso_local i64 @TeamPlayIsOn(...) #1

declare dso_local i64 @BotIsFirstInRankings(%struct.TYPE_10__*) #1

declare dso_local i32 @trap_EA_Command(i32, i8*) #1

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local float @random(...) #1

declare dso_local i32 @BotNumActivePlayers(...) #1

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_10__*, i8*, i32, i32, i8*, i8*, i32, i32*) #1

declare dso_local i32 @EasyClientName(i32, i8*, i32) #1

declare dso_local i32 @BotRandomOpponentName(%struct.TYPE_10__*) #1

declare dso_local i8* @BotLastClientInRankings(...) #1

declare dso_local i32 @BotMapTitle(...) #1

declare dso_local i64 @BotIsLastInRankings(%struct.TYPE_10__*) #1

declare dso_local i8* @BotFirstClientInRankings(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
