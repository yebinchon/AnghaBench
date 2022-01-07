; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_vid_pollux.c_pollux_video_flip.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_vid_pollux.c_pollux_video_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fb_paddr = common dso_local global i32* null, align 8
@fb_work_buf = common dso_local global i64 0, align 8
@memregl = common dso_local global i32* null, align 8
@gp2x_screens = common dso_local global i32* null, align 8
@g_screen_ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pollux_video_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pollux_video_flip(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32*, i32** @fb_paddr, align 8
  %4 = load i64, i64* @fb_work_buf, align 8
  %5 = getelementptr inbounds i32, i32* %3, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** @memregl, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 4379
  store i32 %6, i32* %8, align 4
  %9 = load i32*, i32** @memregl, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 4123
  store i32 %6, i32* %10, align 4
  %11 = load i32*, i32** @memregl, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 4118
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, 16
  store i32 %14, i32* %12, align 4
  %15 = load i32*, i32** @memregl, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4374
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, 16
  store i32 %18, i32* %16, align 4
  %19 = load i64, i64* @fb_work_buf, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* @fb_work_buf, align 8
  %21 = load i64, i64* @fb_work_buf, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp uge i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i64 0, i64* @fb_work_buf, align 8
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i32*, i32** @gp2x_screens, align 8
  %28 = load i64, i64* @fb_work_buf, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* @g_screen_ptr, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
