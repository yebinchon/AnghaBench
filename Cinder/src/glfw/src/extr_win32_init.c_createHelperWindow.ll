; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_init.c_createHelperWindow.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_init.c_createHelperWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@WS_EX_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@_GLFW_WNDCLASSNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i32] [i32 71, i32 76, i32 70, i32 87, i32 32, i32 104, i32 101, i32 108, i32 112, i32 101, i32 114, i32 32, i32 119, i32 105, i32 110, i32 100, i32 111, i32 119, i32 0], align 4
@WS_CLIPSIBLINGS = common dso_local global i32 0, align 4
@WS_CLIPCHILDREN = common dso_local global i32 0, align 4
@HWND_MESSAGE = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Win32: Failed to create helper window\00", align 1
@SW_HIDE = common dso_local global i32 0, align 4
@DBT_DEVTYP_DEVICEINTERFACE = common dso_local global i32 0, align 4
@GUID_DEVINTERFACE_HID = common dso_local global i32 0, align 4
@DEVICE_NOTIFY_WINDOW_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @createHelperWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @createHelperWindow() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = load i32, i32* @WS_EX_OVERLAPPEDWINDOW, align 4
  %5 = load i32, i32* @_GLFW_WNDCLASSNAME, align 4
  %6 = load i32, i32* @WS_CLIPSIBLINGS, align 4
  %7 = load i32, i32* @WS_CLIPCHILDREN, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @HWND_MESSAGE, align 4
  %10 = call i32 @GetModuleHandleW(i32* null)
  %11 = call i32* @CreateWindowExW(i32 %4, i32 %5, i8* bitcast ([19 x i32]* @.str to i8*), i32 %8, i32 0, i32 0, i32 1, i32 1, i32 %9, i32* null, i32 %10, i32* null)
  store i32* %11, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %16 = call i32 @_glfwInputError(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  br label %32

17:                                               ; preds = %0
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @SW_HIDE, align 4
  %20 = call i32 @ShowWindow(i32* %18, i32 %19)
  %21 = call i32 @ZeroMemory(%struct.TYPE_3__* %3, i32 12)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 12, i32* %22, align 4
  %23 = load i32, i32* @DBT_DEVTYP_DEVICEINTERFACE, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @GUID_DEVINTERFACE_HID, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = bitcast %struct.TYPE_3__* %3 to i32*
  %29 = load i32, i32* @DEVICE_NOTIFY_WINDOW_HANDLE, align 4
  %30 = call i32 @RegisterDeviceNotificationW(i32* %27, i32* %28, i32 %29)
  %31 = load i32*, i32** %2, align 8
  store i32* %31, i32** %1, align 8
  br label %32

32:                                               ; preds = %17, %14
  %33 = load i32*, i32** %1, align 8
  ret i32* %33
}

declare dso_local i32* @CreateWindowExW(i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @GetModuleHandleW(i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @ShowWindow(i32*, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @RegisterDeviceNotificationW(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
