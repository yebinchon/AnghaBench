; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiwindow.c_yui_window_toggle_fullscreen.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiwindow.c_yui_window_toggle_fullscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@yui_window_toggle_fullscreen.beforefswidth = internal global i32 1, align 4
@yui_window_toggle_fullscreen.beforefsheight = internal global i32 1, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yui_window_toggle_fullscreen(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32* @gtk_action_group_get_action(i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @GTK_TOGGLE_ACTION(i32* %10)
  %12 = call i64 @gtk_toggle_action_get_active(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = call %struct.TYPE_9__* @GTK_WIDGET(%struct.TYPE_8__* %15)
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* @yui_window_toggle_fullscreen.beforefswidth, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = call %struct.TYPE_9__* @GTK_WIDGET(%struct.TYPE_8__* %20)
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* @yui_window_toggle_fullscreen.beforefsheight, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gtk_widget_hide(i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = call i32 @GTK_WINDOW(%struct.TYPE_8__* %29)
  %31 = call i32 @gtk_window_fullscreen(i32 %30)
  br label %45

32:                                               ; preds = %2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = call i32 @GTK_WINDOW(%struct.TYPE_8__* %33)
  %35 = call i32 @gtk_window_unfullscreen(i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @gtk_widget_show(i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = call i32 @GTK_WINDOW(%struct.TYPE_8__* %40)
  %42 = load i32, i32* @yui_window_toggle_fullscreen.beforefswidth, align 4
  %43 = load i32, i32* @yui_window_toggle_fullscreen.beforefsheight, align 4
  %44 = call i32 @gtk_window_resize(i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %32, %14
  ret void
}

declare dso_local i32* @gtk_action_group_get_action(i32, i8*) #1

declare dso_local i64 @gtk_toggle_action_get_active(i32) #1

declare dso_local i32 @GTK_TOGGLE_ACTION(i32*) #1

declare dso_local %struct.TYPE_9__* @GTK_WIDGET(%struct.TYPE_8__*) #1

declare dso_local i32 @gtk_widget_hide(i32) #1

declare dso_local i32 @gtk_window_fullscreen(i32) #1

declare dso_local i32 @GTK_WINDOW(%struct.TYPE_8__*) #1

declare dso_local i32 @gtk_window_unfullscreen(i32) #1

declare dso_local i32 @gtk_widget_show(i32) #1

declare dso_local i32 @gtk_window_resize(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
