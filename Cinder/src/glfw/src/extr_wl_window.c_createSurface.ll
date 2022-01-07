; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_window.c_createSurface.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_window.c_createSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@_glfw = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@GLFW_FALSE = common dso_local global i32 0, align 4
@surfaceListener = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @createSurface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @createSurface(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 0), align 4
  %7 = call i32 @wl_compositor_create_surface(i32 %6)
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 4
  store i32 %7, i32* %10, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %17, i32* %3, align 4
  br label %71

18:                                               ; preds = %2
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = call i32 @wl_surface_add_listener(i32 %22, i32* @surfaceListener, %struct.TYPE_15__* %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = call i32 @wl_surface_set_user_data(i32 %28, %struct.TYPE_15__* %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wl_egl_window_create(i32 %34, i32 %37, i32 %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %18
  %51 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %51, i32* %3, align 4
  br label %71

52:                                               ; preds = %18
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = call i32 @setOpaqueRegion(%struct.TYPE_15__* %68)
  %70 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %52, %50, %16
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @wl_compositor_create_surface(i32) #1

declare dso_local i32 @wl_surface_add_listener(i32, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @wl_surface_set_user_data(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @wl_egl_window_create(i32, i32, i32) #1

declare dso_local i32 @setOpaqueRegion(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
