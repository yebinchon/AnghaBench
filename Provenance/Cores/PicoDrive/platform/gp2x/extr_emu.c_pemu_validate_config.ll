; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_pemu_validate_config.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_pemu_validate_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@gp2x_dev_id = common dso_local global i64 0, align 8
@GP2X_DEV_GP2X = common dso_local global i64 0, align 8
@POPT_EXT_FM = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@GP2X_DEV_WIZ = common dso_local global i64 0, align 8
@EOPT_WIZ_TEAR_FIX = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@default_cpu_clock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pemu_validate_config() #0 {
  %1 = load i64, i64* @gp2x_dev_id, align 8
  %2 = load i64, i64* @GP2X_DEV_GP2X, align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i32, i32* @POPT_EXT_FM, align 4
  %6 = xor i32 %5, -1
  %7 = load i32, i32* @PicoOpt, align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* @PicoOpt, align 4
  br label %9

9:                                                ; preds = %4, %0
  %10 = load i64, i64* @gp2x_dev_id, align 8
  %11 = load i64, i64* @GP2X_DEV_WIZ, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* @EOPT_WIZ_TEAR_FIX, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 2), align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 2), align 4
  br label %18

18:                                               ; preds = %13, %9
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %23 = icmp sgt i32 %22, 300
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18
  store i32 100, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 1), align 4
  %27 = icmp slt i32 %26, 10
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 1), align 4
  %30 = icmp sgt i32 %29, 1024
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @default_cpu_clock, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 1), align 4
  br label %33

33:                                               ; preds = %31, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
