; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_StartServerRefresh.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_StartServerRefresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"ui_lastServerRefresh_%i\00", align 1
@ui_netSource = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s-%i, %i at %i:%i\00", align 1
@MonthAbbrev = common dso_local global i32* null, align 8
@qtrue = common dso_local global i32 0, align 4
@uiInfo = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@AS_LOCAL = common dso_local global i32 0, align 4
@EXEC_NOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"localservers\0A\00", align 1
@AS_GLOBAL = common dso_local global i32 0, align 4
@AS_MPLAYER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"debug_protocol\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"globalservers %d %s full empty\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"globalservers %d %d full empty\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @UI_StartServerRefresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_StartServerRefresh(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i32 @trap_RealTime(%struct.TYPE_9__* %5)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_netSource, i32 0, i32 0), align 4
  %8 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32*, i32** @MonthAbbrev, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 1900, %17
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %15, i64 %18, i32 %20, i32 %22)
  %24 = call i32 @trap_Cvar_Set(i8* %8, i8* %23)
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %1
  %28 = call i32 (...) @UI_UpdatePendingPings()
  br label %81

29:                                               ; preds = %1
  %30 = load i32, i32* @qtrue, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 1, i32 4), align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %32 = add nsw i64 %31, 1000
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 1, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 1, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 1, i32 1), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_netSource, i32 0, i32 0), align 4
  %34 = load i32, i32* @qtrue, align 4
  %35 = call i32 @trap_LAN_MarkServerVisible(i32 %33, i32 -1, i32 %34)
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_netSource, i32 0, i32 0), align 4
  %37 = call i32 @trap_LAN_ResetPings(i32 %36)
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_netSource, i32 0, i32 0), align 4
  %39 = load i32, i32* @AS_LOCAL, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load i32, i32* @EXEC_NOW, align 4
  %43 = call i32 @trap_Cmd_ExecuteText(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %45 = add nsw i64 %44, 1000
  store i64 %45, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 1, i32 0), align 8
  br label %81

46:                                               ; preds = %29
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %48 = add nsw i64 %47, 5000
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 1, i32 0), align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_netSource, i32 0, i32 0), align 4
  %50 = load i32, i32* @AS_GLOBAL, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_netSource, i32 0, i32 0), align 4
  %54 = load i32, i32* @AS_MPLAYER, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %52, %46
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_netSource, i32 0, i32 0), align 4
  %58 = load i32, i32* @AS_GLOBAL, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %62

61:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %60
  %63 = call i8* @UI_Cvar_VariableString(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i8* %63, i8** %4, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call i64 @strlen(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32, i32* @EXEC_NOW, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load i8*, i8** %4, align 8
  %71 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %69, i8* %70)
  %72 = call i32 @trap_Cmd_ExecuteText(i32 %68, i8* %71)
  br label %80

73:                                               ; preds = %62
  %74 = load i32, i32* @EXEC_NOW, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %77 = trunc i64 %76 to i32
  %78 = call i8* (i8*, i32, ...) @va(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %75, i32 %77)
  %79 = call i32 @trap_Cmd_ExecuteText(i32 %74, i8* %78)
  br label %80

80:                                               ; preds = %73, %67
  br label %81

81:                                               ; preds = %27, %41, %80, %52
  ret void
}

declare dso_local i32 @trap_RealTime(%struct.TYPE_9__*) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

declare dso_local i8* @va(i8*, i32, ...) #1

declare dso_local i32 @UI_UpdatePendingPings(...) #1

declare dso_local i32 @trap_LAN_MarkServerVisible(i32, i32, i32) #1

declare dso_local i32 @trap_LAN_ResetPings(i32) #1

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i8*) #1

declare dso_local i8* @UI_Cvar_VariableString(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @trap_Cvar_VariableValue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
