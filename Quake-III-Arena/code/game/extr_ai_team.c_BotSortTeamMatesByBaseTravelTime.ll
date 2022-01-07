; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_team.c_BotSortTeamMatesByBaseTravelTime.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_team.c_BotSortTeamMatesByBaseTravelTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@BotSortTeamMatesByBaseTravelTime.maxclients = internal global i32 0, align 4
@MAX_CLIENTS = common dso_local global i32 0, align 4
@gametype = common dso_local global i64 0, align 8
@GT_CTF = common dso_local global i64 0, align 8
@GT_1FCTF = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i64 0, align 8
@ctf_redflag = common dso_local global i32 0, align 4
@ctf_blueflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@blueobelisk = common dso_local global i32 0, align 4
@redobelisk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotSortTeamMatesByBaseTravelTime(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @MAX_INFO_STRING, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @MAX_CLIENTS, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  store i32* null, i32** %15, align 8
  %23 = load i64, i64* @gametype, align 8
  %24 = load i64, i64* @GT_CTF, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i64, i64* @gametype, align 8
  %28 = load i64, i64* @GT_1FCTF, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26, %3
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @BotTeam(i32* %31)
  %33 = load i64, i64* @TEAM_RED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32* @ctf_redflag, i32** %15, align 8
  br label %37

36:                                               ; preds = %30
  store i32* @ctf_blueflag, i32** %15, align 8
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %37, %26
  %39 = load i32, i32* @BotSortTeamMatesByBaseTravelTime.maxclients, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = call i32 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %42, i32* @BotSortTeamMatesByBaseTravelTime.maxclients, align 4
  br label %43

43:                                               ; preds = %41, %38
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %145, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @BotSortTeamMatesByBaseTravelTime.maxclients, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @MAX_CLIENTS, align 4
  %51 = icmp slt i32 %49, %50
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i1 [ false, %44 ], [ %51, %48 ]
  br i1 %53, label %54, label %148

54:                                               ; preds = %52
  %55 = load i64, i64* @CS_PLAYERS, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = trunc i64 %17 to i32
  %60 = call i32 @trap_GetConfigstring(i64 %58, i8* %19, i32 %59)
  %61 = call i32 @strlen(i8* %19)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = call i8* @Info_ValueForKey(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %65 = call i32 @strlen(i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63, %54
  br label %145

68:                                               ; preds = %63
  %69 = call i8* @Info_ValueForKey(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %70 = call i64 @atoi(i8* %69)
  %71 = load i64, i64* @TEAM_SPECTATOR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %145

74:                                               ; preds = %68
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @BotSameTeam(i32* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %144

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @BotClientTravelTimeToGoal(i32 %80, i32* %81)
  store i32 %82, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %124, %79
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %127

87:                                               ; preds = %83
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %22, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %88, %92
  br i1 %93, label %94, label %123

94:                                               ; preds = %87
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %119, %94
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %22, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %22, i64 %107
  store i32 %105, i32* %108, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  br label %119

119:                                              ; preds = %100
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %9, align 4
  br label %96

122:                                              ; preds = %96
  br label %127

123:                                              ; preds = %87
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %83

127:                                              ; preds = %122, %83
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %22, i64 %130
  store i32 %128, i32* %131, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %127
  br label %148

143:                                              ; preds = %127
  br label %144

144:                                              ; preds = %143, %74
  br label %145

145:                                              ; preds = %144, %73, %67
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %44

148:                                              ; preds = %142, %52
  %149 = load i32, i32* %10, align 4
  %150 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %150)
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @BotTeam(i32*) #2

declare dso_local i32 @trap_Cvar_VariableIntegerValue(i8*) #2

declare dso_local i32 @trap_GetConfigstring(i64, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i64 @atoi(i8*) #2

declare dso_local i64 @BotSameTeam(i32*, i32) #2

declare dso_local i32 @BotClientTravelTimeToGoal(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
