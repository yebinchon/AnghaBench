; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_queue_buttons_grey.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_queue_buttons_grey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32 }

@GHB_QUEUE_PENDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"queue_list\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"uiSettings\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"job_status\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@GHB_STATE_WORKING = common dso_local global i64 0, align 8
@GHB_STATE_SEARCHING = common dso_local global i64 0, align 8
@GHB_STATE_SCANNING = common dso_local global i64 0, align 8
@GHB_STATE_MUXING = common dso_local global i64 0, align 8
@GHB_STATE_PAUSED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"queue-export\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"queue-add\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"queue-add-all\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"queue-start\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"queue-pause\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"queue-reset\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"queue-edit\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"queue-open-source\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"queue-open-dest\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"queue-open-log-dir\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"queue-open-log\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"queue_start\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"hb-stop\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Stop\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"Stop Encoding\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"hb-start\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Start Encoding\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"queue_list_start\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"queue_start_menu\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"S_top Encoding\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"_Start Encoding\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"queue_pause\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Resume\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Resume Encoding\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"hb-pause\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"Pause\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Pause Encoding\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"queue_list_pause\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"queue_pause_menu\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"_Resume Encoding\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"_Pause Encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_queue_buttons_grey(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %21 = load i64, i64* @GHB_QUEUE_PENDING, align 8
  store i64 %21, i64* %18, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @GHB_WIDGET(i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %26 = call i32* @GTK_LIST_BOX(i32* %25)
  store i32* %26, i32** %15, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = call i32* @gtk_list_box_get_selected_row(i32* %27)
  store i32* %28, i32** %16, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %1
  %32 = load i32*, i32** %16, align 8
  %33 = call i64 @gtk_list_box_row_get_index(i32* %32)
  store i64 %33, i64* %17, align 8
  %34 = load i64, i64* %17, align 8
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load i64, i64* %17, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @ghb_array_len(i32 %40)
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %17, align 8
  %48 = call i32* @ghb_array_get(i32 %46, i64 %47)
  store i32* %48, i32** %19, align 8
  %49 = load i32*, i32** %19, align 8
  %50 = call i32* @ghb_dict_get(i32* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %50, i32** %20, align 8
  %51 = load i32*, i32** %20, align 8
  %52 = call i64 @ghb_dict_get_int(i32* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i64 %52, i64* %18, align 8
  br label %53

53:                                               ; preds = %43, %36, %31
  br label %54

54:                                               ; preds = %53, %1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @ghb_array_len(i32 %57)
  store i64 %58, i64* %5, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @ghb_dict_get_int(i32* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32* @ghb_lookup_title(i64 %63, i64* %7)
  store i32* %64, i32** %8, align 8
  %65 = call i64 (...) @ghb_get_queue_state()
  store i64 %65, i64* %9, align 8
  %66 = call i64 (...) @ghb_get_scan_state()
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* @GHB_STATE_WORKING, align 8
  %69 = load i64, i64* @GHB_STATE_SEARCHING, align 8
  %70 = or i64 %68, %69
  %71 = load i64, i64* @GHB_STATE_SCANNING, align 8
  %72 = or i64 %70, %71
  %73 = load i64, i64* @GHB_STATE_MUXING, align 8
  %74 = or i64 %72, %73
  %75 = load i64, i64* @GHB_STATE_PAUSED, align 8
  %76 = or i64 %74, %75
  %77 = and i64 %67, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %12, align 4
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @GHB_STATE_SCANNING, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %54
  %84 = load i32*, i32** %8, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %5, align 8
  %88 = icmp sgt i64 %87, 0
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i1 [ true, %83 ], [ %88, %86 ]
  br label %91

91:                                               ; preds = %89, %54
  %92 = phi i1 [ false, %54 ], [ %90, %89 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %11, align 4
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @GHB_STATE_SCANNING, align 8
  %96 = and i64 %94, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %91
  %99 = load i32*, i32** %8, align 8
  %100 = icmp ne i32* %99, null
  br label %101

101:                                              ; preds = %98, %91
  %102 = phi i1 [ false, %91 ], [ %100, %98 ]
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %13, align 4
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* @GHB_STATE_PAUSED, align 8
  %106 = and i64 %104, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %14, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @G_ACTION_MAP(i32 %110)
  %112 = call i32 @g_action_map_lookup_action(i32 %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %113 = call i32* @G_SIMPLE_ACTION(i32 %112)
  store i32* %113, i32** %4, align 8
  %114 = load i32*, i32** %4, align 8
  %115 = load i64, i64* %5, align 8
  %116 = icmp ne i64 %115, 0
  %117 = xor i1 %116, true
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i32 @g_simple_action_set_enabled(i32* %114, i32 %119)
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @G_ACTION_MAP(i32 %123)
  %125 = call i32 @g_action_map_lookup_action(i32 %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %126 = call i32* @G_SIMPLE_ACTION(i32 %125)
  store i32* %126, i32** %4, align 8
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @g_simple_action_set_enabled(i32* %127, i32 %128)
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @G_ACTION_MAP(i32 %132)
  %134 = call i32 @g_action_map_lookup_action(i32 %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %135 = call i32* @G_SIMPLE_ACTION(i32 %134)
  store i32* %135, i32** %4, align 8
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @g_simple_action_set_enabled(i32* %136, i32 %137)
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @G_ACTION_MAP(i32 %141)
  %143 = call i32 @g_action_map_lookup_action(i32 %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %144 = call i32* @G_SIMPLE_ACTION(i32 %143)
  store i32* %144, i32** %4, align 8
  %145 = load i32*, i32** %4, align 8
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %101
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br label %151

151:                                              ; preds = %148, %101
  %152 = phi i1 [ true, %101 ], [ %150, %148 ]
  %153 = zext i1 %152 to i32
  %154 = call i32 @g_simple_action_set_enabled(i32* %145, i32 %153)
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @G_ACTION_MAP(i32 %157)
  %159 = call i32 @g_action_map_lookup_action(i32 %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %160 = call i32* @G_SIMPLE_ACTION(i32 %159)
  store i32* %160, i32** %4, align 8
  %161 = load i32*, i32** %4, align 8
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @g_simple_action_set_enabled(i32* %161, i32 %162)
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @G_ACTION_MAP(i32 %166)
  %168 = call i32 @g_action_map_lookup_action(i32 %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %169 = call i32* @G_SIMPLE_ACTION(i32 %168)
  store i32* %169, i32** %4, align 8
  %170 = load i32*, i32** %4, align 8
  %171 = load i32*, i32** %16, align 8
  %172 = icmp ne i32* %171, null
  %173 = zext i1 %172 to i32
  %174 = call i32 @g_simple_action_set_enabled(i32* %170, i32 %173)
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @G_ACTION_MAP(i32 %177)
  %179 = call i32 @g_action_map_lookup_action(i32 %178, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %180 = call i32* @G_SIMPLE_ACTION(i32 %179)
  store i32* %180, i32** %4, align 8
  %181 = load i32*, i32** %4, align 8
  %182 = load i32*, i32** %16, align 8
  %183 = icmp ne i32* %182, null
  %184 = zext i1 %183 to i32
  %185 = call i32 @g_simple_action_set_enabled(i32* %181, i32 %184)
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @G_ACTION_MAP(i32 %188)
  %190 = call i32 @g_action_map_lookup_action(i32 %189, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %191 = call i32* @G_SIMPLE_ACTION(i32 %190)
  store i32* %191, i32** %4, align 8
  %192 = load i32*, i32** %4, align 8
  %193 = load i32*, i32** %16, align 8
  %194 = icmp ne i32* %193, null
  %195 = zext i1 %194 to i32
  %196 = call i32 @g_simple_action_set_enabled(i32* %192, i32 %195)
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @G_ACTION_MAP(i32 %199)
  %201 = call i32 @g_action_map_lookup_action(i32 %200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %202 = call i32* @G_SIMPLE_ACTION(i32 %201)
  store i32* %202, i32** %4, align 8
  %203 = load i32*, i32** %4, align 8
  %204 = load i32*, i32** %16, align 8
  %205 = icmp ne i32* %204, null
  %206 = zext i1 %205 to i32
  %207 = call i32 @g_simple_action_set_enabled(i32* %203, i32 %206)
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @G_ACTION_MAP(i32 %210)
  %212 = call i32 @g_action_map_lookup_action(i32 %211, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %213 = call i32* @G_SIMPLE_ACTION(i32 %212)
  store i32* %213, i32** %4, align 8
  %214 = load i32*, i32** %4, align 8
  %215 = load i64, i64* %18, align 8
  %216 = load i64, i64* @GHB_QUEUE_PENDING, align 8
  %217 = icmp ne i64 %215, %216
  %218 = zext i1 %217 to i32
  %219 = call i32 @g_simple_action_set_enabled(i32* %214, i32 %218)
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @G_ACTION_MAP(i32 %222)
  %224 = call i32 @g_action_map_lookup_action(i32 %223, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %225 = call i32* @G_SIMPLE_ACTION(i32 %224)
  store i32* %225, i32** %4, align 8
  %226 = load i32*, i32** %4, align 8
  %227 = load i64, i64* %18, align 8
  %228 = load i64, i64* @GHB_QUEUE_PENDING, align 8
  %229 = icmp ne i64 %227, %228
  %230 = zext i1 %229 to i32
  %231 = call i32 @g_simple_action_set_enabled(i32* %226, i32 %230)
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32* @GHB_WIDGET(i32 %234, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  store i32* %235, i32** %3, align 8
  %236 = load i32, i32* %12, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %151
  %239 = load i32*, i32** %3, align 8
  %240 = call i32 @GTK_TOOL_BUTTON(i32* %239)
  %241 = call i32 @gtk_tool_button_set_icon_name(i32 %240, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %242 = load i32*, i32** %3, align 8
  %243 = call i32 @GTK_TOOL_BUTTON(i32* %242)
  %244 = call i32 @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %245 = call i32 @gtk_tool_button_set_label(i32 %243, i32 %244)
  %246 = load i32*, i32** %3, align 8
  %247 = call i32 @GTK_TOOL_ITEM(i32* %246)
  %248 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %249 = call i32 @gtk_tool_item_set_tooltip_text(i32 %247, i32 %248)
  br label %262

250:                                              ; preds = %151
  %251 = load i32*, i32** %3, align 8
  %252 = call i32 @GTK_TOOL_BUTTON(i32* %251)
  %253 = call i32 @gtk_tool_button_set_icon_name(i32 %252, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %254 = load i32*, i32** %3, align 8
  %255 = call i32 @GTK_TOOL_BUTTON(i32* %254)
  %256 = call i32 @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %257 = call i32 @gtk_tool_button_set_label(i32 %255, i32 %256)
  %258 = load i32*, i32** %3, align 8
  %259 = call i32 @GTK_TOOL_ITEM(i32* %258)
  %260 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %261 = call i32 @gtk_tool_item_set_tooltip_text(i32 %259, i32 %260)
  br label %262

262:                                              ; preds = %250, %238
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call i32* @GHB_WIDGET(i32 %265, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  store i32* %266, i32** %3, align 8
  %267 = load i32, i32* %12, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %281

269:                                              ; preds = %262
  %270 = load i32*, i32** %3, align 8
  %271 = call i32 @GTK_TOOL_BUTTON(i32* %270)
  %272 = call i32 @gtk_tool_button_set_icon_name(i32 %271, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %273 = load i32*, i32** %3, align 8
  %274 = call i32 @GTK_TOOL_BUTTON(i32* %273)
  %275 = call i32 @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %276 = call i32 @gtk_tool_button_set_label(i32 %274, i32 %275)
  %277 = load i32*, i32** %3, align 8
  %278 = call i32 @GTK_TOOL_ITEM(i32* %277)
  %279 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %280 = call i32 @gtk_tool_item_set_tooltip_text(i32 %278, i32 %279)
  br label %293

281:                                              ; preds = %262
  %282 = load i32*, i32** %3, align 8
  %283 = call i32 @GTK_TOOL_BUTTON(i32* %282)
  %284 = call i32 @gtk_tool_button_set_icon_name(i32 %283, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %285 = load i32*, i32** %3, align 8
  %286 = call i32 @GTK_TOOL_BUTTON(i32* %285)
  %287 = call i32 @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %288 = call i32 @gtk_tool_button_set_label(i32 %286, i32 %287)
  %289 = load i32*, i32** %3, align 8
  %290 = call i32 @GTK_TOOL_ITEM(i32* %289)
  %291 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %292 = call i32 @gtk_tool_item_set_tooltip_text(i32 %290, i32 %291)
  br label %293

293:                                              ; preds = %281, %269
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = call i32* @GHB_WIDGET(i32 %296, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0))
  store i32* %297, i32** %3, align 8
  %298 = load i32, i32* %12, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %293
  %301 = load i32*, i32** %3, align 8
  %302 = call i32 @GTK_MENU_ITEM(i32* %301)
  %303 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  %304 = call i32 @gtk_menu_item_set_label(i32 %302, i32 %303)
  %305 = load i32*, i32** %3, align 8
  %306 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %307 = call i32 @gtk_widget_set_tooltip_text(i32* %305, i32 %306)
  br label %316

308:                                              ; preds = %293
  %309 = load i32*, i32** %3, align 8
  %310 = call i32 @GTK_MENU_ITEM(i32* %309)
  %311 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0))
  %312 = call i32 @gtk_menu_item_set_label(i32 %310, i32 %311)
  %313 = load i32*, i32** %3, align 8
  %314 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %315 = call i32 @gtk_widget_set_tooltip_text(i32* %313, i32 %314)
  br label %316

316:                                              ; preds = %308, %300
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call i32* @GHB_WIDGET(i32 %319, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
  store i32* %320, i32** %3, align 8
  %321 = load i32, i32* %14, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %335

323:                                              ; preds = %316
  %324 = load i32*, i32** %3, align 8
  %325 = call i32 @GTK_TOOL_BUTTON(i32* %324)
  %326 = call i32 @gtk_tool_button_set_icon_name(i32 %325, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %327 = load i32*, i32** %3, align 8
  %328 = call i32 @GTK_TOOL_BUTTON(i32* %327)
  %329 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  %330 = call i32 @gtk_tool_button_set_label(i32 %328, i32 %329)
  %331 = load i32*, i32** %3, align 8
  %332 = call i32 @GTK_TOOL_ITEM(i32* %331)
  %333 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0))
  %334 = call i32 @gtk_tool_item_set_tooltip_text(i32 %332, i32 %333)
  br label %347

335:                                              ; preds = %316
  %336 = load i32*, i32** %3, align 8
  %337 = call i32 @GTK_TOOL_BUTTON(i32* %336)
  %338 = call i32 @gtk_tool_button_set_icon_name(i32 %337, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  %339 = load i32*, i32** %3, align 8
  %340 = call i32 @GTK_TOOL_BUTTON(i32* %339)
  %341 = call i32 @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  %342 = call i32 @gtk_tool_button_set_label(i32 %340, i32 %341)
  %343 = load i32*, i32** %3, align 8
  %344 = call i32 @GTK_TOOL_ITEM(i32* %343)
  %345 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0))
  %346 = call i32 @gtk_tool_item_set_tooltip_text(i32 %344, i32 %345)
  br label %347

347:                                              ; preds = %335, %323
  %348 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = call i32* @GHB_WIDGET(i32 %350, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0))
  store i32* %351, i32** %3, align 8
  %352 = load i32, i32* %14, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %366

354:                                              ; preds = %347
  %355 = load i32*, i32** %3, align 8
  %356 = call i32 @GTK_TOOL_BUTTON(i32* %355)
  %357 = call i32 @gtk_tool_button_set_icon_name(i32 %356, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %358 = load i32*, i32** %3, align 8
  %359 = call i32 @GTK_TOOL_BUTTON(i32* %358)
  %360 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  %361 = call i32 @gtk_tool_button_set_label(i32 %359, i32 %360)
  %362 = load i32*, i32** %3, align 8
  %363 = call i32 @GTK_TOOL_ITEM(i32* %362)
  %364 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0))
  %365 = call i32 @gtk_tool_item_set_tooltip_text(i32 %363, i32 %364)
  br label %378

366:                                              ; preds = %347
  %367 = load i32*, i32** %3, align 8
  %368 = call i32 @GTK_TOOL_BUTTON(i32* %367)
  %369 = call i32 @gtk_tool_button_set_icon_name(i32 %368, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  %370 = load i32*, i32** %3, align 8
  %371 = call i32 @GTK_TOOL_BUTTON(i32* %370)
  %372 = call i32 @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  %373 = call i32 @gtk_tool_button_set_label(i32 %371, i32 %372)
  %374 = load i32*, i32** %3, align 8
  %375 = call i32 @GTK_TOOL_ITEM(i32* %374)
  %376 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0))
  %377 = call i32 @gtk_tool_item_set_tooltip_text(i32 %375, i32 %376)
  br label %378

378:                                              ; preds = %366, %354
  %379 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %380 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = call i32* @GHB_WIDGET(i32 %381, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0))
  store i32* %382, i32** %3, align 8
  %383 = load i32, i32* %14, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %393

385:                                              ; preds = %378
  %386 = load i32*, i32** %3, align 8
  %387 = call i32 @GTK_MENU_ITEM(i32* %386)
  %388 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0))
  %389 = call i32 @gtk_menu_item_set_label(i32 %387, i32 %388)
  %390 = load i32*, i32** %3, align 8
  %391 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0))
  %392 = call i32 @gtk_widget_set_tooltip_text(i32* %390, i32 %391)
  br label %401

393:                                              ; preds = %378
  %394 = load i32*, i32** %3, align 8
  %395 = call i32 @GTK_MENU_ITEM(i32* %394)
  %396 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0))
  %397 = call i32 @gtk_menu_item_set_label(i32 %395, i32 %396)
  %398 = load i32*, i32** %3, align 8
  %399 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0))
  %400 = call i32 @gtk_widget_set_tooltip_text(i32* %398, i32 %399)
  br label %401

401:                                              ; preds = %393, %385
  ret void
}

declare dso_local i32* @GTK_LIST_BOX(i32*) #1

declare dso_local i32* @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_list_box_get_selected_row(i32*) #1

declare dso_local i64 @gtk_list_box_row_get_index(i32*) #1

declare dso_local i64 @ghb_array_len(i32) #1

declare dso_local i32* @ghb_array_get(i32, i64) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i64 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32* @ghb_lookup_title(i64, i64*) #1

declare dso_local i64 @ghb_get_queue_state(...) #1

declare dso_local i64 @ghb_get_scan_state(...) #1

declare dso_local i32* @G_SIMPLE_ACTION(i32) #1

declare dso_local i32 @g_action_map_lookup_action(i32, i8*) #1

declare dso_local i32 @G_ACTION_MAP(i32) #1

declare dso_local i32 @g_simple_action_set_enabled(i32*, i32) #1

declare dso_local i32 @gtk_tool_button_set_icon_name(i32, i8*) #1

declare dso_local i32 @GTK_TOOL_BUTTON(i32*) #1

declare dso_local i32 @gtk_tool_button_set_label(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @gtk_tool_item_set_tooltip_text(i32, i32) #1

declare dso_local i32 @GTK_TOOL_ITEM(i32*) #1

declare dso_local i32 @gtk_menu_item_set_label(i32, i32) #1

declare dso_local i32 @GTK_MENU_ITEM(i32*) #1

declare dso_local i32 @gtk_widget_set_tooltip_text(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
