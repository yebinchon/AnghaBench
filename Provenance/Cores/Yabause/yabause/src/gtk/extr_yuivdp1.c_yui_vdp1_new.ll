; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuivdp1.c_yui_vdp1_new.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuivdp1.c_yui_vdp1_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i8*, i8*, i32 }

@YUI_IS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"run\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"paused\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@YUI_IS_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @yui_vdp1_new(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %7 = call i32 (...) @yui_vdp1_get_type()
  %8 = call %struct.TYPE_18__* @g_object_new(i32 %7, i32* null)
  %9 = call i32* @GTK_WIDGET(%struct.TYPE_18__* %8)
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.TYPE_18__* @YUI_VDP1(i32* %10)
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %4, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %14, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @YUI_IS_INIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = call i32 @yui_window_run(%struct.TYPE_17__* %26)
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = call i32 @yui_window_pause(%struct.TYPE_17__* %30)
  br label %32

32:                                               ; preds = %23, %1
  %33 = call %struct.TYPE_18__* @gtk_tool_button_new_from_stock(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %5, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @gtk_action_group_get_action(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = call i32* @GTK_WIDGET(%struct.TYPE_18__* %40)
  %42 = call i32 @gtk_action_connect_proxy(i32 %39, i32* %41)
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @GTK_TOOLBAR(i32 %45)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = call i32 @GTK_TOOL_ITEM(%struct.TYPE_18__* %47)
  %49 = call i32 @gtk_toolbar_insert(i32 %46, i32 %48, i32 -1)
  %50 = call %struct.TYPE_18__* @gtk_tool_button_new_from_stock(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_18__* %50, %struct.TYPE_18__** %6, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gtk_action_group_get_action(i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = call i32* @GTK_WIDGET(%struct.TYPE_18__* %57)
  %59 = call i32 @gtk_action_connect_proxy(i32 %56, i32* %58)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @GTK_TOOLBAR(i32 %62)
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = call i32 @GTK_TOOL_ITEM(%struct.TYPE_18__* %64)
  %66 = call i32 @gtk_toolbar_insert(i32 %63, i32 %65, i32 -1)
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = call i32 @G_CALLBACK(i32 (%struct.TYPE_18__*)* @yui_vdp1_update)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = call i8* @g_signal_connect_swapped(%struct.TYPE_17__* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %70, %struct.TYPE_18__* %71)
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = call i32 @G_CALLBACK(i32 (%struct.TYPE_18__*)* @yui_vdp1_clear)
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %80 = call i8* @g_signal_connect_swapped(%struct.TYPE_17__* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %78, %struct.TYPE_18__* %79)
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @YUI_IS_RUNNING, align 4
  %89 = load i32, i32* @YUI_IS_INIT, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = load i32, i32* @YUI_IS_INIT, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %32
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = call i32 @yui_vdp1_update(%struct.TYPE_18__* %95)
  br label %97

97:                                               ; preds = %94, %32
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %99 = call i32* @GTK_WIDGET(%struct.TYPE_18__* %98)
  %100 = call i32 @gtk_widget_show_all(i32* %99)
  %101 = load i32*, i32** %3, align 8
  ret i32* %101
}

declare dso_local i32* @GTK_WIDGET(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @g_object_new(i32, i32*) #1

declare dso_local i32 @yui_vdp1_get_type(...) #1

declare dso_local %struct.TYPE_18__* @YUI_VDP1(i32*) #1

declare dso_local i32 @yui_window_run(%struct.TYPE_17__*) #1

declare dso_local i32 @yui_window_pause(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @gtk_tool_button_new_from_stock(i8*) #1

declare dso_local i32 @gtk_action_connect_proxy(i32, i32*) #1

declare dso_local i32 @gtk_action_group_get_action(i32, i8*) #1

declare dso_local i32 @gtk_toolbar_insert(i32, i32, i32) #1

declare dso_local i32 @GTK_TOOLBAR(i32) #1

declare dso_local i32 @GTK_TOOL_ITEM(%struct.TYPE_18__*) #1

declare dso_local i8* @g_signal_connect_swapped(%struct.TYPE_17__*, i8*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @G_CALLBACK(i32 (%struct.TYPE_18__*)*) #1

declare dso_local i32 @yui_vdp1_update(%struct.TYPE_18__*) #1

declare dso_local i32 @yui_vdp1_clear(%struct.TYPE_18__*) #1

declare dso_local i32 @gtk_widget_show_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
