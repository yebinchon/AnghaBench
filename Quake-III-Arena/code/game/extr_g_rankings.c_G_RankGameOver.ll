; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_rankings.c_G_RankGameOver.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_rankings.c_G_RankGameOver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@MAX_INFO_VALUE = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@QGR_STATUS_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"sv_hostname\00", align 1
@QGR_KEY_HOSTNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@QGR_KEY_MAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"fs_game\00", align 1
@QGR_KEY_MOD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@QGR_KEY_GAMETYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"fraglimit\00", align 1
@QGR_KEY_FRAGLIMIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"timelimit\00", align 1
@QGR_KEY_TIMELIMIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@QGR_KEY_MAXCLIENTS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"sv_maxRate\00", align 1
@QGR_KEY_MAXRATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"sv_minPing\00", align 1
@QGR_KEY_MINPING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"sv_maxPing\00", align 1
@QGR_KEY_MAXPING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"dedicated\00", align 1
@QGR_KEY_DEDICATED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@QGR_KEY_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_RankGameOver() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_INFO_VALUE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 1, i32* %5, align 4
  br label %79

13:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %27, %13
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 1), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load i32, i32* %1, align 4
  %20 = call i64 @trap_RankUserStatus(i32 %19)
  %21 = load i64, i64* @QGR_STATUS_ACTIVE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @G_RankClientDisconnect(i32 %24)
  br label %26

26:                                               ; preds = %23, %18
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %14

30:                                               ; preds = %14
  %31 = trunc i64 %7 to i32
  %32 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %31)
  %33 = load i32, i32* @QGR_KEY_HOSTNAME, align 4
  %34 = call i32 @trap_RankReportStr(i32 -1, i32 -1, i32 %33, i8* %9)
  %35 = trunc i64 %7 to i32
  %36 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %9, i32 %35)
  %37 = load i32, i32* @QGR_KEY_MAP, align 4
  %38 = call i32 @trap_RankReportStr(i32 -1, i32 -1, i32 %37, i8* %9)
  %39 = trunc i64 %7 to i32
  %40 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %9, i32 %39)
  %41 = load i32, i32* @QGR_KEY_MOD, align 4
  %42 = call i32 @trap_RankReportStr(i32 -1, i32 -1, i32 %41, i8* %9)
  %43 = call i32 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @QGR_KEY_GAMETYPE, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @trap_RankReportInt(i32 -1, i32 -1, i32 %44, i32 %45, i32 0)
  %47 = call i32 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @QGR_KEY_FRAGLIMIT, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @trap_RankReportInt(i32 -1, i32 -1, i32 %48, i32 %49, i32 0)
  %51 = call i32 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @QGR_KEY_TIMELIMIT, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @trap_RankReportInt(i32 -1, i32 -1, i32 %52, i32 %53, i32 0)
  %55 = call i32 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @QGR_KEY_MAXCLIENTS, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @trap_RankReportInt(i32 -1, i32 -1, i32 %56, i32 %57, i32 0)
  %59 = call i32 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @QGR_KEY_MAXRATE, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @trap_RankReportInt(i32 -1, i32 -1, i32 %60, i32 %61, i32 0)
  %63 = call i32 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @QGR_KEY_MINPING, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @trap_RankReportInt(i32 -1, i32 -1, i32 %64, i32 %65, i32 0)
  %67 = call i32 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* @QGR_KEY_MAXPING, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @trap_RankReportInt(i32 -1, i32 -1, i32 %68, i32 %69, i32 0)
  %71 = call i32 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @QGR_KEY_DEDICATED, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @trap_RankReportInt(i32 -1, i32 -1, i32 %72, i32 %73, i32 0)
  %75 = trunc i64 %7 to i32
  %76 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %9, i32 %75)
  %77 = load i32, i32* @QGR_KEY_VERSION, align 4
  %78 = call i32 @trap_RankReportStr(i32 -1, i32 -1, i32 %77, i8* %9)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %30, %12
  %80 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %5, align 4
  switch i32 %81, label %83 [
    i32 0, label %82
    i32 1, label %82
  ]

82:                                               ; preds = %79, %79
  ret void

83:                                               ; preds = %79
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @trap_RankUserStatus(i32) #2

declare dso_local i32 @G_RankClientDisconnect(i32) #2

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #2

declare dso_local i32 @trap_RankReportStr(i32, i32, i32, i8*) #2

declare dso_local i32 @trap_Cvar_VariableIntegerValue(i8*) #2

declare dso_local i32 @trap_RankReportInt(i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
