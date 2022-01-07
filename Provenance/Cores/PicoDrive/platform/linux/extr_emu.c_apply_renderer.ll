; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_emu.c_apply_renderer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_emu.c_apply_renderer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@POPT_ALT_RENDERER = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@PDF_RGB555 = common dso_local global i32 0, align 4
@g_screen_ptr = common dso_local global i32 0, align 4
@g_screen_width = common dso_local global i32 0, align 4
@PDF_8BIT = common dso_local global i32 0, align 4
@PicoDraw2FB = common dso_local global i32 0, align 4
@PDF_NONE = common dso_local global i32 0, align 4
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_32X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @apply_renderer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_renderer() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  switch i32 %1, label %29 [
    i32 130, label %2
    i32 129, label %13
    i32 128, label %23
  ]

2:                                                ; preds = %0
  %3 = load i32, i32* @POPT_ALT_RENDERER, align 4
  %4 = xor i32 %3, -1
  %5 = load i32, i32* @PicoOpt, align 4
  %6 = and i32 %5, %4
  store i32 %6, i32* @PicoOpt, align 4
  %7 = load i32, i32* @PDF_RGB555, align 4
  %8 = call i32 @PicoDrawSetOutFormat(i32 %7, i32 0)
  %9 = load i32, i32* @g_screen_ptr, align 4
  %10 = load i32, i32* @g_screen_width, align 4
  %11 = mul nsw i32 %10, 2
  %12 = call i32 @PicoDrawSetOutBuf(i32 %9, i32 %11)
  br label %29

13:                                               ; preds = %0
  %14 = load i32, i32* @POPT_ALT_RENDERER, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* @PicoOpt, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* @PicoOpt, align 4
  %18 = load i32, i32* @PDF_8BIT, align 4
  %19 = call i32 @PicoDrawSetOutFormat(i32 %18, i32 0)
  %20 = load i32, i32* @PicoDraw2FB, align 4
  %21 = add nsw i32 %20, 8
  %22 = call i32 @PicoDrawSetOutBuf(i32 %21, i32 328)
  br label %29

23:                                               ; preds = %0
  %24 = load i32, i32* @POPT_ALT_RENDERER, align 4
  %25 = load i32, i32* @PicoOpt, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* @PicoOpt, align 4
  %27 = load i32, i32* @PDF_NONE, align 4
  %28 = call i32 @PicoDrawSetOutFormat(i32 %27, i32 0)
  br label %29

29:                                               ; preds = %0, %23, %13, %2
  %30 = load i32, i32* @PicoAHW, align 4
  %31 = load i32, i32* @PAHW_32X, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* @g_screen_ptr, align 4
  %36 = load i32, i32* @g_screen_width, align 4
  %37 = mul nsw i32 %36, 2
  %38 = call i32 @PicoDrawSetOutBuf(i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  ret void
}

declare dso_local i32 @PicoDrawSetOutFormat(i32, i32) #1

declare dso_local i32 @PicoDrawSetOutBuf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
