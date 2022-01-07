; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_startserver.c_ServerOptions_SetMenuItems.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_startserver.c_ServerOptions_SetMenuItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_30__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_23__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_20__ = type { i32*, i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }

@ServerOptions_SetMenuItems.picname = internal global [64 x i8] zeroinitializer, align 16
@s_serveroptions = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ui_ffa_fraglimit\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ui_ffa_timelimit\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ui_tourney_fraglimit\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ui_tourney_timelimit\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ui_team_fraglimit\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"ui_team_timelimit\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"ui_team_friendly\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"ui_ctf_capturelimit\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"ui_ctf_timelimit\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"ui_ctf_friendly\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"sv_hostname\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"sv_pure\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"levelshots/%s\00", align 1
@s_startserver = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ServerOptions_SetMenuItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ServerOptions_SetMenuItems() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 0), align 8
  switch i32 %1, label %3 [
    i32 130, label %2
    i32 128, label %14
    i32 129, label %25
    i32 131, label %39
  ]

2:                                                ; preds = %0
  br label %3

3:                                                ; preds = %0, %2
  %4 = load i8*, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 8, i32 0, i32 0), align 8
  %5 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i64 @Com_Clamp(i32 0, i32 999, i32 %5)
  %7 = trunc i64 %6 to i32
  %8 = call i32 @Com_sprintf(i8* %4, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 6, i32 0, i32 0), align 8
  %10 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i64 @Com_Clamp(i32 0, i32 999, i32 %10)
  %12 = trunc i64 %11 to i32
  %13 = call i32 @Com_sprintf(i8* %9, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %53

14:                                               ; preds = %0
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 8, i32 0, i32 0), align 8
  %16 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i64 @Com_Clamp(i32 0, i32 999, i32 %16)
  %18 = trunc i64 %17 to i32
  %19 = call i32 @Com_sprintf(i8* %15, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 6, i32 0, i32 0), align 8
  %21 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %22 = call i64 @Com_Clamp(i32 0, i32 999, i32 %21)
  %23 = trunc i64 %22 to i32
  %24 = call i32 @Com_sprintf(i8* %20, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %53

25:                                               ; preds = %0
  %26 = load i8*, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 8, i32 0, i32 0), align 8
  %27 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %28 = call i64 @Com_Clamp(i32 0, i32 999, i32 %27)
  %29 = trunc i64 %28 to i32
  %30 = call i32 @Com_sprintf(i8* %26, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 6, i32 0, i32 0), align 8
  %32 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %33 = call i64 @Com_Clamp(i32 0, i32 999, i32 %32)
  %34 = trunc i64 %33 to i32
  %35 = call i32 @Com_sprintf(i8* %31, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %37 = call i64 @Com_Clamp(i32 0, i32 1, i32 %36)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 5, i32 0), align 4
  br label %53

39:                                               ; preds = %0
  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 7, i32 0, i32 0), align 8
  %41 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %42 = call i64 @Com_Clamp(i32 0, i32 100, i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = call i32 @Com_sprintf(i8* %40, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i8*, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 6, i32 0, i32 0), align 8
  %46 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %47 = call i64 @Com_Clamp(i32 0, i32 999, i32 %46)
  %48 = trunc i64 %47 to i32
  %49 = call i32 @Com_sprintf(i8* %45, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %51 = call i64 @Com_Clamp(i32 0, i32 1, i32 %50)
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 5, i32 0), align 4
  br label %53

53:                                               ; preds = %39, %25, %14, %3
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 4, i32 0, i32 0), align 8
  %55 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %56 = call i32 @Q_strncpyz(i32 %54, i32 %55, i32 4)
  %57 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %58 = call i64 @Com_Clamp(i32 0, i32 1, i32 %57)
  store i64 %58, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 3, i32 0), align 8
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_startserver, i32 0, i32 0), align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_startserver, i32 0, i32 1), align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @Com_sprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @ServerOptions_SetMenuItems.picname, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %62)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @ServerOptions_SetMenuItems.picname, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 2, i32 0, i32 0), align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 1), align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_startserver, i32 0, i32 2, i32 0), align 8
  %66 = call i32 @strcpy(i32 %64, i32 %65)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 1), align 4
  %68 = call i32 @Q_strupr(i32 %67)
  %69 = call i32 (...) @ServerOptions_InitPlayerItems()
  %70 = call i32 (...) @ServerOptions_SetPlayerItems()
  %71 = call i32 (...) @ServerOptions_InitBotNames()
  %72 = call i32 (...) @ServerOptions_SetPlayerItems()
  ret void
}

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @Com_Clamp(i32, i32, i32) #1

declare dso_local i32 @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @Q_strncpyz(i32, i32, i32) #1

declare dso_local i32 @UI_Cvar_VariableString(i8*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @Q_strupr(i32) #1

declare dso_local i32 @ServerOptions_InitPlayerItems(...) #1

declare dso_local i32 @ServerOptions_SetPlayerItems(...) #1

declare dso_local i32 @ServerOptions_InitBotNames(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
