; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_edit.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"subtitle_dialog\00", align 1
@GTK_RESPONSE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Subtitle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_7__*)* @subtitle_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subtitle_edit(i32* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @gtk_tree_view_get_selection(i32* %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @gtk_tree_view_get_model(i32* %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @gtk_tree_path_get_depth(i32* %18)
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %70

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @gtk_tree_model_get_iter(i32* %23, i32* %9, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %70

27:                                               ; preds = %22
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @gtk_tree_selection_select_iter(i32* %28, i32* %9)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ghb_get_job_subtitle_settings(i32 %32)
  %34 = call i32* @ghb_value_dup(i32 %33)
  store i32* %34, i32** %11, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @GHB_WIDGET(i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32* %38, i32** %13, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @GTK_DIALOG(i32* %39)
  %41 = call i64 @gtk_dialog_run(i32 %40)
  store i64 %41, i64* %12, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @gtk_widget_hide(i32* %42)
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @GTK_RESPONSE_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %27
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ghb_get_job_settings(i32 %50)
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @ghb_dict_set(i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = call i32* @subtitle_get_selected_settings(%struct.TYPE_7__* %54, i32* null)
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @subtitle_update_dialog_widgets(%struct.TYPE_7__* %59, i32* %60)
  br label %62

62:                                               ; preds = %58, %47
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = call i32 @subtitle_refresh_list_ui(%struct.TYPE_7__* %63)
  br label %67

65:                                               ; preds = %27
  %66 = call i32 @ghb_value_free(i32** %11)
  br label %67

67:                                               ; preds = %65, %62
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = call i32 @ghb_update_summary_info(%struct.TYPE_7__* %68)
  br label %70

70:                                               ; preds = %21, %67, %22
  ret void
}

declare dso_local i32* @gtk_tree_view_get_selection(i32*) #1

declare dso_local i32* @gtk_tree_view_get_model(i32*) #1

declare dso_local i32 @gtk_tree_path_get_depth(i32*) #1

declare dso_local i64 @gtk_tree_model_get_iter(i32*, i32*, i32*) #1

declare dso_local i32 @gtk_tree_selection_select_iter(i32*, i32*) #1

declare dso_local i32* @ghb_value_dup(i32) #1

declare dso_local i32 @ghb_get_job_subtitle_settings(i32) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i64 @gtk_dialog_run(i32) #1

declare dso_local i32 @GTK_DIALOG(i32*) #1

declare dso_local i32 @gtk_widget_hide(i32*) #1

declare dso_local i32 @ghb_dict_set(i32, i8*, i32*) #1

declare dso_local i32 @ghb_get_job_settings(i32) #1

declare dso_local i32* @subtitle_get_selected_settings(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @subtitle_update_dialog_widgets(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @subtitle_refresh_list_ui(%struct.TYPE_7__*) #1

declare dso_local i32 @ghb_value_free(i32**) #1

declare dso_local i32 @ghb_update_summary_info(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
