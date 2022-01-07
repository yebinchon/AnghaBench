; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d.c_vita2d_clear_screen.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d.c_vita2d_clear_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_vita2d_context = common dso_local global i32 0, align 4
@clearVertexProgram = common dso_local global i32 0, align 4
@clearFragmentProgram = common dso_local global i32 0, align 4
@_vita2d_clearClearColorParam = common dso_local global i32 0, align 4
@clear_color = common dso_local global i32 0, align 4
@clearVertices = common dso_local global i32 0, align 4
@SCE_GXM_PRIMITIVE_TRIANGLES = common dso_local global i32 0, align 4
@SCE_GXM_INDEX_FORMAT_U16 = common dso_local global i32 0, align 4
@linearIndices = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vita2d_clear_screen() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @_vita2d_context, align 4
  %3 = load i32, i32* @clearVertexProgram, align 4
  %4 = call i32 @sceGxmSetVertexProgram(i32 %2, i32 %3)
  %5 = load i32, i32* @_vita2d_context, align 4
  %6 = load i32, i32* @clearFragmentProgram, align 4
  %7 = call i32 @sceGxmSetFragmentProgram(i32 %5, i32 %6)
  %8 = load i32, i32* @_vita2d_context, align 4
  %9 = call i32 @sceGxmReserveFragmentDefaultUniformBuffer(i32 %8, i8** %1)
  %10 = load i8*, i8** %1, align 8
  %11 = load i32, i32* @_vita2d_clearClearColorParam, align 4
  %12 = load i32, i32* @clear_color, align 4
  %13 = call i32 @sceGxmSetUniformDataF(i8* %10, i32 %11, i32 0, i32 4, i32 %12)
  %14 = load i32, i32* @_vita2d_context, align 4
  %15 = load i32, i32* @clearVertices, align 4
  %16 = call i32 @sceGxmSetVertexStream(i32 %14, i32 0, i32 %15)
  %17 = load i32, i32* @_vita2d_context, align 4
  %18 = load i32, i32* @SCE_GXM_PRIMITIVE_TRIANGLES, align 4
  %19 = load i32, i32* @SCE_GXM_INDEX_FORMAT_U16, align 4
  %20 = load i32, i32* @linearIndices, align 4
  %21 = call i32 @sceGxmDraw(i32 %17, i32 %18, i32 %19, i32 %20, i32 3)
  ret void
}

declare dso_local i32 @sceGxmSetVertexProgram(i32, i32) #1

declare dso_local i32 @sceGxmSetFragmentProgram(i32, i32) #1

declare dso_local i32 @sceGxmReserveFragmentDefaultUniformBuffer(i32, i8**) #1

declare dso_local i32 @sceGxmSetUniformDataF(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sceGxmSetVertexStream(i32, i32, i32) #1

declare dso_local i32 @sceGxmDraw(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
