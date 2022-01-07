; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_update_scanline_chbase.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_update_scanline_chbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ANTIC_cpu2antic_ptr = common dso_local global i32* null, align 8
@ANTIC_xpos = common dso_local global i64 0, align 8
@IR = common dso_local global i32 0, align 4
@ANTIC_HSCROL = common dso_local global i32 0, align 4
@anticmode = common dso_local global i32 0, align 4
@ANTIC_cur_screen_pos = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_scanline_chbase() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32*, i32** @ANTIC_cpu2antic_ptr, align 8
  %7 = load i64, i64* @ANTIC_xpos, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @IR, align 4
  %11 = and i32 %10, 16
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = load i32, i32* @ANTIC_HSCROL, align 4
  br label %16

15:                                               ; preds = %0
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, 1
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @anticmode, align 4
  %21 = icmp sge i32 %20, 2
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load i32, i32* @anticmode, align 4
  %24 = icmp sle i32 %23, 5
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = ashr i32 %26, 1
  %28 = load i32, i32* %1, align 4
  %29 = sub nsw i32 %27, %28
  %30 = add nsw i32 %29, 0
  %31 = and i32 %30, 1
  %32 = mul nsw i32 %31, 2
  %33 = add nsw i32 %32, 9
  store i32 %33, i32* %5, align 4
  br label %51

34:                                               ; preds = %22, %16
  %35 = load i32, i32* @anticmode, align 4
  %36 = icmp eq i32 %35, 6
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @anticmode, align 4
  %39 = icmp eq i32 %38, 7
  br i1 %39, label %40, label %49

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %2, align 4
  %42 = ashr i32 %41, 1
  %43 = load i32, i32* %1, align 4
  %44 = sub nsw i32 %42, %43
  %45 = add nsw i32 %44, 2
  %46 = and i32 %45, 3
  %47 = mul nsw i32 %46, 2
  %48 = add nsw i32 %47, 9
  store i32 %48, i32* %5, align 4
  br label %50

49:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %40
  br label %51

51:                                               ; preds = %50, %25
  %52 = load i32, i32* %1, align 4
  %53 = mul nsw i32 %52, 2
  %54 = sub nsw i32 %53, 37
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @ANTIC_cur_screen_pos, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @draw_partial_scanline(i32 %59, i32 %60)
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* @ANTIC_cur_screen_pos, align 4
  ret void
}

declare dso_local i32 @draw_partial_scanline(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
