; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_window.c_checkScaleChange.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_window.c_checkScaleChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@_glfw = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @checkScaleChange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkScaleChange(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store i32 1, i32* %5, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %81

11:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %37, %11
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %12
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %23, i64 %25
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %19
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %12

40:                                               ; preds = %12
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %41, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 %55, %56
  store i32 %57, i32* %3, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = mul nsw i32 %61, %62
  store i32 %63, i32* %4, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @wl_surface_set_buffer_scale(i32 %67, i32 %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @wl_egl_window_resize(i32 %73, i32 %74, i32 %75, i32 0, i32 0)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @_glfwInputFramebufferSize(%struct.TYPE_13__* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %10, %47, %40
  ret void
}

declare dso_local i32 @wl_surface_set_buffer_scale(i32, i32) #1

declare dso_local i32 @wl_egl_window_resize(i32, i32, i32, i32, i32) #1

declare dso_local i32 @_glfwInputFramebufferSize(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
