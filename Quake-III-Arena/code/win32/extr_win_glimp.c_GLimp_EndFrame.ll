; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_glimp.c_GLimp_EndFrame.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_glimp.c_GLimp_EndFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32 (i32, i8*)* }
%struct.TYPE_9__ = type { i32 }

@r_swapInterval = common dso_local global %struct.TYPE_8__* null, align 8
@qfalse = common dso_local global i64 0, align 8
@glConfig = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@r_drawBuffer = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"GL_FRONT\00", align 1
@GLDRV_ICD = common dso_local global i64 0, align 8
@glw_state = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@ri = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"GLimp_EndFrame() - SwapBuffers() failed!\0A\00", align 1
@r_logFile = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GLimp_EndFrame() #0 {
  %1 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_swapInterval, align 8
  %2 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %0
  %6 = load i64, i64* @qfalse, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_swapInterval, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 1), align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  br i1 true, label %12, label %17

12:                                               ; preds = %11
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_swapInterval, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @qwglSwapIntervalEXT(i32 %15)
  br label %17

17:                                               ; preds = %12, %11
  br label %18

18:                                               ; preds = %17, %5
  br label %19

19:                                               ; preds = %18, %0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_drawBuffer, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @Q_stricmp(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 8
  %27 = load i64, i64* @GLDRV_ICD, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glw_state, i32 0, i32 0), align 4
  %31 = call i32 @qwglSwapBuffers(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 0), align 8
  %35 = load i32, i32* @ERR_FATAL, align 4
  %36 = call i32 %34(i32 %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %29
  br label %41

38:                                               ; preds = %25
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @glw_state, i32 0, i32 0), align 4
  %40 = call i32 @SwapBuffers(i32 %39)
  br label %41

41:                                               ; preds = %38, %37
  br label %42

42:                                               ; preds = %41, %19
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** @r_logFile, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @QGL_EnableLogging(i32 %45)
  ret void
}

declare dso_local i32 @qwglSwapIntervalEXT(i32) #1

declare dso_local i64 @Q_stricmp(i32, i8*) #1

declare dso_local i32 @qwglSwapBuffers(i32) #1

declare dso_local i32 @SwapBuffers(i32) #1

declare dso_local i32 @QGL_EnableLogging(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
