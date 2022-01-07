; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_vita2d_draw_array_textured.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_vita2d_draw_array_textured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@_vita2d_context = common dso_local global i32 0, align 4
@SCE_GXM_POLYGON_MODE_TRIANGLE_FILL = common dso_local global i32 0, align 4
@SCE_GXM_INDEX_FORMAT_U16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vita2d_draw_array_textured(%struct.TYPE_3__* %0, i32 %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = call i32 (...) @set_texture_tint_program()
  %12 = call i32 (...) @set_texture_wvp_uniform()
  %13 = load i32, i32* %10, align 4
  %14 = call i32 @set_texture_tint_color_uniform(i32 %13)
  %15 = load i32, i32* @_vita2d_context, align 4
  %16 = load i32, i32* @SCE_GXM_POLYGON_MODE_TRIANGLE_FILL, align 4
  %17 = call i32 @sceGxmSetBackPolygonMode(i32 %15, i32 %16)
  %18 = load i32, i32* @_vita2d_context, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @sceGxmSetFragmentTexture(i32 %18, i32 0, i32* %20)
  %22 = load i32, i32* @_vita2d_context, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @sceGxmSetVertexStream(i32 %22, i32 0, i32* %23)
  %25 = load i32, i32* @_vita2d_context, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SCE_GXM_INDEX_FORMAT_U16, align 4
  %28 = call i32 (...) @vita2d_get_linear_indices()
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @sceGxmDraw(i32 %25, i32 %26, i32 %27, i32 %28, i64 %29)
  ret void
}

declare dso_local i32 @set_texture_tint_program(...) #1

declare dso_local i32 @set_texture_wvp_uniform(...) #1

declare dso_local i32 @set_texture_tint_color_uniform(i32) #1

declare dso_local i32 @sceGxmSetBackPolygonMode(i32, i32) #1

declare dso_local i32 @sceGxmSetFragmentTexture(i32, i32, i32*) #1

declare dso_local i32 @sceGxmSetVertexStream(i32, i32, i32*) #1

declare dso_local i32 @sceGxmDraw(i32, i32, i32, i32, i64) #1

declare dso_local i32 @vita2d_get_linear_indices(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
