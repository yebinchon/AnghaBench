; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hbavfilter.c_hb_avfilter_graph_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hbavfilter.c_hb_avfilter_graph_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i8*, %struct.TYPE_28__*, i32, i32*, i32*, i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32 }

@HB_FILTER_AVFILTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"hb_avfilter_graph_init: no filter settings specified\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"hb_avfilter_graph_init: avfilter_graph_alloc failed\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"scale_sws_opts\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"lanczos+accurate_rnd\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"hb_avfilter_graph_init: avfilter_graph_parse2 failed (%s)\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"width=%d:height=%d:pix_fmt=%d:sar=%d/%d:time_base=%d/%d:frame_rate=%d/%d\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"hb_avfilter_graph_init: failed to create buffer source filter\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"buffersink\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"hb_avfilter_graph_init: failed to create buffer output filter\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"hb_avfilter_graph_init: failed to configure filter graph\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"hb_avfilter_graph_init: failed to allocate frame filter\00", align 1
@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_26__* @hb_avfilter_graph_init(i32* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %7, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %8, align 8
  %13 = call %struct.TYPE_26__* @calloc(i32 1, i32 56)
  store %struct.TYPE_26__* %13, %struct.TYPE_26__** %6, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %15 = icmp eq %struct.TYPE_26__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  br label %174

17:                                               ; preds = %2
  %18 = load i32, i32* @HB_FILTER_AVFILTER, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i8* @hb_filter_settings_string(i32 %18, i32* %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %170

25:                                               ; preds = %17
  %26 = load i8*, i8** %10, align 8
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = call i32* (...) @avfilter_graph_alloc()
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 4
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %170

38:                                               ; preds = %25
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @av_opt_set(i32* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @avfilter_graph_parse2(i32* %45, i8* %46, %struct.TYPE_27__** %7, %struct.TYPE_27__** %8)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %38
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %52 = icmp eq %struct.TYPE_27__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %55 = icmp eq %struct.TYPE_27__* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %50, %38
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  br label %170

59:                                               ; preds = %53
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @hb_strdup_printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i32 %63, i32 %67, i32 %70, i32 %75, i32 %80, i32 %84, i32 %88, i32 %92, i32 %96)
  store i8* %97, i8** %12, align 8
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = call %struct.TYPE_28__* @append_filter(%struct.TYPE_26__* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %99)
  store %struct.TYPE_28__* %100, %struct.TYPE_28__** %9, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %104 = icmp eq %struct.TYPE_28__* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %59
  %106 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0))
  br label %170

107:                                              ; preds = %59
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 6
  store %struct.TYPE_28__* %108, %struct.TYPE_28__** %110, align 8
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @avfilter_link(i32 %113, i32 0, i32 %116, i32 0)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %107
  br label %170

121:                                              ; preds = %107
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %128 = call %struct.TYPE_28__* @append_filter(%struct.TYPE_26__* %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* null)
  store %struct.TYPE_28__* %128, %struct.TYPE_28__** %9, align 8
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %130 = icmp eq %struct.TYPE_28__* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %121
  %132 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0))
  br label %170

133:                                              ; preds = %121
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 1
  store %struct.TYPE_28__* %134, %struct.TYPE_28__** %136, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @avfilter_graph_config(i32* %139, i32* null)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %133
  %144 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  br label %170

145:                                              ; preds = %133
  %146 = call i32* (...) @av_frame_alloc()
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 3
  store i32* %146, i32** %148, align 8
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  %154 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0))
  br label %170

155:                                              ; preds = %145
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %160, i64 0
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  %167 = call i32 @avfilter_inout_free(%struct.TYPE_27__** %7)
  %168 = call i32 @avfilter_inout_free(%struct.TYPE_27__** %8)
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_26__* %169, %struct.TYPE_26__** %3, align 8
  br label %174

170:                                              ; preds = %153, %143, %131, %120, %105, %56, %36, %23
  %171 = call i32 @avfilter_inout_free(%struct.TYPE_27__** %7)
  %172 = call i32 @avfilter_inout_free(%struct.TYPE_27__** %8)
  %173 = call i32 @hb_avfilter_graph_close(%struct.TYPE_26__** %6)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  br label %174

174:                                              ; preds = %170, %155, %16
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  ret %struct.TYPE_26__* %175
}

declare dso_local %struct.TYPE_26__* @calloc(i32, i32) #1

declare dso_local i8* @hb_filter_settings_string(i32, i32*) #1

declare dso_local i32 @hb_error(i8*, ...) #1

declare dso_local i32* @avfilter_graph_alloc(...) #1

declare dso_local i32 @av_opt_set(i32*, i8*, i8*, i32) #1

declare dso_local i32 @avfilter_graph_parse2(i32*, i8*, %struct.TYPE_27__**, %struct.TYPE_27__**) #1

declare dso_local i8* @hb_strdup_printf(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_28__* @append_filter(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @avfilter_link(i32, i32, i32, i32) #1

declare dso_local i32 @avfilter_graph_config(i32*, i32*) #1

declare dso_local i32* @av_frame_alloc(...) #1

declare dso_local i32 @avfilter_inout_free(%struct.TYPE_27__**) #1

declare dso_local i32 @hb_avfilter_graph_close(%struct.TYPE_26__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
