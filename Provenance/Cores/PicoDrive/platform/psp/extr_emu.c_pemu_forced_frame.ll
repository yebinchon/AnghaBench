; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_pemu_forced_frame.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_pemu_forced_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PicoOpt = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@POPT_ALT_RENDERER = common dso_local global i32 0, align 4
@POPT_ACC_SPRITES = common dso_local global i32 0, align 4
@POPT_EN_SOFTSCALE = common dso_local global i32 0, align 4
@VRAM_CACHED_STUFF = common dso_local global i32* null, align 8
@psp_screen = common dso_local global i64 0, align 8
@PDF_NONE = common dso_local global i32 0, align 4
@EmuScanSlowBegin = common dso_local global i32 0, align 4
@EmuScanSlowEnd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pemu_forced_frame(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @PicoOpt, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @POPT_ALT_RENDERER, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* @PicoOpt, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* @PicoOpt, align 4
  %13 = load i32, i32* @POPT_ACC_SPRITES, align 4
  %14 = load i32, i32* @PicoOpt, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* @PicoOpt, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @POPT_EN_SOFTSCALE, align 4
  %20 = load i32, i32* @PicoOpt, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* @PicoOpt, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %24 = or i32 %23, 128
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %25 = call i32 (...) @vidResetMode()
  %26 = load i32*, i32** @VRAM_CACHED_STUFF, align 8
  %27 = call i32 @memset32(i32* %26, i32 -522133280, i32 1024)
  %28 = load i32*, i32** @VRAM_CACHED_STUFF, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 29696
  %30 = call i32 @memset32(i32* %29, i32 -522133280, i32 1024)
  %31 = load i64, i64* @psp_screen, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 67584
  %34 = call i32 @memset32_uncached(i32* %33, i32 0, i32 2048)
  %35 = load i32, i32* @PDF_NONE, align 4
  %36 = call i32 @PicoDrawSetOutFormat(i32 %35, i32 0)
  %37 = load i32, i32* @EmuScanSlowBegin, align 4
  %38 = load i32, i32* @EmuScanSlowEnd, align 4
  %39 = call i32 @PicoDrawSetCallbacks(i32 %37, i32 %38)
  %40 = call i32 (...) @EmuScanPrepare()
  %41 = call i32 (...) @PicoFrameDrawOnly()
  %42 = call i32 (...) @blit1()
  %43 = call i32 @sceGuSync(i32 0, i32 0)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* @PicoOpt, align 4
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @vidResetMode(...) #1

declare dso_local i32 @memset32(i32*, i32, i32) #1

declare dso_local i32 @memset32_uncached(i32*, i32, i32) #1

declare dso_local i32 @PicoDrawSetOutFormat(i32, i32) #1

declare dso_local i32 @PicoDrawSetCallbacks(i32, i32) #1

declare dso_local i32 @EmuScanPrepare(...) #1

declare dso_local i32 @PicoFrameDrawOnly(...) #1

declare dso_local i32 @blit1(...) #1

declare dso_local i32 @sceGuSync(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
