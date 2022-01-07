; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_sound.c_UI_SoundOptionsMenu_Event.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_sound.c_UI_SoundOptionsMenu_Event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"s_volume\00", align 1
@soundOptionsInfo = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"s_musicvolume\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"s_khz\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"s_compression\00", align 1
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"snd_restart\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @UI_SoundOptionsMenu_Event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_SoundOptionsMenu_Event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @QM_ACTIVATED, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %47

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_9__*
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %47 [
    i32 132, label %14
    i32 134, label %17
    i32 128, label %20
    i32 130, label %21
    i32 133, label %24
    i32 131, label %28
    i32 129, label %32
    i32 135, label %45
  ]

14:                                               ; preds = %9
  %15 = call i32 (...) @UI_PopMenu()
  %16 = call i32 (...) @UI_GraphicsOptionsMenu()
  br label %47

17:                                               ; preds = %9
  %18 = call i32 (...) @UI_PopMenu()
  %19 = call i32 (...) @UI_DisplayOptionsMenu()
  br label %47

20:                                               ; preds = %9
  br label %47

21:                                               ; preds = %9
  %22 = call i32 (...) @UI_PopMenu()
  %23 = call i32 (...) @UI_NetworkOptionsMenu()
  br label %47

24:                                               ; preds = %9
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @soundOptionsInfo, i32 0, i32 2, i32 0), align 4
  %26 = sdiv i32 %25, 10
  %27 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %47

28:                                               ; preds = %9
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @soundOptionsInfo, i32 0, i32 1, i32 0), align 4
  %30 = sdiv i32 %29, 10
  %31 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %47

32:                                               ; preds = %9
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @soundOptionsInfo, i32 0, i32 0, i32 0), align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 22)
  %37 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %41

38:                                               ; preds = %32
  %39 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 11)
  %40 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %41

41:                                               ; preds = %38, %35
  %42 = call i32 (...) @UI_ForceMenuOff()
  %43 = load i32, i32* @EXEC_APPEND, align 4
  %44 = call i32 @trap_Cmd_ExecuteText(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %47

45:                                               ; preds = %9
  %46 = call i32 (...) @UI_PopMenu()
  br label %47

47:                                               ; preds = %8, %9, %45, %41, %28, %24, %21, %20, %17, %14
  ret void
}

declare dso_local i32 @UI_PopMenu(...) #1

declare dso_local i32 @UI_GraphicsOptionsMenu(...) #1

declare dso_local i32 @UI_DisplayOptionsMenu(...) #1

declare dso_local i32 @UI_NetworkOptionsMenu(...) #1

declare dso_local i32 @trap_Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @UI_ForceMenuOff(...) #1

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
