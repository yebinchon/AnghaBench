; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_glimp.c_GLimp_RendererSleep.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_glimp.c_GLimp_RendererSleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@glw_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@wglErrors = common dso_local global i32 0, align 4
@renderActiveEvent = common dso_local global i32 0, align 4
@renderCompletedEvent = common dso_local global i32 0, align 4
@renderCommandsEvent = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@smpData = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GLimp_RendererSleep() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glw_state, i32 0, i32 1), align 8
  %3 = call i32 @qwglMakeCurrent(i32 %2, i32* null)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @wglErrors, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @wglErrors, align 4
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @renderActiveEvent, align 4
  %10 = call i32 @ResetEvent(i32 %9)
  %11 = load i32, i32* @renderCompletedEvent, align 4
  %12 = call i32 @SetEvent(i32 %11)
  %13 = load i32, i32* @renderCommandsEvent, align 4
  %14 = load i32, i32* @INFINITE, align 4
  %15 = call i32 @WaitForSingleObject(i32 %13, i32 %14)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glw_state, i32 0, i32 1), align 8
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glw_state, i32 0, i32 0), align 8
  %18 = call i32 @qwglMakeCurrent(i32 %16, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %8
  %21 = load i32, i32* @wglErrors, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @wglErrors, align 4
  br label %23

23:                                               ; preds = %20, %8
  %24 = load i32, i32* @renderCompletedEvent, align 4
  %25 = call i32 @ResetEvent(i32 %24)
  %26 = load i32, i32* @renderCommandsEvent, align 4
  %27 = call i32 @ResetEvent(i32 %26)
  %28 = load i8*, i8** @smpData, align 8
  store i8* %28, i8** %1, align 8
  %29 = load i32, i32* @renderActiveEvent, align 4
  %30 = call i32 @SetEvent(i32 %29)
  %31 = load i8*, i8** %1, align 8
  ret i8* %31
}

declare dso_local i32 @qwglMakeCurrent(i32, i32*) #1

declare dso_local i32 @ResetEvent(i32) #1

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i32 @WaitForSingleObject(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
