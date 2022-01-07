; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c_acquireMonitor.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c_acquireMonitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__*, %struct.TYPE_17__, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32, i32 }

@_glfw = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@DontPreferBlanking = common dso_local global i32 0, align 4
@DefaultExposures = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @acquireMonitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquireMonitor(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %11 = call i32 @XGetScreenSaver(i32 %10, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1, i32 4), i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1, i32 3), i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1, i32 2), i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1, i32 1))
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %13 = load i32, i32* @DontPreferBlanking, align 4
  %14 = load i32, i32* @DefaultExposures, align 4
  %15 = call i32 @XSetScreenSaver(i32 %12, i32 0, i32 0, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1, i32 0), align 8
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  %32 = call i32 @_glfwSetVideoModeX11(%struct.TYPE_20__* %29, i32* %31)
  store i32 %32, i32* %3, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %26
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = call i32 @_glfwPlatformGetMonitorPos(%struct.TYPE_20__* %41, i32* %4, i32* %5)
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %44, align 8
  %46 = call i32 @_glfwPlatformGetVideoMode(%struct.TYPE_20__* %45, %struct.TYPE_19__* %6)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @XMoveResizeWindow(i32 %47, i32 %51, i32 %52, i32 %53, i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %38, %26
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %64 = call i32 @_glfwInputMonitorWindowChange(%struct.TYPE_20__* %62, %struct.TYPE_18__* %63)
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @XGetScreenSaver(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @XSetScreenSaver(i32, i32, i32, i32, i32) #1

declare dso_local i32 @_glfwSetVideoModeX11(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @_glfwPlatformGetMonitorPos(%struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i32 @_glfwPlatformGetVideoMode(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @XMoveResizeWindow(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_glfwInputMonitorWindowChange(%struct.TYPE_20__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
