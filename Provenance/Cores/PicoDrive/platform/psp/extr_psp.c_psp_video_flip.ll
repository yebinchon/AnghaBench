; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_psp.c_psp_video_flip.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_psp.c_psp_video_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@psp_screen = common dso_local global i32 0, align 4
@PSP_DISPLAY_PIXEL_FORMAT_565 = common dso_local global i32 0, align 4
@PSP_DISPLAY_SETBUF_IMMEDIATE = common dso_local global i32 0, align 4
@PSP_DISPLAY_SETBUF_NEXTFRAME = common dso_local global i32 0, align 4
@current_screen = common dso_local global i32 0, align 4
@VRAM_FB0 = common dso_local global i32 0, align 4
@VRAM_FB1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psp_video_flip(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (...) @sceDisplayWaitVblankStart()
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32, i32* @psp_screen, align 4
  %9 = load i32, i32* @PSP_DISPLAY_PIXEL_FORMAT_565, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i32, i32* @PSP_DISPLAY_SETBUF_IMMEDIATE, align 4
  br label %16

14:                                               ; preds = %7
  %15 = load i32, i32* @PSP_DISPLAY_SETBUF_NEXTFRAME, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = call i32 @sceDisplaySetFrameBuf(i32 %8, i32 512, i32 %9, i32 %17)
  %19 = load i32, i32* @current_screen, align 4
  %20 = xor i32 %19, 1
  store i32 %20, i32* @current_screen, align 4
  %21 = load i32, i32* @current_screen, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @VRAM_FB0, align 4
  br label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @VRAM_FB1, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* @psp_screen, align 4
  ret void
}

declare dso_local i32 @sceDisplayWaitVblankStart(...) #1

declare dso_local i32 @sceDisplaySetFrameBuf(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
