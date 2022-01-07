; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c__glfwPlatformSetWindowMonitor.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c__glfwPlatformSetWindowMonitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }

@_glfw = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformSetWindowMonitor(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %19 = icmp eq %struct.TYPE_19__* %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %7
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %22 = icmp ne %struct.TYPE_19__* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %28 = icmp eq %struct.TYPE_18__* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %31 = call i32 @acquireMonitor(%struct.TYPE_18__* %30)
  br label %32

32:                                               ; preds = %29, %23
  br label %44

33:                                               ; preds = %20
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 0), align 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @XMoveResizeWindow(i32 %34, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %33, %32
  br label %95

45:                                               ; preds = %7
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = icmp ne %struct.TYPE_19__* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %52 = call i32 @releaseMonitor(%struct.TYPE_18__* %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %56 = call i32 @_glfwInputWindowMonitorChange(%struct.TYPE_18__* %54, %struct.TYPE_19__* %55)
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @updateNormalHints(%struct.TYPE_18__* %57, i32 %58, i32 %59)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %62 = call i32 @updateWindowMode(%struct.TYPE_18__* %61)
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = icmp ne %struct.TYPE_19__* %65, null
  br i1 %66, label %67, label %81

67:                                               ; preds = %53
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 0), align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @XMapRaised(i32 %68, i32 %72)
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %75 = call i64 @waitForVisibilityNotify(%struct.TYPE_18__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %79 = call i32 @acquireMonitor(%struct.TYPE_18__* %78)
  br label %80

80:                                               ; preds = %77, %67
  br label %92

81:                                               ; preds = %53
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 0), align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @XMoveResizeWindow(i32 %82, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %81, %80
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 0), align 4
  %94 = call i32 @XFlush(i32 %93)
  br label %95

95:                                               ; preds = %92, %44
  ret void
}

declare dso_local i32 @acquireMonitor(%struct.TYPE_18__*) #1

declare dso_local i32 @XMoveResizeWindow(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @releaseMonitor(%struct.TYPE_18__*) #1

declare dso_local i32 @_glfwInputWindowMonitorChange(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @updateNormalHints(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @updateWindowMode(%struct.TYPE_18__*) #1

declare dso_local i32 @XMapRaised(i32, i32) #1

declare dso_local i64 @waitForVisibilityNotify(%struct.TYPE_18__*) #1

declare dso_local i32 @XFlush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
