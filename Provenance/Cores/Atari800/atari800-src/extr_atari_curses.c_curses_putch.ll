; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_curses.c_curses_putch.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_curses.c_curses_putch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A_REVERSE = common dso_local global i32 0, align 4
@curses_screen = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @curses_putch(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %16 [
    i32 18, label %12
    i32 17, label %13
    i32 3, label %13
    i32 26, label %14
    i32 5, label %14
    i32 124, label %15
  ]

12:                                               ; preds = %5
  store i32 45, i32* %8, align 4
  br label %17

13:                                               ; preds = %5, %5
  store i32 47, i32* %8, align 4
  br label %17

14:                                               ; preds = %5, %5
  store i32 92, i32* %8, align 4
  br label %17

15:                                               ; preds = %5
  store i32 124, i32* %8, align 4
  br label %17

16:                                               ; preds = %5
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12
  %18 = load i32, i32* %10, align 4
  %19 = and i32 %18, 15
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, 15
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @A_REVERSE, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32**, i32*** @curses_screen, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %26, i32* %34, align 4
  br label %45

35:                                               ; preds = %17
  %36 = load i32, i32* %8, align 4
  %37 = load i32**, i32*** @curses_screen, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %36, i32* %44, align 4
  br label %45

45:                                               ; preds = %35, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
