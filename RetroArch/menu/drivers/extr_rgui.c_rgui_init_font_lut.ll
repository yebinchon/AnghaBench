; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_init_font_lut.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_init_font_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_FONT_GLYPHS_EXTENDED = common dso_local global i32 0, align 4
@FONT_HEIGHT = common dso_local global i32 0, align 4
@FONT_WIDTH = common dso_local global i32 0, align 4
@bitmap_bin = common dso_local global i32* null, align 8
@font_lut = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rgui_init_font_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgui_init_font_lut() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %66, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @NUM_FONT_GLYPHS_EXTENDED, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %69

10:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %62, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @FONT_HEIGHT, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %58, %15
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @FONT_WIDTH, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %61

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @FONT_WIDTH, align 4
  %24 = mul i32 %22, %23
  %25 = add i32 %21, %24
  %26 = and i32 %25, 7
  %27 = shl i32 1, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @FONT_WIDTH, align 4
  %31 = mul i32 %29, %30
  %32 = add i32 %28, %31
  %33 = lshr i32 %32, 3
  store i32 %33, i32* %5, align 4
  %34 = load i32*, i32** @bitmap_bin, align 8
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @FONT_OFFSET(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %36, %37
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %41, %42
  %44 = icmp sgt i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = load i32**, i32*** @font_lut, align 8
  %47 = load i32, i32* %1, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @FONT_WIDTH, align 4
  %54 = mul i32 %52, %53
  %55 = add i32 %51, %54
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %50, i64 %56
  store i32 %45, i32* %57, align 4
  br label %58

58:                                               ; preds = %20
  %59 = load i32, i32* %2, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %16

61:                                               ; preds = %16
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %3, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %11

65:                                               ; preds = %11
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %1, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %1, align 4
  br label %6

69:                                               ; preds = %6
  ret void
}

declare dso_local i32 @FONT_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
