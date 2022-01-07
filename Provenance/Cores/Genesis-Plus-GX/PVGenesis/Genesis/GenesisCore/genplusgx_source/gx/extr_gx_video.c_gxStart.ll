; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxStart.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@gp_fifo = common dso_local global i32 0, align 4
@DEFAULT_FIFO_SIZE = common dso_local global i32 0, align 4
@GX_PF_RGB8_Z24 = common dso_local global i32 0, align 4
@GX_ZC_LINEAR = common dso_local global i32 0, align 4
@GX_CULL_NONE = common dso_local global i32 0, align 4
@GX_CLIP_DISABLE = common dso_local global i32 0, align 4
@GX_GM_1_0 = common dso_local global i32 0, align 4
@GX_FALSE = common dso_local global i32 0, align 4
@GX_ALWAYS = common dso_local global i32 0, align 4
@GX_TRUE = common dso_local global i32 0, align 4
@cam = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GX_PNMTX0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gxStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxStart() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @DEFAULT_FIFO_SIZE, align 4
  %3 = call i32 @memset(i32* @gp_fifo, i32 0, i32 %2)
  %4 = load i32, i32* @DEFAULT_FIFO_SIZE, align 4
  %5 = call i32 @GX_Init(i32* @gp_fifo, i32 %4)
  %6 = load i32, i32* @GX_PF_RGB8_Z24, align 4
  %7 = load i32, i32* @GX_ZC_LINEAR, align 4
  %8 = call i32 @GX_SetPixelFmt(i32 %6, i32 %7)
  %9 = load i32, i32* @GX_CULL_NONE, align 4
  %10 = call i32 @GX_SetCullMode(i32 %9)
  %11 = load i32, i32* @GX_CLIP_DISABLE, align 4
  %12 = call i32 @GX_SetClipMode(i32 %11)
  %13 = load i32, i32* @GX_GM_1_0, align 4
  %14 = call i32 @GX_SetDispCopyGamma(i32 %13)
  %15 = load i32, i32* @GX_FALSE, align 4
  %16 = load i32, i32* @GX_ALWAYS, align 4
  %17 = load i32, i32* @GX_FALSE, align 4
  %18 = call i32 @GX_SetZMode(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @GX_TRUE, align 4
  %20 = call i32 @GX_SetColorUpdate(i32 %19)
  %21 = load i32, i32* @GX_FALSE, align 4
  %22 = call i32 @GX_SetAlphaUpdate(i32 %21)
  %23 = call i32 @memset(i32* %1, i32 0, i32 4)
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @guLookAt(i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cam, i32 0, i32 2), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cam, i32 0, i32 1), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cam, i32 0, i32 0))
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @GX_PNMTX0, align 4
  %28 = call i32 @GX_LoadPosMtxImm(i32 %26, i32 %27)
  %29 = call i32 (...) @GX_Flush()
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @GX_Init(i32*, i32) #1

declare dso_local i32 @GX_SetPixelFmt(i32, i32) #1

declare dso_local i32 @GX_SetCullMode(i32) #1

declare dso_local i32 @GX_SetClipMode(i32) #1

declare dso_local i32 @GX_SetDispCopyGamma(i32) #1

declare dso_local i32 @GX_SetZMode(i32, i32, i32) #1

declare dso_local i32 @GX_SetColorUpdate(i32) #1

declare dso_local i32 @GX_SetAlphaUpdate(i32) #1

declare dso_local i32 @guLookAt(i32, i32*, i32*, i32*) #1

declare dso_local i32 @GX_LoadPosMtxImm(i32, i32) #1

declare dso_local i32 @GX_Flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
