; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_gfx_ctx_wl_show_mouse.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_gfx_ctx_wl_show_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.wl_cursor_image** }
%struct.wl_cursor_image = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @gfx_ctx_wl_show_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_ctx_wl_show_mouse(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.wl_cursor_image*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %81

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %67

17:                                               ; preds = %14
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.wl_cursor_image**, %struct.wl_cursor_image*** %22, align 8
  %24 = getelementptr inbounds %struct.wl_cursor_image*, %struct.wl_cursor_image** %23, i64 0
  %25 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %24, align 8
  store %struct.wl_cursor_image* %25, %struct.wl_cursor_image** %6, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %6, align 8
  %38 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %6, align 8
  %41 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wl_pointer_set_cursor(i32 %28, i32 %32, i32* %36, i32 %39, i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %6, align 8
  %49 = call i32 @wl_cursor_image_get_buffer(%struct.wl_cursor_image* %48)
  %50 = call i32 @wl_surface_attach(i32* %47, i32 %49, i32 0, i32 0)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %6, align 8
  %56 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %6, align 8
  %59 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @wl_surface_damage(i32* %54, i32 0, i32 0, i32 %57, i32 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @wl_surface_commit(i32* %65)
  br label %76

67:                                               ; preds = %14
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wl_pointer_set_cursor(i32 %70, i32 %74, i32* null, i32 0, i32 0)
  br label %76

76:                                               ; preds = %67, %17
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %13
  ret void
}

declare dso_local i32 @wl_pointer_set_cursor(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @wl_surface_attach(i32*, i32, i32, i32) #1

declare dso_local i32 @wl_cursor_image_get_buffer(%struct.wl_cursor_image*) #1

declare dso_local i32 @wl_surface_damage(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @wl_surface_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
