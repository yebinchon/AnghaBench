; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/pandora/extr_plat.c_emu_video_mode_change.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/pandora/extr_plat.c_emu_video_mode_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@doing_bg_frame = common dso_local global i64 0, align 8
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@g_layer_w = common dso_local global i32 0, align 4
@g_layer_h = common dso_local global i32 0, align 4
@g_layer_cx = common dso_local global i32 0, align 4
@g_layer_x = common dso_local global i32 0, align 4
@g_layer_cy = common dso_local global i32 0, align 4
@g_layer_y = common dso_local global i32 0, align 4
@g_layer_cw = common dso_local global i32 0, align 4
@g_layer_ch = common dso_local global i32 0, align 4
@g_osd_fps_x = common dso_local global i32 0, align 4
@g_osd_y = common dso_local global i32 0, align 4
@layer_fb = common dso_local global i32 0, align 4
@PDF_RGB555 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emu_video_mode_change(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 320, i32* %7, align 4
  store i32 240, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i64, i64* @doing_bg_frame, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %87

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 256, i32* %7, align 4
  store i32 32, i32* %10, align 4
  store i32 32, i32* %9, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  switch i32 %21, label %45 [
    i32 132, label %22
    i32 130, label %25
    i32 131, label %34
    i32 128, label %39
    i32 129, label %40
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* @g_layer_w, align 4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* @g_layer_h, align 4
  br label %45

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 3, i32 2
  %31 = mul nsw i32 %26, %30
  store i32 %31, i32* @g_layer_w, align 4
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 2
  store i32 %33, i32* @g_layer_h, align 4
  br label %45

34:                                               ; preds = %20
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %35, 2
  store i32 %36, i32* @g_layer_w, align 4
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* @g_layer_h, align 4
  br label %45

39:                                               ; preds = %20
  store i32 800, i32* @g_layer_w, align 4
  store i32 480, i32* @g_layer_h, align 4
  br label %45

40:                                               ; preds = %20
  %41 = load i32, i32* @g_layer_cx, align 4
  store i32 %41, i32* @g_layer_x, align 4
  %42 = load i32, i32* @g_layer_cy, align 4
  store i32 %42, i32* @g_layer_y, align 4
  %43 = load i32, i32* @g_layer_cw, align 4
  store i32 %43, i32* @g_layer_w, align 4
  %44 = load i32, i32* @g_layer_ch, align 4
  store i32 %44, i32* @g_layer_h, align 4
  br label %45

45:                                               ; preds = %20, %40, %39, %34, %25, %22
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %47 = icmp ne i32 %46, 129
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* @g_layer_w, align 4
  %50 = sdiv i32 %49, 2
  %51 = sub nsw i32 400, %50
  store i32 %51, i32* @g_layer_x, align 4
  %52 = load i32, i32* @g_layer_h, align 4
  %53 = sdiv i32 %52, 2
  %54 = sub nsw i32 240, %53
  store i32 %54, i32* @g_layer_y, align 4
  br label %55

55:                                               ; preds = %48, %45
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  switch i32 %56, label %60 [
    i32 128, label %57
    i32 129, label %57
  ]

57:                                               ; preds = %55, %55
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %55, %57
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 232, i32 264
  store i32 %64, i32* @g_osd_fps_x, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %65, %66
  %68 = sub nsw i32 %67, 8
  store i32 %68, i32* @g_osd_y, align 4
  %69 = load i32, i32* @g_layer_x, align 4
  %70 = load i32, i32* @g_layer_y, align 4
  %71 = load i32, i32* @g_layer_w, align 4
  %72 = load i32, i32* @g_layer_h, align 4
  %73 = call i32 @pnd_setup_layer(i32 1, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* @layer_fb, align 4
  %75 = call i32 @vout_fbdev_clear(i32 %74)
  %76 = load i32, i32* @layer_fb, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @vout_fbdev_resize(i32 %76, i32 %77, i32 %78, i32 16, i32 %79, i32 %80, i32 %81, i32 %82, i32 4)
  %84 = call i32 (...) @plat_video_flip()
  %85 = load i32, i32* @PDF_RGB555, align 4
  %86 = call i32 @PicoDrawSetOutFormat(i32 %85, i32 0)
  br label %87

87:                                               ; preds = %60, %15
  ret void
}

declare dso_local i32 @pnd_setup_layer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @vout_fbdev_clear(i32) #1

declare dso_local i32 @vout_fbdev_resize(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @plat_video_flip(...) #1

declare dso_local i32 @PicoDrawSetOutFormat(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
