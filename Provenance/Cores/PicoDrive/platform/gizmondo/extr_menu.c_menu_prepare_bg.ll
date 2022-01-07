; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_menu_prepare_bg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_menu_prepare_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@giz_screen = common dso_local global i32* null, align 8
@bg_buffer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"skin/background.png\00", align 1
@READPNG_BG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @menu_prepare_bg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_prepare_bg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = load i32*, i32** @giz_screen, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32* @fb_lock(i32 1)
  store i32* %10, i32** @giz_screen, align 8
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i64, i64* @bg_buffer, align 8
  %13 = call i32 @memset(i64 %12, i32 0, i32 5136)
  %14 = load i64, i64* @bg_buffer, align 8
  %15 = add nsw i64 %14, 5136
  %16 = load i32*, i32** @giz_screen, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = getelementptr inbounds i8, i8* %17, i64 5136
  %19 = call i32 @menu_darken_bg(i64 %15, i8* %18, i32 71904, i32 1)
  %20 = load i64, i64* @bg_buffer, align 8
  %21 = add nsw i64 %20, 148944
  %22 = call i32 @memset(i64 %21, i32 0, i32 5136)
  %23 = call i32 (...) @fb_unlock()
  store i32* null, i32** @giz_screen, align 8
  br label %47

24:                                               ; preds = %1
  %25 = load i64, i64* @bg_buffer, align 8
  %26 = load i32, i32* @READPNG_BG, align 4
  %27 = call i32 @readpng(i64 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 239, i32* %3, align 4
  br label %28

28:                                               ; preds = %43, %24
  %29 = load i32, i32* %3, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i64, i64* @bg_buffer, align 8
  %33 = load i32, i32* %3, align 4
  %34 = mul nsw i32 642, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = load i64, i64* @bg_buffer, align 8
  %38 = load i32, i32* %3, align 4
  %39 = mul nsw i32 640, %38
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = call i32 @memmove(i64 %36, i64 %41, i32 640)
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %3, align 4
  br label %28

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46, %11
  ret void
}

declare dso_local i32* @fb_lock(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @menu_darken_bg(i64, i8*, i32, i32) #1

declare dso_local i32 @fb_unlock(...) #1

declare dso_local i32 @readpng(i64, i8*, i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
