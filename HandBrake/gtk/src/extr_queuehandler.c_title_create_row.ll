; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_title_create_row.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_title_create_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GTK_ORIENTATION_HORIZONTAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Select this title for adding to the queue.\0A\00", align 1
@GTK_ALIGN_CENTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"title_selected\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@title_selected_cb = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"No Title\00", align 1
@GTK_ALIGN_START = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"title_label\00", align 1
@default_title_attrs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [143 x i8] c"There is another title with the same destination file name.\0AThis title will not be added to the queue unless you change\0Athe output file name.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@GTK_ORIENTATION_VERTICAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GTK_ALIGN_FILL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"title_file\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@title_dest_file_cb = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"Destination Directory\00", align 1
@GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"selection-changed\00", align 1
@title_dest_dir_cb = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"title_dir\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @title_create_row(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32, i32* @GTK_ORIENTATION_HORIZONTAL, align 4
  %10 = call i32 @gtk_box_new(i32 %9, i32 0)
  %11 = call i32* @GTK_BOX(i32 %10)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @gtk_box_set_spacing(i32* %12, i32 6)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @GTK_WIDGET(i32* %14)
  %16 = call i32 @gtk_widget_show(i32* %15)
  %17 = call i32 (...) @gtk_check_button_new()
  %18 = call i32* @GTK_CHECK_BUTTON(i32 %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32* @GTK_WIDGET(i32* %19)
  %21 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @gtk_widget_set_tooltip_markup(i32* %20, i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @GTK_WIDGET(i32* %23)
  %25 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %26 = call i32 @gtk_widget_set_valign(i32* %24, i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* @GTK_WIDGET(i32* %27)
  %29 = call i32 @gtk_widget_set_name(i32* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* @GTK_WIDGET(i32* %30)
  %32 = call i32 @gtk_widget_show(i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* @title_selected_cb, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @g_signal_connect(i32* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32* %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32* @GTK_WIDGET(i32* %39)
  %41 = call i32 @ghb_box_append_child(i32* %38, i32* %40)
  %42 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 @gtk_label_new(i32 %42)
  %44 = call i32* @GTK_LABEL(i32 %43)
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @gtk_label_set_width_chars(i32* %45, i32 12)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32* @GTK_WIDGET(i32* %47)
  %49 = load i32, i32* @GTK_ALIGN_START, align 4
  %50 = call i32 @gtk_widget_set_halign(i32* %48, i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32* @GTK_WIDGET(i32* %51)
  %53 = load i32, i32* @GTK_ALIGN_CENTER, align 4
  %54 = call i32 @gtk_widget_set_valign(i32* %52, i32 %53)
  %55 = load i32*, i32** %6, align 8
  %56 = call i32* @GTK_WIDGET(i32* %55)
  %57 = call i32 @gtk_widget_set_name(i32* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32*, i32** %6, align 8
  %59 = call i32* @GTK_WIDGET(i32* %58)
  %60 = call i32 @gtk_widget_show(i32* %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32* @GTK_WIDGET(i32* %62)
  %64 = call i32 @ghb_box_append_child(i32* %61, i32* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @gtk_label_get_attributes(i32* %65)
  store i32 %66, i32* @default_title_attrs, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i32* @GTK_WIDGET(i32* %67)
  %69 = call i32 @_(i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.5, i64 0, i64 0))
  %70 = call i32 @gtk_widget_set_tooltip_text(i32* %68, i32 %69)
  %71 = load i32*, i32** %6, align 8
  %72 = call i32* @GTK_WIDGET(i32* %71)
  %73 = load i32, i32* @FALSE, align 4
  %74 = call i32 @gtk_widget_set_has_tooltip(i32* %72, i32 %73)
  %75 = load i32, i32* @GTK_ORIENTATION_VERTICAL, align 4
  %76 = call i32 @gtk_box_new(i32 %75, i32 0)
  %77 = call i32* @GTK_BOX(i32 %76)
  store i32* %77, i32** %4, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = call i32* @GTK_WIDGET(i32* %78)
  %80 = load i32, i32* @TRUE, align 4
  %81 = call i32 @gtk_widget_set_hexpand(i32* %79, i32 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32* @GTK_WIDGET(i32* %82)
  %84 = load i32, i32* @GTK_ALIGN_FILL, align 4
  %85 = call i32 @gtk_widget_set_halign(i32* %83, i32 %84)
  %86 = call i32 (...) @gtk_entry_new()
  %87 = call i32* @GTK_ENTRY(i32 %86)
  store i32* %87, i32** %7, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @ghb_entry_set_width_chars(i32* %88, i32 40)
  %90 = load i32*, i32** %7, align 8
  %91 = call i32* @GTK_WIDGET(i32* %90)
  %92 = call i32 @gtk_widget_set_name(i32* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i32*, i32** %7, align 8
  %94 = call i32* @GTK_WIDGET(i32* %93)
  %95 = call i32 @gtk_widget_show(i32* %94)
  %96 = load i32*, i32** %7, align 8
  %97 = load i64, i64* @title_dest_file_cb, align 8
  %98 = trunc i64 %97 to i32
  %99 = load i32*, i32** %2, align 8
  %100 = call i32 @g_signal_connect(i32* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %98, i32* %99)
  %101 = load i32*, i32** %4, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = call i32* @GTK_WIDGET(i32* %102)
  %104 = call i32 @ghb_box_append_child(i32* %101, i32* %103)
  %105 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %106 = load i32, i32* @GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER, align 4
  %107 = call i32 @gtk_file_chooser_button_new(i32 %105, i32 %106)
  %108 = call i32* @GTK_FILE_CHOOSER_BUTTON(i32 %107)
  store i32* %108, i32** %8, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load i64, i64* @title_dest_dir_cb, align 8
  %111 = trunc i64 %110 to i32
  %112 = load i32*, i32** %2, align 8
  %113 = call i32 @g_signal_connect(i32* %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %111, i32* %112)
  %114 = load i32*, i32** %8, align 8
  %115 = call i32* @GTK_WIDGET(i32* %114)
  %116 = call i32 @gtk_widget_set_name(i32* %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %117 = load i32*, i32** %8, align 8
  %118 = call i32* @GTK_WIDGET(i32* %117)
  %119 = load i32, i32* @TRUE, align 4
  %120 = call i32 @gtk_widget_set_hexpand(i32* %118, i32 %119)
  %121 = load i32*, i32** %8, align 8
  %122 = call i32* @GTK_WIDGET(i32* %121)
  %123 = call i32 @gtk_widget_show(i32* %122)
  %124 = load i32*, i32** %4, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = call i32* @GTK_WIDGET(i32* %125)
  %127 = call i32 @ghb_box_append_child(i32* %124, i32* %126)
  %128 = load i32*, i32** %4, align 8
  %129 = call i32* @GTK_WIDGET(i32* %128)
  %130 = call i32 @gtk_widget_show(i32* %129)
  %131 = load i32*, i32** %3, align 8
  %132 = load i32*, i32** %4, align 8
  %133 = call i32* @GTK_WIDGET(i32* %132)
  %134 = call i32 @ghb_box_append_child(i32* %131, i32* %133)
  %135 = load i32*, i32** %3, align 8
  %136 = call i32* @GTK_WIDGET(i32* %135)
  ret i32* %136
}

declare dso_local i32* @GTK_BOX(i32) #1

declare dso_local i32 @gtk_box_new(i32, i32) #1

declare dso_local i32 @gtk_box_set_spacing(i32*, i32) #1

declare dso_local i32 @gtk_widget_show(i32*) #1

declare dso_local i32* @GTK_WIDGET(i32*) #1

declare dso_local i32* @GTK_CHECK_BUTTON(i32) #1

declare dso_local i32 @gtk_check_button_new(...) #1

declare dso_local i32 @gtk_widget_set_tooltip_markup(i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @gtk_widget_set_valign(i32*, i32) #1

declare dso_local i32 @gtk_widget_set_name(i32*, i8*) #1

declare dso_local i32 @g_signal_connect(i32*, i8*, i32, i32*) #1

declare dso_local i32 @ghb_box_append_child(i32*, i32*) #1

declare dso_local i32* @GTK_LABEL(i32) #1

declare dso_local i32 @gtk_label_new(i32) #1

declare dso_local i32 @gtk_label_set_width_chars(i32*, i32) #1

declare dso_local i32 @gtk_widget_set_halign(i32*, i32) #1

declare dso_local i32 @gtk_label_get_attributes(i32*) #1

declare dso_local i32 @gtk_widget_set_tooltip_text(i32*, i32) #1

declare dso_local i32 @gtk_widget_set_has_tooltip(i32*, i32) #1

declare dso_local i32 @gtk_widget_set_hexpand(i32*, i32) #1

declare dso_local i32* @GTK_ENTRY(i32) #1

declare dso_local i32 @gtk_entry_new(...) #1

declare dso_local i32 @ghb_entry_set_width_chars(i32*, i32) #1

declare dso_local i32* @GTK_FILE_CHOOSER_BUTTON(i32) #1

declare dso_local i32 @gtk_file_chooser_button_new(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
