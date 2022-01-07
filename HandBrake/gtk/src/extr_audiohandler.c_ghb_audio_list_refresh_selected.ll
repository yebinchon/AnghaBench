; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_ghb_audio_list_refresh_selected.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_ghb_audio_list_refresh_selected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"ghb_audio_list_refresh_selected ()\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"audio_list_view\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_audio_list_refresh_selected(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32* null, i32** %10, align 8
  %12 = call i32 @g_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @GHB_WIDGET(i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32* @GTK_TREE_VIEW(i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @gtk_tree_view_get_selection(i32* %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @gtk_tree_selection_get_selected(i32* %20, i32** %6, i32* %7)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %1
  %24 = load i32*, i32** %6, align 8
  %25 = call i32* @gtk_tree_model_get_path(i32* %24, i32* %7)
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i64* @gtk_tree_path_get_indices(i32* %26)
  store i64* %27, i64** %8, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @gtk_tree_path_free(i32* %31)
  %33 = load i64, i64* %9, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %54

36:                                               ; preds = %23
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @ghb_get_job_audio_list(i32 %39)
  store i32* %40, i32** %11, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i64 @ghb_array_len(i32* %42)
  %44 = icmp sge i64 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %54

46:                                               ; preds = %36
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32* @ghb_array_get(i32* %47, i64 %48)
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @audio_refresh_list_row_ui(i32* %50, i32* %7, %struct.TYPE_4__* %51, i32* %52)
  br label %54

54:                                               ; preds = %35, %45, %46, %1
  ret void
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32* @GTK_TREE_VIEW(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_tree_view_get_selection(i32*) #1

declare dso_local i64 @gtk_tree_selection_get_selected(i32*, i32**, i32*) #1

declare dso_local i32* @gtk_tree_model_get_path(i32*, i32*) #1

declare dso_local i64* @gtk_tree_path_get_indices(i32*) #1

declare dso_local i32 @gtk_tree_path_free(i32*) #1

declare dso_local i32* @ghb_get_job_audio_list(i32) #1

declare dso_local i64 @ghb_array_len(i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i64) #1

declare dso_local i32 @audio_refresh_list_row_ui(i32*, i32*, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
