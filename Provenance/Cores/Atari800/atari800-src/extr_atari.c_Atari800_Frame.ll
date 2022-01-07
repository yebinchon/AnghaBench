; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_Atari800_Frame.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_Atari800_Frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Atari800_Frame.refresh_counter = internal global i32 0, align 4
@INPUT_key_code = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@Atari800_turbo = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@Atari800_refresh_rate = common dso_local global i32 0, align 4
@Atari800_display_screen = common dso_local global i8* null, align 8
@Atari800_collisions_in_skipped_frames = common dso_local global i8* null, align 8
@Atari800_nframes = common dso_local global i64 0, align 8
@Atari800_Frame.last_display_screen_time = internal global double 0.000000e+00, align 8
@Atari800_Frame.limit = internal constant double 0x3F91111111111111, align 8
@BENCHMARK = common dso_local global i64 0, align 8
@UI_MENU_MONITOR = common dso_local global i32 0, align 4
@UI_alt_function = common dso_local global i32 0, align 4
@benchmark_start_time = common dso_local global double 0.000000e+00, align 8
@sigint_flag = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Atari800_Frame() #0 {
  %1 = alloca double, align 8
  %2 = load i32, i32* @INPUT_key_code, align 4
  switch i32 %2, label %25 [
    i32 135, label %3
    i32 128, label %5
    i32 134, label %7
    i32 130, label %11
    i32 129, label %16
    i32 132, label %18
    i32 131, label %21
    i32 133, label %24
  ]

3:                                                ; preds = %0
  %4 = call i32 (...) @Atari800_Coldstart()
  br label %26

5:                                                ; preds = %0
  %6 = call i32 (...) @Atari800_Warmstart()
  br label %26

7:                                                ; preds = %0
  %8 = load i8*, i8** @FALSE, align 8
  %9 = call i32 @Atari800_Exit(i8* %8)
  %10 = call i32 @exit(i32 0) #3
  unreachable

11:                                               ; preds = %0
  %12 = load i32, i32* @Atari800_turbo, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* @Atari800_turbo, align 4
  br label %26

16:                                               ; preds = %0
  %17 = call i32 (...) @UI_Run()
  br label %26

18:                                               ; preds = %0
  %19 = load i8*, i8** @FALSE, align 8
  %20 = call i32 @Screen_SaveNextScreenshot(i8* %19)
  br label %26

21:                                               ; preds = %0
  %22 = load i8*, i8** @TRUE, align 8
  %23 = call i32 @Screen_SaveNextScreenshot(i8* %22)
  br label %26

24:                                               ; preds = %0
  br label %26

25:                                               ; preds = %0
  br label %26

26:                                               ; preds = %25, %24, %21, %18, %16, %11, %5, %3
  %27 = call i32 (...) @Devices_Frame()
  %28 = call i32 (...) @INPUT_Frame()
  %29 = call i32 (...) @GTIA_Frame()
  %30 = load i32, i32* @Atari800_Frame.refresh_counter, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @Atari800_Frame.refresh_counter, align 4
  %32 = load i32, i32* @Atari800_refresh_rate, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  store i32 0, i32* @Atari800_Frame.refresh_counter, align 4
  %35 = load i8*, i8** @TRUE, align 8
  %36 = call i32 @ANTIC_Frame(i8* %35)
  %37 = call i32 (...) @INPUT_DrawMousePointer()
  %38 = call double (...) @Util_time()
  %39 = call i32 @Screen_DrawAtariSpeed(double %38)
  %40 = call i32 (...) @Screen_DrawDiskLED()
  %41 = call i32 (...) @Screen_Draw1200LED()
  %42 = load i8*, i8** @TRUE, align 8
  store i8* %42, i8** @Atari800_display_screen, align 8
  br label %47

43:                                               ; preds = %26
  %44 = load i8*, i8** @Atari800_collisions_in_skipped_frames, align 8
  %45 = call i32 @ANTIC_Frame(i8* %44)
  %46 = load i8*, i8** @FALSE, align 8
  store i8* %46, i8** @Atari800_display_screen, align 8
  br label %47

47:                                               ; preds = %43, %34
  %48 = call i32 (...) @POKEY_Frame()
  %49 = load i64, i64* @Atari800_nframes, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* @Atari800_nframes, align 8
  %51 = load i32, i32* @Atari800_turbo, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = call double (...) @Util_time()
  store double %54, double* %1, align 8
  %55 = load double, double* %1, align 8
  %56 = load double, double* @Atari800_Frame.last_display_screen_time, align 8
  %57 = fsub double %55, %56
  %58 = fcmp ogt double %57, 0x3F91111111111111
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load double, double* %1, align 8
  store double %60, double* @Atari800_Frame.last_display_screen_time, align 8
  br label %63

61:                                               ; preds = %53
  %62 = load i8*, i8** @FALSE, align 8
  store i8* %62, i8** @Atari800_display_screen, align 8
  br label %63

63:                                               ; preds = %61, %59
  br label %66

64:                                               ; preds = %47
  %65 = call i32 (...) @Atari800_Sync()
  br label %66

66:                                               ; preds = %64, %63
  ret void
}

declare dso_local i32 @Atari800_Coldstart(...) #1

declare dso_local i32 @Atari800_Warmstart(...) #1

declare dso_local i32 @Atari800_Exit(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @UI_Run(...) #1

declare dso_local i32 @Screen_SaveNextScreenshot(i8*) #1

declare dso_local i32 @Devices_Frame(...) #1

declare dso_local i32 @INPUT_Frame(...) #1

declare dso_local i32 @GTIA_Frame(...) #1

declare dso_local i32 @ANTIC_Frame(i8*) #1

declare dso_local i32 @INPUT_DrawMousePointer(...) #1

declare dso_local i32 @Screen_DrawAtariSpeed(double) #1

declare dso_local double @Util_time(...) #1

declare dso_local i32 @Screen_DrawDiskLED(...) #1

declare dso_local i32 @Screen_Draw1200LED(...) #1

declare dso_local i32 @POKEY_Frame(...) #1

declare dso_local i32 @Atari800_Sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
