; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_get_selected_settings.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_get_selected_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"subtitle_list_view\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*)* @subtitle_get_selected_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @subtitle_get_selected_settings(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %10, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @GHB_WIDGET(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = call i32* @GTK_TREE_VIEW(i32 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32* @gtk_tree_view_get_selection(i32* %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @gtk_tree_selection_get_selected(i32* %24, i32** %8, i32* %9)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %81

27:                                               ; preds = %2
  %28 = load i32*, i32** %8, align 8
  %29 = call i32* @gtk_tree_model_get_path(i32* %28, i32* %9)
  store i32* %29, i32** %16, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = call i32* @gtk_tree_path_get_indices(i32* %30)
  store i32* %31, i32** %15, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %14, align 4
  %35 = load i32*, i32** %16, align 8
  %36 = call i32 @gtk_tree_path_free(i32* %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @ghb_get_job_subtitle_search(i32 %39)
  store i32* %40, i32** %12, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i64 @ghb_dict_get_bool(i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %27
  %46 = load i32, i32* %14, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32*, i32** %5, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32*, i32** %5, align 8
  store i32 -1, i32* %52, align 4
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i32*, i32** %12, align 8
  store i32* %54, i32** %3, align 8
  br label %83

55:                                               ; preds = %45
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %55, %27
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32* @ghb_get_job_subtitle_list(i32 %61)
  store i32* %62, i32** %11, align 8
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %14, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @ghb_array_len(i32* %67)
  %69 = icmp sge i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %58
  store i32* null, i32** %3, align 8
  br label %83

71:                                               ; preds = %65
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32* @ghb_array_get(i32* %72, i32 %73)
  store i32* %74, i32** %10, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %14, align 4
  %79 = load i32*, i32** %5, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %71
  br label %81

81:                                               ; preds = %80, %2
  %82 = load i32*, i32** %10, align 8
  store i32* %82, i32** %3, align 8
  br label %83

83:                                               ; preds = %81, %70, %53
  %84 = load i32*, i32** %3, align 8
  ret i32* %84
}

declare dso_local i32* @GTK_TREE_VIEW(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_tree_view_get_selection(i32*) #1

declare dso_local i64 @gtk_tree_selection_get_selected(i32*, i32**, i32*) #1

declare dso_local i32* @gtk_tree_model_get_path(i32*, i32*) #1

declare dso_local i32* @gtk_tree_path_get_indices(i32*) #1

declare dso_local i32 @gtk_tree_path_free(i32*) #1

declare dso_local i32* @ghb_get_job_subtitle_search(i32) #1

declare dso_local i64 @ghb_dict_get_bool(i32*, i8*) #1

declare dso_local i32* @ghb_get_job_subtitle_list(i32) #1

declare dso_local i32 @ghb_array_len(i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
