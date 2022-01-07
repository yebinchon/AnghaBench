; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c_enterFullscreenMode.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c_enterFullscreenMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i64, i32, i64, i64, %struct.TYPE_18__, i64, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_15__*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }

@_glfw = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@DontPreferBlanking = common dso_local global i32 0, align 4
@DefaultExposures = common dso_local global i32 0, align 4
@XA_CARDINAL = common dso_local global i32 0, align 4
@PropModeReplace = common dso_local global i32 0, align 4
@RevertToParent = common dso_local global i32 0, align 4
@CurrentTime = common dso_local global i32 0, align 4
@_NET_WM_STATE_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @enterFullscreenMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enterFullscreenMode(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 7, i32 0), align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2), align 8
  %11 = call i32 @XGetScreenSaver(i32 %10, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 7, i32 4), i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 7, i32 3), i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 7, i32 2), i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 7, i32 1))
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2), align 8
  %13 = load i32, i32* @DontPreferBlanking, align 4
  %14 = load i32, i32* @DefaultExposures, align 4
  %15 = call i32 @XSetScreenSaver(i32 %12, i32 0, i32 0, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %9, %1
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 7, i32 0), align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 7, i32 0), align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 2
  %24 = call i32 @_glfwSetVideoMode(%struct.TYPE_15__* %21, i32* %23)
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 6), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %16
  store i64 1, i64* %3, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2), align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 6), align 8
  %34 = load i32, i32* @XA_CARDINAL, align 4
  %35 = load i32, i32* @PropModeReplace, align 4
  %36 = bitcast i64* %3 to i8*
  %37 = call i32 @XChangeProperty(i32 %28, i32 %32, i64 %33, i32 %34, i32 32, i32 %35, i8* %36, i32 1)
  br label %38

38:                                               ; preds = %27, %16
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = call i32 @_glfwPlatformGetMonitorPos(%struct.TYPE_15__* %41, i32* %4, i32* %5)
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = call i32 @_glfwPlatformGetVideoMode(%struct.TYPE_15__* %45, %struct.TYPE_23__* %6)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2), align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @XMoveResizeWindow(i32 %47, i32 %51, i32 %52, i32 %53, i32 %55, i32 %57)
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %38
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 4), align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %61
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 4), align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @sendEventToWM(%struct.TYPE_22__* %65, i64 %66, i32 %72, i32 %78, i32 %84, i32 %90, i32 0)
  br label %92

92:                                               ; preds = %64, %61, %38
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 3), align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 3), align 8
  %98 = call i32 @sendEventToWM(%struct.TYPE_22__* %96, i64 %97, i32 1, i32 0, i32 0, i32 0, i32 0)
  br label %114

99:                                               ; preds = %92
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2), align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @XRaiseWindow(i32 %100, i32 %104)
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2), align 8
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @RevertToParent, align 4
  %112 = load i32, i32* @CurrentTime, align 4
  %113 = call i32 @XSetInputFocus(i32 %106, i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %99, %95
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1), align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %122 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1), align 8
  %123 = load i32, i32* @_NET_WM_STATE_ADD, align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 8
  %125 = call i32 @sendEventToWM(%struct.TYPE_22__* %121, i64 %122, i32 %123, i32 %124, i32 0, i32 1, i32 0)
  br label %126

126:                                              ; preds = %120, %117, %114
  ret void
}

declare dso_local i32 @XGetScreenSaver(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @XSetScreenSaver(i32, i32, i32, i32, i32) #1

declare dso_local i32 @_glfwSetVideoMode(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @XChangeProperty(i32, i32, i64, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @_glfwPlatformGetMonitorPos(%struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @_glfwPlatformGetVideoMode(%struct.TYPE_15__*, %struct.TYPE_23__*) #1

declare dso_local i32 @XMoveResizeWindow(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sendEventToWM(%struct.TYPE_22__*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XRaiseWindow(i32, i32) #1

declare dso_local i32 @XSetInputFocus(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
