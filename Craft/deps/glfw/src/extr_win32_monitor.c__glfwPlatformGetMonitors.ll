; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_win32_monitor.c__glfwPlatformGetMonitors.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_win32_monitor.c__glfwPlatformGetMonitors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32*, i32 }

@DISPLAY_DEVICE_ACTIVE = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Win32: Failed to convert string to UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [8 x i32] [i32 68, i32 73, i32 83, i32 80, i32 76, i32 65, i32 89, i32 0], align 4
@HORZSIZE = common dso_local global i32 0, align 4
@VERTSIZE = common dso_local global i32 0, align 4
@DISPLAY_DEVICE_MODESPRUNED = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@DISPLAY_DEVICE_PRIMARY_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__** @_glfwPlatformGetMonitors(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.TYPE_13__** null, %struct.TYPE_13__*** %4, align 8
  %12 = load i32*, i32** %2, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %141, %1
  %14 = call i32 @ZeroMemory(%struct.TYPE_14__* %7, i32 24)
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i32 24, i32* %15, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @EnumDisplayDevicesW(i32* null, i64 %16, %struct.TYPE_14__* %7, i32 0)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %144

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DISPLAY_DEVICE_ACTIVE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %141

27:                                               ; preds = %20
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %137, %27
  %29 = call i32 @ZeroMemory(%struct.TYPE_14__* %8, i32 24)
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  store i32 24, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @EnumDisplayDevicesW(i32* %32, i64 %33, %struct.TYPE_14__* %8, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %140

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @_glfwCreateUTF8FromWideString(i32 %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %45 = call i32 @_glfwInputError(i32 %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %137

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @CreateDCW(i8* bitcast ([8 x i32]* @.str.1 to i8*), i32* %48, i32* null, i32* null)
  store i32 %49, i32* %11, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @HORZSIZE, align 4
  %53 = call i32 @GetDeviceCaps(i32 %51, i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @VERTSIZE, align 4
  %56 = call i32 @GetDeviceCaps(i32 %54, i32 %55)
  %57 = call %struct.TYPE_13__* @_glfwAllocMonitor(i8* %50, i32 %53, i32 %56)
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @DeleteDC(i32 %58)
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @free(i8* %60)
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DISPLAY_DEVICE_MODESPRUNED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %46
  %68 = load i32, i32* @GL_TRUE, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 4
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %46
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @wcscpy(i32 %76, i32* %78)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @wcscpy(i32 %83, i32* %85)
  %87 = load i32, i32* @CP_UTF8, align 4
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @WideCharToMultiByte(i32 %87, i32 0, i32* %89, i32 -1, i32 %93, i32 4, i32* null, i32* null)
  %95 = load i32, i32* @CP_UTF8, align 4
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @WideCharToMultiByte(i32 %95, i32 0, i32* %97, i32 -1, i32 %101, i32 4, i32* null, i32* null)
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  %105 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 8, %107
  %109 = trunc i64 %108 to i32
  %110 = call %struct.TYPE_13__** @realloc(%struct.TYPE_13__** %105, i32 %109)
  store %struct.TYPE_13__** %110, %struct.TYPE_13__*** %4, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %112 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %112, i64 %115
  store %struct.TYPE_13__* %111, %struct.TYPE_13__** %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @DISPLAY_DEVICE_PRIMARY_DEVICE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %72
  %123 = load i64, i64* %6, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %126, i64 0
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %129, i64 %132
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = call i32 @_GLFW_SWAP_POINTERS(%struct.TYPE_13__* %128, %struct.TYPE_13__* %134)
  br label %136

136:                                              ; preds = %125, %122, %72
  br label %137

137:                                              ; preds = %136, %43
  %138 = load i64, i64* %6, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %6, align 8
  br label %28

140:                                              ; preds = %36
  br label %141

141:                                              ; preds = %140, %26
  %142 = load i64, i64* %5, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %5, align 8
  br label %13

144:                                              ; preds = %19
  %145 = load i32, i32* %3, align 4
  %146 = load i32*, i32** %2, align 8
  store i32 %145, i32* %146, align 4
  %147 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  ret %struct.TYPE_13__** %147
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @EnumDisplayDevicesW(i32*, i64, %struct.TYPE_14__*, i32) #1

declare dso_local i8* @_glfwCreateUTF8FromWideString(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @CreateDCW(i8*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @_glfwAllocMonitor(i8*, i32, i32) #1

declare dso_local i32 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @wcscpy(i32, i32*) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_13__** @realloc(%struct.TYPE_13__**, i32) #1

declare dso_local i32 @_GLFW_SWAP_POINTERS(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
