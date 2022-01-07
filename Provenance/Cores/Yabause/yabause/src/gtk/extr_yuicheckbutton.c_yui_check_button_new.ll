; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuicheckbutton.c_yui_check_button_new.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuicheckbutton.c_yui_check_button_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"key-file\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@yui_check_button_toggled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @yui_check_button_new(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = call i32 (...) @yui_check_button_get_type()
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @g_object_new(i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %16, i32* null)
  %18 = call i32* @GTK_WIDGET(i32 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call %struct.TYPE_5__* @YUI_CHECK_BUTTON(i32* %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %10, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = call i32 @GTK_TOGGLE_BUTTON(%struct.TYPE_5__* %21)
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i32 @gtk_toggle_button_set_mode(i32 %22, i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @g_key_file_get_boolean(i32 %27, i32 %30, i32 %33, i32* null)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = call i32 @GTK_TOGGLE_BUTTON(%struct.TYPE_5__* %35)
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @gtk_toggle_button_set_state(i32 %36, i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %40 = call i32 @GTK_TOGGLE_BUTTON(%struct.TYPE_5__* %39)
  %41 = load i32, i32* @yui_check_button_toggled, align 4
  %42 = call i32 @G_CALLBACK(i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %44 = call i32 @g_signal_connect(i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %42, %struct.TYPE_5__* %43)
  %45 = load i32*, i32** %9, align 8
  ret i32* %45
}

declare dso_local i32* @GTK_WIDGET(i32) #1

declare dso_local i32 @g_object_new(i32, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @yui_check_button_get_type(...) #1

declare dso_local %struct.TYPE_5__* @YUI_CHECK_BUTTON(i32*) #1

declare dso_local i32 @gtk_toggle_button_set_mode(i32, i32) #1

declare dso_local i32 @GTK_TOGGLE_BUTTON(%struct.TYPE_5__*) #1

declare dso_local i32 @g_key_file_get_boolean(i32, i32, i32, i32*) #1

declare dso_local i32 @gtk_toggle_button_set_state(i32, i32) #1

declare dso_local i32 @g_signal_connect(i32, i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
