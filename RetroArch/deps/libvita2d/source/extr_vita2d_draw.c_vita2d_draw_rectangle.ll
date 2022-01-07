; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_draw.c_vita2d_draw_rectangle.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_draw.c_vita2d_draw_rectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, i32 }

@_vita2d_context = common dso_local global i32 0, align 4
@_vita2d_colorVertexProgram = common dso_local global i32 0, align 4
@_vita2d_colorFragmentProgram = common dso_local global i32 0, align 4
@_vita2d_colorWvpParam = common dso_local global i32 0, align 4
@_vita2d_ortho_matrix = common dso_local global i32 0, align 4
@SCE_GXM_PRIMITIVE_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@SCE_GXM_INDEX_FORMAT_U16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vita2d_draw_rectangle(float %0, float %1, float %2, float %3, i32 %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = call i64 @vita2d_pool_memalign(i32 64, i32 16)
  %15 = inttoptr i64 %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %11, align 8
  %16 = call i64 @vita2d_pool_memalign(i32 16, i32 4)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %12, align 8
  %18 = load float, float* %6, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store float %18, float* %21, align 4
  %22 = load float, float* %7, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store float %22, float* %25, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store float 5.000000e-01, float* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 4
  %33 = load float, float* %6, align 4
  %34 = load float, float* %8, align 4
  %35 = fadd float %33, %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store float %35, float* %38, align 4
  %39 = load float, float* %7, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store float %39, float* %42, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store float 5.000000e-01, float* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load float, float* %6, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store float %50, float* %53, align 4
  %54 = load float, float* %7, align 4
  %55 = load float, float* %9, align 4
  %56 = fadd float %54, %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store float %56, float* %59, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store float 5.000000e-01, float* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 4
  %67 = load float, float* %6, align 4
  %68 = load float, float* %8, align 4
  %69 = fadd float %67, %68
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 3
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store float %69, float* %72, align 4
  %73 = load float, float* %7, align 4
  %74 = load float, float* %9, align 4
  %75 = fadd float %73, %74
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 3
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store float %75, float* %78, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 3
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store float 5.000000e-01, float* %81, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 3
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 4
  %86 = load i32*, i32** %12, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 0, i32* %87, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 1, i32* %89, align 4
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  store i32 2, i32* %91, align 4
  %92 = load i32*, i32** %12, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  store i32 3, i32* %93, align 4
  %94 = load i32, i32* @_vita2d_context, align 4
  %95 = load i32, i32* @_vita2d_colorVertexProgram, align 4
  %96 = call i32 @sceGxmSetVertexProgram(i32 %94, i32 %95)
  %97 = load i32, i32* @_vita2d_context, align 4
  %98 = load i32, i32* @_vita2d_colorFragmentProgram, align 4
  %99 = call i32 @sceGxmSetFragmentProgram(i32 %97, i32 %98)
  %100 = load i32, i32* @_vita2d_context, align 4
  %101 = call i32 @sceGxmReserveVertexDefaultUniformBuffer(i32 %100, i8** %13)
  %102 = load i8*, i8** %13, align 8
  %103 = load i32, i32* @_vita2d_colorWvpParam, align 4
  %104 = load i32, i32* @_vita2d_ortho_matrix, align 4
  %105 = call i32 @sceGxmSetUniformDataF(i8* %102, i32 %103, i32 0, i32 16, i32 %104)
  %106 = load i32, i32* @_vita2d_context, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %108 = call i32 @sceGxmSetVertexStream(i32 %106, i32 0, %struct.TYPE_3__* %107)
  %109 = load i32, i32* @_vita2d_context, align 4
  %110 = load i32, i32* @SCE_GXM_PRIMITIVE_TRIANGLE_STRIP, align 4
  %111 = load i32, i32* @SCE_GXM_INDEX_FORMAT_U16, align 4
  %112 = load i32*, i32** %12, align 8
  %113 = call i32 @sceGxmDraw(i32 %109, i32 %110, i32 %111, i32* %112, i32 4)
  ret void
}

declare dso_local i64 @vita2d_pool_memalign(i32, i32) #1

declare dso_local i32 @sceGxmSetVertexProgram(i32, i32) #1

declare dso_local i32 @sceGxmSetFragmentProgram(i32, i32) #1

declare dso_local i32 @sceGxmReserveVertexDefaultUniformBuffer(i32, i8**) #1

declare dso_local i32 @sceGxmSetUniformDataF(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sceGxmSetVertexStream(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @sceGxmDraw(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
