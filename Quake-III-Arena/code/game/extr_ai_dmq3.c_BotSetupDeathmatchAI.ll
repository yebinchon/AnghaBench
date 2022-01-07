; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotSetupDeathmatchAI.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotSetupDeathmatchAI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@gametype = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@maxclients = common dso_local global i8* null, align 8
@bot_rocketjump = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"bot_rocketjump\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@bot_grapple = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"bot_grapple\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@bot_fastchat = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"bot_fastchat\00", align 1
@bot_nochat = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"bot_nochat\00", align 1
@bot_testrchat = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"bot_testrchat\00", align 1
@bot_challenge = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"bot_challenge\00", align 1
@bot_predictobstacles = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"bot_predictobstacles\00", align 1
@g_spSkill = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"g_spSkill\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@GT_CTF = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"Red Flag\00", align 1
@ctf_redflag = common dso_local global i32 0, align 4
@PRT_WARNING = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"CTF without Red Flag\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Blue Flag\00", align 1
@ctf_blueflag = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [23 x i8] c"CTF without Blue Flag\0A\00", align 1
@max_bspmodelindex = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@GT_1FCTF = common dso_local global i64 0, align 8
@GT_HARVESTER = common dso_local global i64 0, align 8
@GT_OBELISK = common dso_local global i64 0, align 8
@blueobelisk = common dso_local global i32 0, align 4
@ctf_neutralflag = common dso_local global i32 0, align 4
@neutralobelisk = common dso_local global i32 0, align 4
@redobelisk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotSetupDeathmatchAI() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  %4 = call i8* @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %5 = ptrtoint i8* %4 to i64
  store i64 %5, i64* @gametype, align 8
  %6 = call i8* @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* %6, i8** @maxclients, align 8
  %7 = call i32 @trap_Cvar_Register(i32* @bot_rocketjump, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %8 = call i32 @trap_Cvar_Register(i32* @bot_grapple, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %9 = call i32 @trap_Cvar_Register(i32* @bot_fastchat, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %10 = call i32 @trap_Cvar_Register(i32* @bot_nochat, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %11 = call i32 @trap_Cvar_Register(i32* @bot_testrchat, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %12 = call i32 @trap_Cvar_Register(i32* @bot_challenge, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %13 = call i32 @trap_Cvar_Register(i32* @bot_predictobstacles, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %14 = call i32 @trap_Cvar_Register(i32* @g_spSkill, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %15 = load i64, i64* @gametype, align 8
  %16 = load i64, i64* @GT_CTF, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %0
  %19 = call i64 @trap_BotGetLevelItemGoal(i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32* @ctf_redflag)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @PRT_WARNING, align 4
  %23 = call i32 @BotAI_Print(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  %25 = call i64 @trap_BotGetLevelItemGoal(i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32* @ctf_blueflag)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @PRT_WARNING, align 4
  %29 = call i32 @BotAI_Print(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %0
  store i32 0, i32* @max_bspmodelindex, align 4
  %32 = call i32 @trap_AAS_NextBSPEntity(i32 0)
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %58, %31
  %34 = load i32, i32* %1, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = load i32, i32* %1, align 4
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %39 = call i32 @trap_AAS_ValueForBSPEpairKey(i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %38, i32 128)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %58

42:                                               ; preds = %36
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %44 = load i8, i8* %43, align 16
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 42
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = call i32 @atoi(i8* %49)
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @max_bspmodelindex, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %2, align 4
  store i32 %55, i32* @max_bspmodelindex, align 4
  br label %56

56:                                               ; preds = %54, %47
  br label %57

57:                                               ; preds = %56, %42
  br label %58

58:                                               ; preds = %57, %41
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @trap_AAS_NextBSPEntity(i32 %59)
  store i32 %60, i32* %1, align 4
  br label %33

61:                                               ; preds = %33
  %62 = call i32 (...) @BotInitWaypoints()
  ret void
}

declare dso_local i8* @trap_Cvar_VariableIntegerValue(i8*) #1

declare dso_local i32 @trap_Cvar_Register(i32*, i8*, i8*, i32) #1

declare dso_local i64 @trap_BotGetLevelItemGoal(i32, i8*, i32*) #1

declare dso_local i32 @BotAI_Print(i32, i8*) #1

declare dso_local i32 @trap_AAS_NextBSPEntity(i32) #1

declare dso_local i32 @trap_AAS_ValueForBSPEpairKey(i32, i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @BotInitWaypoints(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
