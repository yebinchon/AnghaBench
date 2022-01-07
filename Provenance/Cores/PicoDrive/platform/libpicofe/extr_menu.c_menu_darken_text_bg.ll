; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_menu.c_menu_darken_text_bg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_menu.c_menu_darken_text_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_menuscreen_ptr = common dso_local global i16* null, align 8
@border_left = common dso_local global i32 0, align 4
@border_right = common dso_local global i32 0, align 4
@g_menuscreen_w = common dso_local global i32 0, align 4
@border_top = common dso_local global i32 0, align 4
@border_bottom = common dso_local global i32 0, align 4
@g_menuscreen_h = common dso_local global i32 0, align 4
@menu_text_color = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @menu_darken_text_bg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_darken_text_bg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = load i16*, i16** @g_menuscreen_ptr, align 8
  store i16* %9, i16** %7, align 8
  %10 = load i32, i32* @border_left, align 4
  %11 = sub nsw i32 %10, 3
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %14, %0
  %16 = load i32, i32* @border_right, align 4
  %17 = add nsw i32 %16, 2
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @g_menuscreen_w, align 4
  %20 = sub nsw i32 %19, 1
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @g_menuscreen_w, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %15
  %26 = load i32, i32* @border_top, align 4
  %27 = sub nsw i32 %26, 3
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* @border_bottom, align 4
  %33 = add nsw i32 %32, 2
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @g_menuscreen_h, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @g_menuscreen_h, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i32, i32* %3, align 4
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %56, %41
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i16*, i16** %7, align 8
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @g_menuscreen_w, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i16, i16* %48, i64 %54
  store i16 -23276, i16* %55, align 2
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %43

59:                                               ; preds = %43
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %120, %59
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %123

66:                                               ; preds = %62
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @g_menuscreen_w, align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* %6, align 4
  %70 = load i16*, i16** %7, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i16, i16* %70, i64 %74
  store i16 -1, i16* %75, align 2
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %1, align 4
  br label %78

78:                                               ; preds = %110, %66
  %79 = load i32, i32* %1, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %113

82:                                               ; preds = %78
  %83 = load i16*, i16** %7, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i16, i16* %83, i64 %87
  %89 = load i16, i16* %88, align 2
  %90 = zext i16 %89 to i32
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @menu_text_color, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %82
  %95 = load i32, i32* %8, align 4
  %96 = and i32 %95, 63390
  %97 = lshr i32 %96, 1
  %98 = load i32, i32* %8, align 4
  %99 = and i32 %98, 50712
  %100 = lshr i32 %99, 3
  %101 = sub i32 %97, %100
  %102 = trunc i32 %101 to i16
  %103 = load i16*, i16** %7, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %1, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i16, i16* %103, i64 %107
  store i16 %102, i16* %108, align 2
  br label %109

109:                                              ; preds = %94, %82
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %1, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %1, align 4
  br label %78

113:                                              ; preds = %78
  %114 = load i16*, i16** %7, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i16, i16* %114, i64 %118
  store i16 -1, i16* %119, align 2
  br label %120

120:                                              ; preds = %113
  %121 = load i32, i32* %2, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %2, align 4
  br label %62

123:                                              ; preds = %62
  %124 = load i32, i32* %2, align 4
  %125 = load i32, i32* @g_menuscreen_w, align 4
  %126 = mul nsw i32 %124, %125
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %3, align 4
  store i32 %127, i32* %1, align 4
  br label %128

128:                                              ; preds = %139, %123
  %129 = load i32, i32* %1, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %128
  %133 = load i16*, i16** %7, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %1, align 4
  %136 = add nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i16, i16* %133, i64 %137
  store i16 -1, i16* %138, align 2
  br label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %1, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %1, align 4
  br label %128

142:                                              ; preds = %128
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
