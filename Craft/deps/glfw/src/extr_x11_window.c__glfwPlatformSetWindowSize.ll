; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c__glfwPlatformSetWindowSize.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c__glfwPlatformSetWindowSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i32, i64, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@PMinSize = common dso_local global i32 0, align 4
@PMaxSize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformSetWindowSize(%struct.TYPE_14__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %3
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  %19 = call i32 @_glfwSetVideoMode(i64 %16, i32* %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @_glfw, i32 0, i32 0, i32 2), align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @_glfw, i32 0, i32 0, i32 1), align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %22, %13
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @_glfwPlatformGetVideoMode(i64 %28, %struct.TYPE_16__* %7)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @_glfw, i32 0, i32 0, i32 0), align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @XResizeWindow(i32 %30, i32 %34, i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %25, %22
  br label %83

41:                                               ; preds = %3
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %74, label %46

46:                                               ; preds = %41
  %47 = call %struct.TYPE_15__* (...) @XAllocSizeHints()
  store %struct.TYPE_15__* %47, %struct.TYPE_15__** %8, align 8
  %48 = load i32, i32* @PMinSize, align 4
  %49 = load i32, i32* @PMaxSize, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 3
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @_glfw, i32 0, i32 0, i32 0), align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %71 = call i32 @XSetWMNormalHints(i32 %65, i32 %69, %struct.TYPE_15__* %70)
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %73 = call i32 @XFree(%struct.TYPE_15__* %72)
  br label %74

74:                                               ; preds = %46, %41
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @_glfw, i32 0, i32 0, i32 0), align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @XResizeWindow(i32 %75, i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %74, %40
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @_glfw, i32 0, i32 0, i32 0), align 4
  %85 = call i32 @XFlush(i32 %84)
  ret void
}

declare dso_local i32 @_glfwSetVideoMode(i64, i32*) #1

declare dso_local i32 @_glfwPlatformGetVideoMode(i64, %struct.TYPE_16__*) #1

declare dso_local i32 @XResizeWindow(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @XAllocSizeHints(...) #1

declare dso_local i32 @XSetWMNormalHints(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @XFree(%struct.TYPE_15__*) #1

declare dso_local i32 @XFlush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
