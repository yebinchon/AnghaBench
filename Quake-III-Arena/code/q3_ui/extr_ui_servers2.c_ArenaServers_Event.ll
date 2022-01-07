; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_servers2.c_ArenaServers_Event.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_servers2.c_ArenaServers_Event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@g_arenaservers = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str = private unnamed_addr constant [17 x i8] c"ui_browserMaster\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ui_browserGameType\00", align 1
@g_gametype = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"ui_browserSortKey\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ui_browserShowFull\00", align 1
@g_fullservers = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"ui_browserShowEmpty\00", align 1
@g_emptyservers = common dso_local global i32 0, align 4
@QM_GOTFOCUS = common dso_local global i32 0, align 4
@K_UPARROW = common dso_local global i32 0, align 4
@K_DOWNARROW = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Enable Punkbuster?\00", align 1
@UI_CENTER = common dso_local global i32 0, align 4
@UI_INVERSE = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@Punkbuster_ConfirmEnable = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Disable Punkbuster?\00", align 1
@Punkbuster_ConfirmDisable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ArenaServers_Event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ArenaServers_Event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_15__*
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @QM_ACTIVATED, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 138
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %102

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %102 [
    i32 137, label %20
    i32 139, label %32
    i32 129, label %37
    i32 130, label %43
    i32 131, label %48
    i32 138, label %53
    i32 132, label %60
    i32 133, label %63
    i32 142, label %66
    i32 135, label %70
    i32 128, label %72
    i32 140, label %74
    i32 141, label %77
    i32 134, label %79
    i32 136, label %82
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 6, i32 0), align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ArenaServers_SetType(i32 %30)
  br label %102

32:                                               ; preds = %18
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 5, i32 0), align 4
  %34 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 5, i32 0), align 4
  store i32 %35, i32* @g_gametype, align 4
  %36 = call i32 (...) @ArenaServers_UpdateMenu()
  br label %102

37:                                               ; preds = %18
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 4, i32 0), align 4
  %39 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 4, i32 0), align 4
  %41 = call i32 @ArenaServers_Sort(i32 %40)
  %42 = call i32 (...) @ArenaServers_UpdateMenu()
  br label %102

43:                                               ; preds = %18
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 3, i32 0), align 4
  %45 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 3, i32 0), align 4
  store i32 %46, i32* @g_fullservers, align 4
  %47 = call i32 (...) @ArenaServers_UpdateMenu()
  br label %102

48:                                               ; preds = %18
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 2, i32 0), align 4
  %50 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 2, i32 0), align 4
  store i32 %51, i32* @g_emptyservers, align 4
  %52 = call i32 (...) @ArenaServers_UpdateMenu()
  br label %102

53:                                               ; preds = %18
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @QM_GOTFOCUS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 (...) @ArenaServers_UpdatePicture()
  br label %59

59:                                               ; preds = %57, %53
  br label %102

60:                                               ; preds = %18
  %61 = load i32, i32* @K_UPARROW, align 4
  %62 = call i32 @ScrollList_Key(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 1), i32 %61)
  br label %102

63:                                               ; preds = %18
  %64 = load i32, i32* @K_DOWNARROW, align 4
  %65 = call i32 @ScrollList_Key(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 1), i32 %64)
  br label %102

66:                                               ; preds = %18
  %67 = call i32 (...) @ArenaServers_StopRefresh()
  %68 = call i32 (...) @ArenaServers_SaveChanges()
  %69 = call i32 (...) @UI_PopMenu()
  br label %102

70:                                               ; preds = %18
  %71 = call i32 (...) @ArenaServers_StartRefresh()
  br label %102

72:                                               ; preds = %18
  %73 = call i32 (...) @UI_SpecifyServerMenu()
  br label %102

74:                                               ; preds = %18
  %75 = load i32, i32* @qtrue, align 4
  %76 = call i32 @UI_StartServerMenu(i32 %75)
  br label %102

77:                                               ; preds = %18
  %78 = call i32 (...) @ArenaServers_Go()
  br label %102

79:                                               ; preds = %18
  %80 = call i32 (...) @ArenaServers_Remove()
  %81 = call i32 (...) @ArenaServers_UpdateMenu()
  br label %102

82:                                               ; preds = %18
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 0, i32 0), align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32, i32* @UI_CENTER, align 4
  %87 = load i32, i32* @UI_INVERSE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @UI_SMALLFONT, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @Punkbuster_ConfirmEnable, align 4
  %92 = call i32 @UI_ConfirmMenu_Style(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %90, i32 0, i32 %91)
  br label %101

93:                                               ; preds = %82
  %94 = load i32, i32* @UI_CENTER, align 4
  %95 = load i32, i32* @UI_INVERSE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @UI_SMALLFONT, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @Punkbuster_ConfirmDisable, align 4
  %100 = call i32 @UI_ConfirmMenu_Style(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %98, i32 0, i32 %99)
  br label %101

101:                                              ; preds = %93, %85
  br label %102

102:                                              ; preds = %17, %18, %101, %79, %77, %74, %72, %70, %66, %63, %60, %59, %48, %43, %37, %32, %27
  ret void
}

declare dso_local i32 @trap_Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @ArenaServers_SetType(i32) #1

declare dso_local i32 @ArenaServers_UpdateMenu(...) #1

declare dso_local i32 @ArenaServers_Sort(i32) #1

declare dso_local i32 @ArenaServers_UpdatePicture(...) #1

declare dso_local i32 @ScrollList_Key(i32*, i32) #1

declare dso_local i32 @ArenaServers_StopRefresh(...) #1

declare dso_local i32 @ArenaServers_SaveChanges(...) #1

declare dso_local i32 @UI_PopMenu(...) #1

declare dso_local i32 @ArenaServers_StartRefresh(...) #1

declare dso_local i32 @UI_SpecifyServerMenu(...) #1

declare dso_local i32 @UI_StartServerMenu(i32) #1

declare dso_local i32 @ArenaServers_Go(...) #1

declare dso_local i32 @ArenaServers_Remove(...) #1

declare dso_local i32 @UI_ConfirmMenu_Style(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
