; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_main.c_bind_subtitle_tree_model.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_main.c_bind_subtitle_tree_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"bind_subtitle_tree_model()\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"subtitle_list_view\00", align 1
@G_TYPE_STRING = common dso_local global i32 0, align 4
@G_TYPE_FLOAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Track Information\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"markup\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"yalign\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"icon-name\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@subtitle_list_selection_changed_cb = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@subtitle_edit_clicked_cb = common dso_local global i32 0, align 4
@subtitle_remove_clicked_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @bind_subtitle_tree_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bind_subtitle_tree_model(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %12 = call i32 @g_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @GHB_WIDGET(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32* @GTK_TREE_VIEW(i32 %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i32* @gtk_tree_view_get_selection(i32* %18)
  store i32* %19, i32** %11, align 8
  %20 = load i32, i32* @G_TYPE_STRING, align 4
  %21 = load i32, i32* @G_TYPE_STRING, align 4
  %22 = load i32, i32* @G_TYPE_STRING, align 4
  %23 = load i32, i32* @G_TYPE_STRING, align 4
  %24 = load i32, i32* @G_TYPE_STRING, align 4
  %25 = load i32, i32* @G_TYPE_FLOAT, align 4
  %26 = call i32* @gtk_tree_store_new(i32 6, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @GTK_TREE_MODEL(i32* %28)
  %30 = call i32 @gtk_tree_view_set_model(i32* %27, i32 %29)
  %31 = call i32* (...) @gtk_cell_renderer_text_new()
  store i32* %31, i32** %3, align 8
  %32 = call i32* (...) @gtk_cell_renderer_text_new()
  store i32* %32, i32** %4, align 8
  %33 = call i32* (...) @gtk_cell_renderer_text_new()
  store i32* %33, i32** %5, align 8
  %34 = call i32* (...) @custom_cell_renderer_button_new()
  store i32* %34, i32** %6, align 8
  %35 = call i32* (...) @custom_cell_renderer_button_new()
  store i32* %35, i32** %7, align 8
  %36 = call i32* (...) @gtk_tree_view_column_new()
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @gtk_tree_view_column_set_spacing(i32* %37, i32 12)
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 @gtk_tree_view_column_set_title(i32* %39, i32 %40)
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @gtk_tree_view_column_pack_start(i32* %42, i32* %43, i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @gtk_tree_view_column_add_attribute(i32* %46, i32* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @gtk_tree_view_column_add_attribute(i32* %49, i32* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32 @gtk_tree_view_column_pack_start(i32* %52, i32* %53, i32 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @gtk_tree_view_column_add_attribute(i32* %56, i32* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @gtk_tree_view_column_pack_start(i32* %59, i32* %60, i32 %61)
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @gtk_tree_view_column_add_attribute(i32* %63, i32* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @gtk_tree_view_column_add_attribute(i32* %66, i32* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %69 = load i32*, i32** %10, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @GTK_TREE_VIEW_COLUMN(i32* %70)
  %72 = call i32 @gtk_tree_view_append_column(i32* %69, i32 %71)
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* @TRUE, align 4
  %75 = call i32 @gtk_tree_view_column_set_expand(i32* %73, i32 %74)
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @gtk_tree_view_column_set_max_width(i32* %76, i32 400)
  %78 = call i32 @_(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %79 = load i32*, i32** %6, align 8
  %80 = call i32* @gtk_tree_view_column_new_with_attributes(i32 %78, i32* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 3, i32* null)
  store i32* %80, i32** %8, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @GTK_TREE_VIEW_COLUMN(i32* %82)
  %84 = call i32 @gtk_tree_view_append_column(i32* %81, i32 %83)
  %85 = call i32 @_(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %86 = load i32*, i32** %7, align 8
  %87 = call i32* @gtk_tree_view_column_new_with_attributes(i32 %85, i32* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 4, i32* null)
  store i32* %87, i32** %8, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @GTK_TREE_VIEW_COLUMN(i32* %89)
  %91 = call i32 @gtk_tree_view_append_column(i32* %88, i32 %90)
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* @subtitle_list_selection_changed_cb, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %95 = call i32 @g_signal_connect(i32* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %93, %struct.TYPE_4__* %94)
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* @subtitle_edit_clicked_cb, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %99 = call i32 @g_signal_connect(i32* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %97, %struct.TYPE_4__* %98)
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* @subtitle_remove_clicked_cb, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %103 = call i32 @g_signal_connect(i32* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %101, %struct.TYPE_4__* %102)
  ret void
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32* @GTK_TREE_VIEW(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_tree_view_get_selection(i32*) #1

declare dso_local i32* @gtk_tree_store_new(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gtk_tree_view_set_model(i32*, i32) #1

declare dso_local i32 @GTK_TREE_MODEL(i32*) #1

declare dso_local i32* @gtk_cell_renderer_text_new(...) #1

declare dso_local i32* @custom_cell_renderer_button_new(...) #1

declare dso_local i32* @gtk_tree_view_column_new(...) #1

declare dso_local i32 @gtk_tree_view_column_set_spacing(i32*, i32) #1

declare dso_local i32 @gtk_tree_view_column_set_title(i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @gtk_tree_view_column_pack_start(i32*, i32*, i32) #1

declare dso_local i32 @gtk_tree_view_column_add_attribute(i32*, i32*, i8*, i32) #1

declare dso_local i32 @gtk_tree_view_append_column(i32*, i32) #1

declare dso_local i32 @GTK_TREE_VIEW_COLUMN(i32*) #1

declare dso_local i32 @gtk_tree_view_column_set_expand(i32*, i32) #1

declare dso_local i32 @gtk_tree_view_column_set_max_width(i32*, i32) #1

declare dso_local i32* @gtk_tree_view_column_new_with_attributes(i32, i32*, i8*, i32, i32*) #1

declare dso_local i32 @g_signal_connect(i32*, i8*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
