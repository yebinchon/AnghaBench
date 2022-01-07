; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_monitor.c__glfwRestoreVideoMode.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_monitor.c__glfwRestoreVideoMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@None = common dso_local global i32 0, align 4
@CurrentTime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwRestoreVideoMode(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 2, i32 1), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %64

7:                                                ; preds = %1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %64, label %10

10:                                               ; preds = %7
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @None, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %64

18:                                               ; preds = %10
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 0), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 1), align 4
  %21 = call i32* @XRRGetScreenResources(i32 %19, i32 %20)
  store i32* %21, i32** %3, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 0), align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_14__* @XRRGetCrtcInfo(i32 %22, i32* %23, i32 %27)
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %4, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 0), align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CurrentTime, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @XRRSetCrtcConfig(i32 %29, i32* %30, i32 %34, i32 %35, i32 %38, i32 %41, i32 %45, i32 %48, i32 %51, i32 %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = call i32 @XRRFreeCrtcInfo(%struct.TYPE_14__* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @XRRFreeScreenResources(i32* %58)
  %60 = load i32, i32* @None, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %17, %18, %7, %1
  ret void
}

declare dso_local i32* @XRRGetScreenResources(i32, i32) #1

declare dso_local %struct.TYPE_14__* @XRRGetCrtcInfo(i32, i32*, i32) #1

declare dso_local i32 @XRRSetCrtcConfig(i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XRRFreeCrtcInfo(%struct.TYPE_14__*) #1

declare dso_local i32 @XRRFreeScreenResources(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
