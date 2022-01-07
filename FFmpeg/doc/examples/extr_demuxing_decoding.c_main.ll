; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_demuxing_decoding.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_demuxing_decoding.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [500 x i8] c"usage: %s [-refcount] input_file video_output_file audio_output_file\0AAPI example program to show how to read frames from an input file.\0AThis program reads frames from a file, decodes them, and writes decoded\0Avideo frames to a rawvideo file named video_output_file, and decoded\0Aaudio frames to a rawaudio file named audio_output_file.\0A\0AIf the -refcount option is specified, the program use the\0Areference counting frame system which allows keeping a copy of\0Athe data for longer than one decode call.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"-refcount\00", align 1
@refcount = common dso_local global i32 0, align 4
@src_filename = common dso_local global i8* null, align 8
@video_dst_filename = common dso_local global i8* null, align 8
@audio_dst_filename = common dso_local global i8* null, align 8
@fmt_ctx = common dso_local global %struct.TYPE_19__* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not open source file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Could not find stream information\0A\00", align 1
@video_stream_idx = common dso_local global i64 0, align 8
@video_dec_ctx = common dso_local global %struct.TYPE_18__* null, align 8
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@video_stream = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@video_dst_file = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"Could not open destination file %s\0A\00", align 1
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@pix_fmt = common dso_local global i32 0, align 4
@video_dst_data = common dso_local global i32* null, align 8
@video_dst_linesize = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Could not allocate raw video buffer\0A\00", align 1
@video_dst_bufsize = common dso_local global i32 0, align 4
@audio_stream_idx = common dso_local global i64 0, align 8
@audio_dec_ctx = common dso_local global %struct.TYPE_18__* null, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@audio_stream = common dso_local global i64 0, align 8
@audio_dst_file = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [61 x i8] c"Could not find audio or video stream in the input, aborting\0A\00", align 1
@frame = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"Could not allocate frame\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@pkt = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [41 x i8] c"Demuxing video from file '%s' into '%s'\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Demuxing audio from file '%s' into '%s'\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Demuxing succeeded.\0A\00", align 1
@.str.12 = private unnamed_addr constant [98 x i8] c"Play the output video file with the command:\0Affplay -f rawvideo -pix_fmt %s -video_size %dx%d %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [114 x i8] c"Warning: the sample format the decoder produced is planar (%s). This example will output the first channel only.\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.15 = private unnamed_addr constant [76 x i8] c"Play the output audio file with the command:\0Affplay -f %s -ac %d -ar %d %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 4
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 5
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([500 x i8], [500 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i32 @exit(i32 1) #4
  unreachable

25:                                               ; preds = %15, %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  store i32 1, i32* @refcount, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %5, align 8
  br label %37

37:                                               ; preds = %34, %28, %25
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** @src_filename, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** @video_dst_filename, align 8
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 3
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** @audio_dst_filename, align 8
  %47 = load i8*, i8** @src_filename, align 8
  %48 = call i64 @avformat_open_input(%struct.TYPE_19__** @fmt_ctx, i8* %47, i32* null, i32* null)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %37
  %51 = load i32, i32* @stderr, align 4
  %52 = load i8*, i8** @src_filename, align 8
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = call i32 @exit(i32 1) #4
  unreachable

55:                                               ; preds = %37
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fmt_ctx, align 8
  %57 = call i64 @avformat_find_stream_info(%struct.TYPE_19__* %56, i32* null)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %62 = call i32 @exit(i32 1) #4
  unreachable

63:                                               ; preds = %55
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fmt_ctx, align 8
  %65 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %66 = call i64 @open_codec_context(i64* @video_stream_idx, %struct.TYPE_18__** @video_dec_ctx, %struct.TYPE_19__* %64, i32 %65)
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %106

68:                                               ; preds = %63
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fmt_ctx, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @video_stream_idx, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* @video_stream, align 8
  %75 = load i8*, i8** @video_dst_filename, align 8
  %76 = call i64 @fopen(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i64 %76, i64* @video_dst_file, align 8
  %77 = load i64, i64* @video_dst_file, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %68
  %80 = load i32, i32* @stderr, align 4
  %81 = load i8*, i8** @video_dst_filename, align 8
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %81)
  store i32 1, i32* %6, align 4
  br label %246

83:                                               ; preds = %68
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** @video_dec_ctx, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* @width, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** @video_dec_ctx, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* @height, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** @video_dec_ctx, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* @pix_fmt, align 4
  %93 = load i32*, i32** @video_dst_data, align 8
  %94 = load i32, i32* @video_dst_linesize, align 4
  %95 = load i32, i32* @width, align 4
  %96 = load i32, i32* @height, align 4
  %97 = load i32, i32* @pix_fmt, align 4
  %98 = call i32 @av_image_alloc(i32* %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 1)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %83
  %102 = load i32, i32* @stderr, align 4
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %246

104:                                              ; preds = %83
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* @video_dst_bufsize, align 4
  br label %106

106:                                              ; preds = %104, %63
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fmt_ctx, align 8
  %108 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %109 = call i64 @open_codec_context(i64* @audio_stream_idx, %struct.TYPE_18__** @audio_dec_ctx, %struct.TYPE_19__* %107, i32 %108)
  %110 = icmp sge i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %106
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fmt_ctx, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* @audio_stream_idx, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* @audio_stream, align 8
  %118 = load i8*, i8** @audio_dst_filename, align 8
  %119 = call i64 @fopen(i8* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i64 %119, i64* @audio_dst_file, align 8
  %120 = load i64, i64* @audio_dst_file, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %111
  %123 = load i32, i32* @stderr, align 4
  %124 = load i8*, i8** @audio_dst_filename, align 8
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %124)
  store i32 1, i32* %6, align 4
  br label %246

126:                                              ; preds = %111
  br label %127

127:                                              ; preds = %126, %106
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fmt_ctx, align 8
  %129 = load i8*, i8** @src_filename, align 8
  %130 = call i32 @av_dump_format(%struct.TYPE_19__* %128, i32 0, i8* %129, i32 0)
  %131 = load i64, i64* @audio_stream, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load i64, i64* @video_stream, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* @stderr, align 4
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %246

139:                                              ; preds = %133, %127
  %140 = call i32 (...) @av_frame_alloc()
  store i32 %140, i32* @frame, align 4
  %141 = load i32, i32* @frame, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* @stderr, align 4
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = call i32 @AVERROR(i32 %146)
  store i32 %147, i32* %6, align 4
  br label %246

148:                                              ; preds = %139
  %149 = call i32 @av_init_packet(%struct.TYPE_17__* @pkt)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @pkt, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @pkt, i32 0, i32 0), align 8
  %150 = load i64, i64* @video_stream, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i8*, i8** @src_filename, align 8
  %154 = load i8*, i8** @video_dst_filename, align 8
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* %153, i8* %154)
  br label %156

156:                                              ; preds = %152, %148
  %157 = load i64, i64* @audio_stream, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load i8*, i8** @src_filename, align 8
  %161 = load i8*, i8** @audio_dst_filename, align 8
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* %160, i8* %161)
  br label %163

163:                                              ; preds = %159, %156
  br label %164

164:                                              ; preds = %187, %163
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fmt_ctx, align 8
  %166 = call i64 @av_read_frame(%struct.TYPE_19__* %165, %struct.TYPE_17__* @pkt)
  %167 = icmp sge i64 %166, 0
  br i1 %167, label %168, label %189

168:                                              ; preds = %164
  %169 = bitcast %struct.TYPE_17__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %169, i8* align 8 bitcast (%struct.TYPE_17__* @pkt to i8*), i64 16, i1 false)
  br label %170

170:                                              ; preds = %184, %168
  %171 = call i32 @decode_packet(i32* %7, i32 0)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  br label %187

175:                                              ; preds = %170
  %176 = load i32, i32* %6, align 4
  %177 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @pkt, i32 0, i32 1), align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  store i32* %179, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @pkt, i32 0, i32 1), align 8
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @pkt, i32 0, i32 0), align 8
  %183 = sub nsw i64 %182, %181
  store i64 %183, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @pkt, i32 0, i32 0), align 8
  br label %184

184:                                              ; preds = %175
  %185 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @pkt, i32 0, i32 0), align 8
  %186 = icmp sgt i64 %185, 0
  br i1 %186, label %170, label %187

187:                                              ; preds = %184, %174
  %188 = call i32 @av_packet_unref(%struct.TYPE_17__* %8)
  br label %164

189:                                              ; preds = %164
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @pkt, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @pkt, i32 0, i32 0), align 8
  br label %190

190:                                              ; preds = %192, %189
  %191 = call i32 @decode_packet(i32* %7, i32 1)
  br label %192

192:                                              ; preds = %190
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %190, label %195

195:                                              ; preds = %192
  %196 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %197 = load i64, i64* @video_stream, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %195
  %200 = load i32, i32* @pix_fmt, align 4
  %201 = call i8* @av_get_pix_fmt_name(i32 %200)
  %202 = load i32, i32* @width, align 4
  %203 = load i32, i32* @height, align 4
  %204 = load i8*, i8** @video_dst_filename, align 8
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.12, i64 0, i64 0), i8* %201, i32 %202, i32 %203, i8* %204)
  br label %206

206:                                              ; preds = %199, %195
  %207 = load i64, i64* @audio_stream, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %245

209:                                              ; preds = %206
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** @audio_dec_ctx, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %9, align 4
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** @audio_dec_ctx, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %9, align 4
  %217 = call i64 @av_sample_fmt_is_planar(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %232

219:                                              ; preds = %209
  %220 = load i32, i32* %9, align 4
  %221 = call i8* @av_get_sample_fmt_name(i32 %220)
  store i8* %221, i8** %12, align 8
  %222 = load i8*, i8** %12, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = load i8*, i8** %12, align 8
  br label %227

226:                                              ; preds = %219
  br label %227

227:                                              ; preds = %226, %224
  %228 = phi i8* [ %225, %224 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %226 ]
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.13, i64 0, i64 0), i8* %228)
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @av_get_packed_sample_fmt(i32 %230)
  store i32 %231, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %232

232:                                              ; preds = %227, %209
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @get_format_from_sample_fmt(i8** %11, i32 %233)
  store i32 %234, i32* %6, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  br label %246

237:                                              ; preds = %232
  %238 = load i8*, i8** %11, align 8
  %239 = load i32, i32* %10, align 4
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** @audio_dec_ctx, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = load i8*, i8** @audio_dst_filename, align 8
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.15, i64 0, i64 0), i8* %238, i32 %239, i32 %242, i8* %243)
  br label %245

245:                                              ; preds = %237, %206
  br label %246

246:                                              ; preds = %245, %236, %143, %136, %122, %101, %79
  %247 = call i32 @avcodec_free_context(%struct.TYPE_18__** @video_dec_ctx)
  %248 = call i32 @avcodec_free_context(%struct.TYPE_18__** @audio_dec_ctx)
  %249 = call i32 @avformat_close_input(%struct.TYPE_19__** @fmt_ctx)
  %250 = load i64, i64* @video_dst_file, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %246
  %253 = load i64, i64* @video_dst_file, align 8
  %254 = call i32 @fclose(i64 %253)
  br label %255

255:                                              ; preds = %252, %246
  %256 = load i64, i64* @audio_dst_file, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i64, i64* @audio_dst_file, align 8
  %260 = call i32 @fclose(i64 %259)
  br label %261

261:                                              ; preds = %258, %255
  %262 = call i32 @av_frame_free(i32* @frame)
  %263 = load i32*, i32** @video_dst_data, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @av_free(i32 %265)
  %267 = load i32, i32* %6, align 4
  %268 = icmp slt i32 %267, 0
  %269 = zext i1 %268 to i32
  ret i32 %269
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @avformat_open_input(%struct.TYPE_19__**, i8*, i32*, i32*) #1

declare dso_local i64 @avformat_find_stream_info(%struct.TYPE_19__*, i32*) #1

declare dso_local i64 @open_codec_context(i64*, %struct.TYPE_18__**, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @fopen(i8*, i8*) #1

declare dso_local i32 @av_image_alloc(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_dump_format(%struct.TYPE_19__*, i32, i8*, i32) #1

declare dso_local i32 @av_frame_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_17__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @av_read_frame(%struct.TYPE_19__*, %struct.TYPE_17__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @decode_packet(i32*, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_17__*) #1

declare dso_local i8* @av_get_pix_fmt_name(i32) #1

declare dso_local i64 @av_sample_fmt_is_planar(i32) #1

declare dso_local i8* @av_get_sample_fmt_name(i32) #1

declare dso_local i32 @av_get_packed_sample_fmt(i32) #1

declare dso_local i32 @get_format_from_sample_fmt(i8**, i32) #1

declare dso_local i32 @avcodec_free_context(%struct.TYPE_18__**) #1

declare dso_local i32 @avformat_close_input(%struct.TYPE_19__**) #1

declare dso_local i32 @fclose(i64) #1

declare dso_local i32 @av_frame_free(i32*) #1

declare dso_local i32 @av_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
