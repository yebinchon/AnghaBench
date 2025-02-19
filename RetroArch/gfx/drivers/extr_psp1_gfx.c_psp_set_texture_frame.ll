; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_psp1_gfx.c_psp_set_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_psp1_gfx.c_psp_set_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SCEGU_SCR_WIDTH = common dso_local global i32 0, align 4
@SCEGU_SCR_HEIGHT = common dso_local global i32 0, align 4
@GU_DIRECT = common dso_local global i32 0, align 4
@GU_PSM_4444 = common dso_local global i32 0, align 4
@GU_SEND = common dso_local global i32 0, align 4
@GU_FALSE = common dso_local global i32 0, align 4
@GU_TFX_REPLACE = common dso_local global i32 0, align 4
@GU_TCC_RGB = common dso_local global i32 0, align 4
@GU_LINEAR = common dso_local global i32 0, align 4
@GU_BLEND = common dso_local global i32 0, align 4
@GU_ADD = common dso_local global i32 0, align 4
@GU_FIX = common dso_local global i32 0, align 4
@GU_SPRITES = common dso_local global i32 0, align 4
@GU_TEXTURE_32BITF = common dso_local global i32 0, align 4
@GU_VERTEX_32BITF = common dso_local global i32 0, align 4
@GU_TRANSFORM_2D = common dso_local global i32 0, align 4
@PSP_FRAME_VERTEX_COUNT = common dso_local global i32 0, align 4
@GU_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@GU_SRC_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @psp_set_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psp_set_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %13, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load float, float* %12, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SCEGU_SCR_WIDTH, align 4
  %23 = load i32, i32* @SCEGU_SCR_HEIGHT, align 4
  %24 = call i32 @psp_set_screen_coords(i32 %21, i32 0, i32 0, i32 %22, i32 %23, i32 0)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @psp_set_tex_coords(i32 %28, i32 %29, i32 %30)
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = mul i32 %33, %34
  %36 = mul i32 %35, 2
  %37 = call i32 @sceKernelDcacheWritebackRange(i8* %32, i32 %36)
  %38 = load i32, i32* @GU_DIRECT, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sceGuStart(i32 %38, i32 %41)
  %43 = load i32, i32* @GU_PSM_4444, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sceGuCopyImage(i32 %43, i32 0, i32 0, i32 %44, i32 %45, i32 %46, i8* %47, i32 0, i32 0, i32 %48, i32 %52)
  %54 = call i32 (...) @sceGuFinish()
  %55 = load i32, i32* @GU_SEND, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sceGuStart(i32 %55, i32 %59)
  %61 = load i32, i32* @GU_PSM_4444, align 4
  %62 = load i32, i32* @GU_FALSE, align 4
  %63 = call i32 @sceGuTexMode(i32 %61, i32 0, i32 0, i32 %62)
  %64 = load i32, i32* @GU_TFX_REPLACE, align 4
  %65 = load i32, i32* @GU_TCC_RGB, align 4
  %66 = call i32 @sceGuTexFunc(i32 %64, i32 %65)
  %67 = load i32, i32* @GU_LINEAR, align 4
  %68 = load i32, i32* @GU_LINEAR, align 4
  %69 = call i32 @sceGuTexFilter(i32 %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @next_pow2(i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @next_pow2(i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @sceGuTexImage(i32 0, i32 %71, i32 %73, i32 %74, i32 %78)
  %80 = load i32, i32* @GU_BLEND, align 4
  %81 = call i32 @sceGuEnable(i32 %80)
  %82 = load i32, i32* @GU_ADD, align 4
  %83 = load i32, i32* @GU_FIX, align 4
  %84 = load i32, i32* @GU_FIX, align 4
  %85 = call i32 @sceGuBlendFunc(i32 %82, i32 %83, i32 %84, i32 -252645136, i32 252645135)
  %86 = load i32, i32* @GU_SPRITES, align 4
  %87 = load i32, i32* @GU_TEXTURE_32BITF, align 4
  %88 = load i32, i32* @GU_VERTEX_32BITF, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @GU_TRANSFORM_2D, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @PSP_FRAME_VERTEX_COUNT, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @sceGuDrawArray(i32 %86, i32 %91, i32 %92, i32* null, i32 %96)
  %98 = call i32 (...) @sceGuFinish()
  ret void
}

declare dso_local i32 @psp_set_screen_coords(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @psp_set_tex_coords(i32, i32, i32) #1

declare dso_local i32 @sceKernelDcacheWritebackRange(i8*, i32) #1

declare dso_local i32 @sceGuStart(i32, i32) #1

declare dso_local i32 @sceGuCopyImage(i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sceGuFinish(...) #1

declare dso_local i32 @sceGuTexMode(i32, i32, i32, i32) #1

declare dso_local i32 @sceGuTexFunc(i32, i32) #1

declare dso_local i32 @sceGuTexFilter(i32, i32) #1

declare dso_local i32 @sceGuTexImage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @next_pow2(i32) #1

declare dso_local i32 @sceGuEnable(i32) #1

declare dso_local i32 @sceGuBlendFunc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sceGuDrawArray(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
