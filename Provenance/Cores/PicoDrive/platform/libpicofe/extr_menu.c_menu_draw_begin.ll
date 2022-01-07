; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_menu.c_menu_draw_begin.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_menu.c_menu_draw_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_border_style = common dso_local global i64 0, align 8
@borders_pending = common dso_local global i32 0, align 4
@g_menuscreen_ptr = common dso_local global i32 0, align 4
@g_menubg_ptr = common dso_local global i32 0, align 4
@g_menuscreen_w = common dso_local global i32 0, align 4
@g_menuscreen_h = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @menu_draw_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_draw_begin(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @plat_video_menu_begin()
  %6 = call i32 (...) @menu_reset_borders()
  %7 = load i64, i64* @g_border_style, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ false, %2 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  store i32 %15, i32* @borders_pending, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = load i64, i64* @g_border_style, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* @g_menuscreen_ptr, align 4
  %26 = load i32, i32* @g_menubg_ptr, align 4
  %27 = load i32, i32* @g_menuscreen_w, align 4
  %28 = load i32, i32* @g_menuscreen_h, align 4
  %29 = mul nsw i32 %27, %28
  %30 = call i32 @menu_darken_bg(i32 %25, i32 %26, i32 %29, i32 1)
  br label %39

31:                                               ; preds = %21, %18
  %32 = load i32, i32* @g_menuscreen_ptr, align 4
  %33 = load i32, i32* @g_menubg_ptr, align 4
  %34 = load i32, i32* @g_menuscreen_w, align 4
  %35 = load i32, i32* @g_menuscreen_h, align 4
  %36 = mul nsw i32 %34, %35
  %37 = mul nsw i32 %36, 2
  %38 = call i32 @memcpy(i32 %32, i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %31, %24
  br label %40

40:                                               ; preds = %39, %13
  ret void
}

declare dso_local i32 @plat_video_menu_begin(...) #1

declare dso_local i32 @menu_reset_borders(...) #1

declare dso_local i32 @menu_darken_bg(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
