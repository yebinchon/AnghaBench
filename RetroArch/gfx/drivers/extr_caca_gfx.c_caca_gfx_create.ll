; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_caca_gfx.c_caca_gfx_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_caca_gfx.c_caca_gfx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@caca_display = common dso_local global i32 0, align 4
@caca_cv = common dso_local global i32 0, align 4
@caca_video_width = common dso_local global i64 0, align 8
@caca_video_height = common dso_local global i64 0, align 8
@caca_rgb32 = common dso_local global i64 0, align 8
@caca_video_pitch = common dso_local global i32 0, align 4
@caca_dither = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @caca_gfx_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @caca_gfx_create() #0 {
  %1 = call i32 @caca_create_display(i32* null)
  store i32 %1, i32* @caca_display, align 4
  %2 = load i32, i32* @caca_display, align 4
  %3 = call i32 @caca_get_canvas(i32 %2)
  store i32 %3, i32* @caca_cv, align 4
  %4 = load i64, i64* @caca_video_width, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i64, i64* @caca_video_height, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @caca_cv, align 4
  %11 = call i64 @caca_get_canvas_width(i32 %10)
  store i64 %11, i64* @caca_video_width, align 8
  %12 = load i32, i32* @caca_cv, align 4
  %13 = call i64 @caca_get_canvas_height(i32 %12)
  store i64 %13, i64* @caca_video_height, align 8
  br label %14

14:                                               ; preds = %9, %6
  %15 = load i64, i64* @caca_rgb32, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i64, i64* @caca_video_width, align 8
  %19 = load i64, i64* @caca_video_height, align 8
  %20 = load i32, i32* @caca_video_pitch, align 4
  %21 = call i32 @caca_create_dither(i32 32, i64 %18, i64 %19, i32 %20, i32 16711680, i32 65280, i32 255, i32 0)
  store i32 %21, i32* @caca_dither, align 4
  br label %27

22:                                               ; preds = %14
  %23 = load i64, i64* @caca_video_width, align 8
  %24 = load i64, i64* @caca_video_height, align 8
  %25 = load i32, i32* @caca_video_pitch, align 4
  %26 = call i32 @caca_create_dither(i32 16, i64 %23, i64 %24, i32 %25, i32 63488, i32 2016, i32 31, i32 0)
  store i32 %26, i32* @caca_dither, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = call i32 @video_driver_set_size(i64* @caca_video_width, i64* @caca_video_height)
  ret void
}

declare dso_local i32 @caca_create_display(i32*) #1

declare dso_local i32 @caca_get_canvas(i32) #1

declare dso_local i64 @caca_get_canvas_width(i32) #1

declare dso_local i64 @caca_get_canvas_height(i32) #1

declare dso_local i32 @caca_create_dither(i32, i64, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @video_driver_set_size(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
