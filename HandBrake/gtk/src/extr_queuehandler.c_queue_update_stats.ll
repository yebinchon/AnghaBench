; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_queue_update_stats.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_queue_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.tm = type { i32 }
%struct.stat = type { double }

@.str = private unnamed_addr constant [11 x i8] c"uiSettings\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"queue_stats_pass_label\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"queue_stats_pass\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"job_status\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"queue_stats_start_time\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"queue_stats_finish_time\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"queue_stats_paused\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"queue_stats_encode\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"queue_stats_file_size\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"queue_stats_result\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Pending\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Completed\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Canceled\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"job_start_time\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"job_finish_time\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"job_pause_time_ms\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"%d Day %02d:%02d:%02d\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"%d Days %02d:%02d:%02d\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"destination\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"KB\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"GB\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"%.2f %s\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"Not Available\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @queue_update_stats(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tm*, align 8
  %10 = alloca [40 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.stat, align 8
  %22 = alloca i8*, align 8
  %23 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32* @ghb_dict_get(i32* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %300

29:                                               ; preds = %2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @GHB_WIDGET(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32* @GTK_LABEL(i32 %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @GTK_WIDGET(i32* %35)
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i32 @gtk_widget_set_visible(i32 %36, i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @GHB_WIDGET(i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32* @GTK_LABEL(i32 %42)
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @GTK_WIDGET(i32* %44)
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @gtk_widget_set_visible(i32 %45, i32 %46)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @ghb_dict_get_int(i32* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 129
  br i1 %51, label %52, label %95

52:                                               ; preds = %29
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @GHB_WIDGET(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %57 = call i32* @GTK_LABEL(i32 %56)
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @gtk_label_set_text(i32* %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @GHB_WIDGET(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %64 = call i32* @GTK_LABEL(i32 %63)
  store i32* %64, i32** %6, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @gtk_label_set_text(i32* %65, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @GHB_WIDGET(i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %71 = call i32* @GTK_LABEL(i32 %70)
  store i32* %71, i32** %6, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @gtk_label_set_text(i32* %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @GHB_WIDGET(i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %78 = call i32* @GTK_LABEL(i32 %77)
  store i32* %78, i32** %6, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @gtk_label_set_text(i32* %79, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @GHB_WIDGET(i32 %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %85 = call i32* @GTK_LABEL(i32 %84)
  store i32* %85, i32** %6, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @gtk_label_set_text(i32* %86, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @GHB_WIDGET(i32 %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %92 = call i32* @GTK_LABEL(i32 %91)
  store i32* %92, i32** %6, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @gtk_label_set_text(i32* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %300

95:                                               ; preds = %29
  %96 = load i32, i32* %8, align 4
  switch i32 %96, label %105 [
    i32 128, label %97
    i32 131, label %98
    i32 132, label %100
    i32 130, label %102
    i32 129, label %104
  ]

97:                                               ; preds = %95
  br label %300

98:                                               ; preds = %95
  %99 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  store i8* %99, i8** %7, align 8
  br label %107

100:                                              ; preds = %95
  %101 = call i8* @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  store i8* %101, i8** %7, align 8
  br label %107

102:                                              ; preds = %95
  %103 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  store i8* %103, i8** %7, align 8
  br label %107

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %95, %104
  %106 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  store i8* %106, i8** %7, align 8
  br label %107

107:                                              ; preds = %105, %102, %100, %98
  %108 = bitcast [40 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %108, i8 0, i64 40, i1 false)
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @ghb_dict_get_int(i32* %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  store i32 %110, i32* %12, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @ghb_dict_get_int(i32* %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  store i32 %112, i32* %13, align 4
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @ghb_dict_get_int(i32* %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %115 = sdiv i32 %114, 1000
  store i32 %115, i32* %14, align 4
  %116 = call %struct.tm* @localtime(i32* %12)
  store %struct.tm* %116, %struct.tm** %9, align 8
  %117 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %118 = load %struct.tm*, %struct.tm** %9, align 8
  %119 = call i32 @strftime(i8* %117, i32 40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), %struct.tm* %118)
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @GHB_WIDGET(i32 %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %124 = call i32* @GTK_LABEL(i32 %123)
  store i32* %124, i32** %6, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %127 = call i32 @gtk_label_set_text(i32* %125, i8* %126)
  %128 = call %struct.tm* @localtime(i32* %13)
  store %struct.tm* %128, %struct.tm** %9, align 8
  %129 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %130 = load %struct.tm*, %struct.tm** %9, align 8
  %131 = call i32 @strftime(i8* %129, i32 40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), %struct.tm* %130)
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @GHB_WIDGET(i32 %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %136 = call i32* @GTK_LABEL(i32 %135)
  store i32* %136, i32** %6, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %139 = call i32 @gtk_label_set_text(i32* %137, i8* %138)
  store i32 0, i32* %16, align 4
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @ghb_break_duration(i32 %140, i32* %17, i32* %18, i32* %19)
  %142 = load i32, i32* %17, align 4
  %143 = icmp sge i32 %142, 24
  br i1 %143, label %144, label %151

144:                                              ; preds = %107
  %145 = load i32, i32* %17, align 4
  %146 = sdiv i32 %145, 24
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* %16, align 4
  %149 = mul nsw i32 %148, 24
  %150 = sub nsw i32 %147, %149
  store i32 %150, i32* %17, align 4
  br label %151

151:                                              ; preds = %144, %107
  %152 = load i32, i32* %16, align 4
  switch i32 %152, label %167 [
    i32 0, label %153
    i32 1, label %159
  ]

153:                                              ; preds = %151
  %154 = load i32, i32* %17, align 4
  %155 = sitofp i32 %154 to double
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %19, align 4
  %158 = call i8* (i8*, double, ...) @g_strdup_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), double %155, i32 %156, i32 %157)
  store i8* %158, i8** %11, align 8
  br label %175

159:                                              ; preds = %151
  %160 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %161 = load i32, i32* %16, align 4
  %162 = sitofp i32 %161 to double
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %19, align 4
  %166 = call i8* (i8*, double, ...) @g_strdup_printf(i8* %160, double %162, i32 %163, i32 %164, i32 %165)
  store i8* %166, i8** %11, align 8
  br label %175

167:                                              ; preds = %151
  %168 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  %169 = load i32, i32* %16, align 4
  %170 = sitofp i32 %169 to double
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* %18, align 4
  %173 = load i32, i32* %19, align 4
  %174 = call i8* (i8*, double, ...) @g_strdup_printf(i8* %168, double %170, i32 %171, i32 %172, i32 %173)
  store i8* %174, i8** %11, align 8
  br label %175

175:                                              ; preds = %167, %159, %153
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @GHB_WIDGET(i32 %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %180 = call i32* @GTK_LABEL(i32 %179)
  store i32* %180, i32** %6, align 8
  %181 = load i32*, i32** %6, align 8
  %182 = load i8*, i8** %11, align 8
  %183 = call i32 @gtk_label_set_text(i32* %181, i8* %182)
  %184 = load i8*, i8** %11, align 8
  %185 = call i32 @g_free(i8* %184)
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %12, align 4
  %188 = sub nsw i32 %186, %187
  store i32 %188, i32* %15, align 4
  %189 = load i32, i32* %15, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %175
  store i32 0, i32* %15, align 4
  br label %192

192:                                              ; preds = %191, %175
  store i32 0, i32* %16, align 4
  %193 = load i32, i32* %15, align 4
  %194 = call i32 @ghb_break_duration(i32 %193, i32* %17, i32* %18, i32* %19)
  %195 = load i32, i32* %17, align 4
  %196 = icmp sge i32 %195, 24
  br i1 %196, label %197, label %204

197:                                              ; preds = %192
  %198 = load i32, i32* %17, align 4
  %199 = sdiv i32 %198, 24
  store i32 %199, i32* %16, align 4
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* %16, align 4
  %202 = mul nsw i32 %201, 24
  %203 = sub nsw i32 %200, %202
  store i32 %203, i32* %17, align 4
  br label %204

204:                                              ; preds = %197, %192
  %205 = load i32, i32* %16, align 4
  switch i32 %205, label %220 [
    i32 0, label %206
    i32 1, label %212
  ]

206:                                              ; preds = %204
  %207 = load i32, i32* %17, align 4
  %208 = sitofp i32 %207 to double
  %209 = load i32, i32* %18, align 4
  %210 = load i32, i32* %19, align 4
  %211 = call i8* (i8*, double, ...) @g_strdup_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), double %208, i32 %209, i32 %210)
  store i8* %211, i8** %11, align 8
  br label %228

212:                                              ; preds = %204
  %213 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %214 = load i32, i32* %16, align 4
  %215 = sitofp i32 %214 to double
  %216 = load i32, i32* %17, align 4
  %217 = load i32, i32* %18, align 4
  %218 = load i32, i32* %19, align 4
  %219 = call i8* (i8*, double, ...) @g_strdup_printf(i8* %213, double %215, i32 %216, i32 %217, i32 %218)
  store i8* %219, i8** %11, align 8
  br label %228

220:                                              ; preds = %204
  %221 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  %222 = load i32, i32* %16, align 4
  %223 = sitofp i32 %222 to double
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* %18, align 4
  %226 = load i32, i32* %19, align 4
  %227 = call i8* (i8*, double, ...) @g_strdup_printf(i8* %221, double %223, i32 %224, i32 %225, i32 %226)
  store i8* %227, i8** %11, align 8
  br label %228

228:                                              ; preds = %220, %212, %206
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @GHB_WIDGET(i32 %231, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %233 = call i32* @GTK_LABEL(i32 %232)
  store i32* %233, i32** %6, align 8
  %234 = load i32*, i32** %6, align 8
  %235 = load i8*, i8** %11, align 8
  %236 = call i32 @gtk_label_set_text(i32* %234, i8* %235)
  %237 = load i8*, i8** %11, align 8
  %238 = call i32 @g_free(i8* %237)
  %239 = load i32*, i32** %5, align 8
  %240 = call i8* @ghb_dict_get_string(i32* %239, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  store i8* %240, i8** %20, align 8
  %241 = load i8*, i8** %20, align 8
  %242 = call i64 @g_stat(i8* %241, %struct.stat* %21)
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %282

244:                                              ; preds = %228
  %245 = call i8* @_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  store i8* %245, i8** %22, align 8
  %246 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %247 = load double, double* %246, align 8
  store double %247, double* %23, align 8
  %248 = load double, double* %23, align 8
  %249 = fcmp ogt double %248, 1.024000e+03
  br i1 %249, label %250, label %254

250:                                              ; preds = %244
  %251 = call i8* @_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  store i8* %251, i8** %22, align 8
  %252 = load double, double* %23, align 8
  %253 = fdiv double %252, 1.024000e+03
  store double %253, double* %23, align 8
  br label %254

254:                                              ; preds = %250, %244
  %255 = load double, double* %23, align 8
  %256 = fcmp ogt double %255, 1.024000e+03
  br i1 %256, label %257, label %261

257:                                              ; preds = %254
  %258 = call i8* @_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  store i8* %258, i8** %22, align 8
  %259 = load double, double* %23, align 8
  %260 = fdiv double %259, 1.024000e+03
  store double %260, double* %23, align 8
  br label %261

261:                                              ; preds = %257, %254
  %262 = load double, double* %23, align 8
  %263 = fcmp ogt double %262, 1.024000e+03
  br i1 %263, label %264, label %268

264:                                              ; preds = %261
  %265 = call i8* @_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  store i8* %265, i8** %22, align 8
  %266 = load double, double* %23, align 8
  %267 = fdiv double %266, 1.024000e+03
  store double %267, double* %23, align 8
  br label %268

268:                                              ; preds = %264, %261
  %269 = load double, double* %23, align 8
  %270 = load i8*, i8** %22, align 8
  %271 = call i8* (i8*, double, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), double %269, i8* %270)
  store i8* %271, i8** %11, align 8
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @GHB_WIDGET(i32 %274, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %276 = call i32* @GTK_LABEL(i32 %275)
  store i32* %276, i32** %6, align 8
  %277 = load i32*, i32** %6, align 8
  %278 = load i8*, i8** %11, align 8
  %279 = call i32 @gtk_label_set_text(i32* %277, i8* %278)
  %280 = load i8*, i8** %11, align 8
  %281 = call i32 @g_free(i8* %280)
  br label %291

282:                                              ; preds = %228
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @GHB_WIDGET(i32 %285, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %287 = call i32* @GTK_LABEL(i32 %286)
  store i32* %287, i32** %6, align 8
  %288 = load i32*, i32** %6, align 8
  %289 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  %290 = call i32 @gtk_label_set_text(i32* %288, i8* %289)
  br label %291

291:                                              ; preds = %282, %268
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @GHB_WIDGET(i32 %294, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %296 = call i32* @GTK_LABEL(i32 %295)
  store i32* %296, i32** %6, align 8
  %297 = load i32*, i32** %6, align 8
  %298 = load i8*, i8** %7, align 8
  %299 = call i32 @gtk_label_set_text(i32* %297, i8* %298)
  br label %300

300:                                              ; preds = %291, %97, %52, %28
  ret void
}

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i32* @GTK_LABEL(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32 @gtk_widget_set_visible(i32, i32) #1

declare dso_local i32 @GTK_WIDGET(i32*) #1

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32 @gtk_label_set_text(i32*, i8*) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

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
