; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_mir_window.c__glfwPlatformCreateCursor.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_mir_window.c__glfwPlatformCreateCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i32, i32, i8* }
%struct.TYPE_13__ = type { i8*, i32 }

@mir_pixel_format_invalid = common dso_local global i64 0, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Mir: Unable to find a correct pixel format\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@mir_buffer_usage_software = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformCreateCursor(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = call i64 (...) @findValidPixelFormat()
  store i64 %21, i64* %11, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @mir_pixel_format_invalid, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %33 = call i32 @_glfwInputError(i32 %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @GL_FALSE, align 4
  store i32 %34, i32* %5, align 4
  br label %87

35:                                               ; preds = %4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 0), align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* @mir_buffer_usage_software, align 4
  %41 = call i32* @mir_connection_create_buffer_stream_sync(i32 %36, i32 %37, i32 %38, i64 %39, i32 %40)
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @mir_cursor_configuration_from_buffer_stream(i32* %42, i32 %43, i32 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @mir_buffer_stream_get_graphics_region(i32* %49, %struct.TYPE_13__* %20)
  store i32 4, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %12, align 4
  %53 = mul nsw i32 %51, %52
  store i32 %53, i32* %19, align 4
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %14, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %61

61:                                               ; preds = %78, %35
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %61
  %66 = load i8*, i8** %14, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = load i32, i32* %19, align 4
  %69 = call i32 @memcpy(i8* %66, i8* %67, i32 %68)
  %70 = load i32, i32* %17, align 4
  %71 = load i8*, i8** %14, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %14, align 8
  %74 = load i32, i32* %17, align 4
  %75 = load i8*, i8** %15, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %15, align 8
  br label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %16, align 4
  br label %61

81:                                               ; preds = %61
  %82 = load i32*, i32** %10, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  store i32* %82, i32** %85, align 8
  %86 = load i32, i32* @GL_TRUE, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %81, %31
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @findValidPixelFormat(...) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32* @mir_connection_create_buffer_stream_sync(i32, i32, i32, i64, i32) #1

declare dso_local i32 @mir_cursor_configuration_from_buffer_stream(i32*, i32, i32) #1

declare dso_local i32 @mir_buffer_stream_get_graphics_region(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
