; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_argv = common dso_local global i8** null, align 8
@engineState = common dso_local global i32 0, align 4
@rom_fname_reload = common dso_local global i32 0, align 4
@load_state_slot = common dso_local global i64 0, align 8
@state_slot = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"PGS_ReloadRom == 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"engine got into unknown state (%i), exitting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i8**, i8*** %5, align 8
  store i8** %6, i8*** @g_argv, align 8
  %7 = call i32 (...) @plat_early_init()
  %8 = call i32 (...) @in_init()
  %9 = call i32 (...) @plat_target_init()
  %10 = call i32 (...) @plat_init()
  %11 = call i32 (...) @emu_prep_defconfig()
  %12 = call i32 @emu_read_config(i32* null, i32 0)
  %13 = call i32 (...) @emu_init()
  %14 = call i32 (...) @menu_init()
  store i32 133, i32* @engineState, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @parse_cmd_line(i32 %18, i8** %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* @engineState, align 4
  %23 = icmp eq i32 %22, 131
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i32, i32* @rom_fname_reload, align 4
  %26 = call i64 @emu_reload_rom(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  store i32 129, i32* @engineState, align 4
  %29 = load i64, i64* @load_state_slot, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i64, i64* @load_state_slot, align 8
  store i64 %32, i64* @state_slot, align 8
  %33 = call i32 @emu_save_load_game(i32 1, i32 0)
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %24
  br label %36

36:                                               ; preds = %35, %21
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i32, i32* @engineState, align 4
  switch i32 %38, label %55 [
    i32 133, label %39
    i32 128, label %41
    i32 131, label %43
    i32 130, label %51
    i32 129, label %52
    i32 132, label %54
  ]

39:                                               ; preds = %37
  %40 = call i32 (...) @menu_loop()
  br label %58

41:                                               ; preds = %37
  %42 = call i32 (...) @menu_loop_tray()
  br label %58

43:                                               ; preds = %37
  %44 = load i32, i32* @rom_fname_reload, align 4
  %45 = call i64 @emu_reload_rom(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 129, i32* @engineState, align 4
  br label %50

48:                                               ; preds = %43
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 133, i32* @engineState, align 4
  br label %50

50:                                               ; preds = %48, %47
  br label %58

51:                                               ; preds = %37
  store i32 129, i32* @engineState, align 4
  br label %52

52:                                               ; preds = %37, %51
  %53 = call i32 (...) @emu_loop()
  br label %58

54:                                               ; preds = %37
  br label %59

55:                                               ; preds = %37
  %56 = load i32, i32* @engineState, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %59

58:                                               ; preds = %52, %50, %41, %39
  br label %37

59:                                               ; preds = %55, %54
  %60 = call i32 (...) @emu_finish()
  %61 = call i32 (...) @plat_finish()
  %62 = call i32 (...) @plat_target_finish()
  ret i32 0
}

declare dso_local i32 @plat_early_init(...) #1

declare dso_local i32 @in_init(...) #1

declare dso_local i32 @plat_target_init(...) #1

declare dso_local i32 @plat_init(...) #1

declare dso_local i32 @emu_prep_defconfig(...) #1

declare dso_local i32 @emu_read_config(i32*, i32) #1

declare dso_local i32 @emu_init(...) #1

declare dso_local i32 @menu_init(...) #1

declare dso_local i32 @parse_cmd_line(i32, i8**) #1

declare dso_local i64 @emu_reload_rom(i32) #1

declare dso_local i32 @emu_save_load_game(i32, i32) #1

declare dso_local i32 @menu_loop(...) #1

declare dso_local i32 @menu_loop_tray(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @emu_loop(...) #1

declare dso_local i32 @emu_finish(...) #1

declare dso_local i32 @plat_finish(...) #1

declare dso_local i32 @plat_target_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
