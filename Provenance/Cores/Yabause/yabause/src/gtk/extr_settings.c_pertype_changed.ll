; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_settings.c_pertype_changed.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_settings.c_pertype_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@keyfile = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"General\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"PerType\00", align 1
@PERPAD = common dso_local global i32 0, align 4
@PERMOUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @pertype_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pertype_changed(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @GTK_CONTAINER(i32* %13)
  %15 = call i32* @gtk_container_get_children(i32 %14)
  store i32* %15, i32** %9, align 8
  store i32 1, i32* %7, align 4
  br label %16

16:                                               ; preds = %29, %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32* @g_list_nth_data(i32* %20, i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @gtk_widget_destroy(i32* %26)
  br label %28

28:                                               ; preds = %25, %19
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %16

32:                                               ; preds = %16
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @GTK_TREE_VIEW(i32* %33)
  %35 = call i32 @gtk_tree_view_get_cursor(i32 %34, i32** %5, i32* null)
  %36 = load i32*, i32** %5, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %32
  %39 = load i32*, i32** %5, align 8
  %40 = call i32* @gtk_tree_path_to_string(i32* %39)
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @sscanf(i32* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %11)
  %43 = load i32, i32* %11, align 4
  switch i32 %43, label %56 [
    i32 0, label %44
    i32 1, label %50
  ]

44:                                               ; preds = %38
  %45 = load i32, i32* @keyfile, align 4
  %46 = load i32, i32* @PERPAD, align 4
  %47 = call i32 @g_key_file_set_integer(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @pertype_display_pad(i32* %48)
  br label %56

50:                                               ; preds = %38
  %51 = load i32, i32* @keyfile, align 4
  %52 = load i32, i32* @PERMOUSE, align 4
  %53 = call i32 @g_key_file_set_integer(i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @pertype_display_mouse(i32* %54)
  br label %56

56:                                               ; preds = %38, %50, %44
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @g_free(i32* %57)
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @gtk_tree_path_free(i32* %59)
  br label %61

61:                                               ; preds = %56, %32
  ret void
}

declare dso_local i32* @gtk_container_get_children(i32) #1

declare dso_local i32 @GTK_CONTAINER(i32*) #1

declare dso_local i32* @g_list_nth_data(i32*, i32) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

declare dso_local i32 @gtk_tree_view_get_cursor(i32, i32**, i32*) #1

declare dso_local i32 @GTK_TREE_VIEW(i32*) #1

declare dso_local i32* @gtk_tree_path_to_string(i32*) #1

declare dso_local i32 @sscanf(i32*, i8*, i32*) #1

declare dso_local i32 @g_key_file_set_integer(i32, i8*, i8*, i32) #1

declare dso_local i32 @pertype_display_pad(i32*) #1

declare dso_local i32 @pertype_display_mouse(i32*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @gtk_tree_path_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
