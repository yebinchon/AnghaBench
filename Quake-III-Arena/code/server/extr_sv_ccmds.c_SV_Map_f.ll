; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_ccmds.c_SV_Map_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_ccmds.c_SV_Map_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"maps/%s.bsp\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Can't find map %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@CVAR_SERVERINFO = common dso_local global i32 0, align 4
@CVAR_USERINFO = common dso_local global i32 0, align 4
@CVAR_LATCH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"g_doWarmup\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@qfalse = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"devmap\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"spdevmap\00", align 1
@sv_gametype = common dso_local global %struct.TYPE_2__* null, align 8
@GT_FFA = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"sv_cheats\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SV_Map_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_Map_f() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAX_QPATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @MAX_QPATH, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = call i8* @Cmd_Argv(i32 1)
  store i8* %16, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %0
  store i32 1, i32* %8, align 4
  br label %85

20:                                               ; preds = %0
  %21 = trunc i64 %10 to i32
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @Com_sprintf(i8* %12, i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i32 @FS_ReadFile(i8* %12, i32* null)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @Com_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  store i32 1, i32* %8, align 4
  br label %85

28:                                               ; preds = %20
  %29 = load i32, i32* @CVAR_SERVERINFO, align 4
  %30 = load i32, i32* @CVAR_USERINFO, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CVAR_LATCH, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = call i8* @Cmd_Argv(i32 0)
  store i8* %35, i8** %1, align 8
  %36 = load i8*, i8** %1, align 8
  %37 = call i64 @Q_stricmpn(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %28
  %40 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %41 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 0)
  %43 = call i32 @Cvar_SetLatched(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %44 = load i8*, i8** %1, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  store i8* %45, i8** %1, align 8
  %46 = load i64, i64* @qfalse, align 8
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* @qtrue, align 8
  store i64 %47, i64* %3, align 8
  br label %72

48:                                               ; preds = %28
  %49 = load i8*, i8** %1, align 8
  %50 = call i32 @Q_stricmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i8*, i8** %1, align 8
  %54 = call i32 @Q_stricmp(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52, %48
  %57 = load i64, i64* @qtrue, align 8
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* @qtrue, align 8
  store i64 %58, i64* %3, align 8
  br label %62

59:                                               ; preds = %52
  %60 = load i64, i64* @qfalse, align 8
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* @qfalse, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sv_gametype, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i64, i64* @GT_FFA, align 8
  %70 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %68, %62
  br label %72

72:                                               ; preds = %71, %39
  %73 = load i8*, i8** %2, align 8
  %74 = trunc i64 %14 to i32
  %75 = call i32 @Q_strncpyz(i8* %15, i8* %73, i32 %74)
  %76 = load i64, i64* %3, align 8
  %77 = call i32 @SV_SpawnServer(i8* %15, i64 %76)
  %78 = load i64, i64* %4, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = call i32 @Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %84

82:                                               ; preds = %72
  %83 = call i32 @Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %80
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %84, %26, %19
  %86 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %8, align 4
  switch i32 %87, label %89 [
    i32 0, label %88
    i32 1, label %88
  ]

88:                                               ; preds = %85, %85
  ret void

89:                                               ; preds = %85
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @Cmd_Argv(i32) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @FS_ReadFile(i8*, i32*) #2

declare dso_local i32 @Com_Printf(i8*, i8*) #2

declare dso_local i32 @Cvar_Get(i8*, i8*, i32) #2

declare dso_local i64 @Q_stricmpn(i8*, i8*, i32) #2

declare dso_local i32 @Cvar_SetValue(i8*, i64) #2

declare dso_local i32 @Cvar_SetLatched(i8*, i8*) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @SV_SpawnServer(i8*, i64) #2

declare dso_local i32 @Cvar_Set(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
