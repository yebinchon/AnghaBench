; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_draw_texture_part_generic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_draw_texture_part_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { float, float, float, float, float }

@_vita2d_context = common dso_local global i32 0, align 4
@SCE_GXM_PRIMITIVE_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@SCE_GXM_INDEX_FORMAT_U16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, float, float, float, float, float, float)* @draw_texture_part_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_texture_part_generic(%struct.TYPE_8__* %0, float %1, float %2, float %3, float %4, float %5, float %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  %22 = call i64 @vita2d_pool_memalign(i32 80, i32 20)
  %23 = inttoptr i64 %22 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %15, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = call float @vita2d_texture_get_width(%struct.TYPE_8__* %24)
  store float %25, float* %16, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = call float @vita2d_texture_get_height(%struct.TYPE_8__* %26)
  store float %27, float* %17, align 4
  %28 = load float, float* %11, align 4
  %29 = load float, float* %16, align 4
  %30 = fdiv float %28, %29
  store float %30, float* %18, align 4
  %31 = load float, float* %12, align 4
  %32 = load float, float* %17, align 4
  %33 = fdiv float %31, %32
  store float %33, float* %19, align 4
  %34 = load float, float* %11, align 4
  %35 = load float, float* %13, align 4
  %36 = fadd float %34, %35
  %37 = load float, float* %16, align 4
  %38 = fdiv float %36, %37
  store float %38, float* %20, align 4
  %39 = load float, float* %12, align 4
  %40 = load float, float* %14, align 4
  %41 = fadd float %39, %40
  %42 = load float, float* %17, align 4
  %43 = fdiv float %41, %42
  store float %43, float* %21, align 4
  %44 = load float, float* %9, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store float %44, float* %47, align 4
  %48 = load float, float* %10, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store float %48, float* %51, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store float 5.000000e-01, float* %54, align 4
  %55 = load float, float* %18, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  store float %55, float* %58, align 4
  %59 = load float, float* %19, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  store float %59, float* %62, align 4
  %63 = load float, float* %9, align 4
  %64 = load float, float* %13, align 4
  %65 = fadd float %63, %64
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store float %65, float* %68, align 4
  %69 = load float, float* %10, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store float %69, float* %72, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store float 5.000000e-01, float* %75, align 4
  %76 = load float, float* %20, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  store float %76, float* %79, align 4
  %80 = load float, float* %19, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 4
  store float %80, float* %83, align 4
  %84 = load float, float* %9, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store float %84, float* %87, align 4
  %88 = load float, float* %10, align 4
  %89 = load float, float* %14, align 4
  %90 = fadd float %88, %89
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store float %90, float* %93, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  store float 5.000000e-01, float* %96, align 4
  %97 = load float, float* %18, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 2
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  store float %97, float* %100, align 4
  %101 = load float, float* %21, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 4
  store float %101, float* %104, align 4
  %105 = load float, float* %9, align 4
  %106 = load float, float* %13, align 4
  %107 = fadd float %105, %106
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 3
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store float %107, float* %110, align 4
  %111 = load float, float* %10, align 4
  %112 = load float, float* %14, align 4
  %113 = fadd float %111, %112
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 3
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store float %113, float* %116, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 3
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  store float 5.000000e-01, float* %119, align 4
  %120 = load float, float* %20, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 3
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  store float %120, float* %123, align 4
  %124 = load float, float* %21, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 3
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 4
  store float %124, float* %127, align 4
  %128 = load i32, i32* @_vita2d_context, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = call i32 @sceGxmSetFragmentTexture(i32 %128, i32 0, i32* %130)
  %132 = load i32, i32* @_vita2d_context, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %134 = call i32 @sceGxmSetVertexStream(i32 %132, i32 0, %struct.TYPE_7__* %133)
  %135 = load i32, i32* @_vita2d_context, align 4
  %136 = load i32, i32* @SCE_GXM_PRIMITIVE_TRIANGLE_STRIP, align 4
  %137 = load i32, i32* @SCE_GXM_INDEX_FORMAT_U16, align 4
  %138 = call i32 (...) @vita2d_get_linear_indices()
  %139 = call i32 @sceGxmDraw(i32 %135, i32 %136, i32 %137, i32 %138, i32 4)
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
