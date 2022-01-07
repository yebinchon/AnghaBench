; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d.c_vita2d_fini.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d.c_vita2d_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@vita2d_initialized = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"libvita2d is not initialized!\0A\00", align 1
@_vita2d_context = common dso_local global i32 0, align 4
@shaderPatcher = common dso_local global i32 0, align 4
@clearFragmentProgram = common dso_local global i32 0, align 4
@clearVertexProgram = common dso_local global i32 0, align 4
@_vita2d_colorVertexProgram = common dso_local global i32 0, align 4
@_vita2d_textureVertexProgram = common dso_local global i32 0, align 4
@_vita2d_fragmentPrograms = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@linearIndicesUid = common dso_local global i32 0, align 4
@clearVerticesUid = common dso_local global i32 0, align 4
@depthBufferUid = common dso_local global i32 0, align 4
@DISPLAY_BUFFER_COUNT = common dso_local global i32 0, align 4
@displayBufferData = common dso_local global i32* null, align 8
@DISPLAY_HEIGHT = common dso_local global i32 0, align 4
@DISPLAY_STRIDE_IN_PIXELS = common dso_local global i32 0, align 4
@displayBufferUid = common dso_local global i32* null, align 8
@displayBufferSync = common dso_local global i32* null, align 8
@stencilBufferUid = common dso_local global i32 0, align 4
@clearFragmentProgramId = common dso_local global i32 0, align 4
@clearVertexProgramId = common dso_local global i32 0, align 4
@colorFragmentProgramId = common dso_local global i32 0, align 4
@colorVertexProgramId = common dso_local global i32 0, align 4
@textureFragmentProgramId = common dso_local global i32 0, align 4
@textureTintFragmentProgramId = common dso_local global i32 0, align 4
@textureVertexProgramId = common dso_local global i32 0, align 4
@patcherFragmentUsseUid = common dso_local global i32 0, align 4
@patcherVertexUsseUid = common dso_local global i32 0, align 4
@patcherBufferUid = common dso_local global i32 0, align 4
@renderTarget = common dso_local global i32 0, align 4
@fragmentUsseRingBufferUid = common dso_local global i32 0, align 4
@fragmentRingBufferUid = common dso_local global i32 0, align 4
@vertexRingBufferUid = common dso_local global i32 0, align 4
@vdmRingBufferUid = common dso_local global i32 0, align 4
@contextParams = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@poolUid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vita2d_fini() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @vita2d_initialized, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 @VITA2D_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %112

7:                                                ; preds = %0
  %8 = load i32, i32* @_vita2d_context, align 4
  %9 = call i32 @sceGxmFinish(i32 %8)
  %10 = load i32, i32* @shaderPatcher, align 4
  %11 = load i32, i32* @clearFragmentProgram, align 4
  %12 = call i32 @sceGxmShaderPatcherReleaseFragmentProgram(i32 %10, i32 %11)
  %13 = load i32, i32* @shaderPatcher, align 4
  %14 = load i32, i32* @clearVertexProgram, align 4
  %15 = call i32 @sceGxmShaderPatcherReleaseVertexProgram(i32 %13, i32 %14)
  %16 = load i32, i32* @shaderPatcher, align 4
  %17 = load i32, i32* @_vita2d_colorVertexProgram, align 4
  %18 = call i32 @sceGxmShaderPatcherReleaseVertexProgram(i32 %16, i32 %17)
  %19 = load i32, i32* @shaderPatcher, align 4
  %20 = load i32, i32* @_vita2d_textureVertexProgram, align 4
  %21 = call i32 @sceGxmShaderPatcherReleaseVertexProgram(i32 %19, i32 %20)
  %22 = call i32 @_vita2d_free_fragment_programs(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_vita2d_fragmentPrograms, i32 0, i32 1))
  %23 = call i32 @_vita2d_free_fragment_programs(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_vita2d_fragmentPrograms, i32 0, i32 0))
  %24 = load i32, i32* @linearIndicesUid, align 4
  %25 = call i32 @gpu_free(i32 %24)
  %26 = load i32, i32* @clearVerticesUid, align 4
  %27 = call i32 @gpu_free(i32 %26)
  %28 = call i32 (...) @sceGxmDisplayQueueFinish()
  %29 = load i32, i32* @depthBufferUid, align 4
  %30 = call i32 @gpu_free(i32 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %58, %7
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @DISPLAY_BUFFER_COUNT, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = load i32*, i32** @displayBufferData, align 8
  %37 = load i32, i32* %2, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DISPLAY_HEIGHT, align 4
  %42 = load i32, i32* @DISPLAY_STRIDE_IN_PIXELS, align 4
  %43 = mul nsw i32 %41, %42
  %44 = mul nsw i32 %43, 4
  %45 = call i32 @memset(i32 %40, i32 0, i32 %44)
  %46 = load i32*, i32** @displayBufferUid, align 8
  %47 = load i32, i32* %2, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gpu_free(i32 %50)
  %52 = load i32*, i32** @displayBufferSync, align 8
  %53 = load i32, i32* %2, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sceGxmSyncObjectDestroy(i32 %56)
  br label %58

58:                                               ; preds = %35
  %59 = load i32, i32* %2, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %31

61:                                               ; preds = %31
  %62 = load i32, i32* @depthBufferUid, align 4
  %63 = call i32 @gpu_free(i32 %62)
  %64 = load i32, i32* @stencilBufferUid, align 4
  %65 = call i32 @gpu_free(i32 %64)
  %66 = load i32, i32* @shaderPatcher, align 4
  %67 = load i32, i32* @clearFragmentProgramId, align 4
  %68 = call i32 @sceGxmShaderPatcherUnregisterProgram(i32 %66, i32 %67)
  %69 = load i32, i32* @shaderPatcher, align 4
  %70 = load i32, i32* @clearVertexProgramId, align 4
  %71 = call i32 @sceGxmShaderPatcherUnregisterProgram(i32 %69, i32 %70)
  %72 = load i32, i32* @shaderPatcher, align 4
  %73 = load i32, i32* @colorFragmentProgramId, align 4
  %74 = call i32 @sceGxmShaderPatcherUnregisterProgram(i32 %72, i32 %73)
  %75 = load i32, i32* @shaderPatcher, align 4
  %76 = load i32, i32* @colorVertexProgramId, align 4
  %77 = call i32 @sceGxmShaderPatcherUnregisterProgram(i32 %75, i32 %76)
  %78 = load i32, i32* @shaderPatcher, align 4
  %79 = load i32, i32* @textureFragmentProgramId, align 4
  %80 = call i32 @sceGxmShaderPatcherUnregisterProgram(i32 %78, i32 %79)
  %81 = load i32, i32* @shaderPatcher, align 4
  %82 = load i32, i32* @textureTintFragmentProgramId, align 4
  %83 = call i32 @sceGxmShaderPatcherUnregisterProgram(i32 %81, i32 %82)
  %84 = load i32, i32* @shaderPatcher, align 4
  %85 = load i32, i32* @textureVertexProgramId, align 4
  %86 = call i32 @sceGxmShaderPatcherUnregisterProgram(i32 %84, i32 %85)
  %87 = load i32, i32* @shaderPatcher, align 4
  %88 = call i32 @sceGxmShaderPatcherDestroy(i32 %87)
  %89 = load i32, i32* @patcherFragmentUsseUid, align 4
  %90 = call i32 @fragment_usse_free(i32 %89)
  %91 = load i32, i32* @patcherVertexUsseUid, align 4
  %92 = call i32 @vertex_usse_free(i32 %91)
  %93 = load i32, i32* @patcherBufferUid, align 4
  %94 = call i32 @gpu_free(i32 %93)
  %95 = load i32, i32* @renderTarget, align 4
  %96 = call i32 @sceGxmDestroyRenderTarget(i32 %95)
  %97 = load i32, i32* @_vita2d_context, align 4
  %98 = call i32 @sceGxmDestroyContext(i32 %97)
  %99 = load i32, i32* @fragmentUsseRingBufferUid, align 4
  %100 = call i32 @fragment_usse_free(i32 %99)
  %101 = load i32, i32* @fragmentRingBufferUid, align 4
  %102 = call i32 @gpu_free(i32 %101)
  %103 = load i32, i32* @vertexRingBufferUid, align 4
  %104 = call i32 @gpu_free(i32 %103)
  %105 = load i32, i32* @vdmRingBufferUid, align 4
  %106 = call i32 @gpu_free(i32 %105)
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @contextParams, i32 0, i32 0), align 4
  %108 = call i32 @free(i32 %107)
  %109 = load i32, i32* @poolUid, align 4
  %110 = call i32 @gpu_free(i32 %109)
  %111 = call i32 (...) @sceGxmTerminate()
  store i64 0, i64* @vita2d_initialized, align 8
  store i32 1, i32* %1, align 4
  br label %112

112:                                              ; preds = %61, %5
  %113 = load i32, i32* %1, align 4
  ret i32 %113
}

declare dso_local i32 @VITA2D_DEBUG(i8*) #1

declare dso_local i32 @sceGxmFinish(i32) #1

declare dso_local i32 @sceGxmShaderPatcherReleaseFragmentProgram(i32, i32) #1

declare dso_local i32 @sceGxmShaderPatcherReleaseVertexProgram(i32, i32) #1

declare dso_local i32 @_vita2d_free_fragment_programs(i32*) #1

declare dso_local i32 @gpu_free(i32) #1

declare dso_local i32 @sceGxmDisplayQueueFinish(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sceGxmSyncObjectDestroy(i32) #1

declare dso_local i32 @sceGxmShaderPatcherUnregisterProgram(i32, i32) #1

declare dso_local i32 @sceGxmShaderPatcherDestroy(i32) #1

declare dso_local i32 @fragment_usse_free(i32) #1

declare dso_local i32 @vertex_usse_free(i32) #1

declare dso_local i32 @sceGxmDestroyRenderTarget(i32) #1

declare dso_local i32 @sceGxmDestroyContext(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @sceGxmTerminate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
