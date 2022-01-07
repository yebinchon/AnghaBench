; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiviewer.c_yui_viewer_save.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiviewer.c_yui_viewer_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Please choose a file\00", align 1
@GTK_FILE_CHOOSER_ACTION_SAVE = common dso_local global i32 0, align 4
@GTK_STOCK_CANCEL = common dso_local global i32 0, align 4
@GTK_STOCK_SAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"png\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yui_viewer_save(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load i32, i32* @GTK_FILE_CHOOSER_ACTION_SAVE, align 4
  %8 = load i32, i32* @GTK_STOCK_CANCEL, align 4
  %9 = load i32, i32* @GTK_STOCK_SAVE, align 4
  %10 = call i32* @gtk_file_chooser_dialog_new(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* null, i32 %7, i32 %8, i32 128, i32 %9, i32 129, i32* null)
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @gtk_widget_show(i32* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @GTK_DIALOG(i32* %13)
  %15 = call i32 @gtk_dialog_run(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %43 [
    i32 129, label %17
    i32 128, label %42
  ]

17:                                               ; preds = %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = srem i32 %22, 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = srem i32 %26, 4
  %28 = sub nsw i32 4, %27
  br label %30

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ %28, %25 ], [ 0, %29 ]
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @GTK_FILE_CHOOSER(i32* %34)
  %36 = call i8* @gtk_file_chooser_get_filename(i32 %35)
  store i8* %36, i8** %5, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @gdk_pixbuf_save(i32 %39, i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  br label %43

42:                                               ; preds = %1
  br label %43

43:                                               ; preds = %1, %42, %30
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @gtk_widget_destroy(i32* %44)
  ret void
}

declare dso_local i32* @gtk_file_chooser_dialog_new(i8*, i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @gtk_widget_show(i32*) #1

declare dso_local i32 @gtk_dialog_run(i32) #1

declare dso_local i32 @GTK_DIALOG(i32*) #1

declare dso_local i8* @gtk_file_chooser_get_filename(i32) #1

declare dso_local i32 @GTK_FILE_CHOOSER(i32*) #1

declare dso_local i32 @gdk_pixbuf_save(i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
