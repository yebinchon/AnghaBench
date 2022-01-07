; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiscsp.c_yui_scsp_new.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiscsp.c_yui_scsp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32 }

@yui = common dso_local global %struct.TYPE_23__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"run\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"paused\00", align 1
@paused_handler = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@running_handler = common dso_local global i8* null, align 8
@YUI_IS_RUNNING = common dso_local global i32 0, align 4
@YUI_IS_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @yui_scsp_new(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  store %struct.TYPE_23__* %8, %struct.TYPE_23__** @yui, align 8
  %9 = call i32 (...) @yui_scsp_get_type()
  %10 = call %struct.TYPE_23__* @g_object_new(i32 %9, i32* null)
  %11 = call %struct.TYPE_23__* @GTK_WIDGET(%struct.TYPE_23__* %10)
  store %struct.TYPE_23__* %11, %struct.TYPE_23__** %3, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %13 = call %struct.TYPE_23__* @YUI_SCSP(%struct.TYPE_23__* %12)
  store %struct.TYPE_23__* %13, %struct.TYPE_23__** %4, align 8
  %14 = call %struct.TYPE_23__* (...) @gtk_button_new()
  store %struct.TYPE_23__* %14, %struct.TYPE_23__** %5, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** @yui, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gtk_action_group_get_action(i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %20 = call i32 @gtk_action_connect_proxy(i32 %18, %struct.TYPE_23__* %19)
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @GTK_BOX(i32 %23)
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = call i32 @gtk_box_pack_start(i32 %24, %struct.TYPE_23__* %25, i32 %26, i32 %27, i32 2)
  %29 = call %struct.TYPE_23__* (...) @gtk_button_new()
  store %struct.TYPE_23__* %29, %struct.TYPE_23__** %6, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** @yui, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @gtk_action_group_get_action(i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %35 = call i32 @gtk_action_connect_proxy(i32 %33, %struct.TYPE_23__* %34)
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @GTK_BOX(i32 %38)
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %41 = load i32, i32* @FALSE, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i32 @gtk_box_pack_start(i32 %39, %struct.TYPE_23__* %40, i32 %41, i32 %42, i32 2)
  %44 = call %struct.TYPE_23__* @gtk_button_new_from_stock(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_23__* %44, %struct.TYPE_23__** %7, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %46 = call i32 @G_CALLBACK(i32 (%struct.TYPE_23__*)* @yui_scsp_destroy)
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %48 = call i8* @g_signal_connect_swapped(%struct.TYPE_23__* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %46, %struct.TYPE_23__* %47)
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @GTK_BOX(i32 %51)
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %54 = load i32, i32* @FALSE, align 4
  %55 = load i32, i32* @FALSE, align 4
  %56 = call i32 @gtk_box_pack_start(i32 %52, %struct.TYPE_23__* %53, i32 %54, i32 %55, i32 2)
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** @yui, align 8
  %58 = call i32 @G_CALLBACK(i32 (%struct.TYPE_23__*)* @yui_scsp_update)
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %60 = call i8* @g_signal_connect_swapped(%struct.TYPE_23__* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %58, %struct.TYPE_23__* %59)
  store i8* %60, i8** @paused_handler, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** @yui, align 8
  %62 = call i32 @G_CALLBACK(i32 (%struct.TYPE_23__*)* @yui_scsp_clear)
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %64 = call i8* @g_signal_connect_swapped(%struct.TYPE_23__* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %62, %struct.TYPE_23__* %63)
  store i8* %64, i8** @running_handler, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** @yui, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @YUI_IS_RUNNING, align 4
  %69 = load i32, i32* @YUI_IS_INIT, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = load i32, i32* @YUI_IS_INIT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %1
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %76 = call i32 @yui_scsp_update(%struct.TYPE_23__* %75)
  br label %77

77:                                               ; preds = %74, %1
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %79 = call %struct.TYPE_23__* @GTK_WIDGET(%struct.TYPE_23__* %78)
  %80 = call i32 @gtk_widget_show_all(%struct.TYPE_23__* %79)
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  ret %struct.TYPE_23__* %81
}

declare dso_local %struct.TYPE_23__* @GTK_WIDGET(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @g_object_new(i32, i32*) #1

declare dso_local i32 @yui_scsp_get_type(...) #1

declare dso_local %struct.TYPE_23__* @YUI_SCSP(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @gtk_button_new(...) #1

declare dso_local i32 @gtk_action_connect_proxy(i32, %struct.TYPE_23__*) #1

declare dso_local i32 @gtk_action_group_get_action(i32, i8*) #1

declare dso_local i32 @gtk_box_pack_start(i32, %struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(i32) #1

declare dso_local %struct.TYPE_23__* @gtk_button_new_from_stock(i8*) #1

declare dso_local i8* @g_signal_connect_swapped(%struct.TYPE_23__*, i8*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @G_CALLBACK(i32 (%struct.TYPE_23__*)*) #1

declare dso_local i32 @yui_scsp_destroy(%struct.TYPE_23__*) #1

declare dso_local i32 @yui_scsp_update(%struct.TYPE_23__*) #1

declare dso_local i32 @yui_scsp_clear(%struct.TYPE_23__*) #1

declare dso_local i32 @gtk_widget_show_all(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
