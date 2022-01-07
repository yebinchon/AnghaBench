; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiwindow.c_yui_window_pause.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiwindow.c_yui_window_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@YUI_IS_RUNNING = common dso_local global i32 0, align 4
@SCSP_MUTE_SYSTEM = common dso_local global i32 0, align 4
@yui_window_signals = common dso_local global i32* null, align 8
@YUI_WINDOW_PAUSED_SIGNAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"run\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yui_window_pause(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @YUI_IS_RUNNING, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @YUI_GL(i32 %12)
  %14 = call i32 @yui_gl_dump_screen(i32 %13)
  %15 = load i32, i32* @SCSP_MUTE_SYSTEM, align 4
  %16 = call i32 @ScspMuteAudio(i32 %15)
  %17 = call i32 @GINT_TO_POINTER(i32 1)
  %18 = call i32 @g_idle_remove_by_data(i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = call i32 @G_OBJECT(%struct.TYPE_4__* %19)
  %21 = load i32*, i32** @yui_window_signals, align 8
  %22 = load i64, i64* @YUI_WINDOW_PAUSED_SIGNAL, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @g_signal_emit(i32 %20, i32 %24, i32 0)
  %26 = load i32, i32* @YUI_IS_RUNNING, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @gtk_action_group_get_action(i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i32 @gtk_action_set_sensitive(i32 %35, i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @gtk_action_group_get_action(i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i32 @gtk_action_set_sensitive(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @yui_gl_dump_screen(i32) #1

declare dso_local i32 @YUI_GL(i32) #1

declare dso_local i32 @ScspMuteAudio(i32) #1

declare dso_local i32 @g_idle_remove_by_data(i32) #1

declare dso_local i32 @GINT_TO_POINTER(i32) #1

declare dso_local i32 @g_signal_emit(i32, i32, i32) #1

declare dso_local i32 @G_OBJECT(%struct.TYPE_4__*) #1

declare dso_local i32 @gtk_action_set_sensitive(i32, i32) #1

declare dso_local i32 @gtk_action_group_get_action(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
