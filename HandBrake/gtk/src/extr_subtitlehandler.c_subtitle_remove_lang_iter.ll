; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_remove_lang_iter.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_remove_lang_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"subtitle_avail_lang\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"SubtitleLanguageList\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @subtitle_remove_lang_iter(i32* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @gtk_tree_model_get_path(i32* %20, i32* %21)
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i32* @gtk_tree_path_get_indices(i32* %23)
  store i32* %24, i32** %14, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %15, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @gtk_tree_path_free(i32* %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @GHB_WIDGET(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %34 = call i32* @GTK_TREE_VIEW(i32 %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @gtk_tree_view_get_model(i32* %35)
  %37 = call i32* @GTK_TREE_STORE(i32* %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32* @gtk_tree_view_get_selection(i32* %38)
  store i32* %39, i32** %17, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @gtk_tree_model_get(i32* %40, i32* %41, i32 0, i8** %11, i32 1, i32* %12, i32 -1)
  %43 = load i32*, i32** %8, align 8
  %44 = call i32* @GTK_TREE_MODEL(i32* %43)
  %45 = load i32, i32* %12, align 4
  %46 = call i64 @ghb_find_lang_row(i32* %44, i32* %10, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %3
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @gtk_tree_store_insert_before(i32* %49, i32* %9, i32* null, i32* %10)
  br label %54

51:                                               ; preds = %3
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @gtk_tree_store_append(i32* %52, i32* %9, i32* null)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32*, i32** %8, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @gtk_tree_store_set(i32* %55, i32* %9, i32 0, i8* %56, i32 1, i32 %57, i32 -1)
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @g_free(i8* %59)
  %61 = load i32*, i32** %8, align 8
  %62 = call i32* @GTK_TREE_MODEL(i32* %61)
  %63 = call i32* @gtk_tree_model_get_path(i32* %62, i32* %9)
  store i32* %63, i32** %13, align 8
  %64 = load i32*, i32** %17, align 8
  %65 = call i32 @gtk_tree_selection_select_iter(i32* %64, i32* %9)
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = load i32, i32* @FALSE, align 4
  %69 = call i32 @gtk_tree_view_scroll_to_cell(i32* %66, i32* %67, i32* null, i32 %68, i32 0, i32 0)
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @gtk_tree_path_free(i32* %70)
  %72 = load i32*, i32** %4, align 8
  %73 = call i32* @GTK_TREE_STORE(i32* %72)
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @gtk_tree_store_remove(i32* %73, i32* %74)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32* @ghb_dict_get_value(i32 %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32* %79, i32** %16, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @ghb_array_remove(i32* %80, i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = call i32 @ghb_clear_presets_selection(%struct.TYPE_5__* %83)
  %85 = load i32, i32* %15, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %54
  %88 = load i32*, i32** %16, align 8
  %89 = call i64 @ghb_array_len(i32* %88)
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i32*, i32** %16, align 8
  %93 = call i32* @ghb_array_get(i32* %92, i32 0)
  store i32* %93, i32** %19, align 8
  %94 = load i32*, i32** %19, align 8
  %95 = call i32 @ghb_lookup_lang(i32* %94)
  %96 = call i32* @ghb_iso639_lookup_by_int(i32 %95)
  store i32* %96, i32** %18, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = call i32 @subtitle_update_pref_lang(%struct.TYPE_5__* %97, i32* %98)
  br label %103

100:                                              ; preds = %87
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = call i32 @subtitle_update_pref_lang(%struct.TYPE_5__* %101, i32* null)
  br label %103

103:                                              ; preds = %100, %91
  br label %104

104:                                              ; preds = %103, %54
  ret void
}

declare dso_local i32* @gtk_tree_model_get_path(i32*, i32*) #1

declare dso_local i32* @gtk_tree_path_get_indices(i32*) #1

declare dso_local i32 @gtk_tree_path_free(i32*) #1

declare dso_local i32* @GTK_TREE_VIEW(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @GTK_TREE_STORE(i32*) #1

declare dso_local i32* @gtk_tree_view_get_model(i32*) #1

declare dso_local i32* @gtk_tree_view_get_selection(i32*) #1

declare dso_local i32 @gtk_tree_model_get(i32*, i32*, i32, i8**, i32, i32*, i32) #1

declare dso_local i64 @ghb_find_lang_row(i32*, i32*, i32) #1

declare dso_local i32* @GTK_TREE_MODEL(i32*) #1

declare dso_local i32 @gtk_tree_store_insert_before(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @gtk_tree_store_append(i32*, i32*, i32*) #1

declare dso_local i32 @gtk_tree_store_set(i32*, i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @gtk_tree_selection_select_iter(i32*, i32*) #1

declare dso_local i32 @gtk_tree_view_scroll_to_cell(i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @gtk_tree_store_remove(i32*, i32*) #1

declare dso_local i32* @ghb_dict_get_value(i32, i8*) #1

declare dso_local i32 @ghb_array_remove(i32*, i32) #1

declare dso_local i32 @ghb_clear_presets_selection(%struct.TYPE_5__*) #1

declare dso_local i64 @ghb_array_len(i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i32) #1

declare dso_local i32* @ghb_iso639_lookup_by_int(i32) #1

declare dso_local i32 @ghb_lookup_lang(i32*) #1

declare dso_local i32 @subtitle_update_pref_lang(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
