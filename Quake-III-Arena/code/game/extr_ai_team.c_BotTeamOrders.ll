; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_team.c_BotTeamOrders.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_team.c_BotTeamOrders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_CLIENTS = common dso_local global i32 0, align 4
@MAX_INFO_STRING = common dso_local global i32 0, align 4
@BotTeamOrders.maxclients = internal global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@TEAM_SPECTATOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotTeamOrders(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @MAX_CLIENTS, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @MAX_INFO_STRING, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %15 = load i32, i32* @BotTeamOrders.maxclients, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = call i32 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* @BotTeamOrders.maxclients, align 4
  br label %19

19:                                               ; preds = %17, %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %63, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @BotTeamOrders.maxclients, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @MAX_CLIENTS, align 4
  %27 = icmp slt i32 %25, %26
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ false, %20 ], [ %27, %24 ]
  br i1 %29, label %30, label %66

30:                                               ; preds = %28
  %31 = load i64, i64* @CS_PLAYERS, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = trunc i64 %13 to i32
  %36 = call i32 @trap_GetConfigstring(i64 %34, i8* %14, i32 %35)
  %37 = call i32 @strlen(i8* %14)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = call i8* @Info_ValueForKey(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 @strlen(i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39, %30
  br label %63

44:                                               ; preds = %39
  %45 = call i8* @Info_ValueForKey(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i64 @atoi(i8* %45)
  %47 = load i64, i64* @TEAM_SPECTATOR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %63

50:                                               ; preds = %44
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @BotSameTeam(i32* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %11, i64 %58
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %55, %50
  br label %63

63:                                               ; preds = %62, %49, %43
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %20

66:                                               ; preds = %28
  %67 = load i32, i32* %5, align 4
  switch i32 %67, label %85 [
    i32 1, label %68
    i32 2, label %69
    i32 3, label %70
    i32 4, label %73
    i32 5, label %79
  ]

68:                                               ; preds = %66
  br label %106

69:                                               ; preds = %66
  br label %106

70:                                               ; preds = %66
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @BotCreateGroup(i32* %71, i32* %11, i32 2)
  br label %106

73:                                               ; preds = %66
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @BotCreateGroup(i32* %74, i32* %11, i32 2)
  %76 = load i32*, i32** %2, align 8
  %77 = getelementptr inbounds i32, i32* %11, i64 2
  %78 = call i32 @BotCreateGroup(i32* %76, i32* %77, i32 2)
  br label %106

79:                                               ; preds = %66
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @BotCreateGroup(i32* %80, i32* %11, i32 2)
  %82 = load i32*, i32** %2, align 8
  %83 = getelementptr inbounds i32, i32* %11, i64 2
  %84 = call i32 @BotCreateGroup(i32* %82, i32* %83, i32 3)
  br label %106

85:                                               ; preds = %66
  %86 = load i32, i32* %5, align 4
  %87 = icmp sle i32 %86, 10
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %101, %88
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %5, align 4
  %92 = sdiv i32 %91, 2
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load i32*, i32** %2, align 8
  %96 = load i32, i32* %6, align 4
  %97 = mul nsw i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %11, i64 %98
  %100 = call i32 @BotCreateGroup(i32* %95, i32* %99, i32 2)
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %89

104:                                              ; preds = %89
  br label %105

105:                                              ; preds = %104, %85
  br label %106

106:                                              ; preds = %105, %79, %73, %70, %69, %68
  %107 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %107)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Cvar_VariableIntegerValue(i8*) #2

declare dso_local i32 @trap_GetConfigstring(i64, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i64 @atoi(i8*) #2

declare dso_local i64 @BotSameTeam(i32*, i32) #2

declare dso_local i32 @BotCreateGroup(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
