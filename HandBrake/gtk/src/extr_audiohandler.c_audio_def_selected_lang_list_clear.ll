; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_def_selected_lang_list_clear.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_def_selected_lang_list_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"audio_avail_lang\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"audio_selected_lang\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @audio_def_selected_lang_list_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_def_selected_lang_list_clear(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @GHB_WIDGET(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = call i32* @GTK_TREE_VIEW(i32 %14)
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32* @gtk_tree_view_get_model(i32* %16)
  %18 = call i32* @GTK_TREE_STORE(i32* %17)
  store i32* %18, i32** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @GHB_WIDGET(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32* @GTK_TREE_VIEW(i32 %22)
  store i32* %23, i32** %3, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32* @gtk_tree_view_get_model(i32* %24)
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @gtk_tree_model_get_iter_first(i32* %26, i32* %6)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @gtk_tree_model_get(i32* %31, i32* %6, i32 0, i32** %7, i32 1, i32* %8, i32 -1)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @GTK_TREE_MODEL(i32* %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @ghb_find_lang_row(i32 %34, i32* %10, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @gtk_tree_store_insert_before(i32* %39, i32* %9, i32* null, i32* %10)
  br label %44

41:                                               ; preds = %30
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @gtk_tree_store_append(i32* %42, i32* %9, i32* null)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @gtk_tree_store_set(i32* %45, i32* %9, i32 0, i32* %46, i32 1, i32 %47, i32 -1)
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @g_free(i32* %49)
  br label %51

51:                                               ; preds = %44
  %52 = load i32*, i32** %4, align 8
  %53 = call i64 @gtk_tree_model_iter_next(i32* %52, i32* %6)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %30, label %55

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %1
  %57 = load i32*, i32** %4, align 8
  %58 = call i32* @GTK_TREE_STORE(i32* %57)
  %59 = call i32 @gtk_tree_store_clear(i32* %58)
  ret void
}

declare dso_local i32* @GTK_TREE_VIEW(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @GTK_TREE_STORE(i32*) #1

declare dso_local i32* @gtk_tree_view_get_model(i32*) #1

declare dso_local i64 @gtk_tree_model_get_iter_first(i32*, i32*) #1

declare dso_local i32 @gtk_tree_model_get(i32*, i32*, i32, i32**, i32, i32*, i32) #1

declare dso_local i64 @ghb_find_lang_row(i32, i32*, i32) #1

declare dso_local i32 @GTK_TREE_MODEL(i32*) #1

declare dso_local i32 @gtk_tree_store_insert_before(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @gtk_tree_store_append(i32*, i32*, i32*) #1

declare dso_local i32 @gtk_tree_store_set(i32*, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i64 @gtk_tree_model_iter_next(i32*, i32*) #1

declare dso_local i32 @gtk_tree_store_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
