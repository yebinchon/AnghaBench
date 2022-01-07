; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_pemu_forced_frame.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_pemu_forced_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PicoOpt = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@POPT_ACC_SPRITES = common dso_local global i32 0, align 4
@POPT_EN_SOFTSCALE = common dso_local global i32 0, align 4
@giz_screen = common dso_local global i32* null, align 8
@PDF_RGB555 = common dso_local global i32 0, align 4
@EmuScanBegin16 = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

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
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @PicoOpt, align 4
  %10 = and i32 %9, -17
  store i32 %10, i32* @PicoOpt, align 4
  %11 = load i32, i32* @POPT_ACC_SPRITES, align 4
  %12 = load i32, i32* @PicoOpt, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* @PicoOpt, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @POPT_EN_SOFTSCALE, align 4
  %18 = load i32, i32* @PicoOpt, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* @PicoOpt, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 4
  %22 = or i32 %21, 128
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 4
  %23 = load i32*, i32** @giz_screen, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32* @fb_lock(i32 1)
  store i32* %26, i32** @giz_screen, align 8
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, i32* @PDF_RGB555, align 4
  %29 = call i32 @PicoDrawSetOutFormat(i32 %28, i32 0)
  %30 = load i32, i32* @EmuScanBegin16, align 4
  %31 = call i32 @PicoDrawSetCallbacks(i32 %30, i32* null)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 4
  %32 = call i32 (...) @PicoFrameDrawOnly()
  %33 = call i32 (...) @fb_unlock()
  store i32* null, i32** @giz_screen, align 8
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* @PicoOpt, align 4
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32* @fb_lock(i32) #1

declare dso_local i32 @PicoDrawSetOutFormat(i32, i32) #1

declare dso_local i32 @PicoDrawSetCallbacks(i32, i32*) #1

declare dso_local i32 @PicoFrameDrawOnly(...) #1

declare dso_local i32 @fb_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
