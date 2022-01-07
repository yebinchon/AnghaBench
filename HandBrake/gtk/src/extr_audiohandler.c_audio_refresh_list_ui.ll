; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_refresh_list_ui.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_audiohandler.c_audio_refresh_list_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"audio_list_view\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @audio_refresh_list_ui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_refresh_list_ui(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @GHB_WIDGET(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = call i32* @GTK_TREE_VIEW(i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32* @gtk_tree_view_get_model(i32* %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i64 @gtk_tree_model_iter_n_children(i32* %18, i32* null)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @ghb_get_job_audio_list(i32 %22)
  store i32* %23, i32** %3, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @ghb_array_len(i32* %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ghb_clear_audio_list_ui(i32 %32)
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %42, %29
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @GTK_TREE_STORE(i32* %39)
  %41 = call i32 @gtk_tree_store_append(i32 %40, i32* %10, i32* null)
  br label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %5, align 8
  br label %34

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %1
  store i64 0, i64* %5, align 8
  br label %47

47:                                               ; preds = %62, %46
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i32*, i32** %9, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @gtk_tree_model_iter_nth_child(i32* %52, i32* %10, i32* null, i64 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i32* @ghb_array_get(i32* %55, i64 %56)
  store i32* %57, i32** %4, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @audio_refresh_list_row_ui(i32* %58, i32* %10, %struct.TYPE_4__* %59, i32* %60)
  br label %62

62:                                               ; preds = %51
  %63 = load i64, i64* %5, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %5, align 8
  br label %47

65:                                               ; preds = %47
  ret void
}

declare dso_local i32* @GTK_TREE_VIEW(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_tree_view_get_model(i32*) #1

declare dso_local i64 @gtk_tree_model_iter_n_children(i32*, i32*) #1

declare dso_local i32* @ghb_get_job_audio_list(i32) #1

declare dso_local i64 @ghb_array_len(i32*) #1

declare dso_local i32 @ghb_clear_audio_list_ui(i32) #1

declare dso_local i32 @gtk_tree_store_append(i32, i32*, i32*) #1

declare dso_local i32 @GTK_TREE_STORE(i32*) #1

declare dso_local i32 @gtk_tree_model_iter_nth_child(i32*, i32*, i32*, i64) #1

declare dso_local i32* @ghb_array_get(i32*, i64) #1

declare dso_local i32 @audio_refresh_list_row_ui(i32*, i32*, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
