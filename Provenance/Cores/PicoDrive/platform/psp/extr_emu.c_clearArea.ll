; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_clearArea.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_clearArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@psp_screen = common dso_local global i32* null, align 8
@VRAM_CACHED_STUFF = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @clearArea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clearArea(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load i32*, i32** @psp_screen, align 8
  %8 = call i32 @memset32_uncached(i32* %7, i32 0, i32 69632)
  %9 = call i32 @psp_video_flip(i32 0)
  %10 = load i32*, i32** @psp_screen, align 8
  %11 = call i32 @memset32_uncached(i32* %10, i32 0, i32 69632)
  %12 = load i32*, i32** @VRAM_CACHED_STUFF, align 8
  %13 = call i32 @memset32(i32* %12, i32 -522133280, i32 30720)
  %14 = load i32*, i32** @VRAM_CACHED_STUFF, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 30720
  %16 = call i32 @memset32(i32* %15, i32 0, i32 61440)
  br label %28

17:                                               ; preds = %1
  %18 = call i8* (...) @psp_video_get_active_fb()
  store i8* %18, i8** %3, align 8
  %19 = load i32*, i32** @psp_screen, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = getelementptr inbounds i8, i8* %20, i64 270336
  %22 = bitcast i8* %21 to i32*
  %23 = call i32 @memset32_uncached(i32* %22, i32 0, i32 2048)
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 270336
  %26 = bitcast i8* %25 to i32*
  %27 = call i32 @memset32_uncached(i32* %26, i32 0, i32 2048)
  br label %28

28:                                               ; preds = %17, %6
  ret void
}

declare dso_local i32 @memset32_uncached(i32*, i32, i32) #1

declare dso_local i32 @psp_video_flip(i32) #1

declare dso_local i32 @memset32(i32*, i32, i32) #1

declare dso_local i8* @psp_video_get_active_fb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
