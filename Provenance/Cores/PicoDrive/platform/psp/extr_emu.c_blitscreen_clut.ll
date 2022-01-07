; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_blitscreen_clut.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_blitscreen_clut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.Vertex = type { i64, i64 }

@fbimg_offs = common dso_local global i32 0, align 4
@psp_screen = common dso_local global i64 0, align 8
@VRAM_FB0 = common dso_local global i64 0, align 8
@VRAMOFFS_FB0 = common dso_local global i64 0, align 8
@VRAMOFFS_FB1 = common dso_local global i64 0, align 8
@GU_DIRECT = common dso_local global i32 0, align 4
@guCmdList = common dso_local global i32 0, align 4
@GU_PSM_5650 = common dso_local global i32 0, align 4
@dynamic_palette = common dso_local global i64 0, align 8
@blit_16bit_mode = common dso_local global i32 0, align 4
@VRAM_STUFF = common dso_local global i64 0, align 8
@GU_PSM_T8 = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@need_pal_upload = common dso_local global i64 0, align 8
@localPal = common dso_local global i32 0, align 4
@g_vertices = common dso_local global %struct.Vertex* null, align 8
@GU_SPRITES = common dso_local global i32 0, align 4
@GU_TEXTURE_16BIT = common dso_local global i32 0, align 4
@GU_VERTEX_16BIT = common dso_local global i32 0, align 4
@GU_TRANSFORM_2D = common dso_local global i32 0, align 4
@SLICE_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @blitscreen_clut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blitscreen_clut() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Vertex*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @fbimg_offs, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i64, i64* @psp_screen, align 8
  %6 = load i64, i64* @VRAM_FB0, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i64, i64* @VRAMOFFS_FB0, align 8
  br label %12

10:                                               ; preds = %0
  %11 = load i64, i64* @VRAMOFFS_FB1, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i64 [ %9, %8 ], [ %11, %10 ]
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %1, align 4
  %18 = call i32 @sceGuSync(i32 0, i32 0)
  %19 = load i32, i32* @GU_DIRECT, align 4
  %20 = load i32, i32* @guCmdList, align 4
  %21 = call i32 @sceGuStart(i32 %19, i32 %20)
  %22 = load i32, i32* @GU_PSM_5650, align 4
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @sceGuDrawBuffer(i32 %22, i8* %25, i32 512)
  %27 = load i64, i64* @dynamic_palette, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %12
  %30 = load i32, i32* @blit_16bit_mode, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @GU_PSM_5650, align 4
  %34 = call i32 @sceGuTexMode(i32 %33, i32 0, i32 0, i32 0)
  %35 = load i64, i64* @VRAM_STUFF, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = getelementptr inbounds i8, i8* %36, i64 122880
  %38 = call i32 @sceGuTexImage(i32 0, i32 512, i32 512, i32 512, i8* %37)
  store i32 1, i32* @blit_16bit_mode, align 4
  br label %39

39:                                               ; preds = %32, %29
  br label %69

40:                                               ; preds = %12
  %41 = load i32, i32* @blit_16bit_mode, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i32, i32* @GU_PSM_5650, align 4
  %45 = call i32 @sceGuClutMode(i32 %44, i32 0, i32 255, i32 0)
  %46 = load i32, i32* @GU_PSM_T8, align 4
  %47 = call i32 @sceGuTexMode(i32 %46, i32 0, i32 0, i32 0)
  %48 = load i64, i64* @VRAM_STUFF, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = getelementptr inbounds i8, i8* %49, i64 16
  %51 = call i32 @sceGuTexImage(i32 0, i32 512, i32 512, i32 512, i8* %50)
  store i32 0, i32* @blit_16bit_mode, align 4
  br label %52

52:                                               ; preds = %43, %40
  %53 = load i32, i32* @PicoOpt, align 4
  %54 = and i32 %53, 16
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 @do_pal_update(i32 0, i32 0)
  br label %61

61:                                               ; preds = %59, %56, %52
  %62 = call i32 (...) @sceKernelDcacheWritebackAll()
  %63 = load i64, i64* @need_pal_upload, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  store i64 0, i64* @need_pal_upload, align 8
  %66 = load i32, i32* @localPal, align 4
  %67 = call i32 @sceGuClutLoad(i32 32, i32 %66)
  br label %68

68:                                               ; preds = %65, %61
  br label %69

69:                                               ; preds = %68, %39
  %70 = load %struct.Vertex*, %struct.Vertex** @g_vertices, align 8
  %71 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %70, i64 0
  %72 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %129

75:                                               ; preds = %69
  %76 = load %struct.Vertex*, %struct.Vertex** @g_vertices, align 8
  %77 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %76, i64 1
  %78 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.Vertex*, %struct.Vertex** @g_vertices, align 8
  %81 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %80, i64 1
  %82 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %79, %83
  br i1 %84, label %85, label %129

85:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %125, %85
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.Vertex*, %struct.Vertex** @g_vertices, align 8
  %90 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %89, i64 1
  %91 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %88, %92
  br i1 %93, label %94, label %128

94:                                               ; preds = %86
  %95 = call i64 @sceGuGetMemory(i32 32)
  %96 = inttoptr i64 %95 to %struct.Vertex*
  store %struct.Vertex* %96, %struct.Vertex** %2, align 8
  %97 = load %struct.Vertex*, %struct.Vertex** %2, align 8
  %98 = load %struct.Vertex*, %struct.Vertex** @g_vertices, align 8
  %99 = call i32 @memcpy(%struct.Vertex* %97, %struct.Vertex* %98, i32 32)
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = load %struct.Vertex*, %struct.Vertex** %2, align 8
  %103 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %102, i64 0
  %104 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %103, i32 0, i32 1
  store i64 %101, i64* %104, align 8
  %105 = load %struct.Vertex*, %struct.Vertex** %2, align 8
  %106 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %105, i64 0
  %107 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %106, i32 0, i32 0
  store i64 %101, i64* %107, align 8
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 32
  %110 = sext i32 %109 to i64
  %111 = load %struct.Vertex*, %struct.Vertex** %2, align 8
  %112 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %111, i64 1
  %113 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %112, i32 0, i32 1
  store i64 %110, i64* %113, align 8
  %114 = load %struct.Vertex*, %struct.Vertex** %2, align 8
  %115 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %114, i64 1
  %116 = getelementptr inbounds %struct.Vertex, %struct.Vertex* %115, i32 0, i32 0
  store i64 %110, i64* %116, align 8
  %117 = load i32, i32* @GU_SPRITES, align 4
  %118 = load i32, i32* @GU_TEXTURE_16BIT, align 4
  %119 = load i32, i32* @GU_VERTEX_16BIT, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @GU_TRANSFORM_2D, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.Vertex*, %struct.Vertex** %2, align 8
  %124 = call i32 @sceGuDrawArray(i32 %117, i32 %122, i32 2, i32 0, %struct.Vertex* %123)
  br label %125

125:                                              ; preds = %94
  %126 = load i32, i32* %3, align 4
  %127 = add nsw i32 %126, 32
  store i32 %127, i32* %3, align 4
  br label %86

128:                                              ; preds = %86
  br label %138

129:                                              ; preds = %75, %69
  %130 = load i32, i32* @GU_SPRITES, align 4
  %131 = load i32, i32* @GU_TEXTURE_16BIT, align 4
  %132 = load i32, i32* @GU_VERTEX_16BIT, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @GU_TRANSFORM_2D, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.Vertex*, %struct.Vertex** @g_vertices, align 8
  %137 = call i32 @sceGuDrawArray(i32 %130, i32 %135, i32 2, i32 0, %struct.Vertex* %136)
  br label %138

138:                                              ; preds = %129, %128
  %139 = call i32 (...) @sceGuFinish()
  ret void
}

declare dso_local i32 @sceGuSync(i32, i32) #1

declare dso_local i32 @sceGuStart(i32, i32) #1

declare dso_local i32 @sceGuDrawBuffer(i32, i8*, i32) #1

declare dso_local i32 @sceGuTexMode(i32, i32, i32, i32) #1

declare dso_local i32 @sceGuTexImage(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @sceGuClutMode(i32, i32, i32, i32) #1

declare dso_local i32 @do_pal_update(i32, i32) #1

declare dso_local i32 @sceKernelDcacheWritebackAll(...) #1

declare dso_local i32 @sceGuClutLoad(i32, i32) #1

declare dso_local i64 @sceGuGetMemory(i32) #1

declare dso_local i32 @memcpy(%struct.Vertex*, %struct.Vertex*, i32) #1

declare dso_local i32 @sceGuDrawArray(i32, i32, i32, i32, %struct.Vertex*) #1

declare dso_local i32 @sceGuFinish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
