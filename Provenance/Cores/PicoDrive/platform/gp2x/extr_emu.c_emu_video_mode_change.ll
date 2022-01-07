; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_emu_video_mode_change.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_emu_video_mode_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@doing_bg_frame = common dso_local global i64 0, align 8
@OSD_FPS_X = common dso_local global i64 0, align 8
@osd_fps_x = common dso_local global i64 0, align 8
@osd_y = common dso_local global i32 0, align 4
@POPT_DIS_32C_BORDER = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EOPT_SCALE_HW = common dso_local global i64 0, align 8
@EOPT_SCALE_SW = common dso_local global i64 0, align 8
@ld_left = common dso_local global i32 0, align 4
@ld_lines = common dso_local global i32 0, align 4
@EmuScanBegin16_ld = common dso_local global i32 0, align 4
@EmuScanEnd16_ld = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emu_video_mode_change(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 320, i32* %7, align 4
  store i32 240, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* @doing_bg_frame, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %68

13:                                               ; preds = %3
  %14 = load i64, i64* @OSD_FPS_X, align 8
  store i64 %14, i64* @osd_fps_x, align 8
  store i32 232, i32* @osd_y, align 4
  %15 = load i32, i32* @POPT_DIS_32C_BORDER, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @PicoOpt, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* @PicoOpt, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 8
  %23 = load i64, i64* @EOPT_SCALE_HW, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  store i32 256, i32* %7, align 4
  %26 = load i32, i32* @POPT_DIS_32C_BORDER, align 4
  %27 = load i32, i32* @PicoOpt, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* @PicoOpt, align 4
  %29 = load i64, i64* @OSD_FPS_X, align 8
  %30 = sub nsw i64 %29, 64
  store i64 %30, i64* @osd_fps_x, align 8
  br label %31

31:                                               ; preds = %25, %21, %13
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 1), align 8
  %33 = load i64, i64* @EOPT_SCALE_HW, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %38, %39
  %41 = sub nsw i32 %40, 8
  store i32 %41, i32* @osd_y, align 4
  br label %42

42:                                               ; preds = %35, %31
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @gp2x_video_RGB_setscaling(i32 %43, i32 %44, i32 %45)
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 1), align 8
  %48 = load i64, i64* @EOPT_SCALE_SW, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 240
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 240, %55
  %57 = sdiv i32 %54, %56
  store i32 %57, i32* @ld_left, align 4
  store i32 %57, i32* @ld_lines, align 4
  %58 = load i32, i32* @EmuScanBegin16_ld, align 4
  %59 = load i32, i32* @EmuScanEnd16_ld, align 4
  %60 = call i32 @PicoDrawSetCallbacks(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %50, %42
  %62 = call i32 (...) @is_16bit_mode()
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = call i32 @gp2x_memset_all_buffers(i32 0, i32 224, i32 76800)
  br label %68

66:                                               ; preds = %61
  %67 = call i32 @gp2x_memset_all_buffers(i32 0, i32 0, i32 153600)
  br label %68

68:                                               ; preds = %12, %66, %64
  ret void
}

declare dso_local i32 @gp2x_video_RGB_setscaling(i32, i32, i32) #1

declare dso_local i32 @PicoDrawSetCallbacks(i32, i32) #1

declare dso_local i32 @is_16bit_mode(...) #1

declare dso_local i32 @gp2x_memset_all_buffers(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
