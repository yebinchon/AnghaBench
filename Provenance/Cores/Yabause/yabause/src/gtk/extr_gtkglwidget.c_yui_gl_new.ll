; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_gtkglwidget.c_yui_gl_new.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_gtkglwidget.c_yui_gl_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"configure_event\00", align 1
@yui_gl_resize = common dso_local global i32 0, align 4
@GDK_POINTER_MOTION_MASK = common dso_local global i32 0, align 4
@GDK_BUTTON_PRESS_MASK = common dso_local global i32 0, align 4
@GDK_BUTTON_RELEASE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1
@yui_gl_hide_cursor = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@yui_gl_button_press = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@yui_gl_button_release = common dso_local global i32 0, align 4
@GDK_GL_ATTRIB_LIST_NONE = common dso_local global i32 0, align 4
@GDK_GL_BLUE_SIZE = common dso_local global i32 0, align 4
@GDK_GL_DEPTH_SIZE = common dso_local global i32 0, align 4
@GDK_GL_DOUBLEBUFFER = common dso_local global i32 0, align 4
@GDK_GL_GREEN_SIZE = common dso_local global i32 0, align 4
@GDK_GL_RED_SIZE = common dso_local global i32 0, align 4
@GDK_GL_RGBA = common dso_local global i32 0, align 4
@GDK_GL_RGBA_TYPE = common dso_local global i32 0, align 4
@GDK_GL_STENCIL_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @yui_gl_new() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 (...) @yui_gl_get_type()
  %3 = call i32 @g_object_new(i32 %2, i32* null)
  %4 = call i32* @GTK_WIDGET(i32 %3)
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = call %struct.TYPE_2__* @YUI_GL(i32* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @GTK_OBJECT(i32* %8)
  %10 = load i32, i32* @yui_gl_resize, align 4
  %11 = call i32 @GTK_SIGNAL_FUNC(i32 %10)
  %12 = call i32 @g_signal_connect(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %11, i32 0)
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* @GDK_POINTER_MOTION_MASK, align 4
  %15 = load i32, i32* @GDK_BUTTON_PRESS_MASK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @GDK_BUTTON_RELEASE_MASK, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @gtk_widget_set_events(i32* %13, i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @GTK_OBJECT(i32* %20)
  %22 = load i32, i32* @yui_gl_hide_cursor, align 4
  %23 = call i32 @GTK_SIGNAL_FUNC(i32 %22)
  %24 = call i32 @g_signal_connect(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 0)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @GTK_OBJECT(i32* %25)
  %27 = load i32, i32* @yui_gl_button_press, align 4
  %28 = call i32 @GTK_SIGNAL_FUNC(i32 %27)
  %29 = call i32 @g_signal_connect(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 0)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @GTK_OBJECT(i32* %30)
  %32 = load i32, i32* @yui_gl_button_release, align 4
  %33 = call i32 @GTK_SIGNAL_FUNC(i32 %32)
  %34 = call i32 @g_signal_connect(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 0)
  %35 = load i32*, i32** %1, align 8
  ret i32* %35
}

declare dso_local i32* @GTK_WIDGET(i32) #1

declare dso_local i32 @g_object_new(i32, i32*) #1

declare dso_local i32 @yui_gl_get_type(...) #1

declare dso_local %struct.TYPE_2__* @YUI_GL(i32*) #1

declare dso_local i32 @g_signal_connect(i32, i8*, i32, i32) #1

declare dso_local i32 @GTK_OBJECT(i32*) #1

declare dso_local i32 @GTK_SIGNAL_FUNC(i32) #1

declare dso_local i32 @gtk_widget_set_events(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
