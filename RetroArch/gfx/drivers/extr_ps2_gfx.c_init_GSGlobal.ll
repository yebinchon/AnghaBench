; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_ps2_gfx.c_init_GSGlobal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_ps2_gfx.c_init_GSGlobal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@GS_MODE_NTSC = common dso_local global i32 0, align 4
@GS_INTERLACED = common dso_local global i32 0, align 4
@GS_FIELD = common dso_local global i32 0, align 4
@NTSC_WIDTH = common dso_local global i32 0, align 4
@NTSC_HEIGHT = common dso_local global i32 0, align 4
@GS_PSM_CT16 = common dso_local global i32 0, align 4
@GS_PSMZ_16 = common dso_local global i32 0, align 4
@GS_SETTING_OFF = common dso_local global i8* null, align 8
@D_CTRL_RELE_OFF = common dso_local global i32 0, align 4
@D_CTRL_MFD_OFF = common dso_local global i32 0, align 4
@D_CTRL_STS_UNSPEC = common dso_local global i32 0, align 4
@D_CTRL_STD_OFF = common dso_local global i32 0, align 4
@D_CTRL_RCYC_8 = common dso_local global i32 0, align 4
@DMA_CHANNEL_GIF = common dso_local global i32 0, align 4
@GS_ONESHOT = common dso_local global i32 0, align 4
@GS_BLACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* ()* @init_GSGlobal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @init_GSGlobal() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = call %struct.TYPE_7__* (...) @gsKit_init_global()
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %1, align 8
  %3 = load i32, i32* @GS_MODE_NTSC, align 4
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 9
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @GS_INTERLACED, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 8
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @GS_FIELD, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @NTSC_WIDTH, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @NTSC_HEIGHT, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @GS_PSM_CT16, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @GS_PSMZ_16, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** @GS_SETTING_OFF, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @GS_SETTING_OFF, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @GS_SETTING_OFF, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @D_CTRL_RELE_OFF, align 4
  %34 = load i32, i32* @D_CTRL_MFD_OFF, align 4
  %35 = load i32, i32* @D_CTRL_STS_UNSPEC, align 4
  %36 = load i32, i32* @D_CTRL_STD_OFF, align 4
  %37 = load i32, i32* @D_CTRL_RCYC_8, align 4
  %38 = load i32, i32* @DMA_CHANNEL_GIF, align 4
  %39 = shl i32 1, %38
  %40 = call i32 @dmaKit_init(i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %39)
  %41 = load i32, i32* @DMA_CHANNEL_GIF, align 4
  %42 = call i32 @dmaKit_chan_init(i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %44 = call i32 @gsKit_init_screen(%struct.TYPE_7__* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %46 = load i32, i32* @GS_ONESHOT, align 4
  %47 = call i32 @gsKit_mode_switch(%struct.TYPE_7__* %45, i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %49 = load i32, i32* @GS_BLACK, align 4
  %50 = call i32 @gsKit_clear(%struct.TYPE_7__* %48, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %51
}

declare dso_local %struct.TYPE_7__* @gsKit_init_global(...) #1

declare dso_local i32 @dmaKit_init(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmaKit_chan_init(i32) #1

declare dso_local i32 @gsKit_init_screen(%struct.TYPE_7__*) #1

declare dso_local i32 @gsKit_mode_switch(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @gsKit_clear(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
