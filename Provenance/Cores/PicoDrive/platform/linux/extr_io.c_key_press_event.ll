; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_io.c_key_press_event.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_io.c_key_press_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GP2X_UP = common dso_local global i32 0, align 4
@current_keys = common dso_local global i32 0, align 4
@GP2X_DOWN = common dso_local global i32 0, align 4
@GP2X_LEFT = common dso_local global i32 0, align 4
@GP2X_RIGHT = common dso_local global i32 0, align 4
@GP2X_START = common dso_local global i32 0, align 4
@GP2X_SELECT = common dso_local global i32 0, align 4
@GP2X_A = common dso_local global i32 0, align 4
@GP2X_X = common dso_local global i32 0, align 4
@GP2X_B = common dso_local global i32 0, align 4
@GP2X_Y = common dso_local global i32 0, align 4
@GP2X_L = common dso_local global i32 0, align 4
@GP2X_R = common dso_local global i32 0, align 4
@GP2X_PUSH = common dso_local global i32 0, align 4
@GP2X_VOL_DOWN = common dso_local global i32 0, align 4
@GP2X_VOL_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @key_press_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_press_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %70 [
    i32 111, label %4
    i32 98, label %4
    i32 116, label %8
    i32 104, label %8
    i32 113, label %12
    i32 100, label %12
    i32 114, label %16
    i32 102, label %16
    i32 36, label %20
    i32 35, label %24
    i32 52, label %28
    i32 53, label %32
    i32 54, label %36
    i32 55, label %40
    i32 39, label %44
    i32 40, label %48
    i32 41, label %52
    i32 24, label %56
    i32 25, label %60
    i32 45, label %64
    i32 46, label %66
    i32 23, label %68
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, i32* @GP2X_UP, align 4
  %6 = load i32, i32* @current_keys, align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* @current_keys, align 4
  br label %70

8:                                                ; preds = %1, %1
  %9 = load i32, i32* @GP2X_DOWN, align 4
  %10 = load i32, i32* @current_keys, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* @current_keys, align 4
  br label %70

12:                                               ; preds = %1, %1
  %13 = load i32, i32* @GP2X_LEFT, align 4
  %14 = load i32, i32* @current_keys, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* @current_keys, align 4
  br label %70

16:                                               ; preds = %1, %1
  %17 = load i32, i32* @GP2X_RIGHT, align 4
  %18 = load i32, i32* @current_keys, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* @current_keys, align 4
  br label %70

20:                                               ; preds = %1
  %21 = load i32, i32* @GP2X_START, align 4
  %22 = load i32, i32* @current_keys, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* @current_keys, align 4
  br label %70

24:                                               ; preds = %1
  %25 = load i32, i32* @GP2X_SELECT, align 4
  %26 = load i32, i32* @current_keys, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* @current_keys, align 4
  br label %70

28:                                               ; preds = %1
  %29 = load i32, i32* @GP2X_A, align 4
  %30 = load i32, i32* @current_keys, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* @current_keys, align 4
  br label %70

32:                                               ; preds = %1
  %33 = load i32, i32* @GP2X_X, align 4
  %34 = load i32, i32* @current_keys, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @current_keys, align 4
  br label %70

36:                                               ; preds = %1
  %37 = load i32, i32* @GP2X_B, align 4
  %38 = load i32, i32* @current_keys, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* @current_keys, align 4
  br label %70

40:                                               ; preds = %1
  %41 = load i32, i32* @GP2X_Y, align 4
  %42 = load i32, i32* @current_keys, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* @current_keys, align 4
  br label %70

44:                                               ; preds = %1
  %45 = load i32, i32* @GP2X_L, align 4
  %46 = load i32, i32* @current_keys, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* @current_keys, align 4
  br label %70

48:                                               ; preds = %1
  %49 = load i32, i32* @GP2X_R, align 4
  %50 = load i32, i32* @current_keys, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* @current_keys, align 4
  br label %70

52:                                               ; preds = %1
  %53 = load i32, i32* @GP2X_PUSH, align 4
  %54 = load i32, i32* @current_keys, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* @current_keys, align 4
  br label %70

56:                                               ; preds = %1
  %57 = load i32, i32* @GP2X_VOL_DOWN, align 4
  %58 = load i32, i32* @current_keys, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* @current_keys, align 4
  br label %70

60:                                               ; preds = %1
  %61 = load i32, i32* @GP2X_VOL_UP, align 4
  %62 = load i32, i32* @current_keys, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* @current_keys, align 4
  br label %70

64:                                               ; preds = %1
  %65 = call i32 (...) @log_io_clear()
  br label %70

66:                                               ; preds = %1
  %67 = call i32 (...) @log_io_dump()
  br label %70

68:                                               ; preds = %1
  %69 = call i32 @PicoReset()
  br label %70

70:                                               ; preds = %1, %68, %66, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %12, %8, %4
  ret void
}

declare dso_local i32 @log_io_clear(...) #1

declare dso_local i32 @log_io_dump(...) #1

declare dso_local i32 @PicoReset() #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
