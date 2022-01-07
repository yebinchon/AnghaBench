; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuifileentry.c_yui_file_entry_browse.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuifileentry.c_yui_file_entry_browse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@YUI_FILE_ENTRY_DIRECTORY = common dso_local global i32 0, align 4
@GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER = common dso_local global i32 0, align 4
@GTK_FILE_CHOOSER_ACTION_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Please choose a file\00", align 1
@GTK_STOCK_CANCEL = common dso_local global i32 0, align 4
@GTK_STOCK_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*)* @yui_file_entry_browse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_file_entry_browse(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %8, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @YUI_FILE_ENTRY_DIRECTORY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER, align 4
  store i32 %18, i32* %9, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @GTK_FILE_CHOOSER_ACTION_OPEN, align 4
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @GTK_STOCK_CANCEL, align 4
  %24 = load i32, i32* @GTK_STOCK_OPEN, align 4
  %25 = call i32* @gtk_file_chooser_dialog_new(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* null, i32 %22, i32 %23, i32 128, i32 %24, i32 129, i32* null)
  store i32* %25, i32** %5, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @GTK_ENTRY(i32 %28)
  %30 = call i8* @gtk_entry_get_text(i32 %29)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @GTK_FILE_CHOOSER(i32* %37)
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @gtk_file_chooser_set_filename(i32 %38, i8* %39)
  br label %41

41:                                               ; preds = %36, %21
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @gtk_widget_show(i32* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @GTK_DIALOG(i32* %44)
  %46 = call i32 @gtk_dialog_run(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %59 [
    i32 129, label %48
    i32 128, label %58
  ]

48:                                               ; preds = %41
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @GTK_FILE_CHOOSER(i32* %49)
  %51 = call i8* @gtk_file_chooser_get_filename(i32 %50)
  store i8* %51, i8** %7, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @GTK_ENTRY(i32 %54)
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @gtk_entry_set_text(i32 %55, i8* %56)
  br label %59

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %41, %58, %48
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @gtk_widget_destroy(i32* %60)
  ret void
}

declare dso_local i32* @gtk_file_chooser_dialog_new(i8*, i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i8* @gtk_entry_get_text(i32) #1

declare dso_local i32 @GTK_ENTRY(i32) #1

declare dso_local i32 @gtk_file_chooser_set_filename(i32, i8*) #1

declare dso_local i32 @GTK_FILE_CHOOSER(i32*) #1

declare dso_local i32 @gtk_widget_show(i32*) #1

declare dso_local i32 @gtk_dialog_run(i32) #1

declare dso_local i32 @GTK_DIALOG(i32*) #1

declare dso_local i8* @gtk_file_chooser_get_filename(i32) #1

declare dso_local i32 @gtk_entry_set_text(i32, i8*) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
