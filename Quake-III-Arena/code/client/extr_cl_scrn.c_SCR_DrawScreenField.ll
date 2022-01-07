; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_scrn.c_SCR_DrawScreenField.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_scrn.c_SCR_DrawScreenField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32)* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@re = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@cls = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@g_color_table = common dso_local global i32** null, align 8
@uivm = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"draw screen without UI loaded\0A\00", align 1
@UI_IS_FULLSCREEN = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"SCR_DrawScreenField: bad cls.state\00", align 1
@UI_SET_ACTIVE_MENU = common dso_local global i32 0, align 4
@UIMENU_MAIN = common dso_local global i32 0, align 4
@UI_REFRESH = common dso_local global i32 0, align 4
@UI_DRAW_CONNECT_SCREEN = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@KEYCATCH_UI = common dso_local global i32 0, align 4
@cl_debuggraph = common dso_local global %struct.TYPE_11__* null, align 8
@cl_timegraph = common dso_local global %struct.TYPE_10__* null, align 8
@cl_debugMove = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SCR_DrawScreenField(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @re, i32 0, i32 2), align 8
  %4 = load i32, i32* %2, align 4
  %5 = call i32 %3(i32 %4)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cls, i32 0, i32 0), align 4
  %7 = icmp ne i32 %6, 135
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cls, i32 0, i32 4, i32 0), align 4
  %10 = mul nsw i32 %9, 480
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cls, i32 0, i32 4, i32 1), align 4
  %12 = mul nsw i32 %11, 640
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @re, i32 0, i32 0), align 8
  %16 = load i32**, i32*** @g_color_table, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 %15(i32* %18)
  %20 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @re, i32 0, i32 1), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cls, i32 0, i32 4, i32 0), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cls, i32 0, i32 4, i32 1), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cls, i32 0, i32 3), align 4
  %24 = call i32 %20(i32 0, i32 0, i32 %21, i32 %22, i32 0, i32 0, i32 0, i32 0, i32 %23)
  %25 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @re, i32 0, i32 0), align 8
  %26 = call i32 %25(i32* null)
  br label %27

27:                                               ; preds = %14, %8
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i64, i64* @uivm, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %107

33:                                               ; preds = %28
  %34 = load i64, i64* @uivm, align 8
  %35 = load i32, i32* @UI_IS_FULLSCREEN, align 4
  %36 = call i32 (i64, i32, ...) @VM_Call(i64 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %76, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cls, i32 0, i32 0), align 4
  switch i32 %39, label %40 [
    i32 133, label %43
    i32 130, label %45
    i32 131, label %51
    i32 134, label %51
    i32 132, label %51
    i32 129, label %60
    i32 128, label %60
    i32 135, label %71
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* @ERR_FATAL, align 4
  %42 = call i32 @Com_Error(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %75

43:                                               ; preds = %38
  %44 = call i32 (...) @SCR_DrawCinematic()
  br label %75

45:                                               ; preds = %38
  %46 = call i32 (...) @S_StopAllSounds()
  %47 = load i64, i64* @uivm, align 8
  %48 = load i32, i32* @UI_SET_ACTIVE_MENU, align 4
  %49 = load i32, i32* @UIMENU_MAIN, align 4
  %50 = call i32 (i64, i32, ...) @VM_Call(i64 %47, i32 %48, i32 %49)
  br label %75

51:                                               ; preds = %38, %38, %38
  %52 = load i64, i64* @uivm, align 8
  %53 = load i32, i32* @UI_REFRESH, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cls, i32 0, i32 2), align 4
  %55 = call i32 (i64, i32, ...) @VM_Call(i64 %52, i32 %53, i32 %54)
  %56 = load i64, i64* @uivm, align 8
  %57 = load i32, i32* @UI_DRAW_CONNECT_SCREEN, align 4
  %58 = load i32, i32* @qfalse, align 4
  %59 = call i32 (i64, i32, ...) @VM_Call(i64 %56, i32 %57, i32 %58)
  br label %75

60:                                               ; preds = %38, %38
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @CL_CGameRendering(i32 %61)
  %63 = load i64, i64* @uivm, align 8
  %64 = load i32, i32* @UI_REFRESH, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cls, i32 0, i32 2), align 4
  %66 = call i32 (i64, i32, ...) @VM_Call(i64 %63, i32 %64, i32 %65)
  %67 = load i64, i64* @uivm, align 8
  %68 = load i32, i32* @UI_DRAW_CONNECT_SCREEN, align 4
  %69 = load i32, i32* @qtrue, align 4
  %70 = call i32 (i64, i32, ...) @VM_Call(i64 %67, i32 %68, i32 %69)
  br label %75

71:                                               ; preds = %38
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @CL_CGameRendering(i32 %72)
  %74 = call i32 (...) @SCR_DrawDemoRecording()
  br label %75

75:                                               ; preds = %71, %60, %51, %45, %43, %40
  br label %76

76:                                               ; preds = %75, %33
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cls, i32 0, i32 1), align 4
  %78 = load i32, i32* @KEYCATCH_UI, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i64, i64* @uivm, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i64, i64* @uivm, align 8
  %86 = load i32, i32* @UI_REFRESH, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cls, i32 0, i32 2), align 4
  %88 = call i32 (i64, i32, ...) @VM_Call(i64 %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %81, %76
  %90 = call i32 (...) @Con_DrawConsole()
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cl_debuggraph, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cl_timegraph, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cl_debugMove, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100, %95, %89
  %106 = call i32 (...) @SCR_DrawDebugGraph()
  br label %107

107:                                              ; preds = %31, %105, %100
  ret void
}

declare dso_local i32 @Com_DPrintf(i8*) #1

declare dso_local i32 @VM_Call(i64, i32, ...) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @SCR_DrawCinematic(...) #1

declare dso_local i32 @S_StopAllSounds(...) #1

declare dso_local i32 @CL_CGameRendering(i32) #1

declare dso_local i32 @SCR_DrawDemoRecording(...) #1

declare dso_local i32 @Con_DrawConsole(...) #1

declare dso_local i32 @SCR_DrawDebugGraph(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
