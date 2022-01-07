; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_chat.c_BotChat_HitTalking.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_chat.c_BotChat_HitTalking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i32, i32 }

@bot_nochat = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@TIME_BETWEENCHATTING = common dso_local global i64 0, align 8
@g_entities = common dso_local global %struct.TYPE_11__* null, align 8
@MAX_CLIENTS = common dso_local global i32 0, align 4
@CHARACTERISTIC_CHAT_HITTALKING = common dso_local global i32 0, align 4
@gametype = common dso_local global i64 0, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@bot_fastchat = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"hit_talking\00", align 1
@CHAT_ALL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotChat_HitTalking(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bot_nochat, i32 0, i32 0), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @qfalse, align 4
  store i32 %11, i32* %2, align 4
  br label %127

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 (...) @FloatTime()
  %17 = load i64, i64* @TIME_BETWEENCHATTING, align 8
  %18 = sub nsw i64 %16, %17
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @qfalse, align 4
  store i32 %21, i32* %2, align 4
  br label %127

22:                                               ; preds = %12
  %23 = call i32 (...) @BotNumActivePlayers()
  %24 = icmp sle i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @qfalse, align 4
  store i32 %26, i32* %2, align 4
  br label %127

27:                                               ; preds = %22
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_entities, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @qfalse, align 4
  store i32 %40, i32* %2, align 4
  br label %127

41:                                               ; preds = %27
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @qfalse, align 4
  store i32 %49, i32* %2, align 4
  br label %127

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @MAX_CLIENTS, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %50
  %58 = load i32, i32* @qfalse, align 4
  store i32 %58, i32* %2, align 4
  br label %127

59:                                               ; preds = %53
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CHARACTERISTIC_CHAT_HITTALKING, align 4
  %64 = call float @trap_Characteristic_BFloat(i32 %62, i32 %63, i32 0, i32 1)
  store float %64, float* %7, align 4
  %65 = call i64 (...) @TeamPlayIsOn()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @qfalse, align 4
  store i32 %68, i32* %2, align 4
  br label %127

69:                                               ; preds = %59
  %70 = load i64, i64* @gametype, align 8
  %71 = load i64, i64* @GT_TOURNAMENT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @qfalse, align 4
  store i32 %74, i32* %2, align 4
  br label %127

75:                                               ; preds = %69
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bot_fastchat, i32 0, i32 0), align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %75
  %79 = call float (...) @random()
  %80 = fpext float %79 to double
  %81 = load float, float* %7, align 4
  %82 = fpext float %81 to double
  %83 = fmul double %82, 5.000000e-01
  %84 = fcmp ogt double %80, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @qfalse, align 4
  store i32 %86, i32* %2, align 4
  br label %127

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %75
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = call i32 @BotValidChatPosition(%struct.TYPE_10__* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @qfalse, align 4
  store i32 %93, i32* %2, align 4
  br label %127

94:                                               ; preds = %88
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_entities, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %105 = call i32 @ClientName(i32 %103, i8* %104, i32 32)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_entities, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @BotWeaponNameForMeansOfDeath(i32 %114)
  store i8* %115, i8** %5, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %117 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @BotAI_BotInitialChat(%struct.TYPE_10__* %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %117, i8* %118, i32* null)
  %120 = call i64 (...) @FloatTime()
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load i32, i32* @CHAT_ALL, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @qtrue, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %94, %92, %85, %73, %67, %57, %48, %39, %25, %20, %10
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i64 @FloatTime(...) #1

declare dso_local i32 @BotNumActivePlayers(...) #1

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local i64 @TeamPlayIsOn(...) #1

declare dso_local float @random(...) #1

declare dso_local i32 @BotValidChatPosition(%struct.TYPE_10__*) #1

declare dso_local i32 @ClientName(i32, i8*, i32) #1

declare dso_local i8* @BotWeaponNameForMeansOfDeath(i32) #1

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_10__*, i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
