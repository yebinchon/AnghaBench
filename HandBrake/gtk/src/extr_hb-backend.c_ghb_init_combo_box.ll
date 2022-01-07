; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_init_combo_box.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_init_combo_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"ghb_init_combo_box()\0A\00", align 1
@G_TYPE_STRING = common dso_local global i32 0, align 4
@G_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@G_TYPE_DOUBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"max-width-chars\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@PANGO_ELLIPSIZE_END = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"markup\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_init_combo_box(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = call i32 @g_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %6 = load i32*, i32** %2, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %46

9:                                                ; preds = %1
  %10 = load i32, i32* @G_TYPE_STRING, align 4
  %11 = load i32, i32* @G_TYPE_BOOLEAN, align 4
  %12 = load i32, i32* @G_TYPE_STRING, align 4
  %13 = load i32, i32* @G_TYPE_DOUBLE, align 4
  %14 = call i32* @gtk_list_store_new(i32 4, i32 %10, i32 %11, i32 %12, i32 %13)
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @GTK_TREE_MODEL(i32* %16)
  %18 = call i32 @gtk_combo_box_set_model(i32* %15, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @gtk_combo_box_get_has_entry(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %9
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @GTK_CELL_LAYOUT(i32* %23)
  %25 = call i32 @gtk_cell_layout_clear(i32 %24)
  %26 = call i32 (...) @gtk_cell_renderer_text_new()
  %27 = call i32* @GTK_CELL_RENDERER(i32 %26)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @g_object_set(i32* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 80, i32* null)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @PANGO_ELLIPSIZE_END, align 4
  %32 = call i32 @g_object_set(i32* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32* null)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @GTK_CELL_LAYOUT(i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @gtk_cell_layout_pack_start(i32 %34, i32* %35, i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @GTK_CELL_LAYOUT(i32* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @gtk_cell_layout_set_attributes(i32 %39, i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1, i32* null)
  br label %46

42:                                               ; preds = %9
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @GTK_COMBO_BOX(i32* %43)
  %45 = call i32 @gtk_combo_box_set_entry_text_column(i32 %44, i32 0)
  br label %46

46:                                               ; preds = %8, %42, %22
  ret void
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32* @gtk_list_store_new(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gtk_combo_box_set_model(i32*, i32) #1

declare dso_local i32 @GTK_TREE_MODEL(i32*) #1

declare dso_local i32 @gtk_combo_box_get_has_entry(i32*) #1

declare dso_local i32 @gtk_cell_layout_clear(i32) #1

declare dso_local i32 @GTK_CELL_LAYOUT(i32*) #1

declare dso_local i32* @GTK_CELL_RENDERER(i32) #1

declare dso_local i32 @gtk_cell_renderer_text_new(...) #1

declare dso_local i32 @g_object_set(i32*, i8*, i32, i32*) #1

declare dso_local i32 @gtk_cell_layout_pack_start(i32, i32*, i32) #1

declare dso_local i32 @gtk_cell_layout_set_attributes(i32, i32*, i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @gtk_combo_box_set_entry_text_column(i32, i32) #1

declare dso_local i32 @GTK_COMBO_BOX(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
