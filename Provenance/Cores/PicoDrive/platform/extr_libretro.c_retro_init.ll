; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/extr_libretro.c_retro_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/extr_libretro.c_retro_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32* null, align 8
@emu_log = common dso_local global i32* null, align 8
@RETRO_ENVIRONMENT_SET_PERFORMANCE_LEVEL = common dso_local global i32 0, align 4
@RETRO_ENVIRONMENT_SET_DISK_CONTROL_INTERFACE = common dso_local global i32 0, align 4
@disk_control = common dso_local global i32 0, align 4
@POPT_EN_STEREO = common dso_local global i32 0, align 4
@POPT_EN_FM = common dso_local global i32 0, align 4
@POPT_EN_PSG = common dso_local global i32 0, align 4
@POPT_EN_Z80 = common dso_local global i32 0, align 4
@POPT_EN_MCD_PCM = common dso_local global i32 0, align 4
@POPT_EN_MCD_CDDA = common dso_local global i32 0, align 4
@POPT_EN_MCD_GFX = common dso_local global i32 0, align 4
@POPT_EN_32X = common dso_local global i32 0, align 4
@POPT_EN_PWM = common dso_local global i32 0, align 4
@POPT_ACC_SPRITES = common dso_local global i32 0, align 4
@POPT_DIS_32C_BORDER = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@PsndRate = common dso_local global i32 0, align 4
@PicoAutoRgnOrder = common dso_local global i32 0, align 4
@vout_width = common dso_local global i32 0, align 4
@vout_height = common dso_local global i32 0, align 4
@VOUT_MAX_WIDTH = common dso_local global i32 0, align 4
@VOUT_MAX_HEIGHT = common dso_local global i32 0, align 4
@vout_buf = common dso_local global i32 0, align 4
@PDF_RGB555 = common dso_local global i32 0, align 4
@disk_tray_open = common dso_local global i32 0, align 4
@PicoMCDopenTray = common dso_local global i32 0, align 4
@disk_tray_close = common dso_local global i32 0, align 4
@PicoMCDcloseTray = common dso_local global i32 0, align 4
@PICO_INPUT_PAD_6BTN = common dso_local global i32 0, align 4
@POPT_EN_DRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @retro_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @stdout, align 8
  store i32* %2, i32** @emu_log, align 8
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @RETRO_ENVIRONMENT_SET_PERFORMANCE_LEVEL, align 4
  %4 = call i32 @environ_cb(i32 %3, i32* %1)
  %5 = load i32, i32* @RETRO_ENVIRONMENT_SET_DISK_CONTROL_INTERFACE, align 4
  %6 = call i32 @environ_cb(i32 %5, i32* @disk_control)
  %7 = load i32, i32* @POPT_EN_STEREO, align 4
  %8 = load i32, i32* @POPT_EN_FM, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @POPT_EN_PSG, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @POPT_EN_Z80, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @POPT_EN_MCD_PCM, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @POPT_EN_MCD_CDDA, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @POPT_EN_MCD_GFX, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @POPT_EN_32X, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @POPT_EN_PWM, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @POPT_ACC_SPRITES, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @POPT_DIS_32C_BORDER, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* @PicoOpt, align 4
  store i32 44100, i32* @PsndRate, align 4
  store i32 388, i32* @PicoAutoRgnOrder, align 4
  store i32 320, i32* @vout_width, align 4
  store i32 240, i32* @vout_height, align 4
  %28 = load i32, i32* @VOUT_MAX_WIDTH, align 4
  %29 = load i32, i32* @VOUT_MAX_HEIGHT, align 4
  %30 = mul nsw i32 %28, %29
  %31 = mul nsw i32 %30, 2
  %32 = call i32 @malloc(i32 %31)
  store i32 %32, i32* @vout_buf, align 4
  %33 = call i32 (...) @PicoInit()
  %34 = load i32, i32* @PDF_RGB555, align 4
  %35 = call i32 @PicoDrawSetOutFormat(i32 %34, i32 0)
  %36 = load i32, i32* @vout_buf, align 4
  %37 = load i32, i32* @vout_width, align 4
  %38 = mul nsw i32 %37, 2
  %39 = call i32 @PicoDrawSetOutBuf(i32 %36, i32 %38)
  %40 = load i32, i32* @disk_tray_open, align 4
  store i32 %40, i32* @PicoMCDopenTray, align 4
  %41 = load i32, i32* @disk_tray_close, align 4
  store i32 %41, i32* @PicoMCDcloseTray, align 4
  %42 = load i32, i32* @PICO_INPUT_PAD_6BTN, align 4
  %43 = call i32 @PicoSetInputDevice(i32 0, i32 %42)
  %44 = load i32, i32* @PICO_INPUT_PAD_6BTN, align 4
  %45 = call i32 @PicoSetInputDevice(i32 1, i32 %44)
  ret void
}

declare dso_local i32 @environ_cb(i32, i32*) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @PicoInit(...) #1

declare dso_local i32 @PicoDrawSetOutFormat(i32, i32) #1

declare dso_local i32 @PicoDrawSetOutBuf(i32, i32) #1

declare dso_local i32 @PicoSetInputDevice(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
