; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuim68k.c_yui_m68k_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuim68k.c_yui_m68k_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i8*, i8*, %struct.TYPE_16__*, %struct.TYPE_16__*, i8*, i8*, %struct.TYPE_16__*, i8*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__* }

@.str = private unnamed_addr constant [5 x i8] c"M68K\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Disassembled code\00", align 1
@G_TYPE_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"editable\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@GTK_CELL_RENDERER_MODE_EDITABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"Register\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"edited\00", align 1
@yui_m68k_editedReg = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"Breakpoints\00", align 1
@yui_m68k_editedBp = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@yui_m68k_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @yui_m68k_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_m68k_init(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %3 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %4 = call i32 @GTK_WINDOW(%struct.TYPE_16__* %3)
  %5 = call i32 @gtk_window_set_title(i32 %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %7 = call i32 @GTK_WINDOW(%struct.TYPE_16__* %6)
  %8 = load i32, i32* @FALSE, align 4
  %9 = call i32 @gtk_window_set_resizable(i32 %7, i32 %8)
  %10 = load i32, i32* @FALSE, align 4
  %11 = call i8* @gtk_vbox_new(i32 %10, i32 2)
  %12 = bitcast i8* %11 to %struct.TYPE_16__*
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 15
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %14, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 15
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = call i32 @GTK_CONTAINER(%struct.TYPE_16__* %17)
  %19 = call i32 @gtk_container_set_border_width(i32 %18, i32 4)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %21 = call i32 @GTK_CONTAINER(%struct.TYPE_16__* %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 15
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = call i32 @gtk_container_add(i32 %21, %struct.TYPE_16__* %24)
  %26 = load i32, i32* @FALSE, align 4
  %27 = call %struct.TYPE_16__* @gtk_hbox_new(i32 %26, i32 2)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %29, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = call i32 @GTK_CONTAINER(%struct.TYPE_16__* %32)
  %34 = call i32 @gtk_container_set_border_width(i32 %33, i32 4)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 15
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = call i32 @GTK_BOX(%struct.TYPE_16__* %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32, i32* @FALSE, align 4
  %44 = call i32 @gtk_box_pack_start(i32 %38, %struct.TYPE_16__* %41, i32 %42, i32 %43, i32 4)
  %45 = call %struct.TYPE_16__* (...) @gtk_hbutton_box_new()
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 14
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %47, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 14
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = call i32 @GTK_CONTAINER(%struct.TYPE_16__* %50)
  %52 = call i32 @gtk_container_set_border_width(i32 %51, i32 4)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 15
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = call i32 @GTK_BOX(%struct.TYPE_16__* %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 14
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = load i32, i32* @FALSE, align 4
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @gtk_box_pack_start(i32 %56, %struct.TYPE_16__* %59, i32 %60, i32 %61, i32 4)
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i8* @gtk_vbox_new(i32 %63, i32 2)
  %65 = bitcast i8* %64 to %struct.TYPE_16__*
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 13
  store %struct.TYPE_16__* %65, %struct.TYPE_16__** %67, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 13
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = call i32 @GTK_CONTAINER(%struct.TYPE_16__* %70)
  %72 = call i32 @gtk_container_set_border_width(i32 %71, i32 4)
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = call i32 @GTK_BOX(%struct.TYPE_16__* %75)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 13
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = load i32, i32* @FALSE, align 4
  %81 = load i32, i32* @FALSE, align 4
  %82 = call i32 @gtk_box_pack_start(i32 %76, %struct.TYPE_16__* %79, i32 %80, i32 %81, i32 4)
  %83 = call %struct.TYPE_16__* @gtk_frame_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 12
  store %struct.TYPE_16__* %83, %struct.TYPE_16__** %85, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 13
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = call i32 @GTK_BOX(%struct.TYPE_16__* %88)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 12
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = load i32, i32* @FALSE, align 4
  %94 = load i32, i32* @FALSE, align 4
  %95 = call i32 @gtk_box_pack_start(i32 %89, %struct.TYPE_16__* %92, i32 %93, i32 %94, i32 4)
  %96 = call %struct.TYPE_16__* @gtk_label_new(i32* null)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 11
  store %struct.TYPE_16__* %96, %struct.TYPE_16__** %98, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 12
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = call i32 @GTK_CONTAINER(%struct.TYPE_16__* %101)
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 11
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = call i32 @gtk_container_add(i32 %102, %struct.TYPE_16__* %105)
  %107 = load i32, i32* @G_TYPE_STRING, align 4
  %108 = load i32, i32* @G_TYPE_STRING, align 4
  %109 = call i8* (i32, i32, ...) @gtk_list_store_new(i32 2, i32 %107, i32 %108)
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 10
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 10
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @GTK_TREE_MODEL(i8* %114)
  %116 = call i8* @gtk_tree_view_new_with_model(i32 %115)
  %117 = bitcast i8* %116 to %struct.TYPE_16__*
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 6
  store %struct.TYPE_16__* %117, %struct.TYPE_16__** %119, align 8
  %120 = call i8* (...) @gtk_cell_renderer_text_new()
  %121 = bitcast i8* %120 to %struct.TYPE_16__*
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 9
  store %struct.TYPE_16__* %121, %struct.TYPE_16__** %123, align 8
  %124 = call i8* (...) @gtk_cell_renderer_text_new()
  %125 = bitcast i8* %124 to %struct.TYPE_16__*
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 5
  store %struct.TYPE_16__* %125, %struct.TYPE_16__** %127, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = call i32 @G_OBJECT(%struct.TYPE_16__* %130)
  %132 = load i32, i32* @TRUE, align 4
  %133 = load i32, i32* @GTK_CELL_RENDERER_MODE_EDITABLE, align 4
  %134 = call i32 @g_object_set(i32 %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32* null)
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 9
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = call i8* @gtk_tree_view_column_new_with_attributes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_16__* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0, i32* null)
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 8
  store i8* %138, i8** %140, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 6
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %142, align 8
  %144 = call i32 @GTK_TREE_VIEW(%struct.TYPE_16__* %143)
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 8
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @gtk_tree_view_append_column(i32 %144, i8* %147)
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 5
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = call i8* @gtk_tree_view_column_new_with_attributes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_16__* %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 1, i32* null)
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 7
  store i8* %152, i8** %154, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 6
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  %158 = call i32 @GTK_TREE_VIEW(%struct.TYPE_16__* %157)
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 7
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @gtk_tree_view_append_column(i32 %158, i8* %161)
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = call i32 @GTK_BOX(%struct.TYPE_16__* %165)
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 6
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = load i32, i32* @FALSE, align 4
  %171 = load i32, i32* @FALSE, align 4
  %172 = call i32 @gtk_box_pack_start(i32 %166, %struct.TYPE_16__* %169, i32 %170, i32 %171, i32 4)
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 5
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %174, align 8
  %176 = call i32 @G_OBJECT(%struct.TYPE_16__* %175)
  %177 = load i32, i32* @yui_m68k_editedReg, align 4
  %178 = call i32 @GTK_SIGNAL_FUNC(i32 %177)
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %180 = call i32 @g_signal_connect(i32 %176, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %178, %struct.TYPE_16__* %179)
  %181 = load i32, i32* @G_TYPE_STRING, align 4
  %182 = call i8* (i32, i32, ...) @gtk_list_store_new(i32 1, i32 %181)
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 4
  store i8* %182, i8** %184, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 4
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @GTK_TREE_MODEL(i8* %187)
  %189 = call i8* @gtk_tree_view_new_with_model(i32 %188)
  %190 = bitcast i8* %189 to %struct.TYPE_16__*
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  store %struct.TYPE_16__* %190, %struct.TYPE_16__** %192, align 8
  %193 = call i8* (...) @gtk_cell_renderer_text_new()
  %194 = bitcast i8* %193 to %struct.TYPE_16__*
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  store %struct.TYPE_16__* %194, %struct.TYPE_16__** %196, align 8
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %198, align 8
  %200 = call i32 @G_OBJECT(%struct.TYPE_16__* %199)
  %201 = load i32, i32* @TRUE, align 4
  %202 = load i32, i32* @GTK_CELL_RENDERER_MODE_EDITABLE, align 4
  %203 = call i32 @g_object_set(i32 %200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %202, i32* null)
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %205, align 8
  %207 = call i8* @gtk_tree_view_column_new_with_attributes(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_16__* %206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0, i32* null)
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 3
  store i8* %207, i8** %209, align 8
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %211, align 8
  %213 = call i32 @GTK_TREE_VIEW(%struct.TYPE_16__* %212)
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 3
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @gtk_tree_view_append_column(i32 %213, i8* %216)
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %219, align 8
  %221 = call i32 @GTK_BOX(%struct.TYPE_16__* %220)
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %223, align 8
  %225 = load i32, i32* @FALSE, align 4
  %226 = load i32, i32* @FALSE, align 4
  %227 = call i32 @gtk_box_pack_start(i32 %221, %struct.TYPE_16__* %224, i32 %225, i32 %226, i32 4)
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %229, align 8
  %231 = call i32 @G_OBJECT(%struct.TYPE_16__* %230)
  %232 = load i32, i32* @yui_m68k_editedBp, align 4
  %233 = call i32 @GTK_SIGNAL_FUNC(i32 %232)
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %235 = call i32 @g_signal_connect(i32 %231, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %233, %struct.TYPE_16__* %234)
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %237 = call i32 @G_OBJECT(%struct.TYPE_16__* %236)
  %238 = load i32, i32* @yui_m68k_destroy, align 4
  %239 = call i32 @GTK_SIGNAL_FUNC(i32 %238)
  %240 = call i32 @g_signal_connect(i32 %237, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %239, %struct.TYPE_16__* null)
  ret void
}

declare dso_local i32 @gtk_window_set_title(i32, i8*) #1

declare dso_local i32 @GTK_WINDOW(%struct.TYPE_16__*) #1

declare dso_local i32 @gtk_window_set_resizable(i32, i32) #1

declare dso_local i8* @gtk_vbox_new(i32, i32) #1

declare dso_local i32 @gtk_container_set_border_width(i32, i32) #1

declare dso_local i32 @GTK_CONTAINER(%struct.TYPE_16__*) #1

declare dso_local i32 @gtk_container_add(i32, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @gtk_hbox_new(i32, i32) #1

declare dso_local i32 @gtk_box_pack_start(i32, %struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @gtk_hbutton_box_new(...) #1

declare dso_local %struct.TYPE_16__* @gtk_frame_new(i8*) #1

declare dso_local %struct.TYPE_16__* @gtk_label_new(i32*) #1

declare dso_local i8* @gtk_list_store_new(i32, i32, ...) #1

declare dso_local i8* @gtk_tree_view_new_with_model(i32) #1

declare dso_local i32 @GTK_TREE_MODEL(i8*) #1

declare dso_local i8* @gtk_cell_renderer_text_new(...) #1

declare dso_local i32 @g_object_set(i32, i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @G_OBJECT(%struct.TYPE_16__*) #1

declare dso_local i8* @gtk_tree_view_column_new_with_attributes(i8*, %struct.TYPE_16__*, i8*, i32, i32*) #1

declare dso_local i32 @gtk_tree_view_append_column(i32, i8*) #1

declare dso_local i32 @GTK_TREE_VIEW(%struct.TYPE_16__*) #1

declare dso_local i32 @g_signal_connect(i32, i8*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @GTK_SIGNAL_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
