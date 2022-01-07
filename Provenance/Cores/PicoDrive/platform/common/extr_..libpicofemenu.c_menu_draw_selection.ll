; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_menu_draw_selection.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_menu_draw_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@menu_sel_color = common dso_local global i32 0, align 4
@menu_text_color = common dso_local global i32 0, align 4
@g_menuscreen_ptr = common dso_local global i64 0, align 8
@g_menuscreen_w = common dso_local global i32 0, align 4
@me_mfont_w = common dso_local global i32 0, align 4
@me_mfont_h = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @menu_draw_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_draw_selection(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @menu_sel_color, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @menu_text_color, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @menu_sel_color, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = call i32 @text_out16_(i32 %11, i32 %12, i8* inttoptr (i64 1 to i8*), i32 %20)
  %22 = load i32, i32* @menu_sel_color, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %78

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i64, i64* @g_menuscreen_ptr, align 8
  %33 = inttoptr i64 %32 to i16*
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %33, i64 %35
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @g_menuscreen_w, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %36, i64 %40
  %42 = load i32, i32* @me_mfont_w, align 4
  %43 = mul nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, i16* %41, i64 %44
  %46 = getelementptr inbounds i16, i16* %45, i64 -2
  store i16* %46, i16** %10, align 8
  %47 = load i32, i32* @me_mfont_h, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %75, %31
  %50 = load i32, i32* %8, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %49
  %53 = load i16*, i16** %10, align 8
  store i16* %53, i16** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @me_mfont_w, align 4
  %56 = mul nsw i32 %55, 2
  %57 = sub nsw i32 %56, 2
  %58 = sub nsw i32 %54, %57
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %67, %52
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, i32* @menu_sel_color, align 4
  %64 = trunc i32 %63 to i16
  %65 = load i16*, i16** %9, align 8
  %66 = getelementptr inbounds i16, i16* %65, i32 1
  store i16* %66, i16** %9, align 8
  store i16 %64, i16* %65, align 2
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %7, align 4
  br label %59

70:                                               ; preds = %59
  %71 = load i32, i32* @g_menuscreen_w, align 4
  %72 = load i16*, i16** %10, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i16, i16* %72, i64 %73
  store i16* %74, i16** %10, align 8
  br label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %8, align 4
  br label %49

78:                                               ; preds = %24, %49
  ret void
}

declare dso_local i32 @text_out16_(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
