; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_countdown_dialog.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_ghb_countdown_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, i32*, i32* }

@.str = private unnamed_addr constant [10 x i8] c"hb_window\00", align 1
@GTK_DIALOG_MODAL = common dso_local global i32 0, align 4
@GTK_BUTTONS_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s\0A\0A%s in %d seconds ...\00", align 1
@GTK_RESPONSE_CANCEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_countdown_dialog(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4, %struct.TYPE_5__* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %13, align 8
  store i32 %6, i32* %14, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  store i32* %22, i32** %23, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  store i32* %24, i32** %25, align 8
  %26 = load i32, i32* %14, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @GHB_WIDGET(i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %34 = call i32* @GTK_WINDOW(i32 %33)
  store i32* %34, i32** %15, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* @GTK_DIALOG_MODAL, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @GTK_BUTTONS_NONE, align 4
  %39 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32* @gtk_message_dialog_new(i32* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32* %40, i32* %41, i32 %42)
  store i32* %43, i32** %16, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = call i32 @GTK_DIALOG(i32* %44)
  %46 = load i32*, i32** %11, align 8
  %47 = load i64, i64* @GTK_RESPONSE_CANCEL, align 8
  %48 = call i32 @gtk_dialog_add_buttons(i32 %45, i32* %46, i64 %47, i32* null)
  %49 = load i32*, i32** %16, align 8
  %50 = call i32 @GTK_MESSAGE_DIALOG(i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @g_timeout_add(i32 1000, i32 %52, %struct.TYPE_6__* %19)
  store i32 %53, i32* %18, align 4
  %54 = load i32*, i32** %16, align 8
  %55 = call i32 @GTK_DIALOG(i32* %54)
  %56 = call i64 @gtk_dialog_run(i32 %55)
  store i64 %56, i64* %17, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = call i32 @gtk_widget_destroy(i32* %57)
  %59 = load i64, i64* %17, align 8
  %60 = load i64, i64* @GTK_RESPONSE_CANCEL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %7
  %63 = call i32* (...) @g_main_context_default()
  store i32* %63, i32** %20, align 8
  %64 = load i32*, i32** %20, align 8
  %65 = load i32, i32* %18, align 4
  %66 = call i32* @g_main_context_find_source_by_id(i32* %64, i32 %65)
  store i32* %66, i32** %21, align 8
  %67 = load i32*, i32** %21, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32*, i32** %21, align 8
  %71 = call i32 @g_source_destroy(i32* %70)
  br label %72

72:                                               ; preds = %69, %62
  br label %73

73:                                               ; preds = %72, %7
  ret void
}

declare dso_local i32* @GTK_WINDOW(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_message_dialog_new(i32*, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @gtk_dialog_add_buttons(i32, i32*, i64, i32*) #1

declare dso_local i32 @GTK_DIALOG(i32*) #1

declare dso_local i32 @GTK_MESSAGE_DIALOG(i32*) #1

declare dso_local i32 @g_timeout_add(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @gtk_dialog_run(i32) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

declare dso_local i32* @g_main_context_default(...) #1

declare dso_local i32* @g_main_context_find_source_by_id(i32*, i32) #1

declare dso_local i32 @g_source_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
