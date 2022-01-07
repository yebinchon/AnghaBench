; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_init.c_keyboardHandleKeymap.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_init.c_keyboardHandleKeymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.xkb_keymap*, %struct.xkb_state*, i32 }
%struct.xkb_keymap = type { i32 }
%struct.xkb_state = type { i32 }
%struct.wl_keyboard = type { i32 }

@WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1 = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@_glfw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@XKB_KEYMAP_FORMAT_TEXT_V1 = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Wayland: Failed to compile keymap\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Wayland: Failed to create XKB state\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Control\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Mod1\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Shift\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Mod4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_keyboard*, i64, i32, i64)* @keyboardHandleKeymap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyboardHandleKeymap(i8* %0, %struct.wl_keyboard* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wl_keyboard*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.xkb_keymap*, align 8
  %12 = alloca %struct.xkb_state*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.wl_keyboard* %1, %struct.wl_keyboard** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @close(i32 %18)
  br label %76

20:                                               ; preds = %5
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* @PROT_READ, align 4
  %23 = load i32, i32* @MAP_SHARED, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i8* @mmap(i32* null, i64 %21, i32 %22, i32 %23, i32 %24, i32 0)
  store i8* %25, i8** %13, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load i8*, i8** @MAP_FAILED, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @close(i32 %30)
  br label %76

32:                                               ; preds = %20
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 6), align 8
  %34 = load i8*, i8** %13, align 8
  %35 = load i32, i32* @XKB_KEYMAP_FORMAT_TEXT_V1, align 4
  %36 = call %struct.xkb_keymap* @xkb_map_new_from_string(i32 %33, i8* %34, i32 %35, i32 0)
  store %struct.xkb_keymap* %36, %struct.xkb_keymap** %11, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @munmap(i8* %37, i64 %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @close(i32 %40)
  %42 = load %struct.xkb_keymap*, %struct.xkb_keymap** %11, align 8
  %43 = icmp ne %struct.xkb_keymap* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %46 = call i32 @_glfwInputError(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %76

47:                                               ; preds = %32
  %48 = load %struct.xkb_keymap*, %struct.xkb_keymap** %11, align 8
  %49 = call %struct.xkb_state* @xkb_state_new(%struct.xkb_keymap* %48)
  store %struct.xkb_state* %49, %struct.xkb_state** %12, align 8
  %50 = load %struct.xkb_state*, %struct.xkb_state** %12, align 8
  %51 = icmp ne %struct.xkb_state* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %54 = call i32 @_glfwInputError(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.xkb_keymap*, %struct.xkb_keymap** %11, align 8
  %56 = call i32 @xkb_map_unref(%struct.xkb_keymap* %55)
  br label %76

57:                                               ; preds = %47
  %58 = load %struct.xkb_keymap*, %struct.xkb_keymap** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 4), align 8
  %59 = call i32 @xkb_keymap_unref(%struct.xkb_keymap* %58)
  %60 = load %struct.xkb_state*, %struct.xkb_state** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 5), align 8
  %61 = call i32 @xkb_state_unref(%struct.xkb_state* %60)
  %62 = load %struct.xkb_keymap*, %struct.xkb_keymap** %11, align 8
  store %struct.xkb_keymap* %62, %struct.xkb_keymap** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 4), align 8
  %63 = load %struct.xkb_state*, %struct.xkb_state** %12, align 8
  store %struct.xkb_state* %63, %struct.xkb_state** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 5), align 8
  %64 = load %struct.xkb_keymap*, %struct.xkb_keymap** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 4), align 8
  %65 = call i32 @xkb_map_mod_get_index(%struct.xkb_keymap* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %66 = shl i32 1, %65
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  %67 = load %struct.xkb_keymap*, %struct.xkb_keymap** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 4), align 8
  %68 = call i32 @xkb_map_mod_get_index(%struct.xkb_keymap* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %69 = shl i32 1, %68
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 1), align 4
  %70 = load %struct.xkb_keymap*, %struct.xkb_keymap** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 4), align 8
  %71 = call i32 @xkb_map_mod_get_index(%struct.xkb_keymap* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %72 = shl i32 1, %71
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 2), align 8
  %73 = load %struct.xkb_keymap*, %struct.xkb_keymap** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 4), align 8
  %74 = call i32 @xkb_map_mod_get_index(%struct.xkb_keymap* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %75 = shl i32 1, %74
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 3), align 4
  br label %76

76:                                               ; preds = %57, %52, %44, %29, %17
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local %struct.xkb_keymap* @xkb_map_new_from_string(i32, i8*, i32, i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local %struct.xkb_state* @xkb_state_new(%struct.xkb_keymap*) #1

declare dso_local i32 @xkb_map_unref(%struct.xkb_keymap*) #1

declare dso_local i32 @xkb_keymap_unref(%struct.xkb_keymap*) #1

declare dso_local i32 @xkb_state_unref(%struct.xkb_state*) #1

declare dso_local i32 @xkb_map_mod_get_index(%struct.xkb_keymap*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
