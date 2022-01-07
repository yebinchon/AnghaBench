; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_curses.c_PLATFORM_DisplayScreen.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_curses.c_PLATFORM_DisplayScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curses_screen = common dso_local global i32** null, align 8
@curses_mode = common dso_local global i32 0, align 4
@A_REVERSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PLATFORM_DisplayScreen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %62, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 24
  br i1 %6, label %7, label %65

7:                                                ; preds = %4
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %58, %7
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 40
  br i1 %10, label %11, label %61

11:                                               ; preds = %8
  %12 = load i32**, i32*** @curses_screen, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @curses_mode, align 4
  switch i32 %21, label %22 [
    i32 131, label %23
    i32 132, label %27
    i32 130, label %32
    i32 129, label %37
    i32 128, label %43
  ]

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %11, %22
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @move(i32 %24, i32 %25)
  br label %55

27:                                               ; preds = %11
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 20, %29
  %31 = call i32 @move(i32 %28, i32 %30)
  br label %55

32:                                               ; preds = %11
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 40, %34
  %36 = call i32 @move(i32 %33, i32 %35)
  br label %55

37:                                               ; preds = %11
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @move(i32 %38, i32 %41)
  br label %55

43:                                               ; preds = %11
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @move(i32 %44, i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @addch(i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @A_REVERSE, align 4
  %53 = and i32 %51, %52
  %54 = add nsw i32 32, %53
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %43, %37, %32, %27, %23
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @addch(i32 %56)
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %1, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %1, align 4
  br label %8

61:                                               ; preds = %8
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %2, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %2, align 4
  br label %4

65:                                               ; preds = %4
  %66 = call i32 (...) @refresh()
  ret void
}

declare dso_local i32 @move(i32, i32) #1

declare dso_local i32 @addch(i32) #1

declare dso_local i32 @refresh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
