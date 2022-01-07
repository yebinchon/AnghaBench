; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuimem.c_yui_mem_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuimem.c_yui_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i64 }
%struct.TYPE_35__ = type { i32, i64, i32, %struct.TYPE_35__*, %struct.TYPE_35__* }

@.str = private unnamed_addr constant [12 x i8] c"Memory dump\00", align 1
@FALSE = common dso_local global i32 0, align 4
@GTK_TOOLBAR_ICONS = common dso_local global i32 0, align 4
@GTK_STOCK_GO_DOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@yui_mem_pagedown_clicked = common dso_local global i32 0, align 4
@GTK_STOCK_GO_UP = common dso_local global i32 0, align 4
@yui_mem_pageup_clicked = common dso_local global i32 0, align 4
@quickAddress = common dso_local global %struct.TYPE_36__* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@yui_mem_combo_changed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@yui_mem_address_changed = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@G_TYPE_STRING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Address\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Dump\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"editable\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@GTK_CELL_RENDERER_MODE_EDITABLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"edited\00", align 1
@yui_mem_content_changed = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@yui_mem_destroy = common dso_local global i32 0, align 4
@GDK_Page_Up = common dso_local global i32 0, align 4
@yui_mem_pageup_pressed = common dso_local global i32 0, align 4
@GDK_Page_Down = common dso_local global i32 0, align 4
@yui_mem_pagedown_pressed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_35__*)* @yui_mem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_mem_init(%struct.TYPE_35__* %0) #0 {
  %2 = alloca %struct.TYPE_35__*, align 8
  %3 = alloca %struct.TYPE_35__*, align 8
  %4 = alloca %struct.TYPE_35__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca %struct.TYPE_35__*, align 8
  %11 = alloca %struct.TYPE_35__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %2, align 8
  %13 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %14 = call i32 @GTK_WINDOW(%struct.TYPE_35__* %13)
  %15 = call i32 @gtk_window_set_title(i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @FALSE, align 4
  %17 = call %struct.TYPE_35__* @gtk_vbox_new(i32 %16, i32 0)
  store %struct.TYPE_35__* %17, %struct.TYPE_35__** %11, align 8
  %18 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %19 = call i32 @GTK_CONTAINER(%struct.TYPE_35__* %18)
  %20 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %21 = call i32 @gtk_container_add(i32 %19, %struct.TYPE_35__* %20)
  %22 = call %struct.TYPE_35__* (...) @gtk_toolbar_new()
  %23 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %23, i32 0, i32 4
  store %struct.TYPE_35__* %22, %struct.TYPE_35__** %24, align 8
  %25 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_35__*, %struct.TYPE_35__** %26, align 8
  %28 = call i32 @GTK_TOOLBAR(%struct.TYPE_35__* %27)
  %29 = load i32, i32* @GTK_TOOLBAR_ICONS, align 4
  %30 = call i32 @gtk_toolbar_set_style(i32 %28, i32 %29)
  %31 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %32 = call i32 @GTK_BOX(%struct.TYPE_35__* %31)
  %33 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_35__*, %struct.TYPE_35__** %34, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i32 @gtk_box_pack_start(i32 %32, %struct.TYPE_35__* %35, i32 %36, i32 %37, i32 0)
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_35__*, %struct.TYPE_35__** %40, align 8
  %42 = call i32 @GTK_TOOLBAR(%struct.TYPE_35__* %41)
  %43 = call %struct.TYPE_35__* (...) @gtk_separator_tool_item_new()
  %44 = call i32 @gtk_toolbar_insert(i32 %42, %struct.TYPE_35__* %43, i32 0)
  %45 = call %struct.TYPE_35__* (...) @gtk_tool_item_new()
  store %struct.TYPE_35__* %45, %struct.TYPE_35__** %7, align 8
  %46 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i32 @gtk_tool_item_set_expand(%struct.TYPE_35__* %46, i32 %47)
  %49 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_35__*, %struct.TYPE_35__** %50, align 8
  %52 = call i32 @GTK_TOOLBAR(%struct.TYPE_35__* %51)
  %53 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %54 = call i32 @gtk_toolbar_insert(i32 %52, %struct.TYPE_35__* %53, i32 1)
  %55 = load i32, i32* @GTK_STOCK_GO_DOWN, align 4
  %56 = call %struct.TYPE_35__* @gtk_tool_button_new_from_stock(i32 %55)
  store %struct.TYPE_35__* %56, %struct.TYPE_35__** %9, align 8
  %57 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %58 = load i32, i32* @yui_mem_pagedown_clicked, align 4
  %59 = call i32 @G_CALLBACK(i32 %58)
  %60 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %61 = call i32 @g_signal_connect(%struct.TYPE_35__* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %59, %struct.TYPE_35__* %60)
  %62 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_35__*, %struct.TYPE_35__** %63, align 8
  %65 = call i32 @GTK_TOOLBAR(%struct.TYPE_35__* %64)
  %66 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %67 = call i32 @gtk_toolbar_insert(i32 %65, %struct.TYPE_35__* %66, i32 2)
  %68 = load i32, i32* @GTK_STOCK_GO_UP, align 4
  %69 = call %struct.TYPE_35__* @gtk_tool_button_new_from_stock(i32 %68)
  store %struct.TYPE_35__* %69, %struct.TYPE_35__** %8, align 8
  %70 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %71 = load i32, i32* @yui_mem_pageup_clicked, align 4
  %72 = call i32 @G_CALLBACK(i32 %71)
  %73 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %74 = call i32 @g_signal_connect(%struct.TYPE_35__* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %72, %struct.TYPE_35__* %73)
  %75 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_35__*, %struct.TYPE_35__** %76, align 8
  %78 = call i32 @GTK_TOOLBAR(%struct.TYPE_35__* %77)
  %79 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %80 = call i32 @gtk_toolbar_insert(i32 %78, %struct.TYPE_35__* %79, i32 3)
  %81 = call %struct.TYPE_35__* (...) @gtk_combo_box_entry_new_text()
  %82 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %82, i32 0, i32 3
  store %struct.TYPE_35__* %81, %struct.TYPE_35__** %83, align 8
  %84 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_35__*, %struct.TYPE_35__** %85, align 8
  %87 = call i32 @GTK_BIN(%struct.TYPE_35__* %86)
  %88 = call %struct.TYPE_35__* @gtk_bin_get_child(i32 %87)
  %89 = call i32 @GTK_ENTRY(%struct.TYPE_35__* %88)
  %90 = call i32 @gtk_entry_set_width_chars(i32 %89, i32 8)
  store i64 0, i64* %12, align 8
  br label %91

91:                                               ; preds = %110, %1
  %92 = load %struct.TYPE_36__*, %struct.TYPE_36__** @quickAddress, align 8
  %93 = load i64, i64* %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %91
  %99 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_35__*, %struct.TYPE_35__** %100, align 8
  %102 = call i32 @GTK_COMBO_BOX(%struct.TYPE_35__* %101)
  %103 = load i64, i64* %12, align 8
  %104 = load %struct.TYPE_36__*, %struct.TYPE_36__** @quickAddress, align 8
  %105 = load i64, i64* %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @gtk_combo_box_insert_text(i32 %102, i64 %103, i64 %108)
  br label %110

110:                                              ; preds = %98
  %111 = load i64, i64* %12, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %12, align 8
  br label %91

113:                                              ; preds = %91
  %114 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_35__*, %struct.TYPE_35__** %115, align 8
  %117 = call i32 @GTK_COMBO_BOX(%struct.TYPE_35__* %116)
  %118 = call i32 @gtk_combo_box_set_active(i32 %117, i32 0)
  %119 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_35__*, %struct.TYPE_35__** %120, align 8
  %122 = load i32, i32* @yui_mem_combo_changed, align 4
  %123 = call i32 @G_CALLBACK(i32 %122)
  %124 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %125 = call i32 @g_signal_connect(%struct.TYPE_35__* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %123, %struct.TYPE_35__* %124)
  %126 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_35__*, %struct.TYPE_35__** %127, align 8
  %129 = call i32 @GTK_BIN(%struct.TYPE_35__* %128)
  %130 = call %struct.TYPE_35__* @gtk_bin_get_child(i32 %129)
  %131 = load i32, i32* @yui_mem_address_changed, align 4
  %132 = call i32 @G_CALLBACK(i32 %131)
  %133 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %134 = call i32 @g_signal_connect(%struct.TYPE_35__* %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %132, %struct.TYPE_35__* %133)
  %135 = load i32, i32* @FALSE, align 4
  %136 = call %struct.TYPE_35__* @gtk_vbox_new(i32 %135, i32 0)
  store %struct.TYPE_35__* %136, %struct.TYPE_35__** %10, align 8
  %137 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %138 = call i32 @GTK_BOX(%struct.TYPE_35__* %137)
  %139 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_35__*, %struct.TYPE_35__** %140, align 8
  %142 = load i32, i32* @TRUE, align 4
  %143 = load i32, i32* @FALSE, align 4
  %144 = call i32 @gtk_box_pack_start(i32 %138, %struct.TYPE_35__* %141, i32 %142, i32 %143, i32 0)
  %145 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %146 = call i32 @GTK_CONTAINER(%struct.TYPE_35__* %145)
  %147 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %148 = call i32 @gtk_container_add(i32 %146, %struct.TYPE_35__* %147)
  %149 = load i32, i32* @G_TYPE_STRING, align 4
  %150 = load i32, i32* @G_TYPE_STRING, align 4
  %151 = call i32 @gtk_list_store_new(i32 2, i32 %149, i32 %150)
  %152 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @GTK_TREE_MODEL(i32 %156)
  %158 = call %struct.TYPE_35__* @gtk_tree_view_new_with_model(i32 %157)
  store %struct.TYPE_35__* %158, %struct.TYPE_35__** %3, align 8
  %159 = call %struct.TYPE_35__* (...) @gtk_cell_renderer_text_new()
  store %struct.TYPE_35__* %159, %struct.TYPE_35__** %4, align 8
  %160 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %161 = call i32* @gtk_tree_view_column_new_with_attributes(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_35__* %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0, i32* null)
  store i32* %161, i32** %5, align 8
  %162 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %163 = call i32 @GTK_TREE_VIEW(%struct.TYPE_35__* %162)
  %164 = load i32*, i32** %5, align 8
  %165 = call i32 @gtk_tree_view_append_column(i32 %163, i32* %164)
  %166 = call %struct.TYPE_35__* (...) @gtk_cell_renderer_text_new()
  store %struct.TYPE_35__* %166, %struct.TYPE_35__** %4, align 8
  %167 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %168 = call i32* @gtk_tree_view_column_new_with_attributes(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_35__* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 1, i32* null)
  store i32* %168, i32** %5, align 8
  %169 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %170 = call i32 @GTK_TREE_VIEW(%struct.TYPE_35__* %169)
  %171 = load i32*, i32** %5, align 8
  %172 = call i32 @gtk_tree_view_append_column(i32 %170, i32* %171)
  %173 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %174 = call %struct.TYPE_35__* @G_OBJECT(%struct.TYPE_35__* %173)
  %175 = load i32, i32* @TRUE, align 4
  %176 = load i32, i32* @GTK_CELL_RENDERER_MODE_EDITABLE, align 4
  %177 = call i32 @g_object_set(%struct.TYPE_35__* %174, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %176, i32* null)
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %179 = call %struct.TYPE_35__* @G_OBJECT(%struct.TYPE_35__* %178)
  %180 = load i32, i32* @yui_mem_content_changed, align 4
  %181 = call i32 @GTK_SIGNAL_FUNC(i32 %180)
  %182 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %183 = call i32 @g_signal_connect(%struct.TYPE_35__* %179, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %181, %struct.TYPE_35__* %182)
  %184 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %185 = call i32 @GTK_BOX(%struct.TYPE_35__* %184)
  %186 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %187 = load i32, i32* @TRUE, align 4
  %188 = load i32, i32* @TRUE, align 4
  %189 = call i32 @gtk_box_pack_start(i32 %185, %struct.TYPE_35__* %186, i32 %187, i32 %188, i32 0)
  %190 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %191 = call %struct.TYPE_35__* @G_OBJECT(%struct.TYPE_35__* %190)
  %192 = load i32, i32* @yui_mem_destroy, align 4
  %193 = call i32 @GTK_SIGNAL_FUNC(i32 %192)
  %194 = call i32 @g_signal_connect(%struct.TYPE_35__* %191, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %193, %struct.TYPE_35__* null)
  %195 = call i32* (...) @gtk_accel_group_new()
  store i32* %195, i32** %6, align 8
  %196 = load i32*, i32** %6, align 8
  %197 = load i32, i32* @GDK_Page_Up, align 4
  %198 = load i32, i32* @yui_mem_pageup_pressed, align 4
  %199 = call i32 @G_CALLBACK(i32 %198)
  %200 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %201 = call i32 @g_cclosure_new(i32 %199, %struct.TYPE_35__* %200, i32* null)
  %202 = call i32 @gtk_accel_group_connect(i32* %196, i32 %197, i32 0, i32 0, i32 %201)
  %203 = load i32*, i32** %6, align 8
  %204 = load i32, i32* @GDK_Page_Down, align 4
  %205 = load i32, i32* @yui_mem_pagedown_pressed, align 4
  %206 = call i32 @G_CALLBACK(i32 %205)
  %207 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %208 = call i32 @g_cclosure_new(i32 %206, %struct.TYPE_35__* %207, i32* null)
  %209 = call i32 @gtk_accel_group_connect(i32* %203, i32 %204, i32 0, i32 0, i32 %208)
  %210 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %211 = call i32 @GTK_WINDOW(%struct.TYPE_35__* %210)
  %212 = load i32*, i32** %6, align 8
  %213 = call i32 @gtk_window_add_accel_group(i32 %211, i32* %212)
  %214 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %214, i32 0, i32 1
  store i64 0, i64* %215, align 8
  %216 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %216, i32 0, i32 0
  store i32 8, i32* %217, align 8
  %218 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  %219 = call i32 @GTK_WINDOW(%struct.TYPE_35__* %218)
  %220 = call i32 @gtk_window_set_default_size(i32 %219, i32 300, i32 -1)
  ret void
}

declare dso_local i32 @gtk_window_set_title(i32, i8*) #1

declare dso_local i32 @GTK_WINDOW(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_35__* @gtk_vbox_new(i32, i32) #1

declare dso_local i32 @gtk_container_add(i32, %struct.TYPE_35__*) #1

declare dso_local i32 @GTK_CONTAINER(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_35__* @gtk_toolbar_new(...) #1

declare dso_local i32 @gtk_toolbar_set_style(i32, i32) #1

declare dso_local i32 @GTK_TOOLBAR(%struct.TYPE_35__*) #1

declare dso_local i32 @gtk_box_pack_start(i32, %struct.TYPE_35__*, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(%struct.TYPE_35__*) #1

declare dso_local i32 @gtk_toolbar_insert(i32, %struct.TYPE_35__*, i32) #1

declare dso_local %struct.TYPE_35__* @gtk_separator_tool_item_new(...) #1

declare dso_local %struct.TYPE_35__* @gtk_tool_item_new(...) #1

declare dso_local i32 @gtk_tool_item_set_expand(%struct.TYPE_35__*, i32) #1

declare dso_local %struct.TYPE_35__* @gtk_tool_button_new_from_stock(i32) #1

declare dso_local i32 @g_signal_connect(%struct.TYPE_35__*, i8*, i32, %struct.TYPE_35__*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local %struct.TYPE_35__* @gtk_combo_box_entry_new_text(...) #1

declare dso_local i32 @gtk_entry_set_width_chars(i32, i32) #1

declare dso_local i32 @GTK_ENTRY(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_35__* @gtk_bin_get_child(i32) #1

declare dso_local i32 @GTK_BIN(%struct.TYPE_35__*) #1

declare dso_local i32 @gtk_combo_box_insert_text(i32, i64, i64) #1

declare dso_local i32 @GTK_COMBO_BOX(%struct.TYPE_35__*) #1

declare dso_local i32 @gtk_combo_box_set_active(i32, i32) #1

declare dso_local i32 @gtk_list_store_new(i32, i32, i32) #1

declare dso_local %struct.TYPE_35__* @gtk_tree_view_new_with_model(i32) #1

declare dso_local i32 @GTK_TREE_MODEL(i32) #1

declare dso_local %struct.TYPE_35__* @gtk_cell_renderer_text_new(...) #1

declare dso_local i32* @gtk_tree_view_column_new_with_attributes(i8*, %struct.TYPE_35__*, i8*, i32, i32*) #1

declare dso_local i32 @gtk_tree_view_append_column(i32, i32*) #1

declare dso_local i32 @GTK_TREE_VIEW(%struct.TYPE_35__*) #1

declare dso_local i32 @g_object_set(%struct.TYPE_35__*, i8*, i32, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_35__* @G_OBJECT(%struct.TYPE_35__*) #1

declare dso_local i32 @GTK_SIGNAL_FUNC(i32) #1

declare dso_local i32* @gtk_accel_group_new(...) #1

declare dso_local i32 @gtk_accel_group_connect(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @g_cclosure_new(i32, %struct.TYPE_35__*, i32*) #1

declare dso_local i32 @gtk_window_add_accel_group(i32, i32*) #1

declare dso_local i32 @gtk_window_set_default_size(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
