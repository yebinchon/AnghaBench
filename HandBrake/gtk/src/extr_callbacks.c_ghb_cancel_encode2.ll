; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_cancel_encode2.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_cancel_encode2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"hb_window\00", align 1
@GTK_DIALOG_MODAL = common dso_local global i32 0, align 4
@GTK_MESSAGE_WARNING = common dso_local global i32 0, align 4
@GTK_BUTTONS_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"%sYour movie will be lost if you don't continue encoding.\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Cancel Current and Stop\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Continue Encoding\00", align 1
@GHB_CANCEL_ALL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ghb_cancel_encode2(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %12

12:                                               ; preds = %11, %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @GHB_WIDGET(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32* @GTK_WINDOW(i32 %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @GTK_DIALOG_MODAL, align 4
  %20 = load i32, i32* @GTK_MESSAGE_WARNING, align 4
  %21 = load i32, i32* @GTK_BUTTONS_NONE, align 4
  %22 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i8*, i8** %5, align 8
  %24 = call i32* @gtk_message_dialog_new(i32* %18, i32 %19, i32 %20, i32 %21, i32 %22, i8* %23)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @GTK_DIALOG(i32* %25)
  %27 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %29 = call i32 @gtk_dialog_add_buttons(i32 %26, i32 %27, i32 1, i32 %28, i32 4, i32* null)
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @GTK_DIALOG(i32* %30)
  %32 = call i64 @gtk_dialog_run(i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @gtk_widget_destroy(i32* %33)
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %35 to i32
  switch i32 %36, label %44 [
    i32 1, label %37
    i32 4, label %43
  ]

37:                                               ; preds = %12
  %38 = call i32 (...) @ghb_stop_queue()
  %39 = load i32, i32* @GHB_CANCEL_ALL, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %12
  br label %44

44:                                               ; preds = %12, %43
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %37
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32* @GTK_WINDOW(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_message_dialog_new(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @gtk_dialog_add_buttons(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @GTK_DIALOG(i32*) #1

declare dso_local i64 @gtk_dialog_run(i32) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

declare dso_local i32 @ghb_stop_queue(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
