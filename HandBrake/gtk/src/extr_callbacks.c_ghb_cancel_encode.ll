; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_cancel_encode.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_cancel_encode.c"
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
@.str.4 = private unnamed_addr constant [27 x i8] c"Cancel Current, Start Next\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Finish Current, then Stop\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Continue Encoding\00", align 1
@GHB_CANCEL_ALL = common dso_local global i32 0, align 4
@GHB_CANCEL_CURRENT = common dso_local global i32 0, align 4
@GHB_CANCEL_FINISH = common dso_local global i32 0, align 4
@GHB_CANCEL_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_cancel_encode(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %11

11:                                               ; preds = %10, %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @GHB_WIDGET(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32* @GTK_WINDOW(i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @GTK_DIALOG_MODAL, align 4
  %19 = load i32, i32* @GTK_MESSAGE_WARNING, align 4
  %20 = load i32, i32* @GTK_BUTTONS_NONE, align 4
  %21 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i8*, i8** %4, align 8
  %23 = call i32* @gtk_message_dialog_new(i32* %17, i32 %18, i32 %19, i32 %20, i32 %21, i8* %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @GTK_DIALOG(i32* %24)
  %26 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %28 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %29 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %30 = call i32 @gtk_dialog_add_buttons(i32 %25, i32 %26, i32 1, i32 %27, i32 2, i32 %28, i32 3, i32 %29, i32 4, i32* null)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @GTK_DIALOG(i32* %31)
  %33 = call i64 @gtk_dialog_run(i32 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @gtk_widget_destroy(i32* %34)
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  switch i32 %37, label %53 [
    i32 1, label %38
    i32 2, label %43
    i32 3, label %48
    i32 4, label %52
  ]

38:                                               ; preds = %11
  %39 = call i32 (...) @ghb_stop_queue()
  %40 = load i32, i32* @GHB_CANCEL_ALL, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %57

43:                                               ; preds = %11
  %44 = call i32 (...) @ghb_stop_queue()
  %45 = load i32, i32* @GHB_CANCEL_CURRENT, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %57

48:                                               ; preds = %11
  %49 = load i32, i32* @GHB_CANCEL_FINISH, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %57

52:                                               ; preds = %11
  br label %53

53:                                               ; preds = %11, %52
  %54 = load i32, i32* @GHB_CANCEL_NONE, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %48, %43, %38
  ret void
}

declare dso_local i32* @GTK_WINDOW(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_message_dialog_new(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @gtk_dialog_add_buttons(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

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
