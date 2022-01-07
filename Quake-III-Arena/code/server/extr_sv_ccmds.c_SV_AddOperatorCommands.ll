; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_ccmds.c_SV_AddOperatorCommands.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_ccmds.c_SV_AddOperatorCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SV_AddOperatorCommands.initialized = internal global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"heartbeat\00", align 1
@SV_Heartbeat_f = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"kick\00", align 1
@SV_Kick_f = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"banUser\00", align 1
@SV_Ban_f = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"banClient\00", align 1
@SV_BanNum_f = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"clientkick\00", align 1
@SV_KickNum_f = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@SV_Status_f = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"serverinfo\00", align 1
@SV_Serverinfo_f = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"systeminfo\00", align 1
@SV_Systeminfo_f = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"dumpuser\00", align 1
@SV_DumpUser_f = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"map_restart\00", align 1
@SV_MapRestart_f = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"sectorlist\00", align 1
@SV_SectorList_f = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@SV_Map_f = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"devmap\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"spmap\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"spdevmap\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"killserver\00", align 1
@SV_KillServer_f = common dso_local global i32 0, align 4
@com_dedicated = common dso_local global %struct.TYPE_2__* null, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"say\00", align 1
@SV_ConSay_f = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_AddOperatorCommands() #0 {
  %1 = load i64, i64* @SV_AddOperatorCommands.initialized, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %45

4:                                                ; preds = %0
  %5 = load i64, i64* @qtrue, align 8
  store i64 %5, i64* @SV_AddOperatorCommands.initialized, align 8
  %6 = load i32, i32* @SV_Heartbeat_f, align 4
  %7 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @SV_Kick_f, align 4
  %9 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @SV_Ban_f, align 4
  %11 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @SV_BanNum_f, align 4
  %13 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @SV_KickNum_f, align 4
  %15 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @SV_Status_f, align 4
  %17 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @SV_Serverinfo_f, align 4
  %19 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @SV_Systeminfo_f, align 4
  %21 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @SV_DumpUser_f, align 4
  %23 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @SV_MapRestart_f, align 4
  %25 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @SV_SectorList_f, align 4
  %27 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @SV_Map_f, align 4
  %29 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @SV_Map_f, align 4
  %31 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @SV_Map_f, align 4
  %33 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @SV_Map_f, align 4
  %35 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @SV_KillServer_f, align 4
  %37 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @com_dedicated, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %4
  %43 = load i32, i32* @SV_ConSay_f, align 4
  %44 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %3, %42, %4
  ret void
}

declare dso_local i32 @Cmd_AddCommand(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
