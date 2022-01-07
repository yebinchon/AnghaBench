; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_emu_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_emu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"mds\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"srm\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"brm\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cfg\00", align 1
@plat_status_msg_busy_next = common dso_local global i32 0, align 4
@PicoMessage = common dso_local global i32 0, align 4
@emu_tray_open = common dso_local global i32 0, align 4
@PicoMCDopenTray = common dso_local global i32 0, align 4
@emu_tray_close = common dso_local global i32 0, align 4
@PicoMCDcloseTray = common dso_local global i32 0, align 4
@p32x_bios_m = common dso_local global i32 0, align 4
@p32x_bios_s = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emu_init() #0 {
  %1 = alloca [512 x i8], align 16
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %4 = call i32 @plat_get_root_dir(i8* %3, i32 508)
  store i32 %4, i32* %2, align 4
  %5 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @mkdir_path(i8* %5, i32 %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @mkdir_path(i8* %8, i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %11 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @mkdir_path(i8* %11, i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @mkdir_path(i8* %14, i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 (...) @pprof_init()
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %19 = call i32 @make_config_cfg(i8* %18)
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %21 = call i32 @config_readlrom(i8* %20)
  %22 = call i32 (...) @PicoInit()
  %23 = load i32, i32* @plat_status_msg_busy_next, align 4
  store i32 %23, i32* @PicoMessage, align 4
  %24 = load i32, i32* @emu_tray_open, align 4
  store i32 %24, i32* @PicoMCDopenTray, align 4
  %25 = load i32, i32* @emu_tray_close, align 4
  store i32 %25, i32* @PicoMCDcloseTray, align 4
  %26 = call i32 (...) @sndout_init()
  ret void
}

declare dso_local i32 @plat_get_root_dir(i8*, i32) #1

declare dso_local i32 @mkdir_path(i8*, i32, i8*) #1

declare dso_local i32 @pprof_init(...) #1

declare dso_local i32 @make_config_cfg(i8*) #1

declare dso_local i32 @config_readlrom(i8*) #1

declare dso_local i32 @PicoInit(...) #1

declare dso_local i32 @sndout_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
