; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiwindow.c_yui_window_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiwindow.c_yui_window_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32*, i32, i32*, i32*, i32, %struct.TYPE_12__*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"yui\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@yui_set_accel_group = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"pixmaps\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"yabause.png\00", align 1
@G_FILE_TEST_EXISTS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"Yabause\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@yui_window_destroy = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"key-press-event\00", align 1
@yui_window_keypress = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"key-release-event\00", align 1
@yui_window_keyrelease = common dso_local global i32 0, align 4
@GTK_WINDOW_TOPLEVEL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"Yabause Logs\00", align 1
@GTK_POLICY_AUTOMATIC = common dso_local global i32 0, align 4
@yui_window_log_delete = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@yui_window_keep_clean = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @yui_window_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_window_init(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %9 = call i32* (...) @gtk_accel_group_new()
  store i32* %9, i32** %3, align 8
  %10 = call i32 @gtk_action_group_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 7
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = call i32 @yui_window_create_actions(%struct.TYPE_12__* %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @gtk_action_group_get_action(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i64, i64* @FALSE, align 8
  %20 = call i32 @gtk_action_set_sensitive(i32 %18, i64 %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @gtk_action_group_get_action(i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i64, i64* @FALSE, align 8
  %26 = call i32 @gtk_action_set_sensitive(i32 %24, i64 %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = call i32* @gtk_action_group_list_actions(i32 %29)
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @yui_set_accel_group, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @g_list_foreach(i32* %31, i32 %32, i32* %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = call i32 @GTK_WINDOW(%struct.TYPE_12__* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @gtk_window_add_accel_group(i32 %36, i32* %37)
  %39 = load i64, i64* @FALSE, align 8
  store i64 %39, i64* %7, align 8
  %40 = call i8** (...) @g_get_system_data_dirs()
  store i8** %40, i8*** %6, align 8
  br label %41

41:                                               ; preds = %65, %1
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i8**, i8*** %6, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %50, label %68

50:                                               ; preds = %48
  %51 = load i8**, i8*** %6, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @g_build_filename(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* @G_FILE_TEST_EXISTS, align 4
  %56 = call i64 @g_file_test(i8* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = call i32 @GTK_WINDOW(%struct.TYPE_12__* %59)
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @gdk_pixbuf_new_from_file(i8* %61, i32* null)
  %63 = call i32 @gtk_window_set_icon(i32 %60, i32 %62)
  %64 = load i64, i64* @TRUE, align 8
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %58, %50
  %66 = load i8**, i8*** %6, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %67, i8*** %6, align 8
  br label %41

68:                                               ; preds = %48
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %73 = call i32 @GTK_WINDOW(%struct.TYPE_12__* %72)
  %74 = call i32 @gdk_pixbuf_new_from_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %75 = call i32 @gtk_window_set_icon(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %68
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = call i32 @GTK_WINDOW(%struct.TYPE_12__* %77)
  %79 = call i32 @gtk_window_set_title(i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i64, i64* @FALSE, align 8
  %81 = call i32* @gtk_vbox_new(i64 %80, i32 0)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 4
  store i32* %81, i32** %83, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %85 = call i32 @GTK_CONTAINER(%struct.TYPE_12__* %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @gtk_container_add(i32 %85, i32* %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %91 = call i32* @create_menu(%struct.TYPE_12__* %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  store i32* %91, i32** %93, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @GTK_BOX(i32* %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @FALSE, align 8
  %102 = load i64, i64* @FALSE, align 8
  %103 = call i32 @gtk_box_pack_start(i32 %97, i32* %100, i64 %101, i64 %102, i32 0)
  %104 = call i32* (...) @yui_gl_new()
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  store i32* %104, i32** %106, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @GTK_BOX(i32* %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @TRUE, align 8
  %115 = load i64, i64* @TRUE, align 8
  %116 = call i32 @gtk_box_pack_start(i32 %110, i32* %113, i64 %114, i64 %115, i32 0)
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = call %struct.TYPE_12__* @GTK_WIDGET(i32* %119)
  %121 = call i32 @gtk_widget_set_size_request(%struct.TYPE_12__* %120, i32 320, i32 224)
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %123 = call i32* @G_OBJECT(%struct.TYPE_12__* %122)
  %124 = load i32, i32* @yui_window_destroy, align 4
  %125 = call i32 @G_CALLBACK(i32 %124)
  %126 = call i32 @g_signal_connect(i32* %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %125, %struct.TYPE_12__* null)
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %128 = call i32* @G_OBJECT(%struct.TYPE_12__* %127)
  %129 = load i32, i32* @yui_window_keypress, align 4
  %130 = call i32 @G_CALLBACK(i32 %129)
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %132 = call i32 @g_signal_connect(i32* %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %130, %struct.TYPE_12__* %131)
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %134 = call i32* @G_OBJECT(%struct.TYPE_12__* %133)
  %135 = load i32, i32* @yui_window_keyrelease, align 4
  %136 = call i32 @G_CALLBACK(i32 %135)
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %138 = call i32 @g_signal_connect(i32* %134, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %136, %struct.TYPE_12__* %137)
  %139 = load i32, i32* @GTK_WINDOW_TOPLEVEL, align 4
  %140 = call %struct.TYPE_12__* @gtk_window_new(i32 %139)
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 6
  store %struct.TYPE_12__* %140, %struct.TYPE_12__** %142, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 6
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = call i32 @GTK_WINDOW(%struct.TYPE_12__* %145)
  %147 = call i32 @gtk_window_set_title(i32 %146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 6
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = call i32 @gtk_widget_set_size_request(%struct.TYPE_12__* %150, i32 500, i32 300)
  %152 = call i32* @gtk_scrolled_window_new(i32* null, i32* null)
  store i32* %152, i32** %4, align 8
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @GTK_SCROLLED_WINDOW(i32* %153)
  %155 = load i32, i32* @GTK_POLICY_AUTOMATIC, align 4
  %156 = load i32, i32* @GTK_POLICY_AUTOMATIC, align 4
  %157 = call i32 @gtk_scrolled_window_set_policy(i32 %154, i32 %155, i32 %156)
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 6
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = call i32 @GTK_CONTAINER(%struct.TYPE_12__* %160)
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @gtk_container_add(i32 %161, i32* %162)
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 6
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = call i32* @G_OBJECT(%struct.TYPE_12__* %166)
  %168 = load i32, i32* @yui_window_log_delete, align 4
  %169 = call i32 @G_CALLBACK(i32 %168)
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %171 = call i32 @g_signal_connect(i32* %167, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %169, %struct.TYPE_12__* %170)
  %172 = call i32 (...) @gtk_text_view_new()
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 8
  %175 = load i32*, i32** %4, align 8
  %176 = call i32 @GTK_SCROLLED_WINDOW(i32* %175)
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @gtk_scrolled_window_add_with_viewport(i32 %176, i32 %179)
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @gtk_widget_show(i32* %183)
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 3
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @gtk_widget_show_all(i32* %187)
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @gtk_widget_show(i32* %191)
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* @yui_window_keep_clean, align 4
  %197 = call i32 @G_CALLBACK(i32 %196)
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %199 = call i32 @g_signal_connect(i32* %195, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %197, %struct.TYPE_12__* %198)
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 8
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  store i64 0, i64* %203, align 8
  ret void
}

declare dso_local i32* @gtk_accel_group_new(...) #1

declare dso_local i32 @gtk_action_group_new(i8*) #1

declare dso_local i32 @yui_window_create_actions(%struct.TYPE_12__*) #1

declare dso_local i32 @gtk_action_set_sensitive(i32, i64) #1

declare dso_local i32 @gtk_action_group_get_action(i32, i8*) #1

declare dso_local i32* @gtk_action_group_list_actions(i32) #1

declare dso_local i32 @g_list_foreach(i32*, i32, i32*) #1

declare dso_local i32 @gtk_window_add_accel_group(i32, i32*) #1

declare dso_local i32 @GTK_WINDOW(%struct.TYPE_12__*) #1

declare dso_local i8** @g_get_system_data_dirs(...) #1

declare dso_local i8* @g_build_filename(i8*, i8*, i8*, i32*) #1

declare dso_local i64 @g_file_test(i8*, i32) #1

declare dso_local i32 @gtk_window_set_icon(i32, i32) #1

declare dso_local i32 @gdk_pixbuf_new_from_file(i8*, i32*) #1

declare dso_local i32 @gtk_window_set_title(i32, i8*) #1

declare dso_local i32* @gtk_vbox_new(i64, i32) #1

declare dso_local i32 @gtk_container_add(i32, i32*) #1

declare dso_local i32 @GTK_CONTAINER(%struct.TYPE_12__*) #1

declare dso_local i32* @create_menu(%struct.TYPE_12__*) #1

declare dso_local i32 @gtk_box_pack_start(i32, i32*, i64, i64, i32) #1

declare dso_local i32 @GTK_BOX(i32*) #1

declare dso_local i32* @yui_gl_new(...) #1

declare dso_local i32 @gtk_widget_set_size_request(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @GTK_WIDGET(i32*) #1

declare dso_local i32 @g_signal_connect(i32*, i8*, i32, %struct.TYPE_12__*) #1

declare dso_local i32* @G_OBJECT(%struct.TYPE_12__*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local %struct.TYPE_12__* @gtk_window_new(i32) #1

declare dso_local i32* @gtk_scrolled_window_new(i32*, i32*) #1

declare dso_local i32 @gtk_scrolled_window_set_policy(i32, i32, i32) #1

declare dso_local i32 @GTK_SCROLLED_WINDOW(i32*) #1

declare dso_local i32 @gtk_text_view_new(...) #1

declare dso_local i32 @gtk_scrolled_window_add_with_viewport(i32, i32) #1

declare dso_local i32 @gtk_widget_show(i32*) #1

declare dso_local i32 @gtk_widget_show_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
