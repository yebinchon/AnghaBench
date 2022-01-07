; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_chat.c_BotChat_EnterGame.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_chat.c_BotChat_EnterGame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }

@bot_nochat = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@TIME_BETWEENCHATTING = common dso_local global i64 0, align 8
@gametype = common dso_local global i64 0, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@CHARACTERISTIC_CHAT_ENTEREXITGAME = common dso_local global i32 0, align 4
@bot_fastchat = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"game_enter\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"[invalid var]\00", align 1
@CHAT_ALL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotChat_EnterGame(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bot_nochat, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @qfalse, align 4
  store i32 %9, i32* %2, align 4
  br label %75

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 (...) @FloatTime()
  %15 = load i64, i64* @TIME_BETWEENCHATTING, align 8
  %16 = sub nsw i64 %14, %15
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* @qfalse, align 4
  store i32 %19, i32* %2, align 4
  br label %75

20:                                               ; preds = %10
  %21 = call i64 (...) @TeamPlayIsOn()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @qfalse, align 4
  store i32 %24, i32* %2, align 4
  br label %75

25:                                               ; preds = %20
  %26 = load i64, i64* @gametype, align 8
  %27 = load i64, i64* @GT_TOURNAMENT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @qfalse, align 4
  store i32 %30, i32* %2, align 4
  br label %75

31:                                               ; preds = %25
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CHARACTERISTIC_CHAT_ENTEREXITGAME, align 4
  %36 = call float @trap_Characteristic_BFloat(i32 %34, i32 %35, i32 0, i32 1)
  store float %36, float* %5, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bot_fastchat, i32 0, i32 0), align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %31
  %40 = call float (...) @random()
  %41 = load float, float* %5, align 4
  %42 = fcmp ogt float %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @qfalse, align 4
  store i32 %44, i32* %2, align 4
  br label %75

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %31
  %47 = call i32 (...) @BotNumActivePlayers()
  %48 = icmp sle i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @qfalse, align 4
  store i32 %50, i32* %2, align 4
  br label %75

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = call i32 @BotValidChatPosition(%struct.TYPE_8__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @qfalse, align 4
  store i32 %56, i32* %2, align 4
  br label %75

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %63 = call i32 @EasyClientName(i32 %61, i8* %62, i32 32)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %64)
  %66 = call i32 (...) @BotMapTitle()
  %67 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32* null)
  %68 = call i64 (...) @FloatTime()
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* @CHAT_ALL, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @qtrue, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %57, %55, %49, %43, %29, %23, %18, %8
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @FloatTime(...) #1

declare dso_local i64 @TeamPlayIsOn(...) #1

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local float @random(...) #1

declare dso_local i32 @BotNumActivePlayers(...) #1

declare dso_local i32 @BotValidChatPosition(%struct.TYPE_8__*) #1

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_8__*, i8*, i32, i32, i8*, i8*, i32, i32*) #1

declare dso_local i32 @EasyClientName(i32, i8*, i32) #1

declare dso_local i32 @BotRandomOpponentName(%struct.TYPE_8__*) #1

declare dso_local i32 @BotMapTitle(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
