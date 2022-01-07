; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_linux_joystick.c_pollJoystickEvents.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_linux_joystick.c_pollJoystickEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { float*, float*, float*, float*, i32, i32 }
%struct.js_event = type { i64, i64, i32 }

@GLFW_FALSE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@_glfw = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@GLFW_DISCONNECTED = common dso_local global i32 0, align 4
@JS_EVENT_INIT = common dso_local global i32 0, align 4
@JS_EVENT_AXIS = common dso_local global i32 0, align 4
@JS_EVENT_BUTTON = common dso_local global i32 0, align 4
@GLFW_PRESS = common dso_local global float 0.000000e+00, align 4
@GLFW_RELEASE = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @pollJoystickEvents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pollJoystickEvents(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.js_event, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = call i32 (...) @_glfwPollJoystickEvents()
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %11, i32* %2, align 4
  br label %98

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %93, %12
  store i64 0, i64* @errno, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @read(i32 %16, %struct.js_event* %4, i32 24)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %13
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @ENODEV, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %19
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load float*, float** %25, align 8
  %27 = call i32 @free(float* %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load float*, float** %29, align 8
  %31 = call i32 @free(float* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load float*, float** %33, align 8
  %35 = call i32 @free(float* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = load float*, float** %37, align 8
  %39 = call i32 @free(float* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = call i32 @memset(%struct.TYPE_8__* %40, i32 0, i32 40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 0), align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 0, %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %45
  %47 = load i32, i32* @GLFW_DISCONNECTED, align 4
  %48 = call i32 @_glfwInputJoystickChange(%struct.TYPE_8__* %46, i32 %47)
  br label %49

49:                                               ; preds = %23, %19
  br label %94

50:                                               ; preds = %13
  %51 = load i32, i32* @JS_EVENT_INIT, align 4
  %52 = xor i32 %51, -1
  %53 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %52
  store i32 %55, i32* %53, align 8
  %56 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @JS_EVENT_AXIS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = sitofp i64 %62 to float
  %64 = fdiv float %63, 3.276700e+04
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load float*, float** %66, align 8
  %68 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds float, float* %67, i64 %69
  store float %64, float* %70, align 4
  br label %93

71:                                               ; preds = %50
  %72 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @JS_EVENT_BUTTON, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load float, float* @GLFW_PRESS, align 4
  br label %84

82:                                               ; preds = %76
  %83 = load float, float* @GLFW_RELEASE, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi float [ %81, %80 ], [ %83, %82 ]
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load float*, float** %87, align 8
  %89 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds float, float* %88, i64 %90
  store float %85, float* %91, align 4
  br label %92

92:                                               ; preds = %84, %71
  br label %93

93:                                               ; preds = %92, %60
  br label %13

94:                                               ; preds = %49
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %10
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @_glfwPollJoystickEvents(...) #1

declare dso_local i64 @read(i32, %struct.js_event*, i32) #1

declare dso_local i32 @free(float*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @_glfwInputJoystickChange(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
