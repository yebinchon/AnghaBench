; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_on_treeview1_button_press_event.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_on_treeview1_button_press_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@model1 = common dso_local global i32 0, align 4
@COL_MENU = common dso_local global i32 0, align 4
@GDK_2BUTTON_PRESS = common dso_local global i64 0, align 8
@current = common dso_local global %struct.menu* null, align 8
@browsed = common dso_local global %struct.menu* null, align 8
@tree2_w = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @on_treeview1_button_press_event(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.menu*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32* @GTK_TREE_VIEW(i32* %17)
  store i32* %18, i32** %8, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %14, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @gtk_tree_view_get_path_at_pos(i32* %25, i32 %26, i32 %27, i32** %9, i32** %10, i32* %15, i32* %16)
  %29 = load i32*, i32** %9, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %4, align 4
  br label %63

33:                                               ; preds = %3
  %34 = load i32, i32* @model1, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @gtk_tree_model_get_iter(i32 %34, i32* %11, i32* %35)
  %37 = load i32, i32* @model1, align 4
  %38 = load i32, i32* @COL_MENU, align 4
  %39 = call i32 @gtk_tree_model_get(i32 %37, i32* %11, i32 %38, %struct.menu** %12, i32 -1)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @GDK_2BUTTON_PRESS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load %struct.menu*, %struct.menu** %12, align 8
  %47 = call i32 @toggle_sym_value(%struct.menu* %46)
  %48 = load %struct.menu*, %struct.menu** %12, align 8
  store %struct.menu* %48, %struct.menu** @current, align 8
  %49 = call i32 (...) @display_tree_part()
  br label %53

50:                                               ; preds = %33
  %51 = load %struct.menu*, %struct.menu** %12, align 8
  store %struct.menu* %51, %struct.menu** @browsed, align 8
  %52 = call i32 (...) @display_tree_part()
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* @tree2_w, align 4
  %55 = call i32 @gtk_widget_realize(i32 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i32 @gtk_tree_view_set_cursor(i32* %56, i32* %57, i32* null, i32 %58)
  %60 = load i32, i32* @tree2_w, align 4
  %61 = call i32 @gtk_widget_grab_focus(i32 %60)
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %53, %31
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32* @GTK_TREE_VIEW(i32*) #1

declare dso_local i32 @gtk_tree_view_get_path_at_pos(i32*, i32, i32, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @gtk_tree_model_get_iter(i32, i32*, i32*) #1

declare dso_local i32 @gtk_tree_model_get(i32, i32*, i32, %struct.menu**, i32) #1

declare dso_local i32 @toggle_sym_value(%struct.menu*) #1

declare dso_local i32 @display_tree_part(...) #1

declare dso_local i32 @gtk_widget_realize(i32) #1

declare dso_local i32 @gtk_tree_view_set_cursor(i32*, i32*, i32*, i32) #1

declare dso_local i32 @gtk_widget_grab_focus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
