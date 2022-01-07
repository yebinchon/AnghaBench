; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_filtering_video.c_init_filters.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_filtering_video.c_init_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32*, i64, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"buffersink\00", align 1
@fmt_ctx = common dso_local global %struct.TYPE_15__* null, align 8
@video_stream_index = common dso_local global i64 0, align 8
@AV_PIX_FMT_GRAY8 = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@filter_graph = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"video_size=%dx%d:pix_fmt=%d:time_base=%d/%d:pixel_aspect=%d/%d\00", align 1
@dec_ctx = common dso_local global %struct.TYPE_16__* null, align 8
@buffersrc_ctx = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Cannot create buffer source\0A\00", align 1
@buffersink_ctx = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Cannot create buffer sink\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"pix_fmts\00", align 1
@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"Cannot set output pixel format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @init_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_filters(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [512 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__, align 4
  %10 = alloca [2 x i32], align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %11 = call i32* @avfilter_get_by_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %5, align 8
  %12 = call i32* @avfilter_get_by_name(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %12, i32** %6, align 8
  %13 = call %struct.TYPE_14__* (...) @avfilter_inout_alloc()
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %7, align 8
  %14 = call %struct.TYPE_14__* (...) @avfilter_inout_alloc()
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %8, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fmt_ctx, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %18 = load i64, i64* @video_stream_index, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %17, i64 %18
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = bitcast %struct.TYPE_13__* %9 to i8*
  %23 = bitcast %struct.TYPE_13__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 8, i1 false)
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %25 = load i32, i32* @AV_PIX_FMT_GRAY8, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %27, i32* %26, align 4
  %28 = call i32 (...) @avfilter_graph_alloc()
  store i32 %28, i32* @filter_graph, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %30 = icmp ne %struct.TYPE_14__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @filter_graph, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34, %31, %1
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %4, align 4
  br label %125

40:                                               ; preds = %34
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** @dec_ctx, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** @dec_ctx, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** @dec_ctx, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** @dec_ctx, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** @dec_ctx, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @snprintf(i8* %41, i32 512, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %47, i32 %50, i32 %52, i32 %54, i32 %58, i32 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %66 = load i32, i32* @filter_graph, align 4
  %67 = call i32 @avfilter_graph_create_filter(i8** @buffersrc_ctx, i32* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %65, i32* null, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %40
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = call i32 @av_log(i32* null, i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %125

73:                                               ; preds = %40
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* @filter_graph, align 4
  %76 = call i32 @avfilter_graph_create_filter(i8** @buffersink_ctx, i32* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* null, i32* null, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = call i32 @av_log(i32* null, i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %125

82:                                               ; preds = %73
  %83 = load i8*, i8** @buffersink_ctx, align 8
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %85 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %86 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %87 = call i32 @av_opt_set_int_list(i8* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %84, i32 %85, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* @AV_LOG_ERROR, align 4
  %92 = call i32 @av_log(i32* null, i32 %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %125

93:                                               ; preds = %82
  %94 = call i8* @av_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** @buffersrc_ctx, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  %104 = call i8* @av_strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** @buffersink_ctx, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  store i32* null, i32** %113, align 8
  %114 = load i32, i32* @filter_graph, align 4
  %115 = load i8*, i8** %2, align 8
  %116 = call i32 @avfilter_graph_parse_ptr(i32 %114, i8* %115, %struct.TYPE_14__** %8, %struct.TYPE_14__** %7, i32* null)
  store i32 %116, i32* %4, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %93
  br label %125

119:                                              ; preds = %93
  %120 = load i32, i32* @filter_graph, align 4
  %121 = call i32 @avfilter_graph_config(i32 %120, i32* null)
  store i32 %121, i32* %4, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %125

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %124, %123, %118, %90, %79, %70, %37
  %126 = call i32 @avfilter_inout_free(%struct.TYPE_14__** %8)
  %127 = call i32 @avfilter_inout_free(%struct.TYPE_14__** %7)
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32* @avfilter_get_by_name(i8*) #1

declare dso_local %struct.TYPE_14__* @avfilter_inout_alloc(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @avfilter_graph_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @avfilter_graph_create_filter(i8**, i32*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @av_opt_set_int_list(i8*, i8*, i32*, i32, i32) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @avfilter_graph_parse_ptr(i32, i8*, %struct.TYPE_14__**, %struct.TYPE_14__**, i32*) #1

declare dso_local i32 @avfilter_graph_config(i32, i32*) #1

declare dso_local i32 @avfilter_inout_free(%struct.TYPE_14__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
