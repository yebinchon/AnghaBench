; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_backend.c_RB_SetGL2D.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_backend.c_RB_SetGL2D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { float, float }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { float (...)* }

@qtrue = common dso_local global i32 0, align 4
@backEnd = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@glConfig = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
@GLS_DEPTHTEST_DISABLE = common dso_local global i32 0, align 4
@GLS_SRCBLEND_SRC_ALPHA = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_CULL_FACE = common dso_local global i32 0, align 4
@GL_CLIP_PLANE0 = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_SetGL2D() #0 {
  %1 = load i32, i32* @qtrue, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 1), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glConfig, i32 0, i32 1), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glConfig, i32 0, i32 0), align 4
  %4 = call i32 @qglViewport(i32 0, i32 0, i32 %2, i32 %3)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glConfig, i32 0, i32 1), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glConfig, i32 0, i32 0), align 4
  %7 = call i32 @qglScissor(i32 0, i32 0, i32 %5, i32 %6)
  %8 = load i32, i32* @GL_PROJECTION, align 4
  %9 = call i32 @qglMatrixMode(i32 %8)
  %10 = call i32 (...) @qglLoadIdentity()
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glConfig, i32 0, i32 1), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glConfig, i32 0, i32 0), align 4
  %13 = call i32 @qglOrtho(i32 0, i32 %11, i32 %12, i32 0, i32 0, i32 1)
  %14 = load i32, i32* @GL_MODELVIEW, align 4
  %15 = call i32 @qglMatrixMode(i32 %14)
  %16 = call i32 (...) @qglLoadIdentity()
  %17 = load i32, i32* @GLS_DEPTHTEST_DISABLE, align 4
  %18 = load i32, i32* @GLS_SRCBLEND_SRC_ALPHA, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @GL_State(i32 %21)
  %23 = load i32, i32* @GL_CULL_FACE, align 4
  %24 = call i32 @qglDisable(i32 %23)
  %25 = load i32, i32* @GL_CLIP_PLANE0, align 4
  %26 = call i32 @qglDisable(i32 %25)
  %27 = load float (...)*, float (...)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ri, i32 0, i32 0), align 8
  %28 = call float (...) %27()
  store float %28, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 0, i32 0), align 4
  %29 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 0, i32 0), align 4
  %30 = fmul float %29, 0x3F50624DE0000000
  store float %30, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 0, i32 1), align 4
  ret void
}

declare dso_local i32 @qglViewport(i32, i32, i32, i32) #1

declare dso_local i32 @qglScissor(i32, i32, i32, i32) #1

declare dso_local i32 @qglMatrixMode(i32) #1

declare dso_local i32 @qglLoadIdentity(...) #1

declare dso_local i32 @qglOrtho(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @qglDisable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
