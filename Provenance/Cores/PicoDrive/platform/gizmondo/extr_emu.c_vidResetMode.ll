; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_vidResetMode.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_vidResetMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@giz_screen = common dso_local global i32* null, align 8
@PicoOpt = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@PDF_RGB555 = common dso_local global i32 0, align 4
@EmuScanBegin16 = common dso_local global i32 0, align 4
@PDF_NONE = common dso_local global i32 0, align 4
@EmuScanBegin8 = common dso_local global i32 0, align 4
@localPal = common dso_local global i32* null, align 8
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vidResetMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vidResetMode() #0 {
  %1 = call i32* @fb_lock(i32 1)
  store i32* %1, i32** @giz_screen, align 8
  %2 = load i32, i32* @PicoOpt, align 4
  %3 = and i32 %2, 16
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %21

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 4
  %8 = and i32 %7, 128
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load i32, i32* @PDF_RGB555, align 4
  %12 = call i32 @PicoDrawSetOutFormat(i32 %11, i32 0)
  %13 = load i32, i32* @EmuScanBegin16, align 4
  %14 = call i32 @PicoDrawSetCallbacks(i32 %13, i32* null)
  br label %20

15:                                               ; preds = %6
  %16 = load i32, i32* @PDF_NONE, align 4
  %17 = call i32 @PicoDrawSetOutFormat(i32 %16, i32 0)
  %18 = load i32, i32* @EmuScanBegin8, align 4
  %19 = call i32 @PicoDrawSetCallbacks(i32 %18, i32* null)
  br label %20

20:                                               ; preds = %15, %10
  br label %21

21:                                               ; preds = %20, %5
  %22 = load i32, i32* @PicoOpt, align 4
  %23 = and i32 %22, 16
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 4
  %27 = and i32 %26, 128
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %25, %21
  %30 = load i32*, i32** @localPal, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 192
  store i32 1536, i32* %31, align 4
  %32 = load i32*, i32** @localPal, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 208
  store i32 49152, i32* %33, align 4
  %34 = load i32*, i32** @localPal, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 224
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** @localPal, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 240
  store i32 65535, i32* %37, align 4
  br label %38

38:                                               ; preds = %29, %25
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 4
  %39 = load i32*, i32** @giz_screen, align 8
  %40 = call i32 @memset32(i32* %39, i32 0, i32 38520)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 4
  %42 = and i32 %41, 32768
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = call i32 (...) @fb_unlock()
  %46 = call i32* @fb_lock(i32 0)
  store i32* %46, i32** @giz_screen, align 8
  %47 = load i32*, i32** @giz_screen, align 8
  %48 = call i32 @memset32(i32* %47, i32 0, i32 38520)
  br label %49

49:                                               ; preds = %44, %38
  %50 = call i32 (...) @fb_unlock()
  store i32* null, i32** @giz_screen, align 8
  ret void
}

declare dso_local i32* @fb_lock(i32) #1

declare dso_local i32 @PicoDrawSetOutFormat(i32, i32) #1

declare dso_local i32 @PicoDrawSetCallbacks(i32, i32*) #1

declare dso_local i32 @memset32(i32*, i32, i32) #1

declare dso_local i32 @fb_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
