; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_input.c_INPUT_DrawMousePointer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_input.c_INPUT_DrawMousePointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INPUT_mouse_mode = common dso_local global i64 0, align 8
@INPUT_MOUSE_PEN = common dso_local global i64 0, align 8
@INPUT_MOUSE_GUN = common dso_local global i64 0, align 8
@mouse_pen_show_pointer = common dso_local global i64 0, align 8
@mouse_x = common dso_local global i32 0, align 4
@MOUSE_SHIFT = common dso_local global i32 0, align 4
@mouse_y = common dso_local global i32 0, align 4
@Screen_atari = common dso_local global i64 0, align 8
@Screen_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @INPUT_DrawMousePointer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = load i64, i64* @INPUT_mouse_mode, align 8
  %5 = load i64, i64* @INPUT_MOUSE_PEN, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* @INPUT_mouse_mode, align 8
  %9 = load i64, i64* @INPUT_MOUSE_GUN, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %68

11:                                               ; preds = %7, %0
  %12 = load i64, i64* @mouse_pen_show_pointer, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %68

14:                                               ; preds = %11
  %15 = load i32, i32* @mouse_x, align 4
  %16 = load i32, i32* @MOUSE_SHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* @mouse_y, align 4
  %19 = load i32, i32* @MOUSE_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %67

23:                                               ; preds = %14
  %24 = load i32, i32* %1, align 4
  %25 = icmp sle i32 %24, 167
  br i1 %25, label %26, label %67

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = icmp sle i32 %30, 119
  br i1 %31, label %32, label %67

32:                                               ; preds = %29
  %33 = load i64, i64* @Screen_atari, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 12, %35
  %37 = load i32, i32* @Screen_WIDTH, align 4
  %38 = load i32, i32* %2, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %34, i64 %41
  store i32* %42, i32** %3, align 8
  %43 = call i32 @PLOT(i32 -2, i32 0)
  %44 = call i32 @PLOT(i32 -1, i32 0)
  %45 = call i32 @PLOT(i32 1, i32 0)
  %46 = call i32 @PLOT(i32 2, i32 0)
  %47 = load i32, i32* %2, align 4
  %48 = icmp sge i32 %47, 1
  br i1 %48, label %49, label %56

49:                                               ; preds = %32
  %50 = call i32 @PLOT(i32 0, i32 -1)
  %51 = load i32, i32* %2, align 4
  %52 = icmp sge i32 %51, 2
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @PLOT(i32 0, i32 -2)
  br label %55

55:                                               ; preds = %53, %49
  br label %56

56:                                               ; preds = %55, %32
  %57 = load i32, i32* %2, align 4
  %58 = icmp sle i32 %57, 118
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = call i32 @PLOT(i32 0, i32 1)
  %61 = load i32, i32* %2, align 4
  %62 = icmp sle i32 %61, 117
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @PLOT(i32 0, i32 2)
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65, %56
  br label %67

67:                                               ; preds = %66, %29, %26, %23, %14
  br label %68

68:                                               ; preds = %67, %11, %7
  ret void
}

declare dso_local i32 @PLOT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
