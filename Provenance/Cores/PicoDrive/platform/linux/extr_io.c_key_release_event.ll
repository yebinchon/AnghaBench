; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_io.c_key_release_event.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/linux/extr_io.c_key_release_event.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @key_release_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_release_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %79 [
    i32 111, label %4
    i32 98, label %4
    i32 116, label %9
    i32 104, label %9
    i32 113, label %14
    i32 100, label %14
    i32 114, label %19
    i32 102, label %19
    i32 36, label %24
    i32 35, label %29
    i32 52, label %34
    i32 53, label %39
    i32 54, label %44
    i32 55, label %49
    i32 39, label %54
    i32 40, label %59
    i32 41, label %64
    i32 24, label %69
    i32 25, label %74
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, i32* @GP2X_UP, align 4
  %6 = xor i32 %5, -1
  %7 = load i32, i32* @current_keys, align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* @current_keys, align 4
  br label %79

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @GP2X_DOWN, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* @current_keys, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* @current_keys, align 4
  br label %79

14:                                               ; preds = %1, %1
  %15 = load i32, i32* @GP2X_LEFT, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @current_keys, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* @current_keys, align 4
  br label %79

19:                                               ; preds = %1, %1
  %20 = load i32, i32* @GP2X_RIGHT, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* @current_keys, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* @current_keys, align 4
  br label %79

24:                                               ; preds = %1
  %25 = load i32, i32* @GP2X_START, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* @current_keys, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* @current_keys, align 4
  br label %79

29:                                               ; preds = %1
  %30 = load i32, i32* @GP2X_SELECT, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* @current_keys, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* @current_keys, align 4
  br label %79

34:                                               ; preds = %1
  %35 = load i32, i32* @GP2X_A, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* @current_keys, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* @current_keys, align 4
  br label %79

39:                                               ; preds = %1
  %40 = load i32, i32* @GP2X_X, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* @current_keys, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* @current_keys, align 4
  br label %79

44:                                               ; preds = %1
  %45 = load i32, i32* @GP2X_B, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* @current_keys, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* @current_keys, align 4
  br label %79

49:                                               ; preds = %1
  %50 = load i32, i32* @GP2X_Y, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* @current_keys, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* @current_keys, align 4
  br label %79

54:                                               ; preds = %1
  %55 = load i32, i32* @GP2X_L, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* @current_keys, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* @current_keys, align 4
  br label %79

59:                                               ; preds = %1
  %60 = load i32, i32* @GP2X_R, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* @current_keys, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* @current_keys, align 4
  br label %79

64:                                               ; preds = %1
  %65 = load i32, i32* @GP2X_PUSH, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* @current_keys, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* @current_keys, align 4
  br label %79

69:                                               ; preds = %1
  %70 = load i32, i32* @GP2X_VOL_DOWN, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* @current_keys, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* @current_keys, align 4
  br label %79

74:                                               ; preds = %1
  %75 = load i32, i32* @GP2X_VOL_UP, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* @current_keys, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* @current_keys, align 4
  br label %79

79:                                               ; preds = %1, %74, %69, %64, %59, %54, %49, %44, %39, %34, %29, %24, %19, %14, %9, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
