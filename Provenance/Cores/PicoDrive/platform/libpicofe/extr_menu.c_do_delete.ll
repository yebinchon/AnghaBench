; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_menu.c_do_delete.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_menu.c_do_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_menuscreen_w = common dso_local global i32 0, align 4
@me_sfont_w = common dso_local global i32 0, align 4
@me_mfont_w = common dso_local global i32 0, align 4
@me_mfont_h = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"About to delete\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Are you sure?\00", align 1
@PBTN_MA3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"(%s - confirm, \00", align 1
@PBTN_MBACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"%s - cancel)\00", align 1
@PBTN_MENU = common dso_local global i32 0, align 4
@PBTN_MA2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @do_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_delete(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [64 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = call i32 @menu_draw_begin(i32 1, i32 0)
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @g_menuscreen_w, align 4
  %15 = load i32, i32* @me_sfont_w, align 4
  %16 = sdiv i32 %14, %15
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @g_menuscreen_w, align 4
  %20 = load i32, i32* @me_sfont_w, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* @g_menuscreen_w, align 4
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @me_mfont_w, align 4
  %27 = mul nsw i32 %26, 15
  %28 = sdiv i32 %27, 2
  %29 = sub nsw i32 %25, %28
  %30 = load i32, i32* @me_mfont_h, align 4
  %31 = mul nsw i32 8, %30
  %32 = call i32 @text_out16(i32 %29, i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @me_sfont_w, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sdiv i32 %36, 2
  %38 = sub nsw i32 %33, %37
  %39 = load i32, i32* @me_mfont_h, align 4
  %40 = mul nsw i32 9, %39
  %41 = add nsw i32 %40, 5
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @smalltext_out16(i32 %38, i32 %41, i8* %42, i32 48639)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @me_mfont_w, align 4
  %46 = mul nsw i32 %45, 13
  %47 = sdiv i32 %46, 2
  %48 = sub nsw i32 %44, %47
  %49 = load i32, i32* @me_mfont_h, align 4
  %50 = mul nsw i32 11, %49
  %51 = call i32 @text_out16(i32 %48, i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @PBTN_MA3, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i8* @in_get_key_name(i32 -1, i32 %53)
  store i8* %54, i8** %8, align 8
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @snprintf(i8* %55, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %59 = call i32 @strlen(i8* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @PBTN_MBACK, align 4
  %61 = sub nsw i32 0, %60
  %62 = call i8* @in_get_key_name(i32 -1, i32 %61)
  store i8* %62, i8** %8, align 8
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 64, %68
  %70 = trunc i64 %69 to i32
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @snprintf(i8* %66, i32 %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %74 = call i32 @strlen(i8* %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @me_mfont_w, align 4
  %77 = load i32, i32* %5, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sdiv i32 %78, 2
  %80 = sub nsw i32 %75, %79
  %81 = load i32, i32* @me_mfont_h, align 4
  %82 = mul nsw i32 12, %81
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %84 = call i32 @text_out16(i32 %80, i32 %82, i8* %83)
  %85 = call i32 (...) @menu_draw_end()
  br label %86

86:                                               ; preds = %93, %22
  %87 = call i32 @in_menu_wait_any(i32* null, i32 50)
  %88 = load i32, i32* @PBTN_MENU, align 4
  %89 = load i32, i32* @PBTN_MA2, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %86

94:                                               ; preds = %86
  %95 = load i32, i32* @PBTN_MA3, align 4
  %96 = load i32, i32* @PBTN_MBACK, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @in_menu_wait(i32 %97, i32* null, i32 100)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @PBTN_MA3, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load i8*, i8** %3, align 8
  %105 = call i32 @remove(i8* %104)
  br label %106

106:                                              ; preds = %103, %94
  ret void
}

declare dso_local i32 @menu_draw_begin(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @text_out16(i32, i32, i8*) #1

declare dso_local i32 @smalltext_out16(i32, i32, i8*, i32) #1

declare dso_local i8* @in_get_key_name(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @menu_draw_end(...) #1

declare dso_local i32 @in_menu_wait_any(i32*, i32) #1

declare dso_local i32 @in_menu_wait(i32, i32*, i32) #1

declare dso_local i32 @remove(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
