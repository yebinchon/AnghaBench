; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuivdp1.c_yui_vdp1_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuivdp1.c_yui_vdp1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32*, i64, i32, i32, i32, %struct.TYPE_27__* }

@.str = private unnamed_addr constant [5 x i8] c"VDP1\00", align 1
@FALSE = common dso_local global i32 0, align 4
@GTK_TOOLBAR_ICONS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@G_TYPE_STRING = common dso_local global i32 0, align 4
@GDK_TYPE_PIXBUF = common dso_local global i32 0, align 4
@GTK_POLICY_AUTOMATIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Command\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Icon\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"pixbuf\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"cursor-changed\00", align 1
@yui_vdp1_view_cursor_changed = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@yui_vdp1_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*)* @yui_vdp1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_vdp1_init(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %15 = call i32 @GTK_WINDOW(%struct.TYPE_27__* %14)
  %16 = call i32 @gtk_window_set_title(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @FALSE, align 4
  %18 = call %struct.TYPE_27__* @gtk_vbox_new(i32 %17, i32 0)
  store %struct.TYPE_27__* %18, %struct.TYPE_27__** %4, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %20 = call i32 @GTK_CONTAINER(%struct.TYPE_27__* %19)
  %21 = call i32 @gtk_container_set_border_width(i32 %20, i32 0)
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %23 = call i32 @GTK_CONTAINER(%struct.TYPE_27__* %22)
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %25 = call i32 @gtk_container_add(i32 %23, %struct.TYPE_27__* %24)
  %26 = call %struct.TYPE_27__* (...) @gtk_toolbar_new()
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 5
  store %struct.TYPE_27__* %26, %struct.TYPE_27__** %28, align 8
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  %32 = call i32 @GTK_TOOLBAR(%struct.TYPE_27__* %31)
  %33 = load i32, i32* @GTK_TOOLBAR_ICONS, align 4
  %34 = call i32 @gtk_toolbar_set_style(i32 %32, i32 %33)
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %36 = call i32 @GTK_BOX(%struct.TYPE_27__* %35)
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %38, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i32 @gtk_box_pack_start(i32 %36, %struct.TYPE_27__* %39, i32 %40, i32 %41, i32 0)
  %43 = call %struct.TYPE_27__* (...) @gtk_hpaned_new()
  store %struct.TYPE_27__* %43, %struct.TYPE_27__** %3, align 8
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %45 = call i32 @GTK_BOX(%struct.TYPE_27__* %44)
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %47 = load i32, i32* @TRUE, align 4
  %48 = load i32, i32* @TRUE, align 4
  %49 = call i32 @gtk_box_pack_start(i32 %45, %struct.TYPE_27__* %46, i32 %47, i32 %48, i32 4)
  %50 = load i32, i32* @G_TYPE_STRING, align 4
  %51 = load i32, i32* @GDK_TYPE_PIXBUF, align 4
  %52 = call i32 @gtk_list_store_new(i32 2, i32 %50, i32 %51)
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @GTK_TREE_MODEL(i32 %57)
  %59 = call %struct.TYPE_27__* @gtk_tree_view_new_with_model(i32 %58)
  store %struct.TYPE_27__* %59, %struct.TYPE_27__** %6, align 8
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %61 = call i32 @GTK_TREE_VIEW(%struct.TYPE_27__* %60)
  %62 = load i32, i32* @FALSE, align 4
  %63 = call i32 @gtk_tree_view_set_headers_visible(i32 %61, i32 %62)
  %64 = call %struct.TYPE_27__* @gtk_scrolled_window_new(i32* null, i32* null)
  store %struct.TYPE_27__* %64, %struct.TYPE_27__** %7, align 8
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %66 = call i32 @GTK_SCROLLED_WINDOW(%struct.TYPE_27__* %65)
  %67 = load i32, i32* @GTK_POLICY_AUTOMATIC, align 4
  %68 = load i32, i32* @GTK_POLICY_AUTOMATIC, align 4
  %69 = call i32 @gtk_scrolled_window_set_policy(i32 %66, i32 %67, i32 %68)
  %70 = call i32* (...) @gtk_cell_renderer_text_new()
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call i32* @gtk_tree_view_column_new_with_attributes(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null)
  store i32* %72, i32** %10, align 8
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %74 = call i32 @GTK_TREE_VIEW(%struct.TYPE_27__* %73)
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @gtk_tree_view_append_column(i32 %74, i32* %75)
  %77 = call i32* (...) @gtk_cell_renderer_pixbuf_new()
  store i32* %77, i32** %9, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @g_object_set(i32* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* null)
  %80 = load i32*, i32** %9, align 8
  %81 = call i32* @gtk_tree_view_column_new_with_attributes(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 1, i32* null)
  store i32* %81, i32** %10, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %83 = call i32 @GTK_TREE_VIEW(%struct.TYPE_27__* %82)
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @gtk_tree_view_append_column(i32 %83, i32* %84)
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %87 = call i32 @GTK_CONTAINER(%struct.TYPE_27__* %86)
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %89 = call i32 @gtk_container_add(i32 %87, %struct.TYPE_27__* %88)
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %91 = call i32 @GTK_PANED(%struct.TYPE_27__* %90)
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %93 = load i32, i32* @FALSE, align 4
  %94 = load i32, i32* @TRUE, align 4
  %95 = call i32 @gtk_paned_pack1(i32 %91, %struct.TYPE_27__* %92, i32 %93, i32 %94)
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %97 = load i32, i32* @yui_vdp1_view_cursor_changed, align 4
  %98 = call i32 @G_CALLBACK(i32 %97)
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %100 = call i32 @g_signal_connect(%struct.TYPE_27__* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %98, %struct.TYPE_27__* %99)
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %102 = call %struct.TYPE_27__* @G_OBJECT(%struct.TYPE_27__* %101)
  %103 = load i32, i32* @yui_vdp1_destroy, align 4
  %104 = call i32 @GTK_SIGNAL_FUNC(i32 %103)
  %105 = call i32 @g_signal_connect(%struct.TYPE_27__* %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %104, %struct.TYPE_27__* null)
  %106 = call %struct.TYPE_27__* (...) @gtk_vpaned_new()
  store %struct.TYPE_27__* %106, %struct.TYPE_27__** %5, align 8
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %108 = call i32 @GTK_PANED(%struct.TYPE_27__* %107)
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %110 = load i32, i32* @TRUE, align 4
  %111 = load i32, i32* @TRUE, align 4
  %112 = call i32 @gtk_paned_pack2(i32 %108, %struct.TYPE_27__* %109, i32 %110, i32 %111)
  %113 = call %struct.TYPE_27__* @gtk_scrolled_window_new(i32* null, i32* null)
  store %struct.TYPE_27__* %113, %struct.TYPE_27__** %11, align 8
  %114 = call %struct.TYPE_27__* (...) @gtk_text_view_new()
  store %struct.TYPE_27__* %114, %struct.TYPE_27__** %12, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %116 = call i32 @GTK_SCROLLED_WINDOW(%struct.TYPE_27__* %115)
  %117 = load i32, i32* @GTK_POLICY_AUTOMATIC, align 4
  %118 = load i32, i32* @GTK_POLICY_AUTOMATIC, align 4
  %119 = call i32 @gtk_scrolled_window_set_policy(i32 %116, i32 %117, i32 %118)
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %121 = call i32 @GTK_TEXT_VIEW(%struct.TYPE_27__* %120)
  %122 = load i32, i32* @FALSE, align 4
  %123 = call i32 @gtk_text_view_set_editable(i32 %121, i32 %122)
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %125 = call i32 @GTK_TEXT_VIEW(%struct.TYPE_27__* %124)
  %126 = load i32, i32* @FALSE, align 4
  %127 = call i32 @gtk_text_view_set_cursor_visible(i32 %125, i32 %126)
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %129 = call i32 @GTK_TEXT_VIEW(%struct.TYPE_27__* %128)
  %130 = call i32 @gtk_text_view_get_buffer(i32 %129)
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %134 = call i32 @GTK_CONTAINER(%struct.TYPE_27__* %133)
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %136 = call i32 @gtk_container_add(i32 %134, %struct.TYPE_27__* %135)
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %138 = call i32 @GTK_PANED(%struct.TYPE_27__* %137)
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %140 = load i32, i32* @FALSE, align 4
  %141 = load i32, i32* @TRUE, align 4
  %142 = call i32 @gtk_paned_pack1(i32 %138, %struct.TYPE_27__* %139, i32 %140, i32 %141)
  %143 = call i32 (...) @yui_viewer_new()
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = call %struct.TYPE_27__* @gtk_scrolled_window_new(i32* null, i32* null)
  store %struct.TYPE_27__* %146, %struct.TYPE_27__** %13, align 8
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %148 = call i32 @GTK_SCROLLED_WINDOW(%struct.TYPE_27__* %147)
  %149 = load i32, i32* @GTK_POLICY_AUTOMATIC, align 4
  %150 = load i32, i32* @GTK_POLICY_AUTOMATIC, align 4
  %151 = call i32 @gtk_scrolled_window_set_policy(i32 %148, i32 %149, i32 %150)
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %153 = call i32 @GTK_SCROLLED_WINDOW(%struct.TYPE_27__* %152)
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @gtk_scrolled_window_add_with_viewport(i32 %153, i32 %156)
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %159 = call i32 @GTK_PANED(%struct.TYPE_27__* %158)
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %161 = load i32, i32* @TRUE, align 4
  %162 = load i32, i32* @TRUE, align 4
  %163 = call i32 @gtk_paned_pack2(i32 %159, %struct.TYPE_27__* %160, i32 %161, i32 %162)
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 1
  store i64 0, i64* %165, align 8
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 0
  store i32* null, i32** %167, align 8
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %169 = call i32 @GTK_WINDOW(%struct.TYPE_27__* %168)
  %170 = call i32 @gtk_window_set_default_size(i32 %169, i32 500, i32 450)
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %172 = call i32 @GTK_PANED(%struct.TYPE_27__* %171)
  %173 = call i32 @gtk_paned_set_position(i32 %172, i32 250)
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %175 = call i32 @GTK_PANED(%struct.TYPE_27__* %174)
  %176 = call i32 @gtk_paned_set_position(i32 %175, i32 200)
  ret void
}

declare dso_local i32 @gtk_window_set_title(i32, i8*) #1

declare dso_local i32 @GTK_WINDOW(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @gtk_vbox_new(i32, i32) #1

declare dso_local i32 @gtk_container_set_border_width(i32, i32) #1

declare dso_local i32 @GTK_CONTAINER(%struct.TYPE_27__*) #1

declare dso_local i32 @gtk_container_add(i32, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @gtk_toolbar_new(...) #1

declare dso_local i32 @gtk_toolbar_set_style(i32, i32) #1

declare dso_local i32 @GTK_TOOLBAR(%struct.TYPE_27__*) #1

declare dso_local i32 @gtk_box_pack_start(i32, %struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @gtk_hpaned_new(...) #1

declare dso_local i32 @gtk_list_store_new(i32, i32, i32) #1

declare dso_local %struct.TYPE_27__* @gtk_tree_view_new_with_model(i32) #1

declare dso_local i32 @GTK_TREE_MODEL(i32) #1

declare dso_local i32 @gtk_tree_view_set_headers_visible(i32, i32) #1

declare dso_local i32 @GTK_TREE_VIEW(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @gtk_scrolled_window_new(i32*, i32*) #1

declare dso_local i32 @gtk_scrolled_window_set_policy(i32, i32, i32) #1

declare dso_local i32 @GTK_SCROLLED_WINDOW(%struct.TYPE_27__*) #1

declare dso_local i32* @gtk_cell_renderer_text_new(...) #1

declare dso_local i32* @gtk_tree_view_column_new_with_attributes(i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @gtk_tree_view_append_column(i32, i32*) #1

declare dso_local i32* @gtk_cell_renderer_pixbuf_new(...) #1

declare dso_local i32 @g_object_set(i32*, i8*, i32, i32*) #1

declare dso_local i32 @gtk_paned_pack1(i32, %struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @GTK_PANED(%struct.TYPE_27__*) #1

declare dso_local i32 @g_signal_connect(%struct.TYPE_27__*, i8*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local %struct.TYPE_27__* @G_OBJECT(%struct.TYPE_27__*) #1

declare dso_local i32 @GTK_SIGNAL_FUNC(i32) #1

declare dso_local %struct.TYPE_27__* @gtk_vpaned_new(...) #1

declare dso_local i32 @gtk_paned_pack2(i32, %struct.TYPE_27__*, i32, i32) #1

declare dso_local %struct.TYPE_27__* @gtk_text_view_new(...) #1

declare dso_local i32 @gtk_text_view_set_editable(i32, i32) #1

declare dso_local i32 @GTK_TEXT_VIEW(%struct.TYPE_27__*) #1

declare dso_local i32 @gtk_text_view_set_cursor_visible(i32, i32) #1

declare dso_local i32 @gtk_text_view_get_buffer(i32) #1

declare dso_local i32 @yui_viewer_new(...) #1

declare dso_local i32 @gtk_scrolled_window_add_with_viewport(i32, i32) #1

declare dso_local i32 @gtk_window_set_default_size(i32, i32, i32) #1

declare dso_local i32 @gtk_paned_set_position(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
