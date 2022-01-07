; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_init_main_window.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_init_main_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"window1\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GUI loading failed !\0A\00", align 1
@main_wnd = common dso_local global %struct.TYPE_9__* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"hpaned1\00", align 1
@hpaned = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"vpaned1\00", align 1
@vpaned = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"treeview1\00", align 1
@tree1_w = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"treeview2\00", align 1
@tree2_w = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"textview3\00", align 1
@text_w = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"button1\00", align 1
@back_btn = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"show_name1\00", align 1
@show_name = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"show_range1\00", align 1
@show_range = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"show_data1\00", align 1
@show_value = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"button3\00", align 1
@save_btn = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"save1\00", align 1
@save_menu_item = common dso_local global i8* null, align 8
@conf_changed = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"toolbar1\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"button4\00", align 1
@xpm_single_view = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"button5\00", align 1
@xpm_split_view = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"button6\00", align 1
@xpm_tree_view = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"mytag1\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@PANGO_WEIGHT_BOLD = common dso_local global i32 0, align 4
@tag1 = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [7 x i8] c"mytag2\00", align 1
@tag2 = common dso_local global i8* null, align 8
@rootmenu = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_main_window(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32* @glade_xml_new(i32* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @g_error(i32 %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @glade_xml_signal_autoconnect(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @glade_xml_get_widget(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = bitcast i8* %18 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** @main_wnd, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i8* @glade_xml_get_widget(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %21, i8** @hpaned, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i8* @glade_xml_get_widget(i32* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %23, i8** @vpaned, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i8* @glade_xml_get_widget(i32* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i8* %25, i8** @tree1_w, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i8* @glade_xml_get_widget(i32* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i8* %27, i8** @tree2_w, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i8* @glade_xml_get_widget(i32* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i8* %29, i8** @text_w, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i8* @glade_xml_get_widget(i32* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i8* %31, i8** @back_btn, align 8
  %32 = load i8*, i8** @back_btn, align 8
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i32 @gtk_widget_set_sensitive(i8* %32, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i8* @glade_xml_get_widget(i32* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %4, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @show_name, align 4
  %40 = call i32 @gtk_check_menu_item_set_active(i32* %38, i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i8* @glade_xml_get_widget(i32* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %4, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @show_range, align 4
  %46 = call i32 @gtk_check_menu_item_set_active(i32* %44, i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i8* @glade_xml_get_widget(i32* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %4, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @show_value, align 4
  %52 = call i32 @gtk_check_menu_item_set_active(i32* %50, i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i8* @glade_xml_get_widget(i32* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  store i8* %54, i8** @save_btn, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = call i8* @glade_xml_get_widget(i32* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  store i8* %56, i8** @save_menu_item, align 8
  %57 = load i32, i32* @conf_changed, align 4
  %58 = call i32 @conf_set_changed_callback(i32 %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** @main_wnd, align 8
  %60 = call i32* @gtk_widget_get_style(%struct.TYPE_9__* %59)
  store i32* %60, i32** %6, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = call i8* @glade_xml_get_widget(i32* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %63 = bitcast i8* %62 to i32*
  store i32* %63, i32** %4, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @main_wnd, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = load i64, i64* @xpm_single_view, align 8
  %70 = inttoptr i64 %69 to i32**
  %71 = call i32 @replace_button_icon(i32* %64, i32 %67, i32* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32** %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @main_wnd, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i64, i64* @xpm_split_view, align 8
  %78 = inttoptr i64 %77 to i32**
  %79 = call i32 @replace_button_icon(i32* %72, i32 %75, i32* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32** %78)
  %80 = load i32*, i32** %3, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** @main_wnd, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i64, i64* @xpm_tree_view, align 8
  %86 = inttoptr i64 %85 to i32**
  %87 = call i32 @replace_button_icon(i32* %80, i32 %83, i32* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32** %86)
  %88 = load i8*, i8** @text_w, align 8
  %89 = call i32 @GTK_TEXT_VIEW(i8* %88)
  %90 = call i32* @gtk_text_view_get_buffer(i32 %89)
  store i32* %90, i32** %5, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* @PANGO_WEIGHT_BOLD, align 4
  %93 = call i8* (i32*, i8*, i8*, ...) @gtk_text_buffer_create_tag(i32* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %92, i8* null)
  store i8* %93, i8** @tag1, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = call i8* (i32*, i8*, i8*, ...) @gtk_text_buffer_create_tag(i32* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* null)
  store i8* %95, i8** @tag2, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** @main_wnd, align 8
  %97 = call i32 @GTK_WINDOW(%struct.TYPE_9__* %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rootmenu, i32 0, i32 0), align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @gtk_window_set_title(i32 %97, i32 %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** @main_wnd, align 8
  %103 = call i32 @gtk_widget_show(%struct.TYPE_9__* %102)
  ret void
}

declare dso_local i32* @glade_xml_new(i32*, i8*, i32*) #1

declare dso_local i32 @g_error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @glade_xml_signal_autoconnect(i32*) #1

declare dso_local i8* @glade_xml_get_widget(i32*, i8*) #1

declare dso_local i32 @gtk_widget_set_sensitive(i8*, i32) #1

declare dso_local i32 @gtk_check_menu_item_set_active(i32*, i32) #1

declare dso_local i32 @conf_set_changed_callback(i32) #1

declare dso_local i32* @gtk_widget_get_style(%struct.TYPE_9__*) #1

declare dso_local i32 @replace_button_icon(i32*, i32, i32*, i8*, i32**) #1

declare dso_local i32* @gtk_text_view_get_buffer(i32) #1

declare dso_local i32 @GTK_TEXT_VIEW(i8*) #1

declare dso_local i8* @gtk_text_buffer_create_tag(i32*, i8*, i8*, ...) #1

declare dso_local i32 @gtk_window_set_title(i32, i32) #1

declare dso_local i32 @GTK_WINDOW(%struct.TYPE_9__*) #1

declare dso_local i32 @gtk_widget_show(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
