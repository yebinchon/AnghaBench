; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_refresh_list_row_ui.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_subtitlehandler.c_subtitle_refresh_list_row_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Forced\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Burn\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"<small>%s</small>\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Import\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Offset: %dms\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"<small>\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Burned Into Video\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Passthrough\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"(Forced Subtitles Only)\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"(Default)\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"</small>\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"-->\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"hb-edit\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"hb-remove\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*)* @subtitle_refresh_list_row_ui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subtitle_refresh_list_row_ui(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %16, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i64 @ghb_dict_get_bool(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 %21, i64* %10, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @ghb_dict_get_bool(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i64 %23, i64* %11, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @ghb_dict_get_bool(i32* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i64 %25, i64* %12, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i8* @subtitle_get_track_description(i32* %26, i32* %27)
  store i8* %28, i8** %17, align 8
  %29 = load i8*, i8** %17, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %30)
  store i8* %31, i8** %13, align 8
  %32 = load i8*, i8** %17, align 8
  %33 = call i32 @g_free(i8* %32)
  %34 = load i32*, i32** %8, align 8
  %35 = call i32* @ghb_dict_get(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %4
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @ghb_dict_get_int(i32* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i64 %39, i64* %18, align 8
  %40 = load i64, i64* %18, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64, i64* %18, align 8
  %44 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i64 %43)
  store i8* %44, i8** %16, align 8
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45, %4
  %47 = call i32* @g_string_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32* %47, i32** %19, align 8
  %48 = load i32*, i32** %19, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)
  %53 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %52)
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32*, i32** %19, align 8
  %58 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %46
  %60 = load i64, i64* %12, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32*, i32** %19, align 8
  %64 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32*, i32** %19, align 8
  %67 = call i32 (i32*, i8*, ...) @g_string_append_printf(i32* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %68 = load i32*, i32** %19, align 8
  %69 = load i32, i32* @FALSE, align 4
  %70 = call i8* @g_string_free(i32* %68, i32 %69)
  store i8* %70, i8** %15, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @GTK_TREE_STORE(i32* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = call i32 (i32, i32*, i32, i8*, i32, i8*, i32, ...) @gtk_tree_store_set(i32 %72, i32* %73, i32 0, i8* %74, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 2, i8* %75, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 5, double 5.000000e-01, i32 -1)
  %77 = load i8*, i8** %14, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %65
  %80 = load i8*, i8** %16, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %108

82:                                               ; preds = %79, %65
  %83 = load i8*, i8** %14, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0))
  store i8* %86, i8** %14, align 8
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i8*, i8** %16, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = call i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0))
  store i8* %91, i8** %16, align 8
  br label %92

92:                                               ; preds = %90, %87
  %93 = load i32*, i32** %5, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = call i64 @gtk_tree_model_iter_children(i32* %93, i32* %9, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @GTK_TREE_STORE(i32* %98)
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @gtk_tree_store_append(i32 %99, i32* %9, i32* %100)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @GTK_TREE_STORE(i32* %103)
  %105 = load i8*, i8** %14, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = call i32 (i32, i32*, i32, i8*, i32, i8*, i32, ...) @gtk_tree_store_set(i32 %104, i32* %9, i32 0, i8* %105, i32 2, i8* %106, i32 5, double 0.000000e+00, i32 -1)
  br label %118

108:                                              ; preds = %79
  %109 = load i32*, i32** %5, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = call i64 @gtk_tree_model_iter_children(i32* %109, i32* %9, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @GTK_TREE_STORE(i32* %114)
  %116 = call i32 @gtk_tree_store_remove(i32 %115, i32* %9)
  br label %117

117:                                              ; preds = %113, %108
  br label %118

118:                                              ; preds = %117, %102
  %119 = load i8*, i8** %13, align 8
  %120 = call i32 @g_free(i8* %119)
  %121 = load i8*, i8** %14, align 8
  %122 = call i32 @g_free(i8* %121)
  %123 = load i8*, i8** %15, align 8
  %124 = call i32 @g_free(i8* %123)
  %125 = load i8*, i8** %16, align 8
  %126 = call i32 @g_free(i8* %125)
  ret void
}

declare dso_local i64 @ghb_dict_get_bool(i32*, i8*) #1

declare dso_local i8* @subtitle_get_track_description(i32*, i32*) #1

declare dso_local i8* @g_strdup_printf(i8*, i64) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i64 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32* @g_string_new(i8*) #1

declare dso_local i32 @g_string_append_printf(i32*, i8*, ...) #1

declare dso_local i8* @g_string_free(i32*, i32) #1

declare dso_local i32 @gtk_tree_store_set(i32, i32*, i32, i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @GTK_TREE_STORE(i32*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i64 @gtk_tree_model_iter_children(i32*, i32*, i32*) #1

declare dso_local i32 @gtk_tree_store_append(i32, i32*, i32*) #1

declare dso_local i32 @gtk_tree_store_remove(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
