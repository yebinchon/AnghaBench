; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_preset_category_opts_set.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_preset_category_opts_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"Folder\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"PresetName\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Add New Category\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i8*, i8*)* @preset_category_opts_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preset_category_opts_set(%struct.TYPE_3__* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32* (...) @hb_presets_get()
  store i32* %21, i32** %14, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i64 @hb_value_array_len(i32* %22)
  store i64 %23, i64* %13, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @GHB_WIDGET(i32 %26, i32* %27)
  %29 = call i32* @GTK_COMBO_BOX(i32 %28)
  store i32* %29, i32** %15, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = call i32 @gtk_combo_box_get_model(i32* %30)
  %32 = call i32* @GTK_LIST_STORE(i32 %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @gtk_list_store_clear(i32* %33)
  %35 = load i64, i64* %13, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i8** @calloc(i64 %36, i32 8)
  store i8** %37, i8*** %16, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %38

38:                                               ; preds = %86, %4
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %89

42:                                               ; preds = %38
  %43 = load i32*, i32** %14, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32* @hb_value_array_get(i32* %43, i64 %44)
  store i32* %45, i32** %18, align 8
  %46 = load i32*, i32** %18, align 8
  %47 = call i32 @hb_dict_get(i32* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %48 = call i32 @hb_value_get_bool(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %86

51:                                               ; preds = %42
  %52 = load i32*, i32** %18, align 8
  %53 = call i32 @hb_dict_get(i32* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i8* @hb_value_get_string(i32 %53)
  store i8* %54, i8** %17, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load i8*, i8** %17, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %51
  br label %86

64:                                               ; preds = %57
  %65 = load i8**, i8*** %16, align 8
  %66 = load i8*, i8** %17, align 8
  %67 = call i64 @ghb_strv_contains(i8** %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %86

70:                                               ; preds = %64
  %71 = load i8*, i8** %17, align 8
  %72 = call i8* @g_strdup(i8* %71)
  %73 = load i8**, i8*** %16, align 8
  %74 = load i64, i64* %12, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %12, align 8
  %76 = getelementptr inbounds i8*, i8** %73, i64 %74
  store i8* %72, i8** %76, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @gtk_list_store_append(i32* %77, i32* %9)
  %79 = load i32*, i32** %10, align 8
  %80 = load i8*, i8** %17, align 8
  %81 = load i32, i32* @TRUE, align 4
  %82 = load i8*, i8** %17, align 8
  %83 = load i64, i64* %11, align 8
  %84 = sitofp i64 %83 to double
  %85 = call i32 @gtk_list_store_set(i32* %79, i32* %9, i32 0, i8* %80, i32 1, i32 %81, i32 2, i8* %82, i32 3, double %84, i32 -1)
  br label %86

86:                                               ; preds = %70, %69, %63, %50
  %87 = load i64, i64* %11, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %11, align 8
  br label %38

89:                                               ; preds = %38
  %90 = load i8**, i8*** %16, align 8
  %91 = call i32 @g_strfreev(i8** %90)
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @gtk_list_store_append(i32* %92, i32* %9)
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* @TRUE, align 4
  %96 = call i32 @gtk_list_store_set(i32* %94, i32* %9, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %95, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3, double -1.000000e+00, i32 -1)
  ret void
}

declare dso_local i32* @hb_presets_get(...) #1

declare dso_local i64 @hb_value_array_len(i32*) #1

declare dso_local i32* @GTK_COMBO_BOX(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i32*) #1

declare dso_local i32* @GTK_LIST_STORE(i32) #1

declare dso_local i32 @gtk_combo_box_get_model(i32*) #1

declare dso_local i32 @gtk_list_store_clear(i32*) #1

declare dso_local i8** @calloc(i64, i32) #1

declare dso_local i32* @hb_value_array_get(i32*, i64) #1

declare dso_local i32 @hb_value_get_bool(i32) #1

declare dso_local i32 @hb_dict_get(i32*, i8*) #1

declare dso_local i8* @hb_value_get_string(i32) #1

declare dso_local i64 @ghb_strv_contains(i8**, i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @gtk_list_store_append(i32*, i32*) #1

declare dso_local i32 @gtk_list_store_set(i32*, i32*, i32, i8*, i32, i32, i32, i8*, i32, double, i32) #1

declare dso_local i32 @g_strfreev(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
