; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_chapters.c_chapter_keypress.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_chapters.c_chapter_keypress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GDK_KEY_Return = common dso_local global i64 0, align 8
@GDK_KEY_Down = common dso_local global i64 0, align 8
@GDK_KEY_Up = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"chapter_entry\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*)* @chapter_keypress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chapter_keypress(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @GDK_KEY_Return, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @GDK_KEY_Down, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @GDK_KEY_Up, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %4, align 4
  br label %78

25:                                               ; preds = %19, %15, %3
  %26 = load i32*, i32** %5, align 8
  %27 = call i32* @list_box_get_row(i32* %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @GTK_WIDGET(i32* %28)
  %30 = call i32 @gtk_widget_get_parent(i32 %29)
  %31 = call i32* @GTK_LIST_BOX(i32 %30)
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @gtk_list_box_row_get_index(i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @GDK_KEY_Return, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %25
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @GDK_KEY_Down, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %25
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %55

44:                                               ; preds = %37
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @GDK_KEY_Up, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %51, %48, %44
  br label %55

55:                                               ; preds = %54, %41
  %56 = load i32, i32* %11, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32* @gtk_list_box_get_row_at_index(i32* %59, i32 %60)
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @GTK_WIDGET(i32* %65)
  %67 = call i32* @find_widget(i32 %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %67, i32** %8, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @gtk_widget_grab_focus(i32* %71)
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %4, align 4
  br label %78

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %58
  br label %76

76:                                               ; preds = %75, %55
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %70, %23
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32* @list_box_get_row(i32*) #1

declare dso_local i32* @GTK_LIST_BOX(i32) #1

declare dso_local i32 @gtk_widget_get_parent(i32) #1

declare dso_local i32 @GTK_WIDGET(i32*) #1

declare dso_local i32 @gtk_list_box_row_get_index(i32*) #1

declare dso_local i32* @gtk_list_box_get_row_at_index(i32*, i32) #1

declare dso_local i32* @find_widget(i32, i8*) #1

declare dso_local i32 @gtk_widget_grab_focus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
