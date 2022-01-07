; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_init_lang_list_model.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_init_lang_list_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G_TYPE_STRING = common dso_local global i32 0, align 4
@G_TYPE_INT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"markup\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_init_lang_list_model(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @G_TYPE_STRING, align 4
  %7 = load i32, i32* @G_TYPE_INT, align 4
  %8 = call i32* @gtk_tree_store_new(i32 2, i32 %6, i32 %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @GTK_TREE_MODEL(i32* %10)
  %12 = call i32 @gtk_tree_view_set_model(i32* %9, i32 %11)
  %13 = call i32* (...) @gtk_cell_renderer_text_new()
  store i32* %13, i32** %5, align 8
  %14 = call i32* (...) @gtk_tree_view_column_new()
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @FALSE, align 4
  %18 = call i32 @gtk_tree_view_column_pack_start(i32* %15, i32* %16, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @gtk_tree_view_column_add_attribute(i32* %19, i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @GTK_TREE_VIEW_COLUMN(i32* %23)
  %25 = call i32 @gtk_tree_view_append_column(i32* %22, i32 %24)
  ret void
}

declare dso_local i32* @gtk_tree_store_new(i32, i32, i32) #1

declare dso_local i32 @gtk_tree_view_set_model(i32*, i32) #1

declare dso_local i32 @GTK_TREE_MODEL(i32*) #1

declare dso_local i32* @gtk_cell_renderer_text_new(...) #1

declare dso_local i32* @gtk_tree_view_column_new(...) #1

declare dso_local i32 @gtk_tree_view_column_pack_start(i32*, i32*, i32) #1

declare dso_local i32 @gtk_tree_view_column_add_attribute(i32*, i32*, i8*, i32) #1

declare dso_local i32 @gtk_tree_view_append_column(i32*, i32) #1

declare dso_local i32 @GTK_TREE_VIEW_COLUMN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
