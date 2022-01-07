; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_window.c__glfwPlatformSetCursor.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_window.c__glfwPlatformSetCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_14__*, %struct.wl_surface* }
%struct.TYPE_11__ = type { %struct.wl_cursor_image** }
%struct.wl_cursor_image = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, %struct.wl_buffer*, i32, i32 }
%struct.wl_buffer = type { i32 }
%struct.wl_surface = type { i32 }

@_glfw = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@GLFW_CURSOR_NORMAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformSetCursor(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.wl_buffer*, align 8
  %6 = alloca %struct.wl_cursor_image*, align 8
  %7 = alloca %struct.wl_surface*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %8 = load %struct.wl_surface*, %struct.wl_surface** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 4), align 8
  store %struct.wl_surface* %8, %struct.wl_surface** %7, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1), align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %101

12:                                               ; preds = %2
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %16, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 3), align 8
  %19 = icmp ne %struct.TYPE_14__* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %101

21:                                               ; preds = %12
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GLFW_CURSOR_NORMAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %97

27:                                               ; preds = %21
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = icmp eq %struct.TYPE_15__* %28, null
  br i1 %29, label %30, label %65

30:                                               ; preds = %27
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2), align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.wl_cursor_image**, %struct.wl_cursor_image*** %32, align 8
  %34 = getelementptr inbounds %struct.wl_cursor_image*, %struct.wl_cursor_image** %33, i64 0
  %35 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %34, align 8
  store %struct.wl_cursor_image* %35, %struct.wl_cursor_image** %6, align 8
  %36 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %6, align 8
  %37 = call %struct.wl_buffer* @wl_cursor_image_get_buffer(%struct.wl_cursor_image* %36)
  store %struct.wl_buffer* %37, %struct.wl_buffer** %5, align 8
  %38 = load %struct.wl_buffer*, %struct.wl_buffer** %5, align 8
  %39 = icmp ne %struct.wl_buffer* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  br label %101

41:                                               ; preds = %30
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1), align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 8
  %44 = load %struct.wl_surface*, %struct.wl_surface** %7, align 8
  %45 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %6, align 8
  %46 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %6, align 8
  %49 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @wl_pointer_set_cursor(i32 %42, i32 %43, %struct.wl_surface* %44, i32 %47, i32 %50)
  %52 = load %struct.wl_surface*, %struct.wl_surface** %7, align 8
  %53 = load %struct.wl_buffer*, %struct.wl_buffer** %5, align 8
  %54 = call i32 @wl_surface_attach(%struct.wl_surface* %52, %struct.wl_buffer* %53, i32 0, i32 0)
  %55 = load %struct.wl_surface*, %struct.wl_surface** %7, align 8
  %56 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %6, align 8
  %57 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %6, align 8
  %60 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @wl_surface_damage(%struct.wl_surface* %55, i32 0, i32 0, i32 %58, i32 %61)
  %63 = load %struct.wl_surface*, %struct.wl_surface** %7, align 8
  %64 = call i32 @wl_surface_commit(%struct.wl_surface* %63)
  br label %96

65:                                               ; preds = %27
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1), align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 8
  %68 = load %struct.wl_surface*, %struct.wl_surface** %7, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @wl_pointer_set_cursor(i32 %66, i32 %67, %struct.wl_surface* %68, i32 %72, i32 %76)
  %78 = load %struct.wl_surface*, %struct.wl_surface** %7, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load %struct.wl_buffer*, %struct.wl_buffer** %81, align 8
  %83 = call i32 @wl_surface_attach(%struct.wl_surface* %78, %struct.wl_buffer* %82, i32 0, i32 0)
  %84 = load %struct.wl_surface*, %struct.wl_surface** %7, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @wl_surface_damage(%struct.wl_surface* %84, i32 0, i32 0, i32 %88, i32 %92)
  %94 = load %struct.wl_surface*, %struct.wl_surface** %7, align 8
  %95 = call i32 @wl_surface_commit(%struct.wl_surface* %94)
  br label %96

96:                                               ; preds = %65, %41
  br label %101

97:                                               ; preds = %21
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1), align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 8
  %100 = call i32 @wl_pointer_set_cursor(i32 %98, i32 %99, %struct.wl_surface* null, i32 0, i32 0)
  br label %101

101:                                              ; preds = %11, %20, %40, %97, %96
  ret void
}

declare dso_local %struct.wl_buffer* @wl_cursor_image_get_buffer(%struct.wl_cursor_image*) #1

declare dso_local i32 @wl_pointer_set_cursor(i32, i32, %struct.wl_surface*, i32, i32) #1

declare dso_local i32 @wl_surface_attach(%struct.wl_surface*, %struct.wl_buffer*, i32, i32) #1

declare dso_local i32 @wl_surface_damage(%struct.wl_surface*, i32, i32, i32, i32) #1

declare dso_local i32 @wl_surface_commit(%struct.wl_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
