; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_init.c__glfwPlatformInit.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_init.c__glfwPlatformInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@GLFW_FALSE = common dso_local global i32 0, align 4
@SPI_GETFOREGROUNDLOCKTIMEOUT = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SPI_SETFOREGROUNDLOCKTIMEOUT = common dso_local global i32 0, align 4
@SPIF_SENDCHANGE = common dso_local global i32 0, align 4
@PROCESS_PER_MONITOR_DPI_AWARE = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformInit() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @_glfwInitThreadLocalStorageWin32()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %5, i32* %1, align 4
  br label %42

6:                                                ; preds = %0
  %7 = load i32, i32* @SPI_GETFOREGROUNDLOCKTIMEOUT, align 4
  %8 = call i32 @SystemParametersInfoW(i32 %7, i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), i32 0)
  %9 = load i32, i32* @SPI_SETFOREGROUNDLOCKTIMEOUT, align 4
  %10 = call i32* @UIntToPtr(i32 0)
  %11 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %12 = call i32 @SystemParametersInfoW(i32 %9, i32 0, i32* %10, i32 %11)
  %13 = call i32 (...) @loadLibraries()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %16, i32* %1, align 4
  br label %42

17:                                               ; preds = %6
  %18 = call i32 (...) @createKeyTables()
  br i1 true, label %19, label %22

19:                                               ; preds = %17
  %20 = load i32, i32* @PROCESS_PER_MONITOR_DPI_AWARE, align 4
  %21 = call i32 @_glfw_SetProcessDpiAwareness(i32 %20)
  br label %26

22:                                               ; preds = %17
  br i1 true, label %23, label %25

23:                                               ; preds = %22
  %24 = call i32 (...) @_glfw_SetProcessDPIAware()
  br label %25

25:                                               ; preds = %23, %22
  br label %26

26:                                               ; preds = %25, %19
  %27 = call i32 (...) @_glfwRegisterWindowClassWin32()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %30, i32* %1, align 4
  br label %42

31:                                               ; preds = %26
  %32 = call i32 (...) @createHelperWindow()
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %36, i32* %1, align 4
  br label %42

37:                                               ; preds = %31
  %38 = call i32 (...) @_glfwPlatformPollEvents()
  %39 = call i32 (...) @_glfwInitTimerWin32()
  %40 = call i32 (...) @_glfwInitJoysticksWin32()
  %41 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %37, %35, %29, %15, %4
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32 @_glfwInitThreadLocalStorageWin32(...) #1

declare dso_local i32 @SystemParametersInfoW(i32, i32, i32*, i32) #1

declare dso_local i32* @UIntToPtr(i32) #1

declare dso_local i32 @loadLibraries(...) #1

declare dso_local i32 @createKeyTables(...) #1

declare dso_local i32 @_glfw_SetProcessDpiAwareness(i32) #1

declare dso_local i32 @_glfw_SetProcessDPIAware(...) #1

declare dso_local i32 @_glfwRegisterWindowClassWin32(...) #1

declare dso_local i32 @createHelperWindow(...) #1

declare dso_local i32 @_glfwPlatformPollEvents(...) #1

declare dso_local i32 @_glfwInitTimerWin32(...) #1

declare dso_local i32 @_glfwInitJoysticksWin32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
