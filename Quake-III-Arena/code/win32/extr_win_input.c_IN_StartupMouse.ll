; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_input.c_IN_StartupMouse.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_input.c_IN_StartupMouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@qfalse = common dso_local global i8* null, align 8
@s_wmv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@in_mouse = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Mouse control not active.\0A\00", align 1
@g_wv = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@VER_PLATFORM_WIN32_NT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Disallowing DirectInput on NT 4.0\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"in_mouse\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Skipping check for DirectInput\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"No window for DirectInput mouse init, delaying\0A\00", align 1
@qtrue = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"Falling back to Win32 mouse support...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IN_StartupMouse() #0 {
  %1 = load i8*, i8** @qfalse, align 8
  store i8* %1, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_wmv, i32 0, i32 0), align 8
  %2 = load i8*, i8** @qfalse, align 8
  store i8* %2, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_wmv, i32 0, i32 1), align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** @in_mouse, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @Com_Printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %42

9:                                                ; preds = %0
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_wv, i32 0, i32 1, i32 0), align 8
  %11 = load i64, i64* @VER_PLATFORM_WIN32_NT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_wv, i32 0, i32 1, i32 1), align 8
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = call i32 @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @Cvar_Set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %13, %9
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @in_mouse, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @Com_Printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %39

26:                                               ; preds = %19
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_wv, i32 0, i32 0), align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = call i32 @Com_Printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %31 = load i8*, i8** @qtrue, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_wmv, i32 0, i32 1), align 8
  br label %42

32:                                               ; preds = %26
  %33 = call i64 (...) @IN_InitDIMouse()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i8*, i8** @qtrue, align 8
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_wmv, i32 0, i32 0), align 8
  br label %42

37:                                               ; preds = %32
  %38 = call i32 @Com_Printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %24
  %40 = load i8*, i8** @qtrue, align 8
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s_wmv, i32 0, i32 0), align 8
  %41 = call i32 (...) @IN_InitWin32Mouse()
  br label %42

42:                                               ; preds = %39, %35, %29, %7
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i64 @IN_InitDIMouse(...) #1

declare dso_local i32 @IN_InitWin32Mouse(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
