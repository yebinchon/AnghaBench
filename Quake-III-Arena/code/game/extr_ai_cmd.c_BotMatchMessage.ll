; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_cmd.c_BotMatchMessage.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_cmd.c_BotMatchMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_63__ = type { i32 }
%struct.TYPE_64__ = type { i32 }

@MTCONTEXT_MISC = common dso_local global i32 0, align 4
@MTCONTEXT_INITIALTEAMCHAT = common dso_local global i32 0, align 4
@MTCONTEXT_CTF = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"the part of my brain to create formations has been damaged\00", align 1
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown match type\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotMatchMessage(%struct.TYPE_63__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_63__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_64__, align 4
  store %struct.TYPE_63__* %0, %struct.TYPE_63__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @MTCONTEXT_MISC, align 4
  %10 = load i32, i32* @MTCONTEXT_INITIALTEAMCHAT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MTCONTEXT_CTF, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @trap_BotFindMatch(i8* %8, %struct.TYPE_64__* %6, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @qfalse, align 4
  store i32 %17, i32* %3, align 4
  br label %119

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %114 [
    i32 146, label %21
    i32 161, label %21
    i32 155, label %24
    i32 159, label %27
    i32 140, label %30
    i32 149, label %33
    i32 138, label %36
    i32 139, label %39
    i32 134, label %42
    i32 156, label %45
    i32 148, label %48
    i32 145, label %51
    i32 142, label %54
    i32 129, label %57
    i32 158, label %60
    i32 157, label %63
    i32 151, label %68
    i32 150, label %73
    i32 153, label %76
    i32 154, label %77
    i32 137, label %80
    i32 136, label %83
    i32 128, label %86
    i32 132, label %89
    i32 131, label %92
    i32 130, label %95
    i32 143, label %98
    i32 144, label %101
    i32 152, label %104
    i32 141, label %107
    i32 133, label %110
    i32 135, label %111
  ]

21:                                               ; preds = %18, %18
  %22 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %23 = call i32 @BotMatch_HelpAccompany(%struct.TYPE_63__* %22, %struct.TYPE_64__* %6)
  br label %117

24:                                               ; preds = %18
  %25 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %26 = call i32 @BotMatch_DefendKeyArea(%struct.TYPE_63__* %25, %struct.TYPE_64__* %6)
  br label %117

27:                                               ; preds = %18
  %28 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %29 = call i32 @BotMatch_Camp(%struct.TYPE_63__* %28, %struct.TYPE_64__* %6)
  br label %117

30:                                               ; preds = %18
  %31 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %32 = call i32 @BotMatch_Patrol(%struct.TYPE_63__* %31, %struct.TYPE_64__* %6)
  br label %117

33:                                               ; preds = %18
  %34 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %35 = call i32 @BotMatch_GetFlag(%struct.TYPE_63__* %34, %struct.TYPE_64__* %6)
  br label %117

36:                                               ; preds = %18
  %37 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %38 = call i32 @BotMatch_RushBase(%struct.TYPE_63__* %37, %struct.TYPE_64__* %6)
  br label %117

39:                                               ; preds = %18
  %40 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %41 = call i32 @BotMatch_ReturnFlag(%struct.TYPE_63__* %40, %struct.TYPE_64__* %6)
  br label %117

42:                                               ; preds = %18
  %43 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %44 = call i32 @BotMatch_TaskPreference(%struct.TYPE_63__* %43, %struct.TYPE_64__* %6)
  br label %117

45:                                               ; preds = %18
  %46 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %47 = call i32 @BotMatch_CTF(%struct.TYPE_63__* %46, %struct.TYPE_64__* %6)
  br label %117

48:                                               ; preds = %18
  %49 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %50 = call i32 @BotMatch_GetItem(%struct.TYPE_63__* %49, %struct.TYPE_64__* %6)
  br label %117

51:                                               ; preds = %18
  %52 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %53 = call i32 @BotMatch_JoinSubteam(%struct.TYPE_63__* %52, %struct.TYPE_64__* %6)
  br label %117

54:                                               ; preds = %18
  %55 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %56 = call i32 @BotMatch_LeaveSubteam(%struct.TYPE_63__* %55, %struct.TYPE_64__* %6)
  br label %117

57:                                               ; preds = %18
  %58 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %59 = call i32 @BotMatch_WhichTeam(%struct.TYPE_63__* %58, %struct.TYPE_64__* %6)
  br label %117

60:                                               ; preds = %18
  %61 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %62 = call i32 @BotMatch_CheckPoint(%struct.TYPE_63__* %61, %struct.TYPE_64__* %6)
  br label %117

63:                                               ; preds = %18
  %64 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @trap_EA_SayTeam(i32 %66, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %117

68:                                               ; preds = %18
  %69 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @trap_EA_SayTeam(i32 %71, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %117

73:                                               ; preds = %18
  %74 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %75 = call i32 @BotMatch_FormationSpace(%struct.TYPE_63__* %74, %struct.TYPE_64__* %6)
  br label %117

76:                                               ; preds = %18
  br label %117

77:                                               ; preds = %18
  %78 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %79 = call i32 @BotMatch_Dismiss(%struct.TYPE_63__* %78, %struct.TYPE_64__* %6)
  br label %117

80:                                               ; preds = %18
  %81 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %82 = call i32 @BotMatch_StartTeamLeaderShip(%struct.TYPE_63__* %81, %struct.TYPE_64__* %6)
  br label %117

83:                                               ; preds = %18
  %84 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %85 = call i32 @BotMatch_StopTeamLeaderShip(%struct.TYPE_63__* %84, %struct.TYPE_64__* %6)
  br label %117

86:                                               ; preds = %18
  %87 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %88 = call i32 @BotMatch_WhoIsTeamLeader(%struct.TYPE_63__* %87, %struct.TYPE_64__* %6)
  br label %117

89:                                               ; preds = %18
  %90 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %91 = call i32 @BotMatch_WhatAreYouDoing(%struct.TYPE_63__* %90, %struct.TYPE_64__* %6)
  br label %117

92:                                               ; preds = %18
  %93 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %94 = call i32 @BotMatch_WhatIsMyCommand(%struct.TYPE_63__* %93, %struct.TYPE_64__* %6)
  br label %117

95:                                               ; preds = %18
  %96 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %97 = call i32 @BotMatch_WhereAreYou(%struct.TYPE_63__* %96, %struct.TYPE_64__* %6)
  br label %117

98:                                               ; preds = %18
  %99 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %100 = call i32 @BotMatch_LeadTheWay(%struct.TYPE_63__* %99, %struct.TYPE_64__* %6)
  br label %117

101:                                              ; preds = %18
  %102 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %103 = call i32 @BotMatch_Kill(%struct.TYPE_63__* %102, %struct.TYPE_64__* %6)
  br label %117

104:                                              ; preds = %18
  %105 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %106 = call i32 @BotMatch_EnterGame(%struct.TYPE_63__* %105, %struct.TYPE_64__* %6)
  br label %117

107:                                              ; preds = %18
  %108 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %109 = call i32 @BotMatch_NewLeader(%struct.TYPE_63__* %108, %struct.TYPE_64__* %6)
  br label %117

110:                                              ; preds = %18
  br label %117

111:                                              ; preds = %18
  %112 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %113 = call i32 @BotMatch_Suicide(%struct.TYPE_63__* %112, %struct.TYPE_64__* %6)
  br label %117

114:                                              ; preds = %18
  %115 = load i32, i32* @PRT_MESSAGE, align 4
  %116 = call i32 @BotAI_Print(i32 %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %111, %110, %107, %104, %101, %98, %95, %92, %89, %86, %83, %80, %77, %76, %73, %68, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21
  %118 = load i32, i32* @qtrue, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %16
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @trap_BotFindMatch(i8*, %struct.TYPE_64__*, i32) #1

declare dso_local i32 @BotMatch_HelpAccompany(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_DefendKeyArea(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_Camp(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_Patrol(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_GetFlag(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_RushBase(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_ReturnFlag(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_TaskPreference(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_CTF(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_GetItem(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_JoinSubteam(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_LeaveSubteam(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_WhichTeam(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_CheckPoint(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @trap_EA_SayTeam(i32, i8*) #1

declare dso_local i32 @BotMatch_FormationSpace(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_Dismiss(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_StartTeamLeaderShip(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_StopTeamLeaderShip(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_WhoIsTeamLeader(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_WhatAreYouDoing(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_WhatIsMyCommand(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_WhereAreYou(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_LeadTheWay(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_Kill(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_EnterGame(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_NewLeader(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotMatch_Suicide(%struct.TYPE_63__*, %struct.TYPE_64__*) #1

declare dso_local i32 @BotAI_Print(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
