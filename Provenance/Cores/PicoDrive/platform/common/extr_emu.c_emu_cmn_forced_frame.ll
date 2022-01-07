; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_emu_cmn_forced_frame.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_emu_cmn_forced_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PicoOpt = common dso_local global i32 0, align 4
@g_screen_ptr = common dso_local global i32 0, align 4
@g_screen_width = common dso_local global i32 0, align 4
@g_screen_height = common dso_local global i32 0, align 4
@POPT_ALT_RENDERER = common dso_local global i32 0, align 4
@POPT_ACC_SPRITES = common dso_local global i32 0, align 4
@POPT_EN_SOFTSCALE = common dso_local global i32 0, align 4
@PDF_RGB555 = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emu_cmn_forced_frame(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @PicoOpt, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @g_screen_ptr, align 4
  %8 = load i32, i32* @g_screen_width, align 4
  %9 = load i32, i32* @g_screen_height, align 4
  %10 = mul nsw i32 %8, %9
  %11 = mul nsw i32 %10, 2
  %12 = sdiv i32 %11, 4
  %13 = call i32 @memset32(i32 %7, i32 0, i32 %12)
  %14 = load i32, i32* @POPT_ALT_RENDERER, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* @PicoOpt, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* @PicoOpt, align 4
  %18 = load i32, i32* @POPT_ACC_SPRITES, align 4
  %19 = load i32, i32* @PicoOpt, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* @PicoOpt, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @POPT_EN_SOFTSCALE, align 4
  %25 = load i32, i32* @PicoOpt, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* @PicoOpt, align 4
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i32, i32* @PDF_RGB555, align 4
  %29 = call i32 @PicoDrawSetOutFormat(i32 %28, i32 1)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 (...) @PicoFrame()
  br label %36

34:                                               ; preds = %27
  %35 = call i32 (...) @PicoFrameDrawOnly()
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* @PicoOpt, align 4
  ret void
}

declare dso_local i32 @memset32(i32, i32, i32) #1

declare dso_local i32 @PicoDrawSetOutFormat(i32, i32) #1

declare dso_local i32 @PicoFrame(...) #1

declare dso_local i32 @PicoFrameDrawOnly(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
