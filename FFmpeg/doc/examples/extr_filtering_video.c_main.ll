; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_filtering_video.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_filtering_video.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Usage: %s file\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not allocate frame\00", align 1
@filter_descr = common dso_local global i32 0, align 4
@fmt_ctx = common dso_local global i32 0, align 4
@video_stream_index = common dso_local global i64 0, align 8
@dec_ctx = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Error while sending a packet to the decoder\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Error while receiving a frame from the decoder\0A\00", align 1
@buffersrc_ctx = common dso_local global i32 0, align 4
@AV_BUFFERSRC_FLAG_KEEP_REF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Error while feeding the filtergraph\0A\00", align 1
@buffersink_ctx = common dso_local global %struct.TYPE_19__* null, align 8
@filter_graph = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Error occurred: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %2
  %20 = call %struct.TYPE_18__* (...) @av_frame_alloc()
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %8, align 8
  %21 = call %struct.TYPE_18__* (...) @av_frame_alloc()
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %9, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %23 = icmp ne %struct.TYPE_18__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %26 = icmp ne %struct.TYPE_18__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %19
  %28 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %24
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @open_input_file(i8* %33)
  store i32 %34, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %136

37:                                               ; preds = %30
  %38 = load i32, i32* @filter_descr, align 4
  %39 = call i32 @init_filters(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %136

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %133
  %44 = load i32, i32* @fmt_ctx, align 4
  %45 = call i32 @av_read_frame(i32 %44, %struct.TYPE_17__* %7)
  store i32 %45, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %135

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @video_stream_index, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %133

53:                                               ; preds = %48
  %54 = load i32, i32* @dec_ctx, align 4
  %55 = call i32 @avcodec_send_packet(i32 %54, %struct.TYPE_17__* %7)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = call i32 @av_log(i32* null, i32 %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %135

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %129, %61
  %63 = load i32, i32* %6, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %132

65:                                               ; preds = %62
  %66 = load i32, i32* @dec_ctx, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %68 = call i32 @avcodec_receive_frame(i32 %66, %struct.TYPE_18__* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @EAGAIN, align 4
  %71 = call i32 @AVERROR(i32 %70)
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @AVERROR_EOF, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %65
  br label %132

78:                                               ; preds = %73
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @AV_LOG_ERROR, align 4
  %83 = call i32 @av_log(i32* null, i32 %82, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %136

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @buffersrc_ctx, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %93 = load i32, i32* @AV_BUFFERSRC_FLAG_KEEP_REF, align 4
  %94 = call i64 @av_buffersrc_add_frame_flags(i32 %91, %struct.TYPE_18__* %92, i32 %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %85
  %97 = load i32, i32* @AV_LOG_ERROR, align 4
  %98 = call i32 @av_log(i32* null, i32 %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %132

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99, %117
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** @buffersink_ctx, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %103 = call i32 @av_buffersink_get_frame(%struct.TYPE_19__* %101, %struct.TYPE_18__* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @EAGAIN, align 4
  %106 = call i32 @AVERROR(i32 %105)
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %100
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @AVERROR_EOF, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108, %100
  br label %129

113:                                              ; preds = %108
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %136

117:                                              ; preds = %113
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** @buffersink_ctx, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %121, i64 0
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @display_frame(%struct.TYPE_18__* %118, i32 %125)
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %128 = call i32 @av_frame_unref(%struct.TYPE_18__* %127)
  br label %100

129:                                              ; preds = %112
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %131 = call i32 @av_frame_unref(%struct.TYPE_18__* %130)
  br label %62

132:                                              ; preds = %96, %77, %62
  br label %133

133:                                              ; preds = %132, %48
  %134 = call i32 @av_packet_unref(%struct.TYPE_17__* %7)
  br label %43

135:                                              ; preds = %58, %47
  br label %136

136:                                              ; preds = %135, %116, %81, %41, %36
  %137 = call i32 @avfilter_graph_free(i32* @filter_graph)
  %138 = call i32 @avcodec_free_context(i32* @dec_ctx)
  %139 = call i32 @avformat_close_input(i32* @fmt_ctx)
  %140 = call i32 @av_frame_free(%struct.TYPE_18__** %8)
  %141 = call i32 @av_frame_free(%struct.TYPE_18__** %9)
  %142 = load i32, i32* %6, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %136
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @AVERROR_EOF, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = load i32, i32* @stderr, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i8* @av_err2str(i32 %150)
  %152 = call i32 @fprintf(i32 %149, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %151)
  %153 = call i32 @exit(i32 1) #3
  unreachable

154:                                              ; preds = %144, %136
  %155 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_18__* @av_frame_alloc(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @open_input_file(i8*) #1

declare dso_local i32 @init_filters(i32) #1

declare dso_local i32 @av_read_frame(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @avcodec_send_packet(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @avcodec_receive_frame(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_buffersrc_add_frame_flags(i32, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @av_buffersink_get_frame(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @display_frame(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_18__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_17__*) #1

declare dso_local i32 @avfilter_graph_free(i32*) #1

declare dso_local i32 @avcodec_free_context(i32*) #1

declare dso_local i32 @avformat_close_input(i32*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_18__**) #1

declare dso_local i8* @av_err2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
