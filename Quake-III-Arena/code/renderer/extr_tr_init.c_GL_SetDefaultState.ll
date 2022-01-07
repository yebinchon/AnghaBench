; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_init.c_GL_SetDefaultState.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_init.c_GL_SetDefaultState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GL_FRONT = common dso_local global i32 0, align 4
@qglActiveTextureARB = common dso_local global i64 0, align 8
@r_textureMode = common dso_local global %struct.TYPE_3__* null, align 8
@GL_MODULATE = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_SMOOTH = common dso_local global i32 0, align 4
@GL_LEQUAL = common dso_local global i32 0, align 4
@GL_VERTEX_ARRAY = common dso_local global i32 0, align 4
@GLS_DEPTHTEST_DISABLE = common dso_local global i32 0, align 4
@GLS_DEPTHMASK_TRUE = common dso_local global i32 0, align 4
@glState = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GL_FRONT_AND_BACK = common dso_local global i32 0, align 4
@GL_FILL = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@GL_SCISSOR_TEST = common dso_local global i32 0, align 4
@GL_CULL_FACE = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GL_SetDefaultState() #0 {
  %1 = call i32 @qglClearDepth(float 1.000000e+00)
  %2 = load i32, i32* @GL_FRONT, align 4
  %3 = call i32 @qglCullFace(i32 %2)
  %4 = call i32 @qglColor4f(i32 1, i32 1, i32 1, i32 1)
  %5 = load i64, i64* @qglActiveTextureARB, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = call i32 @GL_SelectTexture(i32 1)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @r_textureMode, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @GL_TextureMode(i32 %11)
  %13 = load i32, i32* @GL_MODULATE, align 4
  %14 = call i32 @GL_TexEnv(i32 %13)
  %15 = load i32, i32* @GL_TEXTURE_2D, align 4
  %16 = call i32 @qglDisable(i32 %15)
  %17 = call i32 @GL_SelectTexture(i32 0)
  br label %18

18:                                               ; preds = %7, %0
  %19 = load i32, i32* @GL_TEXTURE_2D, align 4
  %20 = call i32 @qglEnable(i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @r_textureMode, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @GL_TextureMode(i32 %23)
  %25 = load i32, i32* @GL_MODULATE, align 4
  %26 = call i32 @GL_TexEnv(i32 %25)
  %27 = load i32, i32* @GL_SMOOTH, align 4
  %28 = call i32 @qglShadeModel(i32 %27)
  %29 = load i32, i32* @GL_LEQUAL, align 4
  %30 = call i32 @qglDepthFunc(i32 %29)
  %31 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %32 = call i32 @qglEnableClientState(i32 %31)
  %33 = load i32, i32* @GLS_DEPTHTEST_DISABLE, align 4
  %34 = load i32, i32* @GLS_DEPTHMASK_TRUE, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glState, i32 0, i32 0), align 4
  %36 = load i32, i32* @GL_FRONT_AND_BACK, align 4
  %37 = load i32, i32* @GL_FILL, align 4
  %38 = call i32 @qglPolygonMode(i32 %36, i32 %37)
  %39 = load i32, i32* @GL_TRUE, align 4
  %40 = call i32 @qglDepthMask(i32 %39)
  %41 = load i32, i32* @GL_DEPTH_TEST, align 4
  %42 = call i32 @qglDisable(i32 %41)
  %43 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %44 = call i32 @qglEnable(i32 %43)
  %45 = load i32, i32* @GL_CULL_FACE, align 4
  %46 = call i32 @qglDisable(i32 %45)
  %47 = load i32, i32* @GL_BLEND, align 4
  %48 = call i32 @qglDisable(i32 %47)
  ret void
}

declare dso_local i32 @qglClearDepth(float) #1

declare dso_local i32 @qglCullFace(i32) #1

declare dso_local i32 @qglColor4f(i32, i32, i32, i32) #1

declare dso_local i32 @GL_SelectTexture(i32) #1

declare dso_local i32 @GL_TextureMode(i32) #1

declare dso_local i32 @GL_TexEnv(i32) #1

declare dso_local i32 @qglDisable(i32) #1

declare dso_local i32 @qglEnable(i32) #1

declare dso_local i32 @qglShadeModel(i32) #1

declare dso_local i32 @qglDepthFunc(i32) #1

declare dso_local i32 @qglEnableClientState(i32) #1

declare dso_local i32 @qglPolygonMode(i32, i32) #1

declare dso_local i32 @qglDepthMask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
