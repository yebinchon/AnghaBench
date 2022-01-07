; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_chat.c_BotChat_EnemySuicide.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_chat.c_BotChat_EnemySuicide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }

@bot_nochat = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@TIME_BETWEENCHATTING = common dso_local global i64 0, align 8
@CHARACTERISTIC_CHAT_KILL = common dso_local global i32 0, align 4
@gametype = common dso_local global i64 0, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@bot_fastchat = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"enemy_suicide\00", align 1
@CHAT_ALL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotChat_EnemySuicide(%struct.TYPE_8__* %0) #0 {
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
  br label %88

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
  br label %88

20:                                               ; preds = %10
  %21 = call i32 (...) @BotNumActivePlayers()
  %22 = icmp sle i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @qfalse, align 4
  store i32 %24, i32* %2, align 4
  br label %88

25:                                               ; preds = %20
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CHARACTERISTIC_CHAT_KILL, align 4
  %30 = call float @trap_Characteristic_BFloat(i32 %28, i32 %29, i32 0, i32 1)
  store float %30, float* %5, align 4
  %31 = call i64 (...) @TeamPlayIsOn()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @qfalse, align 4
  store i32 %34, i32* %2, align 4
  br label %88

35:                                               ; preds = %25
  %36 = load i64, i64* @gametype, align 8
  %37 = load i64, i64* @GT_TOURNAMENT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @qfalse, align 4
  store i32 %40, i32* %2, align 4
  br label %88

41:                                               ; preds = %35
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bot_fastchat, i32 0, i32 0), align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  %45 = call float (...) @random()
  %46 = load float, float* %5, align 4
  %47 = fcmp ogt float %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @qfalse, align 4
  store i32 %49, i32* %2, align 4
  br label %88

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %41
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = call i32 @BotValidChatPosition(%struct.TYPE_8__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @qfalse, align 4
  store i32 %56, i32* %2, align 4
  br label %88

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = call i64 @BotVisibleEnemies(%struct.TYPE_8__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @qfalse, align 4
  store i32 %62, i32* %2, align 4
  br label %88

63:                                               ; preds = %57
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %73 = call i32 @EasyClientName(i64 %71, i8* %72, i32 32)
  br label %77

74:                                               ; preds = %63
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %76 = call i32 @strcpy(i8* %75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %68
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %80 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %79, i32* null)
  %81 = call i64 (...) @FloatTime()
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* @CHAT_ALL, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @qtrue, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %77, %61, %55, %48, %39, %33, %23, %18, %8
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @FloatTime(...) #1

declare dso_local i32 @BotNumActivePlayers(...) #1

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local i64 @TeamPlayIsOn(...) #1

declare dso_local float @random(...) #1

declare dso_local i32 @BotValidChatPosition(%struct.TYPE_8__*) #1

declare dso_local i64 @BotVisibleEnemies(%struct.TYPE_8__*) #1

declare dso_local i32 @EasyClientName(i64, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_8__*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
