; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_vidResetMode.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_vidResetMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GU_DIRECT = common dso_local global i32 0, align 4
@guCmdList = common dso_local global i32 0, align 4
@GU_PSM_5650 = common dso_local global i32 0, align 4
@GU_PSM_T8 = common dso_local global i32 0, align 4
@GU_TFX_REPLACE = common dso_local global i32 0, align 4
@GU_TCC_RGB = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GU_LINEAR = common dso_local global i32 0, align 4
@GU_NEAREST = common dso_local global i32 0, align 4
@VRAM_STUFF = common dso_local global i64 0, align 8
@PDF_NONE = common dso_local global i32 0, align 4
@EmuScanSlowBegin = common dso_local global i32 0, align 4
@EmuScanSlowEnd = common dso_local global i32 0, align 4
@localPal = common dso_local global i32* null, align 8
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@dynamic_palette = common dso_local global i64 0, align 8
@blit_16bit_mode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vidResetMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vidResetMode() #0 {
  %1 = call i32 @sceGuSync(i32 0, i32 0)
  %2 = load i32, i32* @GU_DIRECT, align 4
  %3 = load i32, i32* @guCmdList, align 4
  %4 = call i32 @sceGuStart(i32 %2, i32 %3)
  %5 = load i32, i32* @GU_PSM_5650, align 4
  %6 = call i32 @sceGuClutMode(i32 %5, i32 0, i32 255, i32 0)
  %7 = load i32, i32* @GU_PSM_T8, align 4
  %8 = call i32 @sceGuTexMode(i32 %7, i32 0, i32 0, i32 0)
  %9 = load i32, i32* @GU_TFX_REPLACE, align 4
  %10 = load i32, i32* @GU_TCC_RGB, align 4
  %11 = call i32 @sceGuTexFunc(i32 %9, i32 %10)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %0
  %15 = load i32, i32* @GU_LINEAR, align 4
  %16 = load i32, i32* @GU_LINEAR, align 4
  %17 = call i32 @sceGuTexFilter(i32 %15, i32 %16)
  br label %22

18:                                               ; preds = %0
  %19 = load i32, i32* @GU_NEAREST, align 4
  %20 = load i32, i32* @GU_NEAREST, align 4
  %21 = call i32 @sceGuTexFilter(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = call i32 @sceGuTexScale(float 1.000000e+00, float 1.000000e+00)
  %24 = call i32 @sceGuTexOffset(float 0.000000e+00, float 0.000000e+00)
  %25 = load i64, i64* @VRAM_STUFF, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = getelementptr inbounds i8, i8* %26, i64 16
  %28 = call i32 @sceGuTexImage(i32 0, i32 512, i32 512, i32 512, i8* %27)
  %29 = load i32, i32* @PDF_NONE, align 4
  %30 = call i32 @PicoDrawSetOutFormat(i32 %29, i32 0)
  %31 = load i32, i32* @EmuScanSlowBegin, align 4
  %32 = load i32, i32* @EmuScanSlowEnd, align 4
  %33 = call i32 @PicoDrawSetCallbacks(i32 %31, i32 %32)
  %34 = load i32*, i32** @localPal, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 224
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** @localPal, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 240
  store i32 31, i32* %37, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 4
  store i64 0, i64* @dynamic_palette, align 8
  store i64 0, i64* @blit_16bit_mode, align 8
  %38 = call i32 (...) @sceGuFinish()
  %39 = call i32 (...) @set_scaling_params()
  %40 = call i32 @sceGuSync(i32 0, i32 0)
  ret void
}

declare dso_local i32 @sceGuSync(i32, i32) #1

declare dso_local i32 @sceGuStart(i32, i32) #1

declare dso_local i32 @sceGuClutMode(i32, i32, i32, i32) #1

declare dso_local i32 @sceGuTexMode(i32, i32, i32, i32) #1

declare dso_local i32 @sceGuTexFunc(i32, i32) #1

declare dso_local i32 @sceGuTexFilter(i32, i32) #1

declare dso_local i32 @sceGuTexScale(float, float) #1

declare dso_local i32 @sceGuTexOffset(float, float) #1

declare dso_local i32 @sceGuTexImage(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @PicoDrawSetOutFormat(i32, i32) #1

declare dso_local i32 @PicoDrawSetCallbacks(i32, i32) #1

declare dso_local i32 @sceGuFinish(...) #1

declare dso_local i32 @set_scaling_params(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
