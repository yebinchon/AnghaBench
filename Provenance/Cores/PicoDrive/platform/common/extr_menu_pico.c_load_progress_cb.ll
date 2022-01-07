; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_load_progress_cb.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_load_progress_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_menuscreen_w = common dso_local global i32 0, align 4
@g_menuscreen_ptr = common dso_local global i64 0, align 8
@me_sfont_h = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @load_progress_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_progress_cb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @g_menuscreen_w, align 4
  %8 = mul nsw i32 %6, %7
  %9 = sdiv i32 %8, 100
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @g_menuscreen_w, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @g_menuscreen_w, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %13, %1
  %16 = call i32 @menu_draw_begin(i32 0, i32 1)
  %17 = load i64, i64* @g_menuscreen_ptr, align 8
  %18 = inttoptr i64 %17 to i16*
  %19 = load i32, i32* @g_menuscreen_w, align 4
  %20 = load i32, i32* @me_sfont_h, align 4
  %21 = mul nsw i32 %19, %20
  %22 = mul nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %18, i64 %23
  store i16* %24, i16** %5, align 8
  %25 = load i32, i32* @me_sfont_h, align 4
  %26 = sub nsw i32 %25, 2
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %35, %15
  %28 = load i32, i32* %3, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i16*, i16** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = mul nsw i32 %32, 2
  %34 = call i32 @memset(i16* %31, i32 255, i32 %33)
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @g_menuscreen_w, align 4
  %39 = load i16*, i16** %5, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i16, i16* %39, i64 %40
  store i16* %41, i16** %5, align 8
  br label %27

42:                                               ; preds = %27
  %43 = call i32 (...) @menu_draw_end()
  ret void
}

declare dso_local i32 @menu_draw_begin(i32, i32) #1

declare dso_local i32 @memset(i16*, i32, i32) #1

declare dso_local i32 @menu_draw_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
