; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_context.c_glfwExtensionSupported.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_context.c_glfwExtensionSupported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (i32)*, i64 (i32, i32)*, i32 (i32, i32*)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GL_FALSE = common dso_local global i32 0, align 4
@GLFW_NO_CURRENT_CONTEXT = common dso_local global i32 0, align 4
@GLFW_INVALID_VALUE = common dso_local global i32 0, align 4
@GL_EXTENSIONS = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to retrieve extension string\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4
@GL_NUM_EXTENSIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glfwExtensionSupported(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @GL_FALSE, align 4
  %7 = call i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32 %6)
  %8 = call %struct.TYPE_5__* (...) @_glfwPlatformGetCurrentContext()
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @GLFW_NO_CURRENT_CONTEXT, align 4
  %13 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %12, i8* null)
  %14 = load i32, i32* @GL_FALSE, align 4
  store i32 %14, i32* %2, align 4
  br label %47

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %22 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %21, i8* null)
  %23 = load i32, i32* @GL_FALSE, align 4
  store i32 %23, i32* %2, align 4
  br label %47

24:                                               ; preds = %15
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64 (i32)*, i64 (i32)** %26, align 8
  %28 = load i32, i32* @GL_EXTENSIONS, align 4
  %29 = call i64 %27(i32 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %35 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @GL_FALSE, align 4
  store i32 %36, i32* %2, align 4
  br label %47

37:                                               ; preds = %24
  %38 = load i8*, i8** %3, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @_glfwStringInExtensionString(i8* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @GL_TRUE, align 4
  store i32 %43, i32* %2, align 4
  br label %47

44:                                               ; preds = %37
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @_glfwPlatformExtensionSupported(i8* %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %42, %33, %20, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32) #1

declare dso_local %struct.TYPE_5__* @_glfwPlatformGetCurrentContext(...) #1

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i64 @_glfwStringInExtensionString(i8*, i8*) #1

declare dso_local i32 @_glfwPlatformExtensionSupported(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
