; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_refresh_list_ui_from_settings.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_refresh_list_ui_from_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"subtitle_list_view\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"subtitle_add_fas\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @subtitle_refresh_list_ui_from_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subtitle_refresh_list_ui_from_settings(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @GHB_WIDGET(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = call i32* @GTK_TREE_VIEW(i32* %19)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @gtk_tree_view_get_model(i32* %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @gtk_tree_model_iter_n_children(i32* %23, i32* null)
  store i64 %24, i64* %13, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32* @ghb_get_job_subtitle_list(i32* %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* @ghb_get_job_subtitle_search(i32* %27)
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i64 @ghb_dict_get_bool(i32* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i64 %30, i64* %14, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @ghb_array_len(i32* %31)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %14, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64, i64* %13, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clear_subtitle_list_ui(i32 %41)
  store i64 0, i64* %11, align 8
  br label %43

43:                                               ; preds = %53, %38
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %14, align 8
  %47 = add nsw i64 %45, %46
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @GTK_TREE_STORE(i32* %50)
  %52 = call i32 @gtk_tree_store_append(i32 %51, i32* %7, i32* null)
  br label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %11, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %11, align 8
  br label %43

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32* @GHB_WIDGET(i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32* %61, i32** %15, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = load i64, i64* %14, align 8
  %64 = icmp ne i64 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @gtk_widget_set_sensitive(i32* %62, i32 %66)
  %68 = load i64, i64* %14, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %57
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @gtk_tree_model_iter_nth_child(i32* %71, i32* %7, i32* null, i64 0)
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @subtitle_refresh_list_row_ui(i32* %73, i32* %7, i32 %76, i32* %77)
  br label %79

79:                                               ; preds = %70, %57
  store i64 0, i64* %11, align 8
  br label %80

80:                                               ; preds = %99, %79
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %12, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = load i32*, i32** %6, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %14, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @gtk_tree_model_iter_nth_child(i32* %85, i32* %7, i32* null, i64 %88)
  %90 = load i32*, i32** %8, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i32* @ghb_array_get(i32* %90, i64 %91)
  store i32* %92, i32** %10, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @subtitle_refresh_list_row_ui(i32* %93, i32* %7, i32 %96, i32* %97)
  br label %99

99:                                               ; preds = %84
  %100 = load i64, i64* %11, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %11, align 8
  br label %80

102:                                              ; preds = %80
  ret void
}

declare dso_local i32* @GTK_TREE_VIEW(i32*) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_tree_view_get_model(i32*) #1

declare dso_local i64 @gtk_tree_model_iter_n_children(i32*, i32*) #1

declare dso_local i32* @ghb_get_job_subtitle_list(i32*) #1

declare dso_local i32* @ghb_get_job_subtitle_search(i32*) #1

declare dso_local i64 @ghb_dict_get_bool(i32*, i8*) #1

declare dso_local i64 @ghb_array_len(i32*) #1

declare dso_local i32 @clear_subtitle_list_ui(i32) #1

declare dso_local i32 @gtk_tree_store_append(i32, i32*, i32*) #1

declare dso_local i32 @GTK_TREE_STORE(i32*) #1

declare dso_local i32 @gtk_widget_set_sensitive(i32*, i32) #1

declare dso_local i32 @gtk_tree_model_iter_nth_child(i32*, i32*, i32*, i64) #1

declare dso_local i32 @subtitle_refresh_list_row_ui(i32*, i32*, i32, i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
