; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_select_preset2.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_select_preset2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"presets_list\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"preset-rename\00", align 1
@HB_PRESET_TYPE_CUSTOM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"preset-save\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*)* @select_preset2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_preset2(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = icmp eq %struct.TYPE_10__* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %2
  br label %90

20:                                               ; preds = %14
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @GHB_WIDGET(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %25 = call i32* @GTK_TREE_VIEW(i32 %24)
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32* @gtk_tree_view_get_selection(i32* %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32* @gtk_tree_view_get_model(i32* %28)
  store i32* %29, i32** %7, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = call i32* @ghb_tree_path_new_from_index(%struct.TYPE_10__* %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %60

34:                                               ; preds = %20
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @gtk_tree_view_expand_to_path(i32* %35, i32* %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @gtk_tree_model_get_iter(i32* %38, i32* %8, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @gtk_tree_selection_select_iter(i32* %43, i32* %8)
  br label %53

45:                                               ; preds = %34
  %46 = load i32*, i32** %7, align 8
  %47 = call i64 @gtk_tree_model_get_iter_first(i32* %46, i32* %8)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @gtk_tree_selection_select_iter(i32* %50, i32* %8)
  br label %52

52:                                               ; preds = %49, %45
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* @FALSE, align 4
  %57 = call i32 @gtk_tree_view_scroll_to_cell(i32* %54, i32* %55, i32* null, i32 %56, i32 0, i32 0)
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @gtk_tree_path_free(i32* %58)
  br label %60

60:                                               ; preds = %53, %20
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = call i32 @set_preset_menu_button_label(%struct.TYPE_9__* %61, %struct.TYPE_10__* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = call i32 @preset_get_type(%struct.TYPE_10__* %64)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @G_ACTION_MAP(i32 %68)
  %70 = call i32 @g_action_map_lookup_action(i32 %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %71 = call i32* @G_SIMPLE_ACTION(i32 %70)
  store i32* %71, i32** %11, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @HB_PRESET_TYPE_CUSTOM, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @g_simple_action_set_enabled(i32* %72, i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @G_ACTION_MAP(i32 %80)
  %82 = call i32 @g_action_map_lookup_action(i32 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %83 = call i32* @G_SIMPLE_ACTION(i32 %82)
  store i32* %83, i32** %11, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @HB_PRESET_TYPE_CUSTOM, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @g_simple_action_set_enabled(i32* %84, i32 %88)
  br label %90

90:                                               ; preds = %60, %19
  ret void
}

declare dso_local i32* @GTK_TREE_VIEW(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_tree_view_get_selection(i32*) #1

declare dso_local i32* @gtk_tree_view_get_model(i32*) #1

declare dso_local i32* @ghb_tree_path_new_from_index(%struct.TYPE_10__*) #1

declare dso_local i32 @gtk_tree_view_expand_to_path(i32*, i32*) #1

declare dso_local i64 @gtk_tree_model_get_iter(i32*, i32*, i32*) #1

declare dso_local i32 @gtk_tree_selection_select_iter(i32*, i32*) #1

declare dso_local i64 @gtk_tree_model_get_iter_first(i32*, i32*) #1

declare dso_local i32 @gtk_tree_view_scroll_to_cell(i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @gtk_tree_path_free(i32*) #1

declare dso_local i32 @set_preset_menu_button_label(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @preset_get_type(%struct.TYPE_10__*) #1

declare dso_local i32* @G_SIMPLE_ACTION(i32) #1

declare dso_local i32 @g_action_map_lookup_action(i32, i8*) #1

declare dso_local i32 @G_ACTION_MAP(i32) #1

declare dso_local i32 @g_simple_action_set_enabled(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
