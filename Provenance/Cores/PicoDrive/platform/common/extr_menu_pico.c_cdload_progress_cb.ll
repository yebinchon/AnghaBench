; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_cdload_progress_cb.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_cdload_progress_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_menuscreen_w = common dso_local global i32 0, align 4
@g_menuscreen_ptr = common dso_local global i64 0, align 8
@me_sfont_h = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Processing CD image / MP3s\00", align 1
@cdload_called = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @cdload_progress_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdload_progress_cb(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @g_menuscreen_w, align 4
  %10 = mul nsw i32 %8, %9
  %11 = sdiv i32 %10, 100
  store i32 %11, i32* %6, align 4
  %12 = call i32 @menu_draw_begin(i32 0, i32 1)
  %13 = load i64, i64* @g_menuscreen_ptr, align 8
  %14 = inttoptr i64 %13 to i16*
  %15 = load i32, i32* @g_menuscreen_w, align 4
  %16 = load i32, i32* @me_sfont_h, align 4
  %17 = mul nsw i32 %15, %16
  %18 = mul nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, i16* %14, i64 %19
  store i16* %20, i16** %7, align 8
  %21 = load i16*, i16** %7, align 8
  %22 = load i32, i32* @g_menuscreen_w, align 4
  %23 = load i32, i32* @me_sfont_h, align 4
  %24 = sub nsw i32 %23, 2
  %25 = mul nsw i32 %22, %24
  %26 = mul nsw i32 %25, 2
  %27 = call i32 @memset(i16* %21, i32 255, i32 %26)
  %28 = load i32, i32* @me_sfont_h, align 4
  %29 = mul nsw i32 3, %28
  %30 = call i32 @smalltext_out16(i32 1, i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 65535)
  %31 = load i32, i32* @me_sfont_h, align 4
  %32 = mul nsw i32 4, %31
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @smalltext_out16(i32 1, i32 %32, i8* %33, i32 65535)
  %35 = load i32, i32* @g_menuscreen_w, align 4
  %36 = load i32, i32* @me_sfont_h, align 4
  %37 = mul nsw i32 %35, %36
  %38 = mul nsw i32 %37, 3
  %39 = load i16*, i16** %7, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i16, i16* %39, i64 %40
  store i16* %41, i16** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @g_menuscreen_w, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load i32, i32* @g_menuscreen_w, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %2
  %48 = load i32, i32* @me_sfont_h, align 4
  %49 = sub nsw i32 %48, 2
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %58, %47
  %51 = load i32, i32* %5, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i16*, i16** %7, align 8
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %55, 2
  %57 = call i32 @memset(i16* %54, i32 255, i32 %56)
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @g_menuscreen_w, align 4
  %62 = load i16*, i16** %7, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i16, i16* %62, i64 %63
  store i16* %64, i16** %7, align 8
  br label %50

65:                                               ; preds = %50
  %66 = call i32 (...) @menu_draw_end()
  store i32 1, i32* @cdload_called, align 4
  ret void
}

declare dso_local i32 @menu_draw_begin(i32, i32) #1

declare dso_local i32 @memset(i16*, i32, i32) #1

declare dso_local i32 @smalltext_out16(i32, i32, i8*, i32) #1

declare dso_local i32 @menu_draw_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
