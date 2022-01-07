; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_draw_texture_part_scale_generic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_draw_texture_part_scale_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { float, float, float, float, float }

@_vita2d_context = common dso_local global i32 0, align 4
@SCE_GXM_PRIMITIVE_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@SCE_GXM_INDEX_FORMAT_U16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, float, float, float, float, float, float, float, float)* @draw_texture_part_scale_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_texture_part_scale_generic(%struct.TYPE_8__* %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7, float %8) #0 {
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %10, align 8
  store float %1, float* %11, align 4
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store float %8, float* %18, align 4
  %26 = call i64 @vita2d_pool_memalign(i32 80, i32 20)
  %27 = inttoptr i64 %26 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %19, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %29 = call float @vita2d_texture_get_width(%struct.TYPE_8__* %28)
  store float %29, float* %20, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = call float @vita2d_texture_get_height(%struct.TYPE_8__* %30)
  store float %31, float* %21, align 4
  %32 = load float, float* %13, align 4
  %33 = load float, float* %20, align 4
  %34 = fdiv float %32, %33
  store float %34, float* %22, align 4
  %35 = load float, float* %14, align 4
  %36 = load float, float* %21, align 4
  %37 = fdiv float %35, %36
  store float %37, float* %23, align 4
  %38 = load float, float* %13, align 4
  %39 = load float, float* %15, align 4
  %40 = fadd float %38, %39
  %41 = load float, float* %20, align 4
  %42 = fdiv float %40, %41
  store float %42, float* %24, align 4
  %43 = load float, float* %14, align 4
  %44 = load float, float* %16, align 4
  %45 = fadd float %43, %44
  %46 = load float, float* %21, align 4
  %47 = fdiv float %45, %46
  store float %47, float* %25, align 4
  %48 = load float, float* %17, align 4
  %49 = load float, float* %15, align 4
  %50 = fmul float %49, %48
  store float %50, float* %15, align 4
  %51 = load float, float* %18, align 4
  %52 = load float, float* %16, align 4
  %53 = fmul float %52, %51
  store float %53, float* %16, align 4
  %54 = load float, float* %11, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store float %54, float* %57, align 4
  %58 = load float, float* %12, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store float %58, float* %61, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store float 5.000000e-01, float* %64, align 4
  %65 = load float, float* %22, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  store float %65, float* %68, align 4
  %69 = load float, float* %23, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 4
  store float %69, float* %72, align 4
  %73 = load float, float* %11, align 4
  %74 = load float, float* %15, align 4
  %75 = fadd float %73, %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store float %75, float* %78, align 4
  %79 = load float, float* %12, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store float %79, float* %82, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  store float 5.000000e-01, float* %85, align 4
  %86 = load float, float* %24, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  store float %86, float* %89, align 4
  %90 = load float, float* %23, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 4
  store float %90, float* %93, align 4
  %94 = load float, float* %11, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 2
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store float %94, float* %97, align 4
  %98 = load float, float* %12, align 4
  %99 = load float, float* %16, align 4
  %100 = fadd float %98, %99
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 2
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  store float %100, float* %103, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 2
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  store float 5.000000e-01, float* %106, align 4
  %107 = load float, float* %22, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 2
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  store float %107, float* %110, align 4
  %111 = load float, float* %25, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 2
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 4
  store float %111, float* %114, align 4
  %115 = load float, float* %11, align 4
  %116 = load float, float* %15, align 4
  %117 = fadd float %115, %116
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 3
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store float %117, float* %120, align 4
  %121 = load float, float* %12, align 4
  %122 = load float, float* %16, align 4
  %123 = fadd float %121, %122
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 3
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  store float %123, float* %126, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 3
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  store float 5.000000e-01, float* %129, align 4
  %130 = load float, float* %24, align 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 3
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  store float %130, float* %133, align 4
  %134 = load float, float* %25, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 3
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 4
  store float %134, float* %137, align 4
  %138 = load i32, i32* @_vita2d_context, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = call i32 @sceGxmSetFragmentTexture(i32 %138, i32 0, i32* %140)
  %142 = load i32, i32* @_vita2d_context, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %144 = call i32 @sceGxmSetVertexStream(i32 %142, i32 0, %struct.TYPE_7__* %143)
  %145 = load i32, i32* @_vita2d_context, align 4
  %146 = load i32, i32* @SCE_GXM_PRIMITIVE_TRIANGLE_STRIP, align 4
  %147 = load i32, i32* @SCE_GXM_INDEX_FORMAT_U16, align 4
  %148 = call i32 (...) @vita2d_get_linear_indices()
  %149 = call i32 @sceGxmDraw(i32 %145, i32 %146, i32 %147, i32 %148, i32 4)
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
