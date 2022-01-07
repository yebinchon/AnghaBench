; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_input.c_IN_Frame.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_input.c_IN_Frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@s_wmv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@g_wv = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [36 x i8] c"Proceeding with delayed mouse init\0A\00", align 1
@qfalse = common dso_local global i64 0, align 8
@cls = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@KEYCATCH_CONSOLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"r_fullscreen\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"r_glDriver\00", align 1
@_3DFX_DRIVER_NAME = common dso_local global i32 0, align 4
@in_appactive = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IN_Frame() #0 {
  %1 = call i32 (...) @IN_JoyMove()
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_wmv, i32 0, i32 1), align 8
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_wmv, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_wv, i32 0, i32 0), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = call i32 @Com_Printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (...) @IN_StartupMouse()
  %13 = load i64, i64* @qfalse, align 8
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_wmv, i32 0, i32 0), align 8
  br label %14

14:                                               ; preds = %10, %7, %4
  br label %39

15:                                               ; preds = %0
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 0), align 4
  %17 = load i32, i32* @KEYCATCH_CONSOLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = call i64 @Cvar_VariableValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = call i32 @Cvar_VariableString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @_3DFX_DRIVER_NAME, align 4
  %26 = call i64 @strcmp(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (...) @IN_DeactivateMouse()
  br label %39

30:                                               ; preds = %23, %20
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i32, i32* @in_appactive, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 (...) @IN_DeactivateMouse()
  br label %39

36:                                               ; preds = %31
  %37 = call i32 (...) @IN_ActivateMouse()
  %38 = call i32 (...) @IN_MouseMove()
  br label %39

39:                                               ; preds = %36, %34, %28, %14
  ret void
}

declare dso_local i32 @IN_JoyMove(...) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @IN_StartupMouse(...) #1

declare dso_local i64 @Cvar_VariableValue(i8*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @Cvar_VariableString(i8*) #1

declare dso_local i32 @IN_DeactivateMouse(...) #1

declare dso_local i32 @IN_ActivateMouse(...) #1

declare dso_local i32 @IN_MouseMove(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
