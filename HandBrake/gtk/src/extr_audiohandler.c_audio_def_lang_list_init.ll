; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_def_lang_list_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_def_lang_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"audio_avail_lang\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"audio_selected_lang\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"AudioLanguageList\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @audio_def_lang_list_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_def_lang_list_init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @GHB_WIDGET(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = call i32* @GTK_TREE_VIEW(i32 %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @gtk_tree_view_get_model(i32* %20)
  store i32* %21, i32** %5, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @GHB_WIDGET(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32* @GTK_TREE_VIEW(i32 %25)
  store i32* %26, i32** %4, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* @gtk_tree_view_get_model(i32* %27)
  %29 = call i32* @GTK_TREE_STORE(i32* %28)
  store i32* %29, i32** %6, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = call i32 @audio_def_selected_lang_list_clear(%struct.TYPE_4__* %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @ghb_dict_get_value(i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32* %35, i32** %3, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = call i32* (...) @ghb_array_new()
  store i32* %39, i32** %3, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @ghb_dict_set(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %43)
  br label %45

45:                                               ; preds = %38, %1
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @ghb_array_len(i32* %46)
  store i32 %47, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %84, %45
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %48
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32* @ghb_array_get(i32* %53, i32 %54)
  store i32* %55, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @ghb_lookup_lang(i32* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @ghb_find_lang_row(i32* %58, i32* %11, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %52
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @gtk_tree_model_get(i32* %63, i32* %11, i32 0, i32** %12, i32 1, i32* %13, i32 -1)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @gtk_tree_store_append(i32* %65, i32* %14, i32* null)
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @gtk_tree_store_set(i32* %67, i32* %14, i32 0, i32* %68, i32 1, i32 %69, i32 -1)
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @g_free(i32* %71)
  %73 = load i32*, i32** %5, align 8
  %74 = call i32* @GTK_TREE_STORE(i32* %73)
  %75 = call i32 @gtk_tree_store_remove(i32* %74, i32* %11)
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %84

78:                                               ; preds = %52
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @ghb_array_remove(i32* %79, i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %78, %62
  br label %48

85:                                               ; preds = %48
  ret void
}

declare dso_local i32* @GTK_TREE_VIEW(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_tree_view_get_model(i32*) #1

declare dso_local i32* @GTK_TREE_STORE(i32*) #1

declare dso_local i32 @audio_def_selected_lang_list_clear(%struct.TYPE_4__*) #1

declare dso_local i32* @ghb_dict_get_value(i32, i8*) #1

declare dso_local i32* @ghb_array_new(...) #1

declare dso_local i32 @ghb_dict_set(i32, i8*, i32*) #1

declare dso_local i32 @ghb_array_len(i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i32) #1

declare dso_local i32 @ghb_lookup_lang(i32*) #1

declare dso_local i64 @ghb_find_lang_row(i32*, i32*, i32) #1

declare dso_local i32 @gtk_tree_model_get(i32*, i32*, i32, i32**, i32, i32*, i32) #1

declare dso_local i32 @gtk_tree_store_append(i32*, i32*, i32*) #1

declare dso_local i32 @gtk_tree_store_set(i32*, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @gtk_tree_store_remove(i32*, i32*) #1

declare dso_local i32 @ghb_array_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
