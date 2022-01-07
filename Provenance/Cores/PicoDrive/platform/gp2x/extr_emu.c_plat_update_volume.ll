; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_plat_update_volume.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_plat_update_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@plat_update_volume.prev_frame = internal global i32 0, align 4
@plat_update_volume.wait_frames = internal global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_STEREO = common dso_local global i32 0, align 4
@SOCID_MMSP2 = common dso_local global i64 0, align 8
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"VOL: %02i\00", align 1
@mix_32_to_16l_stereo = common dso_local global i32 0, align 4
@PsndMix_32_to_16l = common dso_local global i32 0, align 4
@mix_32_to_16l_level = common dso_local global i32 0, align 4
@mix_32_to_16l_stereo_lvl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plat_update_volume(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 4
  store i32 %8, i32* %6, align 4
  %9 = call i64 (...) @soc_detect()
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* @PicoOpt, align 4
  %11 = load i32, i32* @POPT_EN_STEREO, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @SOCID_MMSP2, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %14, %2
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 5
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* @plat_update_volume.prev_frame, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @plat_update_volume.wait_frames, align 4
  %35 = icmp slt i32 %34, 12
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @plat_update_volume.wait_frames, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @plat_update_volume.wait_frames, align 4
  br label %46

39:                                               ; preds = %33, %28, %25, %22
  store i32 0, i32* @plat_update_volume.wait_frames, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 -1
  %44 = call i32 @plat_target_step_volume(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), i32 %43)
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @currentConfig, i32 0, i32 0), align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %39, %36
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @emu_status_msg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 4
  store i32 %49, i32* @plat_update_volume.prev_frame, align 4
  br label %50

50:                                               ; preds = %46, %19
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  br label %63

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = icmp sge i32 %55, 5
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @mix_32_to_16l_stereo, align 4
  store i32 %58, i32* @PsndMix_32_to_16l, align 4
  br label %63

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 5, %60
  store i32 %61, i32* @mix_32_to_16l_level, align 4
  %62 = load i32, i32* @mix_32_to_16l_stereo_lvl, align 4
  store i32 %62, i32* @PsndMix_32_to_16l, align 4
  br label %63

63:                                               ; preds = %53, %59, %57
  ret void
}

declare dso_local i64 @soc_detect(...) #1

declare dso_local i32 @plat_target_step_volume(i32*, i32) #1

declare dso_local i32 @emu_status_msg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
