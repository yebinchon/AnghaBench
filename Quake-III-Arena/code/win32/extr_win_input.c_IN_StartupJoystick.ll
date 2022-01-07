; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_input.c_IN_StartupJoystick.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_input.c_IN_StartupJoystick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i64, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@qfalse = common dso_local global i32 0, align 4
@joy = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@in_joystick = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Joystick is not active.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"joystick not found -- driver not present\0A\00", align 1
@JOY_RETURNCENTERED = common dso_local global i32 0, align 4
@JOYERR_NOERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"joystick not found -- no valid joysticks (%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"joystick not found -- invalid joystick capabilities (%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Joystick found.\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Pname: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"OemVxD: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"RegKey: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Numbuttons: %i / %i\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Axis: %i / %i\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Caps: 0x%x\0A\00", align 1
@JOYCAPS_HASPOV = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"HASPOV\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"no POV\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IN_StartupJoystick() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @qfalse, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 1), align 4
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** @in_joystick, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %74

10:                                               ; preds = %0
  %11 = call i32 (...) @joyGetNumDevs()
  store i32 %11, i32* %1, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %74

15:                                               ; preds = %10
  store i64 0, i64* %2, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 0), align 8
  br label %16

16:                                               ; preds = %29, %15
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 0), align 8
  %18 = load i32, i32* %1, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = call i32 @Com_Memset(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 5), i32 0, i32 40)
  store i32 40, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 5, i32 0), align 8
  %22 = load i32, i32* @JOY_RETURNCENTERED, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 5, i32 9), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 0), align 8
  %24 = call i64 @joyGetPosEx(i32 %23, %struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 5))
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* @JOYERR_NOERROR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %32

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 0), align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 0), align 8
  br label %16

32:                                               ; preds = %27, %16
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @JOYERR_NOERROR, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i64, i64* %2, align 8
  %38 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  br label %74

39:                                               ; preds = %32
  %40 = call i32 @Com_Memset(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 4), i32 0, i32 40)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 0), align 8
  %42 = call i64 @joyGetDevCaps(i32 %41, %struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 4), i32 40)
  store i64 %42, i64* %2, align 8
  %43 = load i64, i64* @JOYERR_NOERROR, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i64, i64* %2, align 8
  %47 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i64 %46)
  br label %74

48:                                               ; preds = %39
  %49 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 4, i32 8), align 8
  %51 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 4, i32 7), align 4
  %53 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 4, i32 6), align 8
  %55 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 4, i32 5), align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 4, i32 4), align 8
  %58 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 4, i32 3), align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 4, i32 2), align 8
  %61 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 4, i32 1), align 4
  %63 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 4, i32 1), align 4
  %65 = load i32, i32* @JOYCAPS_HASPOV, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %48
  %69 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %72

70:                                               ; preds = %48
  %71 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %68
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 2), align 8
  %73 = load i32, i32* @qtrue, align 4
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @joy, i32 0, i32 1), align 4
  br label %74

74:                                               ; preds = %72, %45, %36, %13, %8
  ret void
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @joyGetNumDevs(...) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @joyGetPosEx(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @joyGetDevCaps(i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
