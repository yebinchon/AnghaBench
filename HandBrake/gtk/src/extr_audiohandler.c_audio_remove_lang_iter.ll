; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_remove_lang_iter.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_remove_lang_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"audio_avail_lang\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"AudioLanguageList\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_remove_lang_iter(i32* %0, i32* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
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
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32* @gtk_tree_model_get_path(i32* %18, i32* %19)
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = call i32* @gtk_tree_path_get_indices(i32* %21)
  store i32* %22, i32** %14, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @gtk_tree_path_free(i32* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @GHB_WIDGET(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %32 = call i32* @GTK_TREE_VIEW(i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32* @gtk_tree_view_get_model(i32* %33)
  %35 = call i32* @GTK_TREE_STORE(i32* %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32* @gtk_tree_view_get_selection(i32* %36)
  store i32* %37, i32** %17, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @gtk_tree_model_get(i32* %38, i32* %39, i32 0, i8** %11, i32 1, i32* %12, i32 -1)
  %41 = load i32*, i32** %8, align 8
  %42 = call i32* @GTK_TREE_MODEL(i32* %41)
  %43 = load i32, i32* %12, align 4
  %44 = call i64 @ghb_find_lang_row(i32* %42, i32* %10, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %3
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @gtk_tree_store_insert_before(i32* %47, i32* %9, i32* null, i32* %10)
  br label %52

49:                                               ; preds = %3
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @gtk_tree_store_append(i32* %50, i32* %9, i32* null)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32*, i32** %8, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @gtk_tree_store_set(i32* %53, i32* %9, i32 0, i8* %54, i32 1, i32 %55, i32 -1)
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @g_free(i8* %57)
  %59 = load i32*, i32** %8, align 8
  %60 = call i32* @GTK_TREE_MODEL(i32* %59)
  %61 = call i32* @gtk_tree_model_get_path(i32* %60, i32* %9)
  store i32* %61, i32** %13, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = call i32 @gtk_tree_selection_select_iter(i32* %62, i32* %9)
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* @FALSE, align 4
  %67 = call i32 @gtk_tree_view_scroll_to_cell(i32* %64, i32* %65, i32* null, i32 %66, i32 0, i32 0)
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @gtk_tree_path_free(i32* %68)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32* @GTK_TREE_STORE(i32* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @gtk_tree_store_remove(i32* %71, i32* %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @ghb_dict_get_value(i32 %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32* %77, i32** %16, align 8
  %78 = load i32*, i32** %16, align 8
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @ghb_array_remove(i32* %78, i32 %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %82 = call i32 @ghb_clear_presets_selection(%struct.TYPE_4__* %81)
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

declare dso_local i32 @ghb_clear_presets_selection(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
