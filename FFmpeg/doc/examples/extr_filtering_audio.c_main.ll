; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_filtering_audio.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_filtering_audio.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"Could not allocate frame\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Usage: %s file | %s\0A\00", align 1
@player = common dso_local global i8* null, align 8
@filter_descr = common dso_local global i32 0, align 4
@fmt_ctx = common dso_local global i32 0, align 4
@audio_stream_index = common dso_local global i64 0, align 8
@dec_ctx = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Error while sending a packet to the decoder\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Error while receiving a frame from the decoder\0A\00", align 1
@buffersrc_ctx = common dso_local global i32 0, align 4
@AV_BUFFERSRC_FLAG_KEEP_REF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Error while feeding the audio filtergraph\0A\00", align 1
@buffersink_ctx = common dso_local global i32 0, align 4
@filter_graph = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Error occurred: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i32* (...) @av_frame_alloc()
  store i32* %10, i32** %8, align 8
  %11 = call i32* (...) @av_frame_alloc()
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %2
  %18 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** @player, align 8
  %29 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28)
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %20
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @open_input_file(i8* %34)
  store i32 %35, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %129

38:                                               ; preds = %31
  %39 = load i32, i32* @filter_descr, align 4
  %40 = call i32 @init_filters(i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %129

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %126
  %45 = load i32, i32* @fmt_ctx, align 4
  %46 = call i32 @av_read_frame(i32 %45, %struct.TYPE_5__* %7)
  store i32 %46, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %128

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @audio_stream_index, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %126

54:                                               ; preds = %49
  %55 = load i32, i32* @dec_ctx, align 4
  %56 = call i32 @avcodec_send_packet(i32 %55, %struct.TYPE_5__* %7)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @AV_LOG_ERROR, align 4
  %61 = call i32 @av_log(i32* null, i32 %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %128

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %124, %62
  %64 = load i32, i32* %6, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %125

66:                                               ; preds = %63
  %67 = load i32, i32* @dec_ctx, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @avcodec_receive_frame(i32 %67, i32* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = call i32 @AVERROR(i32 %71)
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @AVERROR_EOF, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %66
  br label %125

79:                                               ; preds = %74
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = call i32 @av_log(i32* null, i32 %83, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %129

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %124

89:                                               ; preds = %86
  %90 = load i32, i32* @buffersrc_ctx, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* @AV_BUFFERSRC_FLAG_KEEP_REF, align 4
  %93 = call i64 @av_buffersrc_add_frame_flags(i32 %90, i32* %91, i32 %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* @AV_LOG_ERROR, align 4
  %97 = call i32 @av_log(i32* null, i32 %96, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %125

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %116
  %100 = load i32, i32* @buffersink_ctx, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @av_buffersink_get_frame(i32 %100, i32* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @EAGAIN, align 4
  %105 = call i32 @AVERROR(i32 %104)
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @AVERROR_EOF, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107, %99
  br label %121

112:                                              ; preds = %107
  %113 = load i32, i32* %6, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %129

116:                                              ; preds = %112
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @print_frame(i32* %117)
  %119 = load i32*, i32** %9, align 8
  %120 = call i32 @av_frame_unref(i32* %119)
  br label %99

121:                                              ; preds = %111
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @av_frame_unref(i32* %122)
  br label %124

124:                                              ; preds = %121, %86
  br label %63

125:                                              ; preds = %95, %78, %63
  br label %126

126:                                              ; preds = %125, %49
  %127 = call i32 @av_packet_unref(%struct.TYPE_5__* %7)
  br label %44

128:                                              ; preds = %59, %48
  br label %129

129:                                              ; preds = %128, %115, %82, %42, %37
  %130 = call i32 @avfilter_graph_free(i32* @filter_graph)
  %131 = call i32 @avcodec_free_context(i32* @dec_ctx)
  %132 = call i32 @avformat_close_input(i32* @fmt_ctx)
  %133 = call i32 @av_frame_free(i32** %8)
  %134 = call i32 @av_frame_free(i32** %9)
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %129
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @AVERROR_EOF, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i32, i32* @stderr, align 4
  %143 = load i32, i32* %6, align 4
  %144 = call i8* @av_err2str(i32 %143)
  %145 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %144)
  %146 = call i32 @exit(i32 1) #3
  unreachable

147:                                              ; preds = %137, %129
  %148 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32* @av_frame_alloc(...) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @open_input_file(i8*) #1

declare dso_local i32 @init_filters(i32) #1

declare dso_local i32 @av_read_frame(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @avcodec_send_packet(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @avcodec_receive_frame(i32, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_buffersrc_add_frame_flags(i32, i32*, i32) #1

declare dso_local i32 @av_buffersink_get_frame(i32, i32*) #1

declare dso_local i32 @print_frame(i32*) #1

declare dso_local i32 @av_frame_unref(i32*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_5__*) #1

declare dso_local i32 @avfilter_graph_free(i32*) #1

declare dso_local i32 @avcodec_free_context(i32*) #1

declare dso_local i32 @avformat_close_input(i32*) #1

declare dso_local i32 @av_frame_free(i32**) #1

declare dso_local i8* @av_err2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
