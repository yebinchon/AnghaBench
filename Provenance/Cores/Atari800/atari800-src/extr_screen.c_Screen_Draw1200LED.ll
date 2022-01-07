; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_screen.c_Screen_Draw1200LED.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_screen.c_Screen_Draw1200LED.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Screen_show_1200_leds = common dso_local global i64 0, align 8
@Atari800_keyboard_leds = common dso_local global i64 0, align 8
@Screen_atari = common dso_local global i64 0, align 8
@Screen_visible_x1 = common dso_local global i32 0, align 4
@SMALLFONT_WIDTH = common dso_local global i32 0, align 4
@Screen_visible_y2 = common dso_local global i32 0, align 4
@SMALLFONT_HEIGHT = common dso_local global i32 0, align 4
@Screen_WIDTH = common dso_local global i32 0, align 4
@PIA_PORTB = common dso_local global i32 0, align 4
@PIA_PORTB_mask = common dso_local global i32 0, align 4
@SMALLFONT_L = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Screen_Draw1200LED() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @Screen_show_1200_leds, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %59

5:                                                ; preds = %0
  %6 = load i64, i64* @Atari800_keyboard_leds, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %59

8:                                                ; preds = %5
  %9 = load i64, i64* @Screen_atari, align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = load i32, i32* @Screen_visible_x1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* @SMALLFONT_WIDTH, align 4
  %15 = mul nsw i32 %14, 10
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* @Screen_visible_y2, align 4
  %19 = load i32, i32* @SMALLFONT_HEIGHT, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load i32, i32* @Screen_WIDTH, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %17, i64 %23
  store i32* %24, i32** %1, align 8
  %25 = load i32, i32* @PIA_PORTB, align 4
  %26 = load i32, i32* @PIA_PORTB_mask, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %8
  %32 = load i32*, i32** %1, align 8
  %33 = load i32, i32* @SMALLFONT_L, align 4
  %34 = call i32 @SmallFont_DrawChar(i32* %32, i32 %33, i32 0, i32 54)
  %35 = load i32*, i32** %1, align 8
  %36 = load i32, i32* @SMALLFONT_WIDTH, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @SmallFont_DrawChar(i32* %38, i32 1, i32 0, i32 54)
  br label %40

40:                                               ; preds = %31, %8
  %41 = load i32, i32* @SMALLFONT_WIDTH, align 4
  %42 = mul nsw i32 %41, 3
  %43 = load i32*, i32** %1, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %1, align 8
  %46 = load i32, i32* %2, align 4
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %40
  %50 = load i32*, i32** %1, align 8
  %51 = load i32, i32* @SMALLFONT_L, align 4
  %52 = call i32 @SmallFont_DrawChar(i32* %50, i32 %51, i32 0, i32 54)
  %53 = load i32*, i32** %1, align 8
  %54 = load i32, i32* @SMALLFONT_WIDTH, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @SmallFont_DrawChar(i32* %56, i32 2, i32 0, i32 54)
  br label %58

58:                                               ; preds = %49, %40
  br label %59

59:                                               ; preds = %58, %5, %0
  ret void
}

declare dso_local i32 @SmallFont_DrawChar(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
