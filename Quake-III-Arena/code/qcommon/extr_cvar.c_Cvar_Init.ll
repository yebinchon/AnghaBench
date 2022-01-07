; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cvar.c_Cvar_Init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cvar.c_Cvar_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"sv_cheats\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@CVAR_ROM = common dso_local global i32 0, align 4
@CVAR_SYSTEMINFO = common dso_local global i32 0, align 4
@cvar_cheats = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@Cvar_Toggle_f = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@Cvar_Set_f = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"sets\00", align 1
@Cvar_SetS_f = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"setu\00", align 1
@Cvar_SetU_f = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"seta\00", align 1
@Cvar_SetA_f = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@Cvar_Reset_f = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"cvarlist\00", align 1
@Cvar_List_f = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"cvar_restart\00", align 1
@Cvar_Restart_f = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cvar_Init() #0 {
  %1 = load i32, i32* @CVAR_ROM, align 4
  %2 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %3 = or i32 %1, %2
  %4 = call i32 @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  store i32 %4, i32* @cvar_cheats, align 4
  %5 = load i32, i32* @Cvar_Toggle_f, align 4
  %6 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @Cvar_Set_f, align 4
  %8 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @Cvar_SetS_f, align 4
  %10 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @Cvar_SetU_f, align 4
  %12 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @Cvar_SetA_f, align 4
  %14 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @Cvar_Reset_f, align 4
  %16 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @Cvar_List_f, align 4
  %18 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @Cvar_Restart_f, align 4
  %20 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %19)
  ret void
}

declare dso_local i32 @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i32 @Cmd_AddCommand(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
