; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_window.c__glfwInputWindowFocus.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_window.c__glfwInputWindowFocus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64*, i64*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (i32*, i64)* }

@_glfw = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@GLFW_KEY_LAST = common dso_local global i32 0, align 4
@GLFW_PRESS = common dso_local global i64 0, align 8
@GLFW_RELEASE = common dso_local global i32 0, align 4
@GLFW_MOUSE_BUTTON_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwInputWindowFocus(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0), align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32 (i32*, i64)*, i32 (i32*, i64)** %12, align 8
  %14 = icmp ne i32 (i32*, i64)* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32 (i32*, i64)*, i32 (i32*, i64)** %18, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = bitcast %struct.TYPE_8__* %20 to i32*
  %22 = load i64, i64* %4, align 8
  %23 = call i32 %19(i32* %21, i64 %22)
  br label %24

24:                                               ; preds = %15, %8
  br label %89

25:                                               ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0), align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32 (i32*, i64)*, i32 (i32*, i64)** %28, align 8
  %30 = icmp ne i32 (i32*, i64)* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32 (i32*, i64)*, i32 (i32*, i64)** %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = bitcast %struct.TYPE_8__* %36 to i32*
  %38 = load i64, i64* %4, align 8
  %39 = call i32 %35(i32* %37, i64 %38)
  br label %40

40:                                               ; preds = %31, %25
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %61, %40
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @GLFW_KEY_LAST, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @GLFW_PRESS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @GLFW_RELEASE, align 4
  %59 = call i32 @_glfwInputKey(%struct.TYPE_8__* %56, i32 %57, i32 0, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %55, %45
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %41

64:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %85, %64
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @GLFW_MOUSE_BUTTON_LAST, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @GLFW_PRESS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @GLFW_RELEASE, align 4
  %83 = call i32 @_glfwInputMouseClick(%struct.TYPE_8__* %80, i32 %81, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %79, %69
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %65

88:                                               ; preds = %65
  br label %89

89:                                               ; preds = %88, %24
  ret void
}

declare dso_local i32 @_glfwInputKey(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @_glfwInputMouseClick(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
