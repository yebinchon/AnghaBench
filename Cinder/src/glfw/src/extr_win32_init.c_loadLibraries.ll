; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_init.c_loadLibraries.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_init.c_loadLibraries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i8*, i64 }
%struct.TYPE_13__ = type { i8*, i64, i64 }
%struct.TYPE_12__ = type { i8*, i64, i64 }
%struct.TYPE_11__ = type { i8*, i64 }
%struct.TYPE_10__ = type { i8*, i64, i64 }
%struct.TYPE_9__ = type { i8*, i64 }

@.str = private unnamed_addr constant [10 x i8] c"winmm.dll\00", align 1
@_glfw = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Win32: Failed to load winmm.dll\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"timeGetTime\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"user32.dll\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Win32: Failed to load user32.dll\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"SetProcessDPIAware\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"ChangeWindowMessageFilterEx\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"dinput8.dll\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"DirectInput8Create\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"xinput1_4.dll\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"xinput1_3.dll\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"xinput9_1_0.dll\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"xinput1_2.dll\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"xinput1_1.dll\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"XInputGetCapabilities\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"XInputGetState\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"dwmapi.dll\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"DwmIsCompositionEnabled\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"DwmFlush\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"shcore.dll\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"SetProcessDpiAwareness\00", align 1
@GLFW_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @loadLibraries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadLibraries() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [6 x i8*], align 16
  %4 = call i8* @LoadLibraryA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %5 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %9 = call i32 @_glfwInputError(i32 %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %10, i32* %1, align 4
  br label %81

11:                                               ; preds = %0
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %13 = call i64 @GetProcAddress(i8* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 5, i32 1), align 8
  %14 = call i8* @LoadLibraryA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 4, i32 0), align 8
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 4, i32 0), align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %19 = call i32 @_glfwInputError(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %20, i32* %1, align 4
  br label %81

21:                                               ; preds = %11
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 4, i32 0), align 8
  %23 = call i64 @GetProcAddress(i8* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 4, i32 2), align 8
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 4, i32 0), align 8
  %25 = call i64 @GetProcAddress(i8* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 4, i32 1), align 8
  %26 = call i8* @LoadLibraryA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  %31 = call i64 @GetProcAddress(i8* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 3, i32 1), align 8
  br label %32

32:                                               ; preds = %29, %21
  %33 = bitcast [6 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %33, i8 0, i64 48, i1 false)
  %34 = bitcast i8* %33 to [6 x i8*]*
  %35 = getelementptr inbounds [6 x i8*], [6 x i8*]* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8** %35, align 16
  %36 = getelementptr inbounds [6 x i8*], [6 x i8*]* %34, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8** %36, align 8
  %37 = getelementptr inbounds [6 x i8*], [6 x i8*]* %34, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8** %37, align 16
  %38 = getelementptr inbounds [6 x i8*], [6 x i8*]* %34, i32 0, i32 3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8** %38, align 8
  %39 = getelementptr inbounds [6 x i8*], [6 x i8*]* %34, i32 0, i32 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8** %39, align 16
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %60, %32
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @LoadLibraryA(i8* %50)
  store i8* %51, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %52 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %56 = call i64 @GetProcAddress(i8* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  store i64 %56, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2, i32 2), align 8
  %57 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %58 = call i64 @GetProcAddress(i8* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  store i64 %58, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2, i32 1), align 8
  br label %63

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %2, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %2, align 4
  br label %40

63:                                               ; preds = %54, %40
  %64 = call i8* @LoadLibraryA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  store i8* %64, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %65 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %69 = call i64 @GetProcAddress(i8* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  store i64 %69, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1, i32 2), align 8
  %70 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %71 = call i64 @GetProcAddress(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  store i64 %71, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1, i32 1), align 8
  br label %72

72:                                               ; preds = %67, %63
  %73 = call i8* @LoadLibraryA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store i8* %73, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  %74 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  %78 = call i64 @GetProcAddress(i8* %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  store i64 %78, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0, i32 1), align 8
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %80, i32* %1, align 4
  br label %81

81:                                               ; preds = %79, %17, %7
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

declare dso_local i8* @LoadLibraryA(i8*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i64 @GetProcAddress(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
