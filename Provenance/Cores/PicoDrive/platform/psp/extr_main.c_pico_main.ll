; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_main.c_pico_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_main.c_pico_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PicoConfigFile = common dso_local global i32 0, align 4
@engineState = common dso_local global i32 0, align 4
@rom_fname_reload = common dso_local global i32 0, align 4
@mp3_last_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"PGS_ReloadRom == 0\0A\00", align 1
@psp_unhandled_suspend = common dso_local global i32 0, align 4
@engineStateSuspend = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"engine got into unknown state (%i), exitting\0A\00", align 1
@rom_fname_loaded = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pico_main() #0 {
  %1 = call i32 (...) @psp_init()
  %2 = call i32 (...) @emu_prepareDefaultConfig()
  %3 = call i32 @emu_ReadConfig(i32 0, i32 0)
  %4 = load i32, i32* @PicoConfigFile, align 4
  %5 = call i32 @config_readlrom(i32 %4)
  %6 = call i32 (...) @emu_Init()
  %7 = call i32 (...) @menu_init()
  store i32 134, i32* @engineState, align 4
  br label %8

8:                                                ; preds = %48, %0
  %9 = load i32, i32* @engineState, align 4
  switch i32 %9, label %45 [
    i32 134, label %10
    i32 132, label %12
    i32 128, label %24
    i32 129, label %31
    i32 131, label %35
    i32 130, label %36
    i32 133, label %44
  ]

10:                                               ; preds = %8
  %11 = call i32 (...) @menu_loop()
  br label %48

12:                                               ; preds = %8
  %13 = load i32, i32* @rom_fname_reload, align 4
  %14 = call i32 @emu_reload_rom(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  store i32 130, i32* @engineState, align 4
  %17 = load i32, i32* @mp3_last_error, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 134, i32* @engineState, align 4
  br label %20

20:                                               ; preds = %19, %16
  br label %23

21:                                               ; preds = %12
  %22 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 134, i32* @engineState, align 4
  br label %23

23:                                               ; preds = %21, %20
  br label %48

24:                                               ; preds = %8
  br label %25

25:                                               ; preds = %28, %24
  %26 = load i32, i32* @engineState, align 4
  %27 = icmp eq i32 %26, 128
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @psp_wait_suspend()
  br label %25

30:                                               ; preds = %25
  br label %48

31:                                               ; preds = %8
  store i32 0, i32* @psp_unhandled_suspend, align 4
  %32 = call i32 (...) @psp_resume_suspend()
  %33 = call i32 (...) @emu_HandleResume()
  %34 = load i32, i32* @engineStateSuspend, align 4
  store i32 %34, i32* @engineState, align 4
  br label %48

35:                                               ; preds = %8
  store i32 130, i32* @engineState, align 4
  br label %36

36:                                               ; preds = %8, %35
  %37 = load i32, i32* @psp_unhandled_suspend, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  store i32 0, i32* @psp_unhandled_suspend, align 4
  %40 = call i32 (...) @psp_resume_suspend()
  %41 = call i32 (...) @emu_HandleResume()
  br label %48

42:                                               ; preds = %36
  %43 = call i32 (...) @pemu_loop()
  br label %48

44:                                               ; preds = %8
  br label %49

45:                                               ; preds = %8
  %46 = load i32, i32* @engineState, align 4
  %47 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %49

48:                                               ; preds = %42, %39, %31, %30, %23, %10
  br label %8

49:                                               ; preds = %45, %44
  %50 = call i32 (...) @mp3_deinit()
  %51 = call i32 (...) @emu_Deinit()
  %52 = call i32 (...) @psp_finish()
  ret i32 0
}

declare dso_local i32 @psp_init(...) #1

declare dso_local i32 @emu_prepareDefaultConfig(...) #1

declare dso_local i32 @emu_ReadConfig(i32, i32) #1

declare dso_local i32 @config_readlrom(i32) #1

declare dso_local i32 @emu_Init(...) #1

declare dso_local i32 @menu_init(...) #1

declare dso_local i32 @menu_loop(...) #1

declare dso_local i32 @emu_reload_rom(i32) #1

declare dso_local i32 @lprintf(i8*, ...) #1

declare dso_local i32 @psp_wait_suspend(...) #1

declare dso_local i32 @psp_resume_suspend(...) #1

declare dso_local i32 @emu_HandleResume(...) #1

declare dso_local i32 @pemu_loop(...) #1

declare dso_local i32 @mp3_deinit(...) #1

declare dso_local i32 @emu_Deinit(...) #1

declare dso_local i32 @psp_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
