; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_init_left_tree.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_init_left_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tree1_w = common dso_local global i32 0, align 4
@model1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Options\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@COL_BTNACT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"inconsistent\00", align 1
@COL_BTNINC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@COL_BTNVIS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@COL_BTNRAD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@COL_OPTION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"foreground-gdk\00", align 1
@COL_COLOR = common dso_local global i32 0, align 4
@GTK_SELECTION_SINGLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_left_tree() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @tree1_w, align 4
  %6 = call i32* @GTK_TREE_VIEW(i32 %5)
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = load i32, i32* @model1, align 4
  %9 = call i32 @gtk_tree_view_set_model(i32* %7, i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* @TRUE, align 4
  %12 = call i32 @gtk_tree_view_set_headers_visible(i32* %10, i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* @TRUE, align 4
  %15 = call i32 @gtk_tree_view_set_rules_hint(i32* %13, i32 %14)
  %16 = call i32* (...) @gtk_tree_view_column_new()
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %1, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @gtk_tree_view_append_column(i32* %17, i32* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @gtk_tree_view_column_set_title(i32* %20, i32 %21)
  %23 = call i32* (...) @gtk_cell_renderer_toggle_new()
  store i32* %23, i32** %2, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @GTK_TREE_VIEW_COLUMN(i32* %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @FALSE, align 4
  %28 = call i32 @gtk_tree_view_column_pack_start(i32 %25, i32* %26, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @GTK_TREE_VIEW_COLUMN(i32* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @COL_BTNACT, align 4
  %33 = load i32, i32* @COL_BTNINC, align 4
  %34 = load i32, i32* @COL_BTNVIS, align 4
  %35 = load i32, i32* @COL_BTNRAD, align 4
  %36 = call i32 (i32, i32*, i8*, i32, i8*, i32, i8*, ...) @gtk_tree_view_column_set_attributes(i32 %30, i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %35, i8* null)
  %37 = call i32* (...) @gtk_cell_renderer_text_new()
  store i32* %37, i32** %2, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @GTK_TREE_VIEW_COLUMN(i32* %38)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i32 @gtk_tree_view_column_pack_start(i32 %39, i32* %40, i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @GTK_TREE_VIEW_COLUMN(i32* %43)
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* @COL_OPTION, align 4
  %47 = load i32, i32* @COL_COLOR, align 4
  %48 = call i32 (i32, i32*, i8*, i32, i8*, i32, i8*, ...) @gtk_tree_view_column_set_attributes(i32 %44, i32* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %47, i8* null)
  %49 = load i32*, i32** %1, align 8
  %50 = call i32* @gtk_tree_view_get_selection(i32* %49)
  store i32* %50, i32** %3, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @GTK_SELECTION_SINGLE, align 4
  %53 = call i32 @gtk_tree_selection_set_mode(i32* %51, i32 %52)
  %54 = load i32, i32* @tree1_w, align 4
  %55 = call i32 @gtk_widget_realize(i32 %54)
  ret void
}

declare dso_local i32* @GTK_TREE_VIEW(i32) #1

declare dso_local i32 @gtk_tree_view_set_model(i32*, i32) #1

declare dso_local i32 @gtk_tree_view_set_headers_visible(i32*, i32) #1

declare dso_local i32 @gtk_tree_view_set_rules_hint(i32*, i32) #1

declare dso_local i32* @gtk_tree_view_column_new(...) #1

declare dso_local i32 @gtk_tree_view_append_column(i32*, i32*) #1

declare dso_local i32 @gtk_tree_view_column_set_title(i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @gtk_cell_renderer_toggle_new(...) #1

declare dso_local i32 @gtk_tree_view_column_pack_start(i32, i32*, i32) #1

declare dso_local i32 @GTK_TREE_VIEW_COLUMN(i32*) #1

declare dso_local i32 @gtk_tree_view_column_set_attributes(i32, i32*, i8*, i32, i8*, i32, i8*, ...) #1

declare dso_local i32* @gtk_cell_renderer_text_new(...) #1

declare dso_local i32* @gtk_tree_view_get_selection(i32*) #1

declare dso_local i32 @gtk_tree_selection_set_mode(i32*, i32) #1

declare dso_local i32 @gtk_widget_realize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
