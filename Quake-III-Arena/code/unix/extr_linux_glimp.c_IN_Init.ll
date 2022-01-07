; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_IN_Init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_IN_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"\0A------- Input Initialization -------\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"in_mouse\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@in_mouse = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"in_dgamouse\00", align 1
@in_dgamouse = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"in_subframe\00", align 1
@in_subframe = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"in_nograb\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@in_nograb = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"in_joystick\00", align 1
@CVAR_LATCH = common dso_local global i32 0, align 4
@in_joystick = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"in_debugjoystick\00", align 1
@CVAR_TEMP = common dso_local global i32 0, align 4
@in_joystickDebug = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"joy_threshold\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"0.15\00", align 1
@joy_threshold = common dso_local global i8* null, align 8
@qtrue = common dso_local global i32 0, align 4
@mouse_avail = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"------------------------------------\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IN_Init() #0 {
  %1 = call i32 @Com_Printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @CVAR_ARCHIVE, align 4
  %3 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %2)
  %4 = bitcast i8* %3 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %4, %struct.TYPE_2__** @in_mouse, align 8
  %5 = load i32, i32* @CVAR_ARCHIVE, align 4
  %6 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  store i8* %6, i8** @in_dgamouse, align 8
  %7 = load i32, i32* @CVAR_ARCHIVE, align 4
  %8 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %7)
  store i8* %8, i8** @in_subframe, align 8
  %9 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store i8* %9, i8** @in_nograb, align 8
  %10 = load i32, i32* @CVAR_ARCHIVE, align 4
  %11 = load i32, i32* @CVAR_LATCH, align 4
  %12 = or i32 %10, %11
  %13 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %12)
  store i8* %13, i8** @in_joystick, align 8
  %14 = load i32, i32* @CVAR_TEMP, align 4
  %15 = call i8* @Cvar_Get(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %14)
  store i8* %15, i8** @in_joystickDebug, align 8
  %16 = load i32, i32* @CVAR_ARCHIVE, align 4
  %17 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %16)
  store i8* %17, i8** @joy_threshold, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @in_mouse, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = load i32, i32* @qtrue, align 4
  store i32 %23, i32* @mouse_avail, align 4
  br label %26

24:                                               ; preds = %0
  %25 = load i32, i32* @qfalse, align 4
  store i32 %25, i32* @mouse_avail, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = call i32 (...) @IN_StartupJoystick()
  %28 = call i32 @Com_Printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i8* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i32 @IN_StartupJoystick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
