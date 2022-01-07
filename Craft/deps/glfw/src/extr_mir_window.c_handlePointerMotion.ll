; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_mir_window.c_handlePointerMotion.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_mir_window.c_handlePointerMotion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@mir_pointer_axis_x = common dso_local global i32 0, align 4
@mir_pointer_axis_y = common dso_local global i32 0, align 4
@mir_pointer_axis_hscroll = common dso_local global i32 0, align 4
@mir_pointer_axis_vscroll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @handlePointerMotion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handlePointerMotion(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @mir_pointer_axis_x, align 4
  %19 = call i32 @mir_pointer_event_axis_value(i32* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @mir_pointer_axis_y, align 4
  %22 = call i32 @mir_pointer_event_axis_value(i32* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @mir_pointer_axis_hscroll, align 4
  %25 = call i32 @mir_pointer_event_axis_value(i32* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @mir_pointer_axis_vscroll, align 4
  %28 = call i32 @mir_pointer_event_axis_value(i32* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @_glfwInputCursorMotion(%struct.TYPE_5__* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44, %41
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @_glfwInputScroll(%struct.TYPE_5__* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %44
  ret void
}

declare dso_local i32 @mir_pointer_event_axis_value(i32*, i32) #1

declare dso_local i32 @_glfwInputCursorMotion(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @_glfwInputScroll(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
