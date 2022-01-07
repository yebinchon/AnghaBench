; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_on_treeview2_key_press_event.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_on_treeview2_key_press_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.menu = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@GDK_space = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@GDK_KP_Enter = common dso_local global i64 0, align 8
@tree1_w = common dso_local global i32* null, align 8
@model2 = common dso_local global i32 0, align 4
@COL_MENU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@COL_NO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@COL_MOD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@COL_YES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @on_treeview2_key_press_event(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.menu*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @GTK_TREE_VIEW(i32* %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @gtk_tree_view_get_cursor(i32* %16, i32** %9, i32** %10)
  %18 = load i32*, i32** %9, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %4, align 4
  br label %95

22:                                               ; preds = %3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GDK_space, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @gtk_tree_view_row_expanded(i32* %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @gtk_tree_view_collapse_row(i32* %34, i32* %35)
  br label %42

37:                                               ; preds = %28
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @gtk_tree_view_expand_row(i32* %38, i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %33
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %4, align 4
  br label %95

44:                                               ; preds = %22
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @GDK_KP_Enter, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %44
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** @tree1_w, align 8
  %54 = icmp eq i32* %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %4, align 4
  br label %95

57:                                               ; preds = %51
  %58 = load i32, i32* @model2, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @gtk_tree_model_get_iter(i32 %58, i32* %11, i32* %59)
  %61 = load i32, i32* @model2, align 4
  %62 = load i32, i32* @COL_MENU, align 4
  %63 = call i32 @gtk_tree_model_get(i32 %61, i32* %11, i32 %62, %struct.menu** %12, i32 -1)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @strcasecmp(i32 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %57
  %70 = load i32, i32* @COL_NO, align 4
  store i32 %70, i32* %13, align 4
  br label %90

71:                                               ; preds = %57
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @strcasecmp(i32 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @COL_MOD, align 4
  store i32 %78, i32* %13, align 4
  br label %89

79:                                               ; preds = %71
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @strcasecmp(i32 %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @COL_YES, align 4
  store i32 %86, i32* %13, align 4
  br label %88

87:                                               ; preds = %79
  store i32 -1, i32* %13, align 4
  br label %88

88:                                               ; preds = %87, %85
  br label %89

89:                                               ; preds = %88, %77
  br label %90

90:                                               ; preds = %89, %69
  %91 = load %struct.menu*, %struct.menu** %12, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @change_sym_value(%struct.menu* %91, i32 %92)
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %90, %55, %42, %20
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32* @GTK_TREE_VIEW(i32*) #1

declare dso_local i32 @gtk_tree_view_get_cursor(i32*, i32**, i32**) #1

declare dso_local i64 @gtk_tree_view_row_expanded(i32*, i32*) #1

declare dso_local i32 @gtk_tree_view_collapse_row(i32*, i32*) #1

declare dso_local i32 @gtk_tree_view_expand_row(i32*, i32*, i32) #1

declare dso_local i32 @gtk_tree_model_get_iter(i32, i32*, i32*) #1

declare dso_local i32 @gtk_tree_model_get(i32, i32*, i32, %struct.menu**, i32) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @change_sym_value(%struct.menu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
