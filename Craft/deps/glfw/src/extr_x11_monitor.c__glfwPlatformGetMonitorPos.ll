; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_monitor.c__glfwPlatformGetMonitorPos.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_monitor.c__glfwPlatformGetMonitorPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@_glfw = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformGetMonitorPos(%struct.TYPE_13__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 2, i32 1), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %3
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 0), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 1), align 4
  %17 = call i32* @XRRGetScreenResourcesCurrent(i32 %15, i32 %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 0), align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_14__* @XRRGetCrtcInfo(i32 %18, i32* %19, i32 %23)
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %8, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %14
  %33 = load i32*, i32** %6, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %32
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %42 = call i32 @XRRFreeCrtcInfo(%struct.TYPE_14__* %41)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @XRRFreeScreenResources(i32* %43)
  br label %45

45:                                               ; preds = %40, %11, %3
  ret void
}

declare dso_local i32* @XRRGetScreenResourcesCurrent(i32, i32) #1

declare dso_local %struct.TYPE_14__* @XRRGetCrtcInfo(i32, i32*, i32) #1

declare dso_local i32 @XRRFreeCrtcInfo(%struct.TYPE_14__*) #1

declare dso_local i32 @XRRFreeScreenResources(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
