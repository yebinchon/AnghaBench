; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_win32_init.c_initLibraries.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_win32_init.c_initLibraries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i8*, i64, i64 }
%struct.TYPE_7__ = type { i8*, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i8* }

@.str = private unnamed_addr constant [10 x i32] [i32 119, i32 105, i32 110, i32 109, i32 109, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@_glfw = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Win32: Failed to load winmm.dll\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"joyGetDevCapsW\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"joyGetPos\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"joyGetPosEx\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"timeGetTime\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Win32: Failed to load winmm functions\00", align 1
@.str.7 = private unnamed_addr constant [11 x i32] [i32 117, i32 115, i32 101, i32 114, i32 51, i32 50, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"SetProcessDPIAware\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"ChangeWindowMessageFilterEx\00", align 1
@.str.10 = private unnamed_addr constant [11 x i32] [i32 100, i32 119, i32 109, i32 97, i32 112, i32 105, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"DwmIsCompositionEnabled\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"DwmFlush\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @initLibraries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initLibraries() #0 {
  %1 = alloca i32, align 4
  %2 = call i8* @LoadLibraryW(i8* bitcast ([10 x i32]* @.str to i8*))
  store i8* %2, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 4), align 8
  %3 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 4), align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %7 = call i32 @_glfwInputError(i32 %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @GL_FALSE, align 4
  store i32 %8, i32* %1, align 4
  br label %53

9:                                                ; preds = %0
  %10 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 4), align 8
  %11 = call i64 @GetProcAddress(i8* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i64 %11, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 3), align 8
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 4), align 8
  %13 = call i64 @GetProcAddress(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 2), align 8
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 4), align 8
  %15 = call i64 @GetProcAddress(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 1), align 8
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 4), align 8
  %17 = call i64 @GetProcAddress(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i64 %17, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 3), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %9
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 2), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 1), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26, %23, %20, %9
  %30 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %31 = call i32 @_glfwInputError(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %32 = load i32, i32* @GL_FALSE, align 4
  store i32 %32, i32* %1, align 4
  br label %53

33:                                               ; preds = %26
  %34 = call i8* @LoadLibraryW(i8* bitcast ([11 x i32]* @.str.7 to i8*))
  store i8* %34, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %39 = call i64 @GetProcAddress(i8* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1, i32 2), align 8
  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %41 = call i64 @GetProcAddress(i8* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  store i64 %41, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 1, i32 1), align 8
  br label %42

42:                                               ; preds = %37, %33
  %43 = call i8* @LoadLibraryW(i8* bitcast ([11 x i32]* @.str.10 to i8*))
  store i8* %43, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  %48 = call i64 @GetProcAddress(i8* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0, i32 2), align 8
  %49 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  %50 = call i64 @GetProcAddress(i8* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  store i64 %50, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @_glfw, i32 0, i32 0, i32 0, i32 1), align 8
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* @GL_TRUE, align 4
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %51, %29, %5
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i8* @LoadLibraryW(i8*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i64 @GetProcAddress(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
