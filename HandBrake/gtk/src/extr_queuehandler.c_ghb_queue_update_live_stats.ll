; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_queue_update_live_stats.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_ghb_queue_update_live_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i8* }
%struct.tm = type { i32 }
%struct.stat = type { double }

@.str = private unnamed_addr constant [11 x i8] c"queue_list\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"uiSettings\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"job_start_time\00", align 1
@GHB_STATE_WORKING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"queue_stats_pass_label\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"queue_stats_pass\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Foreign Audio Search\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Encode\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Encode First Pass (Analysis)\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Encode Second Pass (Final)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"pass %d of %d\0A%s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@GHB_STATE_SCANNING = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"Scanning Title\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Encoding Paused\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Encoding In Progress\00", align 1
@GHB_STATE_WORKDONE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"Completed\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Canceled\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"queue_stats_start_time\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"queue_stats_finish_time\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"%d Day %02d:%02d:%02d\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"%d Days %02d:%02d:%02d\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"queue_stats_paused\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"queue_stats_encode\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"destination\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"KB\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"GB\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"%.2f %s\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"queue_stats_file_size\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Not Available\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"queue_stats_result\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_queue_update_live_stats(%struct.TYPE_9__* %0, i32 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.tm*, align 8
  %15 = alloca [40 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca %struct.stat, align 8
  %29 = alloca i8*, align 8
  %30 = alloca double, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ghb_array_len(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %3
  br label %421

42:                                               ; preds = %37
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @GHB_WIDGET(i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %47 = call i32* @GTK_LIST_BOX(i32 %46)
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32* @gtk_list_box_get_selected_row(i32* %48)
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %5, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @gtk_list_box_row_get_index(i32* %54)
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %42
  br label %421

58:                                               ; preds = %52
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32* @ghb_array_get(i32 %61, i32 %62)
  store i32* %63, i32** %10, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %421

67:                                               ; preds = %58
  %68 = load i32*, i32** %10, align 8
  %69 = call i32* @ghb_dict_get(i32* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %421

73:                                               ; preds = %67
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  %74 = bitcast [40 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %74, i8 0, i64 40, i1 false)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @ghb_dict_get_int(i32* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 %76, i32* %19, align 4
  %77 = call i32 @time(i32* null)
  store i32 %77, i32* %20, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @GHB_STATE_WORKING, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %20, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %20, align 4
  br label %90

90:                                               ; preds = %84, %73
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sdiv i32 %93, 1000
  store i32 %94, i32* %21, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @GHB_STATE_WORKING, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %150

101:                                              ; preds = %90
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %150

106:                                              ; preds = %101
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @GHB_WIDGET(i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %111 = call i32* @GTK_LABEL(i32 %110)
  store i32* %111, i32** %13, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = call i32 @GTK_WIDGET(i32* %112)
  %114 = load i32, i32* @TRUE, align 4
  %115 = call i32 @gtk_widget_set_visible(i32 %113, i32 %114)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @GHB_WIDGET(i32 %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %120 = call i32* @GTK_LABEL(i32 %119)
  store i32* %120, i32** %13, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = call i32 @GTK_WIDGET(i32* %121)
  %123 = load i32, i32* @TRUE, align 4
  %124 = call i32 @gtk_widget_set_visible(i32 %122, i32 %123)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %136 [
    i32 128, label %128
    i32 131, label %130
    i32 130, label %132
    i32 129, label %134
  ]

128:                                              ; preds = %106
  %129 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i8* %129, i8** %17, align 8
  br label %138

130:                                              ; preds = %106
  %131 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i8* %131, i8** %17, align 8
  br label %138

132:                                              ; preds = %106
  %133 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  store i8* %133, i8** %17, align 8
  br label %138

134:                                              ; preds = %106
  %135 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  store i8* %135, i8** %17, align 8
  br label %138

136:                                              ; preds = %106
  %137 = call i8* @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  store i8* %137, i8** %17, align 8
  br label %138

138:                                              ; preds = %136, %134, %132, %130, %128
  %139 = call %struct.TYPE_11__* @g_string_new(i32* null)
  store %struct.TYPE_11__* %139, %struct.TYPE_11__** %12, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %141 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i8*, i8** %17, align 8
  %149 = call i32 @g_string_append_printf(%struct.TYPE_11__* %140, i8* %141, i32 %144, i32 %147, i8* %148)
  br label %169

150:                                              ; preds = %101, %90
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @GHB_WIDGET(i32 %153, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %155 = call i32* @GTK_LABEL(i32 %154)
  store i32* %155, i32** %13, align 8
  %156 = load i32*, i32** %13, align 8
  %157 = call i32 @GTK_WIDGET(i32* %156)
  %158 = load i32, i32* @FALSE, align 4
  %159 = call i32 @gtk_widget_set_visible(i32 %157, i32 %158)
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @GHB_WIDGET(i32 %162, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %164 = call i32* @GTK_LABEL(i32 %163)
  store i32* %164, i32** %13, align 8
  %165 = load i32*, i32** %13, align 8
  %166 = call i32 @GTK_WIDGET(i32* %165)
  %167 = load i32, i32* @FALSE, align 4
  %168 = call i32 @gtk_widget_set_visible(i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %150, %138
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @GHB_STATE_SCANNING, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  store i8* %177, i8** %18, align 8
  br label %219

178:                                              ; preds = %169
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @GHB_STATE_SCANNING, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  store i8* %186, i8** %18, align 8
  br label %218

187:                                              ; preds = %178
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @GHB_STATE_WORKING, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %187
  %195 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  store i8* %195, i8** %18, align 8
  br label %217

196:                                              ; preds = %187
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @GHB_STATE_WORKDONE, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %216

203:                                              ; preds = %196
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  switch i32 %206, label %213 [
    i32 132, label %207
    i32 134, label %209
    i32 133, label %211
  ]

207:                                              ; preds = %203
  %208 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  store i8* %208, i8** %18, align 8
  br label %215

209:                                              ; preds = %203
  %210 = call i8* @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  store i8* %210, i8** %18, align 8
  br label %215

211:                                              ; preds = %203
  %212 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  store i8* %212, i8** %18, align 8
  br label %215

213:                                              ; preds = %203
  %214 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  store i8* %214, i8** %18, align 8
  br label %215

215:                                              ; preds = %213, %211, %209, %207
  br label %216

216:                                              ; preds = %215, %196
  br label %217

217:                                              ; preds = %216, %194
  br label %218

218:                                              ; preds = %217, %185
  br label %219

219:                                              ; preds = %218, %176
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %221 = icmp ne %struct.TYPE_11__* %220, null
  br i1 %221, label %222, label %236

222:                                              ; preds = %219
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @GHB_WIDGET(i32 %225, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %227 = call i32* @GTK_LABEL(i32 %226)
  store i32* %227, i32** %13, align 8
  %228 = load i32*, i32** %13, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @gtk_label_set_text(i32* %228, i8* %231)
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %234 = load i32, i32* @TRUE, align 4
  %235 = call i32 @g_string_free(%struct.TYPE_11__* %233, i32 %234)
  br label %236

236:                                              ; preds = %222, %219
  %237 = call %struct.tm* @localtime(i32* %19)
  store %struct.tm* %237, %struct.tm** %14, align 8
  %238 = getelementptr inbounds [40 x i8], [40 x i8]* %15, i64 0, i64 0
  %239 = load %struct.tm*, %struct.tm** %14, align 8
  %240 = call i32 @strftime(i8* %238, i32 40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), %struct.tm* %239)
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @GHB_WIDGET(i32 %243, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  %245 = call i32* @GTK_LABEL(i32 %244)
  store i32* %245, i32** %13, align 8
  %246 = load i32*, i32** %13, align 8
  %247 = getelementptr inbounds [40 x i8], [40 x i8]* %15, i64 0, i64 0
  %248 = call i32 @gtk_label_set_text(i32* %246, i8* %247)
  %249 = call %struct.tm* @localtime(i32* %20)
  store %struct.tm* %249, %struct.tm** %14, align 8
  %250 = getelementptr inbounds [40 x i8], [40 x i8]* %15, i64 0, i64 0
  %251 = load %struct.tm*, %struct.tm** %14, align 8
  %252 = call i32 @strftime(i8* %250, i32 40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), %struct.tm* %251)
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @GHB_WIDGET(i32 %255, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  %257 = call i32* @GTK_LABEL(i32 %256)
  store i32* %257, i32** %13, align 8
  %258 = load i32*, i32** %13, align 8
  %259 = getelementptr inbounds [40 x i8], [40 x i8]* %15, i64 0, i64 0
  %260 = call i32 @gtk_label_set_text(i32* %258, i8* %259)
  store i32 0, i32* %23, align 4
  %261 = load i32, i32* %21, align 4
  %262 = call i32 @ghb_break_duration(i32 %261, i32* %24, i32* %25, i32* %26)
  %263 = load i32, i32* %24, align 4
  %264 = icmp sge i32 %263, 24
  br i1 %264, label %265, label %272

265:                                              ; preds = %236
  %266 = load i32, i32* %24, align 4
  %267 = sdiv i32 %266, 24
  store i32 %267, i32* %23, align 4
  %268 = load i32, i32* %24, align 4
  %269 = load i32, i32* %23, align 4
  %270 = mul nsw i32 %269, 24
  %271 = sub nsw i32 %268, %270
  store i32 %271, i32* %24, align 4
  br label %272

272:                                              ; preds = %265, %236
  %273 = load i32, i32* %23, align 4
  switch i32 %273, label %288 [
    i32 0, label %274
    i32 1, label %280
  ]

274:                                              ; preds = %272
  %275 = load i32, i32* %24, align 4
  %276 = sitofp i32 %275 to double
  %277 = load i32, i32* %25, align 4
  %278 = load i32, i32* %26, align 4
  %279 = call i8* (i8*, double, ...) @g_strdup_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), double %276, i32 %277, i32 %278)
  store i8* %279, i8** %16, align 8
  br label %296

280:                                              ; preds = %272
  %281 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0))
  %282 = load i32, i32* %23, align 4
  %283 = sitofp i32 %282 to double
  %284 = load i32, i32* %24, align 4
  %285 = load i32, i32* %25, align 4
  %286 = load i32, i32* %26, align 4
  %287 = call i8* (i8*, double, ...) @g_strdup_printf(i8* %281, double %283, i32 %284, i32 %285, i32 %286)
  store i8* %287, i8** %16, align 8
  br label %296

288:                                              ; preds = %272
  %289 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0))
  %290 = load i32, i32* %23, align 4
  %291 = sitofp i32 %290 to double
  %292 = load i32, i32* %24, align 4
  %293 = load i32, i32* %25, align 4
  %294 = load i32, i32* %26, align 4
  %295 = call i8* (i8*, double, ...) @g_strdup_printf(i8* %289, double %291, i32 %292, i32 %293, i32 %294)
  store i8* %295, i8** %16, align 8
  br label %296

296:                                              ; preds = %288, %280, %274
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @GHB_WIDGET(i32 %299, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  %301 = call i32* @GTK_LABEL(i32 %300)
  store i32* %301, i32** %13, align 8
  %302 = load i32*, i32** %13, align 8
  %303 = load i8*, i8** %16, align 8
  %304 = call i32 @gtk_label_set_text(i32* %302, i8* %303)
  %305 = load i8*, i8** %16, align 8
  %306 = call i32 @g_free(i8* %305)
  %307 = load i32, i32* %20, align 4
  %308 = load i32, i32* %19, align 4
  %309 = sub nsw i32 %307, %308
  store i32 %309, i32* %22, align 4
  %310 = load i32, i32* %22, align 4
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %296
  store i32 0, i32* %22, align 4
  br label %313

313:                                              ; preds = %312, %296
  store i32 0, i32* %23, align 4
  %314 = load i32, i32* %22, align 4
  %315 = call i32 @ghb_break_duration(i32 %314, i32* %24, i32* %25, i32* %26)
  %316 = load i32, i32* %24, align 4
  %317 = icmp sge i32 %316, 24
  br i1 %317, label %318, label %325

318:                                              ; preds = %313
  %319 = load i32, i32* %24, align 4
  %320 = sdiv i32 %319, 24
  store i32 %320, i32* %23, align 4
  %321 = load i32, i32* %24, align 4
  %322 = load i32, i32* %23, align 4
  %323 = mul nsw i32 %322, 24
  %324 = sub nsw i32 %321, %323
  store i32 %324, i32* %24, align 4
  br label %325

325:                                              ; preds = %318, %313
  %326 = load i32, i32* %23, align 4
  switch i32 %326, label %341 [
    i32 0, label %327
    i32 1, label %333
  ]

327:                                              ; preds = %325
  %328 = load i32, i32* %24, align 4
  %329 = sitofp i32 %328 to double
  %330 = load i32, i32* %25, align 4
  %331 = load i32, i32* %26, align 4
  %332 = call i8* (i8*, double, ...) @g_strdup_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), double %329, i32 %330, i32 %331)
  store i8* %332, i8** %16, align 8
  br label %349

333:                                              ; preds = %325
  %334 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0))
  %335 = load i32, i32* %23, align 4
  %336 = sitofp i32 %335 to double
  %337 = load i32, i32* %24, align 4
  %338 = load i32, i32* %25, align 4
  %339 = load i32, i32* %26, align 4
  %340 = call i8* (i8*, double, ...) @g_strdup_printf(i8* %334, double %336, i32 %337, i32 %338, i32 %339)
  store i8* %340, i8** %16, align 8
  br label %349

341:                                              ; preds = %325
  %342 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0))
  %343 = load i32, i32* %23, align 4
  %344 = sitofp i32 %343 to double
  %345 = load i32, i32* %24, align 4
  %346 = load i32, i32* %25, align 4
  %347 = load i32, i32* %26, align 4
  %348 = call i8* (i8*, double, ...) @g_strdup_printf(i8* %342, double %344, i32 %345, i32 %346, i32 %347)
  store i8* %348, i8** %16, align 8
  br label %349

349:                                              ; preds = %341, %333, %327
  %350 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @GHB_WIDGET(i32 %352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  %354 = call i32* @GTK_LABEL(i32 %353)
  store i32* %354, i32** %13, align 8
  %355 = load i32*, i32** %13, align 8
  %356 = load i8*, i8** %16, align 8
  %357 = call i32 @gtk_label_set_text(i32* %355, i8* %356)
  %358 = load i8*, i8** %16, align 8
  %359 = call i32 @g_free(i8* %358)
  %360 = load i32*, i32** %11, align 8
  %361 = call i8* @ghb_dict_get_string(i32* %360, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  store i8* %361, i8** %27, align 8
  %362 = load i8*, i8** %27, align 8
  %363 = call i64 @g_stat(i8* %362, %struct.stat* %28)
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %365, label %403

365:                                              ; preds = %349
  %366 = call i8* @_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  store i8* %366, i8** %29, align 8
  %367 = getelementptr inbounds %struct.stat, %struct.stat* %28, i32 0, i32 0
  %368 = load double, double* %367, align 8
  store double %368, double* %30, align 8
  %369 = load double, double* %30, align 8
  %370 = fcmp ogt double %369, 1.024000e+03
  br i1 %370, label %371, label %375

371:                                              ; preds = %365
  %372 = call i8* @_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  store i8* %372, i8** %29, align 8
  %373 = load double, double* %30, align 8
  %374 = fdiv double %373, 1.024000e+03
  store double %374, double* %30, align 8
  br label %375

375:                                              ; preds = %371, %365
  %376 = load double, double* %30, align 8
  %377 = fcmp ogt double %376, 1.024000e+03
  br i1 %377, label %378, label %382

378:                                              ; preds = %375
  %379 = call i8* @_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0))
  store i8* %379, i8** %29, align 8
  %380 = load double, double* %30, align 8
  %381 = fdiv double %380, 1.024000e+03
  store double %381, double* %30, align 8
  br label %382

382:                                              ; preds = %378, %375
  %383 = load double, double* %30, align 8
  %384 = fcmp ogt double %383, 1.024000e+03
  br i1 %384, label %385, label %389

385:                                              ; preds = %382
  %386 = call i8* @_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  store i8* %386, i8** %29, align 8
  %387 = load double, double* %30, align 8
  %388 = fdiv double %387, 1.024000e+03
  store double %388, double* %30, align 8
  br label %389

389:                                              ; preds = %385, %382
  %390 = load double, double* %30, align 8
  %391 = load i8*, i8** %29, align 8
  %392 = call i8* (i8*, double, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), double %390, i8* %391)
  store i8* %392, i8** %16, align 8
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @GHB_WIDGET(i32 %395, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0))
  %397 = call i32* @GTK_LABEL(i32 %396)
  store i32* %397, i32** %13, align 8
  %398 = load i32*, i32** %13, align 8
  %399 = load i8*, i8** %16, align 8
  %400 = call i32 @gtk_label_set_text(i32* %398, i8* %399)
  %401 = load i8*, i8** %16, align 8
  %402 = call i32 @g_free(i8* %401)
  br label %412

403:                                              ; preds = %349
  %404 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @GHB_WIDGET(i32 %406, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0))
  %408 = call i32* @GTK_LABEL(i32 %407)
  store i32* %408, i32** %13, align 8
  %409 = load i32*, i32** %13, align 8
  %410 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0))
  %411 = call i32 @gtk_label_set_text(i32* %409, i8* %410)
  br label %412

412:                                              ; preds = %403, %389
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @GHB_WIDGET(i32 %415, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0))
  %417 = call i32* @GTK_LABEL(i32 %416)
  store i32* %417, i32** %13, align 8
  %418 = load i32*, i32** %13, align 8
  %419 = load i8*, i8** %18, align 8
  %420 = call i32 @gtk_label_set_text(i32* %418, i8* %419)
  br label %421

421:                                              ; preds = %412, %72, %66, %57, %41
  ret void
}

declare dso_local i32 @ghb_array_len(i32) #1

declare dso_local i32* @GTK_LIST_BOX(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gtk_list_box_get_selected_row(i32*) #1

declare dso_local i32 @gtk_list_box_row_get_index(i32*) #1

declare dso_local i32* @ghb_array_get(i32, i32) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32* @GTK_LABEL(i32) #1

declare dso_local i32 @gtk_widget_set_visible(i32, i32) #1

declare dso_local i32 @GTK_WIDGET(i32*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.TYPE_11__* @g_string_new(i32*) #1

declare dso_local i32 @g_string_append_printf(%struct.TYPE_11__*, i8*, i32, i32, i8*) #1

declare dso_local i32 @gtk_label_set_text(i32*, i8*) #1

declare dso_local i32 @g_string_free(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @ghb_break_duration(i32, i32*, i32*, i32*) #1

declare dso_local i8* @g_strdup_printf(i8*, double, ...) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local i64 @g_stat(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
