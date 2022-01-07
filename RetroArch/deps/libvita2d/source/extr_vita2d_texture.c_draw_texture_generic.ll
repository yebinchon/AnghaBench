; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_draw_texture_generic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_draw_texture_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { float, float, float, float, float }

@_vita2d_context = common dso_local global i32 0, align 4
@SCE_GXM_PRIMITIVE_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@SCE_GXM_INDEX_FORMAT_U16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, float, float)* @draw_texture_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_texture_generic(%struct.TYPE_8__* %0, float %1, float %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %10 = call i64 @vita2d_pool_memalign(i32 80, i32 20)
  %11 = inttoptr i64 %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = call float @vita2d_texture_get_width(%struct.TYPE_8__* %12)
  store float %13, float* %8, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = call float @vita2d_texture_get_height(%struct.TYPE_8__* %14)
  store float %15, float* %9, align 4
  %16 = load float, float* %5, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store float %16, float* %19, align 4
  %20 = load float, float* %6, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store float %20, float* %23, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  store float 5.000000e-01, float* %26, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  store float 0.000000e+00, float* %29, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 4
  store float 0.000000e+00, float* %32, align 4
  %33 = load float, float* %5, align 4
  %34 = load float, float* %8, align 4
  %35 = fadd float %33, %34
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store float %35, float* %38, align 4
  %39 = load float, float* %6, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store float %39, float* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  store float 5.000000e-01, float* %45, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  store float 1.000000e+00, float* %48, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 4
  store float 0.000000e+00, float* %51, align 4
  %52 = load float, float* %5, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store float %52, float* %55, align 4
  %56 = load float, float* %6, align 4
  %57 = load float, float* %9, align 4
  %58 = fadd float %56, %57
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store float %58, float* %61, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store float 5.000000e-01, float* %64, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  store float 0.000000e+00, float* %67, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 4
  store float 1.000000e+00, float* %70, align 4
  %71 = load float, float* %5, align 4
  %72 = load float, float* %8, align 4
  %73 = fadd float %71, %72
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store float %73, float* %76, align 4
  %77 = load float, float* %6, align 4
  %78 = load float, float* %9, align 4
  %79 = fadd float %77, %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 3
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store float %79, float* %82, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 3
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  store float 5.000000e-01, float* %85, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 3
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  store float 1.000000e+00, float* %88, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 3
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  store float 1.000000e+00, float* %91, align 4
  %92 = load i32, i32* @_vita2d_context, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = call i32 @sceGxmSetFragmentTexture(i32 %92, i32 0, i32* %94)
  %96 = load i32, i32* @_vita2d_context, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %98 = call i32 @sceGxmSetVertexStream(i32 %96, i32 0, %struct.TYPE_7__* %97)
  %99 = load i32, i32* @_vita2d_context, align 4
  %100 = load i32, i32* @SCE_GXM_PRIMITIVE_TRIANGLE_STRIP, align 4
  %101 = load i32, i32* @SCE_GXM_INDEX_FORMAT_U16, align 4
  %102 = call i32 (...) @vita2d_get_linear_indices()
  %103 = call i32 @sceGxmDraw(i32 %99, i32 %100, i32 %101, i32 %102, i32 4)
  ret void
}

declare dso_local i64 @vita2d_pool_memalign(i32, i32) #1

declare dso_local float @vita2d_texture_get_width(%struct.TYPE_8__*) #1

declare dso_local float @vita2d_texture_get_height(%struct.TYPE_8__*) #1

declare dso_local i32 @sceGxmSetFragmentTexture(i32, i32, i32*) #1

declare dso_local i32 @sceGxmSetVertexStream(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @sceGxmDraw(i32, i32, i32, i32, i32) #1

declare dso_local i32 @vita2d_get_linear_indices(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
