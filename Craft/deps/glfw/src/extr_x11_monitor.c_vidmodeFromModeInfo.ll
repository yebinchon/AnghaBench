; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_monitor.c_vidmodeFromModeInfo.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_monitor.c_vidmodeFromModeInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }

@RR_Rotate_90 = common dso_local global i64 0, align 8
@RR_Rotate_270 = common dso_local global i64 0, align 8
@_glfw = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_12__*)* @vidmodeFromModeInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vidmodeFromModeInfo(%struct.TYPE_13__* noalias sret %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %5, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @RR_Rotate_90, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RR_Rotate_270, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %11, %3
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 5
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  br label %35

26:                                               ; preds = %11
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 5
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %17
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = call i32 @calculateRefreshRate(%struct.TYPE_11__* %36)
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 4
  %41 = call i32 @DefaultDepth(i32 %39, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 0
  %45 = call i32 @_glfwSplitBPP(i32 %41, i32* %42, i32* %43, i32* %44)
  ret void
}

declare dso_local i32 @calculateRefreshRate(%struct.TYPE_11__*) #1

declare dso_local i32 @_glfwSplitBPP(i32, i32*, i32*, i32*) #1

declare dso_local i32 @DefaultDepth(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
