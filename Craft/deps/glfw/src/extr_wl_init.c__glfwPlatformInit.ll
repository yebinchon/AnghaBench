; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_init.c__glfwPlatformInit.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_init.c__glfwPlatformInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Wayland: Failed to connect to display\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@registryListener = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Wayland: Failed to initialize xkb context\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Wayland: Unable to load default cursor theme\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"left_ptr\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Wayland: Unable to load default left pointer\0A\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformInit() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @wl_display_connect(i32* null)
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 7), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 7), align 8
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %7 = call i32 @_glfwInputError(i32 %6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GL_FALSE, align 4
  store i32 %8, i32* %1, align 4
  br label %62

9:                                                ; preds = %0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 7), align 8
  %11 = call i32 @wl_display_get_registry(i32 %10)
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 10), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 10), align 4
  %13 = call i32 @wl_registry_add_listener(i32 %12, i32* @registryListener, i32* null)
  %14 = call i32 @calloc(i32 4, i32 8)
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 9), align 8
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %15 = call i32 @xkb_context_new(i32 0)
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 8, i32 0), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 8, i32 0), align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %9
  %19 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %20 = call i32 @_glfwInputError(i32 %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @GL_FALSE, align 4
  store i32 %21, i32* %1, align 4
  br label %62

22:                                               ; preds = %9
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 7), align 8
  %24 = call i32 @wl_display_roundtrip(i32 %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 7), align 8
  %26 = call i32 @wl_display_roundtrip(i32 %25)
  %27 = call i32 (...) @_glfwInitContextAPI()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @GL_FALSE, align 4
  store i32 %30, i32* %1, align 4
  br label %62

31:                                               ; preds = %22
  %32 = call i32 (...) @_glfwInitTimer()
  %33 = call i32 (...) @_glfwInitJoysticks()
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 6), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %31
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 5), align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 5), align 8
  %41 = call i32 @wl_cursor_theme_load(i32* null, i32 32, i64 %40)
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 4), align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 4), align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %46 = call i32 @_glfwInputError(i32 %45, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @GL_FALSE, align 4
  store i32 %47, i32* %1, align 4
  br label %62

48:                                               ; preds = %39
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 4), align 8
  %50 = call i32 @wl_cursor_theme_get_cursor(i32 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 3), align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 3), align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %55 = call i32 @_glfwInputError(i32 %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i32, i32* @GL_FALSE, align 4
  store i32 %56, i32* %1, align 4
  br label %62

57:                                               ; preds = %48
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 1), align 4
  %59 = call i32 @wl_compositor_create_surface(i32 %58)
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 2), align 8
  br label %60

60:                                               ; preds = %57, %36, %31
  %61 = load i32, i32* @GL_TRUE, align 4
  store i32 %61, i32* %1, align 4
  br label %62

62:                                               ; preds = %60, %53, %44, %29, %18, %5
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i32 @wl_display_connect(i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @wl_display_get_registry(i32) #1

declare dso_local i32 @wl_registry_add_listener(i32, i32*, i32*) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @xkb_context_new(i32) #1

declare dso_local i32 @wl_display_roundtrip(i32) #1

declare dso_local i32 @_glfwInitContextAPI(...) #1

declare dso_local i32 @_glfwInitTimer(...) #1

declare dso_local i32 @_glfwInitJoysticks(...) #1

declare dso_local i32 @wl_cursor_theme_load(i32*, i32, i64) #1

declare dso_local i32 @wl_cursor_theme_get_cursor(i32, i8*) #1

declare dso_local i32 @wl_compositor_create_surface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
