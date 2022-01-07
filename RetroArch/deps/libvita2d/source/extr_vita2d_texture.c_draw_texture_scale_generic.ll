; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_draw_texture_scale_generic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_draw_texture_scale_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { float, float, float, float, float }

@_vita2d_context = common dso_local global i32 0, align 4
@SCE_GXM_PRIMITIVE_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@SCE_GXM_INDEX_FORMAT_U16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, float, float, float, float)* @draw_texture_scale_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_texture_scale_generic(%struct.TYPE_8__* %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %14 = call i64 @vita2d_pool_memalign(i32 80, i32 20)
  %15 = inttoptr i64 %14 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %11, align 8
  %16 = load float, float* %9, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = call float @vita2d_texture_get_width(%struct.TYPE_8__* %17)
  %19 = fmul float %16, %18
  store float %19, float* %12, align 4
  %20 = load float, float* %10, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = call float @vita2d_texture_get_height(%struct.TYPE_8__* %21)
  %23 = fmul float %20, %22
  store float %23, float* %13, align 4
  %24 = load float, float* %7, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store float %24, float* %27, align 4
  %28 = load float, float* %8, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store float %28, float* %31, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store float 5.000000e-01, float* %34, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  store float 0.000000e+00, float* %37, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  store float 0.000000e+00, float* %40, align 4
  %41 = load float, float* %7, align 4
  %42 = load float, float* %12, align 4
  %43 = fadd float %41, %42
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store float %43, float* %46, align 4
  %47 = load float, float* %8, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store float %47, float* %50, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  store float 5.000000e-01, float* %53, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  store float 1.000000e+00, float* %56, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  store float 0.000000e+00, float* %59, align 4
  %60 = load float, float* %7, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store float %60, float* %63, align 4
  %64 = load float, float* %8, align 4
  %65 = load float, float* %13, align 4
  %66 = fadd float %64, %65
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store float %66, float* %69, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  store float 5.000000e-01, float* %72, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  store float 0.000000e+00, float* %75, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  store float 1.000000e+00, float* %78, align 4
  %79 = load float, float* %7, align 4
  %80 = load float, float* %12, align 4
  %81 = fadd float %79, %80
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 3
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store float %81, float* %84, align 4
  %85 = load float, float* %8, align 4
  %86 = load float, float* %13, align 4
  %87 = fadd float %85, %86
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 3
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store float %87, float* %90, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 3
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  store float 5.000000e-01, float* %93, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 3
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  store float 1.000000e+00, float* %96, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 3
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  store float 1.000000e+00, float* %99, align 4
  %100 = load i32, i32* @_vita2d_context, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = call i32 @sceGxmSetFragmentTexture(i32 %100, i32 0, i32* %102)
  %104 = load i32, i32* @_vita2d_context, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %106 = call i32 @sceGxmSetVertexStream(i32 %104, i32 0, %struct.TYPE_7__* %105)
  %107 = load i32, i32* @_vita2d_context, align 4
  %108 = load i32, i32* @SCE_GXM_PRIMITIVE_TRIANGLE_STRIP, align 4
  %109 = load i32, i32* @SCE_GXM_INDEX_FORMAT_U16, align 4
  %110 = call i32 (...) @vita2d_get_linear_indices()
  %111 = call i32 @sceGxmDraw(i32 %107, i32 %108, i32 %109, i32 %110, i32 4)
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
