; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_menu_romload_prepare.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_menu_romload_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Loading\00", align 1
@me_sfont_h = common dso_local global i32 0, align 4
@load_progress_cb = common dso_local global i32 0, align 4
@PicoCartLoadProgressCB = common dso_local global i32 0, align 4
@cdload_progress_cb = common dso_local global i32 0, align 4
@PicoCDLoadProgressCB = common dso_local global i32 0, align 4
@cdload_called = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_romload_prepare(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @strlen(i8* %6)
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %5, i64 %8
  store i8* %9, i8** %3, align 8
  br label %10

10:                                               ; preds = %21, %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = icmp ugt i8* %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 47
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi i1 [ false, %10 ], [ %18, %14 ]
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %23, i8** %3, align 8
  br label %10

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %35, %24
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = call i32 @menu_draw_begin(i32 1, i32 1)
  %30 = call i32 @smalltext_out16(i32 1, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 65535)
  %31 = load i32, i32* @me_sfont_h, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @smalltext_out16(i32 1, i32 %31, i8* %32, i32 65535)
  %34 = call i32 (...) @menu_draw_end()
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %25

38:                                               ; preds = %25
  %39 = load i32, i32* @load_progress_cb, align 4
  store i32 %39, i32* @PicoCartLoadProgressCB, align 4
  %40 = load i32, i32* @cdload_progress_cb, align 4
  store i32 %40, i32* @PicoCDLoadProgressCB, align 4
  store i64 0, i64* @cdload_called, align 8
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @menu_draw_begin(i32, i32) #1

declare dso_local i32 @smalltext_out16(i32, i32, i8*, i32) #1

declare dso_local i32 @menu_draw_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
