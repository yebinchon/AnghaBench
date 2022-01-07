; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_emu_finish.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_emu_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@currentConfig = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@EOPT_EN_SRAM = common dso_local global i32 0, align 4
@SRam = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EOPT_NO_AUTOSVCFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emu_finish() #0 {
  %1 = alloca [512 x i8], align 16
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @currentConfig, i32 0, i32 0), align 4
  %3 = load i32, i32* @EOPT_EN_SRAM, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SRam, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 @emu_save_load_game(i32 0, i32 1)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SRam, i32 0, i32 0), align 8
  br label %11

11:                                               ; preds = %9, %6, %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @currentConfig, i32 0, i32 0), align 4
  %13 = load i32, i32* @EOPT_NO_AUTOSVCFG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %18 = call i32 @make_config_cfg(i8* %17)
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %20 = call i32 @config_writelrom(i8* %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = call i32 (...) @pprof_finish()
  %23 = call i32 (...) @PicoExit()
  %24 = call i32 (...) @sndout_exit()
  ret void
}

declare dso_local i32 @emu_save_load_game(i32, i32) #1

declare dso_local i32 @make_config_cfg(i8*) #1

declare dso_local i32 @config_writelrom(i8*) #1

declare dso_local i32 @pprof_finish(...) #1

declare dso_local i32 @PicoExit(...) #1

declare dso_local i32 @sndout_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
