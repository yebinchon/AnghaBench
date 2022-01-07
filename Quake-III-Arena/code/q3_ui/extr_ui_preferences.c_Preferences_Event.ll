; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_preferences.c_Preferences_Event.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_preferences.c_Preferences_Event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@s_preferences = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@NUM_CROSSHAIRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cg_drawCrosshair\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"cg_simpleItems\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"r_fastsky\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"cg_brassTime\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"cg_marks\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"r_dynamiclight\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"cg_drawCrosshairNames\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"r_finish\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"cg_forcemodel\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"cg_drawTeamOverlay\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"cl_allowDownload\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"sv_allowDownload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @Preferences_Event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Preferences_Event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @QM_ACTIVATED, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %66

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_16__*
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %66 [
    i32 137, label %14
    i32 130, label %24
    i32 132, label %27
    i32 134, label %33
    i32 128, label %41
    i32 135, label %44
    i32 131, label %47
    i32 129, label %50
    i32 133, label %53
    i32 136, label %56
    i32 139, label %59
    i32 138, label %64
  ]

14:                                               ; preds = %9
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 10, i32 0), align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 10, i32 0), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 10, i32 0), align 4
  %18 = load i32, i32* @NUM_CROSSHAIRS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 10, i32 0), align 4
  br label %21

21:                                               ; preds = %20, %14
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 10, i32 0), align 4
  %23 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %66

24:                                               ; preds = %9
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 9, i32 0), align 4
  %26 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %66

27:                                               ; preds = %9
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 8, i32 0), align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %66

33:                                               ; preds = %9
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 7, i32 0), align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @trap_Cvar_Reset(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %40

38:                                               ; preds = %33
  %39 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %40

40:                                               ; preds = %38, %36
  br label %66

41:                                               ; preds = %9
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 6, i32 0), align 4
  %43 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  br label %66

44:                                               ; preds = %9
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 5, i32 0), align 4
  %46 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  br label %66

47:                                               ; preds = %9
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 4, i32 0), align 4
  %49 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  br label %66

50:                                               ; preds = %9
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 3, i32 0), align 4
  %52 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %51)
  br label %66

53:                                               ; preds = %9
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 2, i32 0), align 4
  %55 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %54)
  br label %66

56:                                               ; preds = %9
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 1, i32 0), align 4
  %58 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %57)
  br label %66

59:                                               ; preds = %9
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 0, i32 0), align 4
  %61 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s_preferences, i32 0, i32 0, i32 0), align 4
  %63 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %62)
  br label %66

64:                                               ; preds = %9
  %65 = call i32 (...) @UI_PopMenu()
  br label %66

66:                                               ; preds = %8, %9, %64, %59, %56, %53, %50, %47, %44, %41, %40, %27, %24, %21
  ret void
}

declare dso_local i32 @trap_Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @trap_Cvar_Reset(i8*) #1

declare dso_local i32 @UI_PopMenu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
