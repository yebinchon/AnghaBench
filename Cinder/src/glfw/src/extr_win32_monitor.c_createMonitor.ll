; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_monitor.c_createMonitor.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_monitor.c_createMonitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Win32: Failed to convert string to UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [8 x i32] [i32 68, i32 73, i32 83, i32 80, i32 76, i32 65, i32 89, i32 0], align 4
@HORZSIZE = common dso_local global i32 0, align 4
@VERTSIZE = common dso_local global i32 0, align 4
@DISPLAY_DEVICE_MODESPRUNED = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_10__*, %struct.TYPE_10__*)* @createMonitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @createMonitor(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = icmp ne %struct.TYPE_10__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @_glfwCreateUTF8FromWideStringWin32(i32 %14)
  store i8* %15, i8** %7, align 8
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @_glfwCreateUTF8FromWideStringWin32(i32 %19)
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %26 = call i32 @_glfwInputError(i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %95

27:                                               ; preds = %21
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CreateDCW(i8* bitcast ([8 x i32]* @.str.1 to i8*), i32 %30, i32* null, i32* null)
  store i32 %31, i32* %8, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @HORZSIZE, align 4
  %35 = call i32 @GetDeviceCaps(i32 %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @VERTSIZE, align 4
  %38 = call i32 @GetDeviceCaps(i32 %36, i32 %37)
  %39 = call %struct.TYPE_9__* @_glfwAllocMonitor(i8* %32, i32 %35, i32 %38)
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @DeleteDC(i32 %40)
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DISPLAY_DEVICE_MODESPRUNED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %27
  %51 = load i32, i32* @GLFW_TRUE, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %27
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @wcscpy(i32 %59, i32 %62)
  %64 = load i32, i32* @CP_UTF8, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @WideCharToMultiByte(i32 %64, i32 0, i32 %67, i32 -1, i32 %71, i32 4, i32* null, i32* null)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = icmp ne %struct.TYPE_10__* %73, null
  br i1 %74, label %75, label %93

75:                                               ; preds = %55
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @wcscpy(i32 %79, i32 %82)
  %84 = load i32, i32* @CP_UTF8, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @WideCharToMultiByte(i32 %84, i32 0, i32 %87, i32 -1, i32 %91, i32 4, i32* null, i32* null)
  br label %93

93:                                               ; preds = %75, %55
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %94, %struct.TYPE_9__** %3, align 8
  br label %95

95:                                               ; preds = %93, %24
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %96
}

declare dso_local i8* @_glfwCreateUTF8FromWideStringWin32(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @CreateDCW(i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @_glfwAllocMonitor(i8*, i32, i32) #1

declare dso_local i32 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @wcscpy(i32, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
