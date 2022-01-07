; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_Atari800_Exit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_Atari800_Exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CFG_save_on_exit = common dso_local global i64 0, align 8
@ATARI_CRASHED = common dso_local global i32 0, align 4
@CPU_cim_encountered = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@Screen_atari_write_long_stat = common dso_local global i32* null, align 8
@g_ulAtariState = common dso_local global i32 0, align 4
@memory_read_aligned_word_stat = common dso_local global i64* null, align 8
@memory_read_word_stat = common dso_local global i32* null, align 8
@memory_write_aligned_word_stat = common dso_local global i64* null, align 8
@memory_write_word_stat = common dso_local global i64* null, align 8
@pm_scanline_read_long_stat = common dso_local global i32* null, align 8
@sigint_flag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Atari800_Exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @PLATFORM_Exit(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* @CFG_save_on_exit, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 (...) @CFG_WriteConfig()
  br label %13

13:                                               ; preds = %11, %8
  %14 = call i32 (...) @INPUT_Exit()
  %15 = call i32 (...) @PBI_Exit()
  %16 = call i32 (...) @CASSETTE_Exit()
  %17 = call i32 (...) @CARTRIDGE_Exit()
  %18 = call i32 (...) @SIO_Exit()
  %19 = call i32 (...) @Devices_Exit()
  %20 = call i32 (...) @MONITOR_Exit()
  br label %21

21:                                               ; preds = %13, %1
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @PLATFORM_Exit(i32) #1

declare dso_local i32 @CFG_WriteConfig(...) #1

declare dso_local i32 @INPUT_Exit(...) #1

declare dso_local i32 @PBI_Exit(...) #1

declare dso_local i32 @CASSETTE_Exit(...) #1

declare dso_local i32 @CARTRIDGE_Exit(...) #1

declare dso_local i32 @SIO_Exit(...) #1

declare dso_local i32 @Devices_Exit(...) #1

declare dso_local i32 @MONITOR_Exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
