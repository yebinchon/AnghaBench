; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiscudsp.c_yui_scudsp_new.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiscudsp.c_yui_scudsp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, i32*, i8*, i8*, i32, i32, %struct.TYPE_34__*, i32, i32 }
%struct.TYPE_33__ = type { i32 }

@yui = common dso_local global %struct.TYPE_34__* null, align 8
@yui_scudsp = common dso_local global %struct.TYPE_34__* null, align 8
@YUI_IS_INIT = common dso_local global i32 0, align 4
@yui_scudsp_breakpoint_handler = common dso_local global i32 0, align 4
@MAX_BREAKPOINTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<empty>\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Step [F7]\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"paused\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@GDK_F7 = common dso_local global i32 0, align 4
@YUI_IS_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_34__* @yui_scudsp_new(%struct.TYPE_34__* %0) #0 {
  %2 = alloca %struct.TYPE_34__*, align 8
  %3 = alloca %struct.TYPE_34__*, align 8
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [20 x i8], align 16
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %3, align 8
  %15 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  store %struct.TYPE_34__* %15, %struct.TYPE_34__** @yui, align 8
  %16 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %17 = icmp ne %struct.TYPE_34__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %20 = call %struct.TYPE_34__* @GTK_WIDGET(%struct.TYPE_34__* %19)
  store %struct.TYPE_34__* %20, %struct.TYPE_34__** %2, align 8
  br label %211

21:                                               ; preds = %1
  %22 = call i32 (...) @yui_scudsp_get_type()
  %23 = call %struct.TYPE_34__* @g_object_new(i32 %22, i32* null)
  %24 = call %struct.TYPE_34__* @GTK_WIDGET(%struct.TYPE_34__* %23)
  store %struct.TYPE_34__* %24, %struct.TYPE_34__** %4, align 8
  %25 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %26 = call %struct.TYPE_34__* @YUI_SCUDSP(%struct.TYPE_34__* %25)
  store %struct.TYPE_34__* %26, %struct.TYPE_34__** @yui_scudsp, align 8
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui, align 8
  %28 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @YUI_IS_INIT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %21
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui, align 8
  %35 = call i32 @yui_window_run(%struct.TYPE_34__* %34)
  %36 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui, align 8
  %37 = call i32 @yui_window_pause(%struct.TYPE_34__* %36)
  br label %38

38:                                               ; preds = %33, %21
  %39 = call i32 @ScuDspSetBreakpointCallBack(i32* @yui_scudsp_breakpoint_handler)
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %49, %38
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 23
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %45 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @GTK_LIST_STORE(i32 %46)
  %48 = call i32 @gtk_list_store_append(i32 %47, i32* %9)
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %40

52:                                               ; preds = %40
  %53 = call %struct.TYPE_33__* (...) @ScuDspGetBreakpointList()
  store %struct.TYPE_33__* %53, %struct.TYPE_33__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %105, %52
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @MAX_BREAKPOINTS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %108

58:                                               ; preds = %54
  %59 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %66 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  %71 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %72 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @GTK_LIST_STORE(i32 %73)
  %75 = call i32 @gtk_list_store_append(i32 %74, i32* %10)
  %76 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %98

83:                                               ; preds = %58
  %84 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @sprintf(i8* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %93 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @GTK_LIST_STORE(i32 %94)
  %96 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %97 = call i32 @gtk_list_store_set(i32 %95, i32* %10, i32 0, i8* %96, i32 -1)
  br label %104

98:                                               ; preds = %58
  %99 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %100 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @GTK_LIST_STORE(i32 %101)
  %103 = call i32 @gtk_list_store_set(i32 %102, i32* %10, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  br label %104

104:                                              ; preds = %98, %83
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %54

108:                                              ; preds = %54
  %109 = call %struct.TYPE_34__* @gtk_button_new_with_label(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %110 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 6
  store %struct.TYPE_34__* %109, %struct.TYPE_34__** %111, align 8
  %112 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @GTK_BOX(i32 %114)
  %116 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %117 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %116, i32 0, i32 6
  %118 = load %struct.TYPE_34__*, %struct.TYPE_34__** %117, align 8
  %119 = load i32, i32* @FALSE, align 4
  %120 = load i32, i32* @FALSE, align 4
  %121 = call i32 @gtk_box_pack_start(i32 %115, %struct.TYPE_34__* %118, i32 %119, i32 %120, i32 2)
  %122 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %123 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %122, i32 0, i32 6
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %123, align 8
  %125 = call i32 @G_CALLBACK(i32 (%struct.TYPE_34__*)* @yui_scudsp_step)
  %126 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %127 = call i32 @g_signal_connect(%struct.TYPE_34__* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %125, %struct.TYPE_34__* %126)
  %128 = call %struct.TYPE_34__* (...) @gtk_button_new()
  store %struct.TYPE_34__* %128, %struct.TYPE_34__** %12, align 8
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui, align 8
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @gtk_action_group_get_action(i32 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %133 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %134 = call i32 @gtk_action_connect_proxy(i32 %132, %struct.TYPE_34__* %133)
  %135 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %136 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @GTK_BOX(i32 %137)
  %139 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %140 = load i32, i32* @FALSE, align 4
  %141 = load i32, i32* @FALSE, align 4
  %142 = call i32 @gtk_box_pack_start(i32 %138, %struct.TYPE_34__* %139, i32 %140, i32 %141, i32 2)
  %143 = call %struct.TYPE_34__* (...) @gtk_button_new()
  store %struct.TYPE_34__* %143, %struct.TYPE_34__** %13, align 8
  %144 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui, align 8
  %145 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @gtk_action_group_get_action(i32 %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %148 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %149 = call i32 @gtk_action_connect_proxy(i32 %147, %struct.TYPE_34__* %148)
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @GTK_BOX(i32 %152)
  %154 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %155 = load i32, i32* @FALSE, align 4
  %156 = load i32, i32* @FALSE, align 4
  %157 = call i32 @gtk_box_pack_start(i32 %153, %struct.TYPE_34__* %154, i32 %155, i32 %156, i32 2)
  %158 = call %struct.TYPE_34__* @gtk_button_new_from_stock(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_34__* %158, %struct.TYPE_34__** %14, align 8
  %159 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %160 = call i32 @G_CALLBACK(i32 (%struct.TYPE_34__*)* @yui_scudsp_destroy)
  %161 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %162 = call i8* @g_signal_connect_swapped(%struct.TYPE_34__* %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %160, %struct.TYPE_34__* %161)
  %163 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %164 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @GTK_BOX(i32 %165)
  %167 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %168 = load i32, i32* @FALSE, align 4
  %169 = load i32, i32* @FALSE, align 4
  %170 = call i32 @gtk_box_pack_start(i32 %166, %struct.TYPE_34__* %167, i32 %168, i32 %169, i32 2)
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui, align 8
  %172 = call i32 @G_CALLBACK(i32 (%struct.TYPE_34__*)* @yui_scudsp_update)
  %173 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %174 = call i8* @g_signal_connect_swapped(%struct.TYPE_34__* %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %172, %struct.TYPE_34__* %173)
  %175 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %176 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %175, i32 0, i32 3
  store i8* %174, i8** %176, align 8
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui, align 8
  %178 = call i32 @G_CALLBACK(i32 (%struct.TYPE_34__*)* @yui_scudsp_clear)
  %179 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %180 = call i8* @g_signal_connect_swapped(%struct.TYPE_34__* %177, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %178, %struct.TYPE_34__* %179)
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %182 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %181, i32 0, i32 2
  store i8* %180, i8** %182, align 8
  %183 = call i32* (...) @gtk_accel_group_new()
  store i32* %183, i32** %6, align 8
  %184 = call i32 @G_CALLBACK(i32 (%struct.TYPE_34__*)* @yui_scudsp_step)
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %186 = call i32* @g_cclosure_new(i32 %184, %struct.TYPE_34__* %185, i32* null)
  store i32* %186, i32** %5, align 8
  %187 = load i32*, i32** %6, align 8
  %188 = load i32, i32* @GDK_F7, align 4
  %189 = load i32*, i32** %5, align 8
  %190 = call i32 @gtk_accel_group_connect(i32* %187, i32 %188, i32 0, i32 0, i32* %189)
  %191 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %192 = call i32 @GTK_WINDOW(%struct.TYPE_34__* %191)
  %193 = load i32*, i32** %6, align 8
  %194 = call i32 @gtk_window_add_accel_group(i32 %192, i32* %193)
  %195 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %196 = call i32 @yui_scudsp_update(%struct.TYPE_34__* %195)
  %197 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui, align 8
  %198 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @YUI_IS_RUNNING, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %108
  %204 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %205 = call i32 @yui_scudsp_clear(%struct.TYPE_34__* %204)
  br label %206

206:                                              ; preds = %203, %108
  %207 = load %struct.TYPE_34__*, %struct.TYPE_34__** @yui_scudsp, align 8
  %208 = call %struct.TYPE_34__* @GTK_WIDGET(%struct.TYPE_34__* %207)
  %209 = call i32 @gtk_widget_show_all(%struct.TYPE_34__* %208)
  %210 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  store %struct.TYPE_34__* %210, %struct.TYPE_34__** %2, align 8
  br label %211

211:                                              ; preds = %206, %18
  %212 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  ret %struct.TYPE_34__* %212
}

declare dso_local %struct.TYPE_34__* @GTK_WIDGET(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_34__* @g_object_new(i32, i32*) #1

declare dso_local i32 @yui_scudsp_get_type(...) #1

declare dso_local %struct.TYPE_34__* @YUI_SCUDSP(%struct.TYPE_34__*) #1

declare dso_local i32 @yui_window_run(%struct.TYPE_34__*) #1

declare dso_local i32 @yui_window_pause(%struct.TYPE_34__*) #1

declare dso_local i32 @ScuDspSetBreakpointCallBack(i32*) #1

declare dso_local i32 @gtk_list_store_append(i32, i32*) #1

declare dso_local i32 @GTK_LIST_STORE(i32) #1

declare dso_local %struct.TYPE_33__* @ScuDspGetBreakpointList(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @gtk_list_store_set(i32, i32*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_34__* @gtk_button_new_with_label(i8*) #1

declare dso_local i32 @gtk_box_pack_start(i32, %struct.TYPE_34__*, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(i32) #1

declare dso_local i32 @g_signal_connect(%struct.TYPE_34__*, i8*, i32, %struct.TYPE_34__*) #1

declare dso_local i32 @G_CALLBACK(i32 (%struct.TYPE_34__*)*) #1

declare dso_local i32 @yui_scudsp_step(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_34__* @gtk_button_new(...) #1

declare dso_local i32 @gtk_action_connect_proxy(i32, %struct.TYPE_34__*) #1

declare dso_local i32 @gtk_action_group_get_action(i32, i8*) #1

declare dso_local %struct.TYPE_34__* @gtk_button_new_from_stock(i8*) #1

declare dso_local i8* @g_signal_connect_swapped(%struct.TYPE_34__*, i8*, i32, %struct.TYPE_34__*) #1

declare dso_local i32 @yui_scudsp_destroy(%struct.TYPE_34__*) #1

declare dso_local i32 @yui_scudsp_update(%struct.TYPE_34__*) #1

declare dso_local i32 @yui_scudsp_clear(%struct.TYPE_34__*) #1

declare dso_local i32* @gtk_accel_group_new(...) #1

declare dso_local i32* @g_cclosure_new(i32, %struct.TYPE_34__*, i32*) #1

declare dso_local i32 @gtk_accel_group_connect(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @gtk_window_add_accel_group(i32, i32*) #1

declare dso_local i32 @GTK_WINDOW(%struct.TYPE_34__*) #1

declare dso_local i32 @gtk_widget_show_all(%struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
