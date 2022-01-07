; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_mir_window.c_getSystemCursorName.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_mir_window.c_getSystemCursorName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mir_arrow_cursor_name = common dso_local global i8* null, align 8
@mir_caret_cursor_name = common dso_local global i8* null, align 8
@mir_crosshair_cursor_name = common dso_local global i8* null, align 8
@mir_open_hand_cursor_name = common dso_local global i8* null, align 8
@mir_horizontal_resize_cursor_name = common dso_local global i8* null, align 8
@mir_vertical_resize_cursor_name = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getSystemCursorName(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %17 [
    i32 133, label %5
    i32 129, label %7
    i32 132, label %9
    i32 131, label %11
    i32 130, label %13
    i32 128, label %15
  ]

5:                                                ; preds = %1
  %6 = load i8*, i8** @mir_arrow_cursor_name, align 8
  store i8* %6, i8** %2, align 8
  br label %18

7:                                                ; preds = %1
  %8 = load i8*, i8** @mir_caret_cursor_name, align 8
  store i8* %8, i8** %2, align 8
  br label %18

9:                                                ; preds = %1
  %10 = load i8*, i8** @mir_crosshair_cursor_name, align 8
  store i8* %10, i8** %2, align 8
  br label %18

11:                                               ; preds = %1
  %12 = load i8*, i8** @mir_open_hand_cursor_name, align 8
  store i8* %12, i8** %2, align 8
  br label %18

13:                                               ; preds = %1
  %14 = load i8*, i8** @mir_horizontal_resize_cursor_name, align 8
  store i8* %14, i8** %2, align 8
  br label %18

15:                                               ; preds = %1
  %16 = load i8*, i8** @mir_vertical_resize_cursor_name, align 8
  store i8* %16, i8** %2, align 8
  br label %18

17:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %18

18:                                               ; preds = %17, %15, %13, %11, %9, %7, %5
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
