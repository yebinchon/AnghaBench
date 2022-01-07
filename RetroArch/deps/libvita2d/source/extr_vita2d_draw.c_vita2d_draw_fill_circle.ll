; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_draw.c_vita2d_draw_fill_circle.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_draw.c_vita2d_draw_fill_circle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, i32 }

@vita2d_draw_fill_circle.num_segments = internal constant i32 100, align 4
@M_PI = common dso_local global i32 0, align 4
@_vita2d_context = common dso_local global i32 0, align 4
@_vita2d_colorVertexProgram = common dso_local global i32 0, align 4
@_vita2d_colorFragmentProgram = common dso_local global i32 0, align 4
@_vita2d_colorWvpParam = common dso_local global i32 0, align 4
@_vita2d_ortho_matrix = common dso_local global i32 0, align 4
@SCE_GXM_PRIMITIVE_TRIANGLE_FAN = common dso_local global i32 0, align 4
@SCE_GXM_INDEX_FORMAT_U16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vita2d_draw_fill_circle(float %0, float %1, float %2, i32 %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = call i64 @vita2d_pool_memalign(i32 1616, i32 16)
  %20 = inttoptr i64 %19 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %9, align 8
  %21 = call i64 @vita2d_pool_memalign(i32 408, i32 4)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %10, align 8
  %23 = load float, float* %5, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store float %23, float* %26, align 4
  %27 = load float, float* %6, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store float %27, float* %30, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store float 5.000000e-01, float* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* @M_PI, align 4
  %41 = mul nsw i32 2, %40
  %42 = sitofp i32 %41 to float
  %43 = fdiv float %42, 1.000000e+02
  store float %43, float* %11, align 4
  %44 = load float, float* %11, align 4
  %45 = call float @cosf(float %44) #3
  store float %45, float* %12, align 4
  %46 = load float, float* %11, align 4
  %47 = call float @sinf(float %46) #3
  store float %47, float* %13, align 4
  %48 = load float, float* %7, align 4
  store float %48, float* %15, align 4
  store float 0.000000e+00, float* %16, align 4
  store i32 1, i32* %17, align 4
  br label %49

49:                                               ; preds = %100, %4
  %50 = load i32, i32* %17, align 4
  %51 = icmp sle i32 %50, 100
  br i1 %51, label %52, label %103

52:                                               ; preds = %49
  %53 = load float, float* %5, align 4
  %54 = load float, float* %15, align 4
  %55 = fadd float %53, %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store float %55, float* %60, align 4
  %61 = load float, float* %6, align 4
  %62 = load float, float* %16, align 4
  %63 = fadd float %61, %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store float %63, float* %68, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store float 5.000000e-01, float* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  store i32 %74, i32* %79, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  %85 = load float, float* %15, align 4
  store float %85, float* %14, align 4
  %86 = load float, float* %12, align 4
  %87 = load float, float* %15, align 4
  %88 = fmul float %86, %87
  %89 = load float, float* %13, align 4
  %90 = load float, float* %16, align 4
  %91 = fmul float %89, %90
  %92 = fsub float %88, %91
  store float %92, float* %15, align 4
  %93 = load float, float* %13, align 4
  %94 = load float, float* %14, align 4
  %95 = fmul float %93, %94
  %96 = load float, float* %12, align 4
  %97 = load float, float* %16, align 4
  %98 = fmul float %96, %97
  %99 = fadd float %95, %98
  store float %99, float* %16, align 4
  br label %100

100:                                              ; preds = %52
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %17, align 4
  br label %49

103:                                              ; preds = %49
  %104 = load i32*, i32** %10, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 101
  store i32 1, i32* %105, align 4
  %106 = load i32, i32* @_vita2d_context, align 4
  %107 = load i32, i32* @_vita2d_colorVertexProgram, align 4
  %108 = call i32 @sceGxmSetVertexProgram(i32 %106, i32 %107)
  %109 = load i32, i32* @_vita2d_context, align 4
  %110 = load i32, i32* @_vita2d_colorFragmentProgram, align 4
  %111 = call i32 @sceGxmSetFragmentProgram(i32 %109, i32 %110)
  %112 = load i32, i32* @_vita2d_context, align 4
  %113 = call i32 @sceGxmReserveVertexDefaultUniformBuffer(i32 %112, i8** %18)
  %114 = load i8*, i8** %18, align 8
  %115 = load i32, i32* @_vita2d_colorWvpParam, align 4
  %116 = load i32, i32* @_vita2d_ortho_matrix, align 4
  %117 = call i32 @sceGxmSetUniformDataF(i8* %114, i32 %115, i32 0, i32 16, i32 %116)
  %118 = load i32, i32* @_vita2d_context, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %120 = call i32 @sceGxmSetVertexStream(i32 %118, i32 0, %struct.TYPE_3__* %119)
  %121 = load i32, i32* @_vita2d_context, align 4
  %122 = load i32, i32* @SCE_GXM_PRIMITIVE_TRIANGLE_FAN, align 4
  %123 = load i32, i32* @SCE_GXM_INDEX_FORMAT_U16, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = call i32 @sceGxmDraw(i32 %121, i32 %122, i32 %123, i32* %124, i32 102)
  ret void
}

declare dso_local i64 @vita2d_pool_memalign(i32, i32) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

declare dso_local i32 @sceGxmSetVertexProgram(i32, i32) #1

declare dso_local i32 @sceGxmSetFragmentProgram(i32, i32) #1

declare dso_local i32 @sceGxmReserveVertexDefaultUniformBuffer(i32, i8**) #1

declare dso_local i32 @sceGxmSetUniformDataF(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sceGxmSetVertexStream(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @sceGxmDraw(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
