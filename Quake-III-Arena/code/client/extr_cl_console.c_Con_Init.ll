; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_console.c_Con_Init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_console.c_Con_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"con_notifytime\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@con_notifytime = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"scr_conspeed\00", align 1
@con_conspeed = common dso_local global i8* null, align 8
@g_consoleField = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@g_console_field_width = common dso_local global i8* null, align 8
@COMMAND_HISTORY = common dso_local global i32 0, align 4
@historyEditLines = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"toggleconsole\00", align 1
@Con_ToggleConsole_f = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"messagemode\00", align 1
@Con_MessageMode_f = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"messagemode2\00", align 1
@Con_MessageMode2_f = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"messagemode3\00", align 1
@Con_MessageMode3_f = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"messagemode4\00", align 1
@Con_MessageMode4_f = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@Con_Clear_f = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"condump\00", align 1
@Con_Dump_f = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Con_Init() #0 {
  %1 = alloca i32, align 4
  %2 = call i8* @Cvar_Get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i8* %2, i8** @con_notifytime, align 8
  %3 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i8* %3, i8** @con_conspeed, align 8
  %4 = call i32 @Field_Clear(%struct.TYPE_4__* @g_consoleField)
  %5 = load i8*, i8** @g_console_field_width, align 8
  store i8* %5, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_consoleField, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %22, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @COMMAND_HISTORY, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @historyEditLines, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %13
  %15 = call i32 @Field_Clear(%struct.TYPE_4__* %14)
  %16 = load i8*, i8** @g_console_field_width, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @historyEditLines, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i8* %16, i8** %21, align 8
  br label %22

22:                                               ; preds = %10
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %6

25:                                               ; preds = %6
  %26 = load i32, i32* @Con_ToggleConsole_f, align 4
  %27 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @Con_MessageMode_f, align 4
  %29 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @Con_MessageMode2_f, align 4
  %31 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @Con_MessageMode3_f, align 4
  %33 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @Con_MessageMode4_f, align 4
  %35 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @Con_Clear_f, align 4
  %37 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @Con_Dump_f, align 4
  %39 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %38)
  ret void
}

declare dso_local i8* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i32 @Field_Clear(%struct.TYPE_4__*) #1

declare dso_local i32 @Cmd_AddCommand(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
