; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vga_gfx.c_vga_gfx_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vga_gfx.c_vga_gfx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i32 }

@vga_video_width = common dso_local global i32 0, align 4
@vga_video_height = common dso_local global i32 0, align 4
@vga_rgb32 = common dso_local global i64 0, align 8
@vga_video_pitch = common dso_local global i32 0, align 4
@vga_video_bits = common dso_local global i32 0, align 4
@VGA_WIDTH = common dso_local global i32 0, align 4
@VGA_HEIGHT = common dso_local global i32 0, align 4
@vga_frame = common dso_local global i8* null, align 8
@FONT_DRIVER_RENDER_VGA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i32**, i8**)* @vga_gfx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vga_gfx_init(%struct.TYPE_3__* %0, i32** %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = call i64 @calloc(i32 1, i32 1)
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** %7, align 8
  %10 = load i32**, i32*** %5, align 8
  store i32* null, i32** %10, align 8
  %11 = load i8**, i8*** %6, align 8
  store i8* null, i8** %11, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* @vga_video_width, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* @vga_video_height, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* @vga_rgb32, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %28, 4
  store i32 %29, i32* @vga_video_pitch, align 4
  store i32 32, i32* @vga_video_bits, align 4
  br label %35

30:                                               ; preds = %3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %33, 2
  store i32 %34, i32* @vga_video_pitch, align 4
  store i32 16, i32* @vga_video_bits, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @VGA_WIDTH, align 4
  %37 = load i32, i32* @VGA_HEIGHT, align 4
  %38 = mul nsw i32 %36, %37
  %39 = call i64 @malloc(i32 %38)
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** @vga_frame, align 8
  %41 = call i32 (...) @vga_gfx_create()
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @FONT_DRIVER_RENDER_VGA, align 4
  %51 = call i32 @font_driver_init_osd(i32* null, i32 0, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %35
  %53 = load i8*, i8** %7, align 8
  ret i8* %53
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @vga_gfx_create(...) #1

declare dso_local i32 @font_driver_init_osd(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
