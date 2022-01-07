; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_pemu_prep_defconfig.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_pemu_prep_defconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@default_cpu_clock = common dso_local global i32 0, align 4
@defaultConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RT_8BIT_FAST = common dso_local global i32 0, align 4
@SOCID_MMSP2 = common dso_local global i64 0, align 8
@POPT_EXT_FM = common dso_local global i32 0, align 4
@SOCID_POLLUX = common dso_local global i64 0, align 8
@EOPT_WIZ_TEAR_FIX = common dso_local global i32 0, align 4
@EOPT_SHOW_RTC = common dso_local global i32 0, align 4
@POPT_EN_MCD_GFX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pemu_prep_defconfig() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @default_cpu_clock, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 4), align 4
  %3 = load i32, i32* @RT_8BIT_FAST, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 3), align 4
  store i32 50, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 0), align 4
  %4 = call i64 (...) @soc_detect()
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @SOCID_MMSP2, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @POPT_EXT_FM, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 2), align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 2), align 4
  br label %26

12:                                               ; preds = %0
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @SOCID_POLLUX, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32, i32* @EOPT_WIZ_TEAR_FIX, align 4
  %18 = load i32, i32* @EOPT_SHOW_RTC, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 1), align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 1), align 4
  %22 = load i32, i32* @POPT_EN_MCD_GFX, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 2), align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @defaultConfig, i32 0, i32 2), align 4
  br label %25

25:                                               ; preds = %16, %12
  br label %26

26:                                               ; preds = %25, %8
  ret void
}

declare dso_local i64 @soc_detect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
