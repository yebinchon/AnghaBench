; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_Frame.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_Frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@com_cl_running = common dso_local global %struct.TYPE_10__* null, align 8
@cls = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@qfalse = common dso_local global i64 0, align 8
@uivm = common dso_local global i32 0, align 4
@UI_SET_ACTIVE_MENU = common dso_local global i32 0, align 4
@UIMENU_NEED_CD = common dso_local global i32 0, align 4
@CA_DISCONNECTED = common dso_local global i64 0, align 8
@KEYCATCH_UI = common dso_local global i32 0, align 4
@com_sv_running = common dso_local global %struct.TYPE_9__* null, align 8
@UIMENU_MAIN = common dso_local global i32 0, align 4
@cl_avidemo = common dso_local global %struct.TYPE_14__* null, align 8
@CA_ACTIVE = common dso_local global i64 0, align 8
@cl_forceavidemo = common dso_local global %struct.TYPE_13__* null, align 8
@EXEC_NOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"screenshot silent\0A\00", align 1
@com_timescale = common dso_local global %struct.TYPE_8__* null, align 8
@cl_timegraph = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_Frame(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** @com_cl_running, align 8
  %4 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %98

8:                                                ; preds = %1
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 6), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i64, i64* @qfalse, align 8
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 6), align 8
  %13 = load i32, i32* @uivm, align 4
  %14 = load i32, i32* @UI_SET_ACTIVE_MENU, align 4
  %15 = load i32, i32* @UIMENU_NEED_CD, align 4
  %16 = call i32 @VM_Call(i32 %13, i32 %14, i32 %15)
  br label %38

17:                                               ; preds = %8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 0), align 8
  %19 = load i64, i64* @CA_DISCONNECTED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 1), align 8
  %23 = load i32, i32* @KEYCATCH_UI, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** @com_sv_running, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = call i32 (...) @S_StopAllSounds()
  %33 = load i32, i32* @uivm, align 4
  %34 = load i32, i32* @UI_SET_ACTIVE_MENU, align 4
  %35 = load i32, i32* @UIMENU_MAIN, align 4
  %36 = call i32 @VM_Call(i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %26, %21, %17
  br label %38

38:                                               ; preds = %37, %11
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cl_avidemo, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 0), align 8
  %48 = load i64, i64* @CA_ACTIVE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_forceavidemo, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %46
  %56 = load i32, i32* @EXEC_NOW, align 4
  %57 = call i32 @Cbuf_ExecuteText(i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cl_avidemo, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 1000, %61
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @com_timescale, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  store i32 %66, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %58
  br label %71

71:                                               ; preds = %70, %43, %38
  %72 = load i32, i32* %2, align 4
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 2), align 4
  %73 = load i32, i32* %2, align 4
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 3), align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 3), align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 4), align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 4), align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cl_timegraph, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 2), align 4
  %83 = sitofp i32 %82 to double
  %84 = fmul double %83, 2.500000e-01
  %85 = call i32 @SCR_DebugGraph(double %84, i32 0)
  br label %86

86:                                               ; preds = %81, %71
  %87 = call i32 (...) @CL_CheckUserinfo()
  %88 = call i32 (...) @CL_CheckTimeout()
  %89 = call i32 (...) @CL_SendCmd()
  %90 = call i32 (...) @CL_CheckForResend()
  %91 = call i32 (...) @CL_SetCGameTime()
  %92 = call i32 (...) @SCR_UpdateScreen()
  %93 = call i32 (...) @S_Update()
  %94 = call i32 (...) @SCR_RunCinematic()
  %95 = call i32 (...) @Con_RunConsole()
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 5), align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 5), align 8
  br label %98

98:                                               ; preds = %86, %7
  ret void
}

declare dso_local i32 @VM_Call(i32, i32, i32) #1

declare dso_local i32 @S_StopAllSounds(...) #1

declare dso_local i32 @Cbuf_ExecuteText(i32, i8*) #1

declare dso_local i32 @SCR_DebugGraph(double, i32) #1

declare dso_local i32 @CL_CheckUserinfo(...) #1

declare dso_local i32 @CL_CheckTimeout(...) #1

declare dso_local i32 @CL_SendCmd(...) #1

declare dso_local i32 @CL_CheckForResend(...) #1

declare dso_local i32 @CL_SetCGameTime(...) #1

declare dso_local i32 @SCR_UpdateScreen(...) #1

declare dso_local i32 @S_Update(...) #1

declare dso_local i32 @SCR_RunCinematic(...) #1

declare dso_local i32 @Con_RunConsole(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
