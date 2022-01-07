; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_add_lang_iter.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_add_lang_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"audio_selected_lang\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"AudioLanguageList\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_add_lang_iter(i32* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @GHB_WIDGET(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = call i32* @GTK_TREE_VIEW(i32 %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32* @gtk_tree_view_get_model(i32* %22)
  %24 = call i32* @GTK_TREE_STORE(i32* %23)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32* @gtk_tree_view_get_selection(i32* %25)
  store i32* %26, i32** %16, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @gtk_tree_model_get(i32* %27, i32* %28, i32 0, i8** %11, i32 1, i32* %12, i32 -1)
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @gtk_tree_store_append(i32* %30, i32* %9, i32* null)
  %32 = load i32*, i32** %8, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @gtk_tree_store_set(i32* %32, i32* %9, i32 0, i8* %33, i32 1, i32 %34, i32 -1)
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @g_free(i8* %36)
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @GTK_TREE_MODEL(i32* %38)
  %40 = call i32* @gtk_tree_model_get_path(i32 %39, i32* %9)
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %16, align 8
  %42 = call i32 @gtk_tree_selection_select_iter(i32* %41, i32* %9)
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @gtk_tree_view_scroll_to_cell(i32* %43, i32* %44, i32* null, i32 %45, i32 0, i32 0)
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @gtk_tree_path_free(i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32* @GTK_TREE_STORE(i32* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @gtk_tree_store_remove(i32* %50, i32* %51)
  %53 = load i32, i32* %12, align 4
  %54 = call %struct.TYPE_7__* @ghb_iso639_lookup_by_int(i32 %53)
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %13, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @ghb_string_value_new(i32 %57)
  store i32* %58, i32** %14, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32* @ghb_dict_get_value(i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32* %62, i32** %15, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @ghb_array_append(i32* %63, i32* %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = call i32 @ghb_clear_presets_selection(%struct.TYPE_6__* %66)
  ret void
}

declare dso_local i32* @GTK_TREE_VIEW(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @GTK_TREE_STORE(i32*) #1

declare dso_local i32* @gtk_tree_view_get_model(i32*) #1

declare dso_local i32* @gtk_tree_view_get_selection(i32*) #1

declare dso_local i32 @gtk_tree_model_get(i32*, i32*, i32, i8**, i32, i32*, i32) #1

declare dso_local i32 @gtk_tree_store_append(i32*, i32*, i32*) #1

declare dso_local i32 @gtk_tree_store_set(i32*, i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32* @gtk_tree_model_get_path(i32, i32*) #1

declare dso_local i32 @GTK_TREE_MODEL(i32*) #1

declare dso_local i32 @gtk_tree_selection_select_iter(i32*, i32*) #1

declare dso_local i32 @gtk_tree_view_scroll_to_cell(i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @gtk_tree_path_free(i32*) #1

declare dso_local i32 @gtk_tree_store_remove(i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @ghb_iso639_lookup_by_int(i32) #1

declare dso_local i32* @ghb_string_value_new(i32) #1

declare dso_local i32* @ghb_dict_get_value(i32, i8*) #1

declare dso_local i32 @ghb_array_append(i32*, i32*) #1

declare dso_local i32 @ghb_clear_presets_selection(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
