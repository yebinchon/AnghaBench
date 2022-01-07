; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_falcon.c_PLATFORM_PORT.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_falcon.c_PLATFORM_PORT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stick0 = common dso_local global i32 0, align 4
@INPUT_STICK_CENTRE = common dso_local global i32 0, align 4
@trig0 = common dso_local global i32 0, align 4
@joy1 = common dso_local global i32 0, align 4
@joy0 = common dso_local global i32 0, align 4
@joyswap = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PLATFORM_PORT(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %1
  %7 = load i32, i32* @stick0, align 4
  %8 = load i32, i32* @INPUT_STICK_CENTRE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load i32, i32* @trig0, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load i32, i32* @joy1, align 4
  %15 = xor i32 %14, -1
  %16 = shl i32 %15, 4
  %17 = and i32 %16, 240
  %18 = load i32, i32* @joy0, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %19, 15
  %21 = or i32 %17, %20
  store i32 %21, i32* %2, align 4
  br label %40

22:                                               ; preds = %10, %6
  %23 = load i64, i64* @joyswap, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* @stick0, align 4
  %27 = shl i32 %26, 4
  %28 = load i32, i32* @joy0, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %29, 15
  %31 = or i32 %27, %30
  store i32 %31, i32* %2, align 4
  br label %40

32:                                               ; preds = %22
  %33 = load i32, i32* @joy0, align 4
  %34 = xor i32 %33, -1
  %35 = shl i32 %34, 4
  %36 = and i32 %35, 240
  %37 = load i32, i32* @stick0, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %1
  store i32 255, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %32, %25, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
