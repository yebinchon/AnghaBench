; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_init.c__glfwPlatformInit.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_init.c__glfwPlatformInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Wayland: Failed to connect to display\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@registryListener = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Wayland: Failed to initialize xkb context\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Wayland: Unable to load default cursor theme\0A\00", align 1
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformInit() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @wl_display_connect(i32* null)
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 6), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 6), align 8
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %7 = call i32 @_glfwInputError(i32 %6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %8, i32* %1, align 4
  br label %58

9:                                                ; preds = %0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 6), align 8
  %11 = call i32 @wl_display_get_registry(i32 %10)
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 9), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 9), align 4
  %13 = call i32 @wl_registry_add_listener(i32 %12, i32* @registryListener, i32* null)
  %14 = call i32 @calloc(i32 4, i32 8)
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 8), align 8
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %15 = call i32 (...) @createKeyTables()
  %16 = call i32 @xkb_context_new(i32 0)
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 7, i32 0), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 7, i32 0), align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %9
  %20 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %21 = call i32 @_glfwInputError(i32 %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %22, i32* %1, align 4
  br label %58

23:                                               ; preds = %9
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 6), align 8
  %25 = call i32 @wl_display_roundtrip(i32 %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 6), align 8
  %27 = call i32 @wl_display_roundtrip(i32 %26)
  %28 = call i32 (...) @_glfwInitThreadLocalStoragePOSIX()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %31, i32* %1, align 4
  br label %58

32:                                               ; preds = %23
  %33 = call i32 (...) @_glfwInitJoysticksLinux()
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %36, i32* %1, align 4
  br label %58

37:                                               ; preds = %32
  %38 = call i32 (...) @_glfwInitTimerPOSIX()
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 5), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 4), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 4), align 8
  %46 = call i32 @wl_cursor_theme_load(i32* null, i32 32, i64 %45)
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 3), align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 3), align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %51 = call i32 @_glfwInputError(i32 %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %52, i32* %1, align 4
  br label %58

53:                                               ; preds = %44
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 1), align 4
  %55 = call i32 @wl_compositor_create_surface(i32 %54)
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 2), align 8
  br label %56

56:                                               ; preds = %53, %41, %37
  %57 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %56, %49, %35, %30, %19, %5
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

declare dso_local i32 @wl_display_connect(i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @wl_display_get_registry(i32) #1

declare dso_local i32 @wl_registry_add_listener(i32, i32*, i32*) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @createKeyTables(...) #1

declare dso_local i32 @xkb_context_new(i32) #1

declare dso_local i32 @wl_display_roundtrip(i32) #1

declare dso_local i32 @_glfwInitThreadLocalStoragePOSIX(...) #1

declare dso_local i32 @_glfwInitJoysticksLinux(...) #1

declare dso_local i32 @_glfwInitTimerPOSIX(...) #1

declare dso_local i32 @wl_cursor_theme_load(i32*, i32, i64) #1

declare dso_local i32 @wl_compositor_create_surface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
