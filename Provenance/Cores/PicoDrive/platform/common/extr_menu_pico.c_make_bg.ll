; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_make_bg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_make_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_menubg_src_ptr = common dso_local global i64 0, align 8
@g_screen_width = common dso_local global i32 0, align 4
@g_screen_height = common dso_local global i32 0, align 4
@g_menubg_ptr = common dso_local global i32* null, align 8
@g_menuscreen_w = common dso_local global i32 0, align 4
@g_menuscreen_h = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @make_bg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_bg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i64, i64* @g_menubg_src_ptr, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to i16*
  store i16* %13, i16** %3, align 8
  %14 = load i32, i32* @g_screen_width, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @g_screen_height, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i16*, i16** %3, align 8
  %17 = icmp eq i16* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load i32*, i32** @g_menubg_ptr, align 8
  %20 = load i32, i32* @g_menuscreen_w, align 4
  %21 = load i32, i32* @g_menuscreen_h, align 4
  %22 = mul nsw i32 %20, %21
  %23 = mul nsw i32 %22, 2
  %24 = call i32 @memset(i32* %19, i32 0, i32 %23)
  br label %169

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %119, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @g_menuscreen_w, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sdiv i32 %29, %30
  %32 = icmp sge i32 %31, 2
  br i1 %32, label %33, label %119

33:                                               ; preds = %28
  %34 = load i32, i32* @g_menuscreen_h, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sdiv i32 %34, %35
  %37 = icmp sge i32 %36, 2
  br i1 %37, label %38, label %119

38:                                               ; preds = %33
  %39 = load i32*, i32** @g_menubg_ptr, align 8
  store i32* %39, i32** %10, align 8
  %40 = load i32, i32* @g_menuscreen_h, align 4
  %41 = sdiv i32 %40, 2
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %42, 2
  %44 = sdiv i32 %43, 2
  %45 = sub nsw i32 %41, %44
  %46 = load i32, i32* @g_menuscreen_w, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sdiv i32 %47, 2
  %49 = load i32*, i32** %10, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %10, align 8
  %52 = load i32, i32* @g_menuscreen_w, align 4
  %53 = sdiv i32 %52, 2
  %54 = load i32, i32* %4, align 4
  %55 = mul nsw i32 %54, 2
  %56 = sdiv i32 %55, 2
  %57 = sub nsw i32 %53, %56
  %58 = sdiv i32 %57, 2
  %59 = load i32*, i32** %10, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %10, align 8
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %105, %38
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %118

66:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %101, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %104

71:                                               ; preds = %67
  %72 = load i16*, i16** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i16, i16* %72, i64 %74
  %76 = load i16, i16* %75, align 2
  %77 = zext i16 %76 to i32
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = and i32 %78, 63390
  %80 = lshr i32 %79, 1
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, 50712
  %83 = lshr i32 %82, 3
  %84 = sub i32 %80, %83
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = shl i32 %85, 16
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @g_menuscreen_w, align 4
  %93 = sdiv i32 %92, 2
  %94 = add nsw i32 %91, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %90, i64 %95
  store i32 %89, i32* %96, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %89, i32* %100, align 4
  br label %101

101:                                              ; preds = %71
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %67

104:                                              ; preds = %67
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i16*, i16** %3, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i16, i16* %109, i64 %110
  store i16* %111, i16** %3, align 8
  %112 = load i32, i32* @g_menuscreen_w, align 4
  %113 = mul nsw i32 %112, 2
  %114 = sdiv i32 %113, 2
  %115 = load i32*, i32** %10, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %10, align 8
  br label %62

118:                                              ; preds = %62
  br label %169

119:                                              ; preds = %33, %28, %25
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @g_menuscreen_w, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* @g_menuscreen_w, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %123, %119
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @g_menuscreen_h, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @g_menuscreen_h, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %129, %125
  %132 = load i32*, i32** @g_menubg_ptr, align 8
  %133 = bitcast i32* %132 to i16*
  %134 = load i32, i32* @g_menuscreen_h, align 4
  %135 = sdiv i32 %134, 2
  %136 = load i32, i32* %5, align 4
  %137 = sdiv i32 %136, 2
  %138 = sub nsw i32 %135, %137
  %139 = load i32, i32* @g_menuscreen_w, align 4
  %140 = mul nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i16, i16* %133, i64 %141
  %143 = load i32, i32* @g_menuscreen_w, align 4
  %144 = sdiv i32 %143, 2
  %145 = load i32, i32* %4, align 4
  %146 = sdiv i32 %145, 2
  %147 = sub nsw i32 %144, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i16, i16* %142, i64 %148
  store i16* %149, i16** %6, align 8
  br label %150

150:                                              ; preds = %158, %131
  %151 = load i32, i32* %5, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %169

153:                                              ; preds = %150
  %154 = load i16*, i16** %6, align 8
  %155 = load i16*, i16** %3, align 8
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @menu_darken_bg(i16* %154, i16* %155, i32 %156, i32 1)
  br label %158

158:                                              ; preds = %153
  %159 = load i32, i32* @g_menuscreen_w, align 4
  %160 = load i16*, i16** %6, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i16, i16* %160, i64 %161
  store i16* %162, i16** %6, align 8
  %163 = load i32, i32* @g_screen_width, align 4
  %164 = load i16*, i16** %3, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i16, i16* %164, i64 %165
  store i16* %166, i16** %3, align 8
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %5, align 4
  br label %150

169:                                              ; preds = %18, %118, %150
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @menu_darken_bg(i16*, i16*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
