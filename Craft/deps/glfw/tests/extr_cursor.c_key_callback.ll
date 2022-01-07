; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_cursor.c_key_callback.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_cursor.c_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLFW_PRESS = common dso_local global i32 0, align 4
@animate_cursor = common dso_local global i32 0, align 4
@GLFW_CURSOR = common dso_local global i32 0, align 4
@GLFW_CURSOR_DISABLED = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@GLFW_CURSOR_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"(( cursor is normal ))\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"(( cursor is disabled ))\0A\00", align 1
@GLFW_CURSOR_HIDDEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"(( cursor is hidden ))\0A\00", align 1
@swap_interval = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"(( swap interval: %i ))\0A\00", align 1
@wait_events = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"(( %sing for events ))\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@track_cursor = common dso_local global i32 0, align 4
@standard_cursors = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @key_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_callback(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @GLFW_PRESS, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %118

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %118 [
    i32 135, label %17
    i32 133, label %28
    i32 131, label %39
    i32 134, label %45
    i32 132, label %51
    i32 130, label %57
    i32 128, label %64
    i32 129, label %74
    i32 142, label %79
    i32 141, label %82
    i32 140, label %88
    i32 139, label %94
    i32 138, label %100
    i32 137, label %106
    i32 136, label %112
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @animate_cursor, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* @animate_cursor, align 4
  %22 = load i32, i32* @animate_cursor, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @glfwSetCursor(i32* %25, i32* null)
  br label %27

27:                                               ; preds = %24, %17
  br label %118

28:                                               ; preds = %15
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @GLFW_CURSOR, align 4
  %31 = call i32 @glfwGetInputMode(i32* %29, i32 %30)
  %32 = load i32, i32* @GLFW_CURSOR_DISABLED, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @GL_TRUE, align 4
  %37 = call i32 @glfwSetWindowShouldClose(i32* %35, i32 %36)
  br label %118

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %15, %38
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @GLFW_CURSOR, align 4
  %42 = load i32, i32* @GLFW_CURSOR_NORMAL, align 4
  %43 = call i32 @glfwSetInputMode(i32* %40, i32 %41, i32 %42)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %118

45:                                               ; preds = %15
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @GLFW_CURSOR, align 4
  %48 = load i32, i32* @GLFW_CURSOR_DISABLED, align 4
  %49 = call i32 @glfwSetInputMode(i32* %46, i32 %47, i32 %48)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %118

51:                                               ; preds = %15
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @GLFW_CURSOR, align 4
  %54 = load i32, i32* @GLFW_CURSOR_HIDDEN, align 4
  %55 = call i32 @glfwSetInputMode(i32* %52, i32 %53, i32 %54)
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %118

57:                                               ; preds = %15
  %58 = load i32, i32* @swap_interval, align 4
  %59 = sub nsw i32 1, %58
  store i32 %59, i32* @swap_interval, align 4
  %60 = load i32, i32* @swap_interval, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @swap_interval, align 4
  %63 = call i32 @glfwSwapInterval(i32 %62)
  br label %118

64:                                               ; preds = %15
  %65 = load i32, i32* @wait_events, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* @wait_events, align 4
  %69 = load i32, i32* @wait_events, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  br label %118

74:                                               ; preds = %15
  %75 = load i32, i32* @track_cursor, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  store i32 %78, i32* @track_cursor, align 4
  br label %118

79:                                               ; preds = %15
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @glfwSetCursor(i32* %80, i32* null)
  br label %118

82:                                               ; preds = %15
  %83 = load i32*, i32** %6, align 8
  %84 = load i32**, i32*** @standard_cursors, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @glfwSetCursor(i32* %83, i32* %86)
  br label %118

88:                                               ; preds = %15
  %89 = load i32*, i32** %6, align 8
  %90 = load i32**, i32*** @standard_cursors, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @glfwSetCursor(i32* %89, i32* %92)
  br label %118

94:                                               ; preds = %15
  %95 = load i32*, i32** %6, align 8
  %96 = load i32**, i32*** @standard_cursors, align 8
  %97 = getelementptr inbounds i32*, i32** %96, i64 2
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @glfwSetCursor(i32* %95, i32* %98)
  br label %118

100:                                              ; preds = %15
  %101 = load i32*, i32** %6, align 8
  %102 = load i32**, i32*** @standard_cursors, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 3
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @glfwSetCursor(i32* %101, i32* %104)
  br label %118

106:                                              ; preds = %15
  %107 = load i32*, i32** %6, align 8
  %108 = load i32**, i32*** @standard_cursors, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 4
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @glfwSetCursor(i32* %107, i32* %110)
  br label %118

112:                                              ; preds = %15
  %113 = load i32*, i32** %6, align 8
  %114 = load i32**, i32*** @standard_cursors, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 5
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @glfwSetCursor(i32* %113, i32* %116)
  br label %118

118:                                              ; preds = %14, %15, %112, %106, %100, %94, %88, %82, %79, %74, %64, %57, %51, %45, %39, %34, %27
  ret void
}

declare dso_local i32 @glfwSetCursor(i32*, i32*) #1

declare dso_local i32 @glfwGetInputMode(i32*, i32) #1

declare dso_local i32 @glfwSetWindowShouldClose(i32*, i32) #1

declare dso_local i32 @glfwSetInputMode(i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
