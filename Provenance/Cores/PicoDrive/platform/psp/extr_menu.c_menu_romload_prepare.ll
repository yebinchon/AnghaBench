; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_menu_romload_prepare.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_menu_romload_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rom_loaded = common dso_local global i64 0, align 8
@psp_screen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Loading\00", align 1
@load_progress_cb = common dso_local global i32 0, align 4
@PicoCartLoadProgressCB = common dso_local global i32 0, align 4
@cdload_progress_cb = common dso_local global i32 0, align 4
@PicoCDLoadProgressCB = common dso_local global i32 0, align 4
@lcdr_line = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_romload_prepare(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %4, i64 %7
  store i8* %8, i8** %3, align 8
  br label %9

9:                                                ; preds = %20, %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = icmp ugt i8* %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 47
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i1 [ false, %9 ], [ %17, %13 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %22, i8** %3, align 8
  br label %9

23:                                               ; preds = %18
  %24 = call i32 (...) @psp_video_switch_to_single()
  %25 = load i64, i64* @rom_loaded, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (...) @menu_draw_begin()
  br label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @psp_screen, align 4
  %31 = call i32 @memset32_uncached(i32 %30, i32 0, i32 69632)
  br label %32

32:                                               ; preds = %29, %27
  %33 = call i32 @smalltext_out16(i32 1, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 65535)
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @smalltext_out16_lim(i32 1, i32 10, i8* %34, i32 65535, i32 80)
  %36 = load i32, i32* @load_progress_cb, align 4
  store i32 %36, i32* @PicoCartLoadProgressCB, align 4
  %37 = load i32, i32* @cdload_progress_cb, align 4
  store i32 %37, i32* @PicoCDLoadProgressCB, align 4
  store i32 2, i32* @lcdr_line, align 4
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @psp_video_switch_to_single(...) #1

declare dso_local i32 @menu_draw_begin(...) #1

declare dso_local i32 @memset32_uncached(i32, i32, i32) #1

declare dso_local i32 @smalltext_out16(i32, i32, i8*, i32) #1

declare dso_local i32 @smalltext_out16_lim(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
