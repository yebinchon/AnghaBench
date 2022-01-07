; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_demuxing_decoding.c_decode_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_demuxing_decoding.c_decode_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i32, i64, i32*, i32, i32, i64 }
%struct.TYPE_12__ = type { i32 }

@pkt = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@video_stream_idx = common dso_local global i64 0, align 8
@video_dec_ctx = common dso_local global i32 0, align 4
@frame = common dso_local global %struct.TYPE_11__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error decoding video frame (%s)\0A\00", align 1
@width = common dso_local global i64 0, align 8
@height = common dso_local global i64 0, align 8
@pix_fmt = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [229 x i8] c"Error: Width, height and pixel format have to be constant in a rawvideo file, but the width, height or pixel format of the input video changed:\0Aold: width = %d, height = %d, format = %s\0Anew: width = %d, height = %d, format = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"video_frame%s n:%d coded_n:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"(cached)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@video_frame_count = common dso_local global i32 0, align 4
@video_dst_data = common dso_local global i32* null, align 8
@video_dst_linesize = common dso_local global i32 0, align 4
@video_dst_bufsize = common dso_local global i64 0, align 8
@video_dst_file = common dso_local global i32 0, align 4
@audio_stream_idx = common dso_local global i64 0, align 8
@audio_dec_ctx = common dso_local global %struct.TYPE_12__* null, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"Error decoding audio frame (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"audio_frame%s n:%d nb_samples:%d pts:%s\0A\00", align 1
@audio_frame_count = common dso_local global i32 0, align 4
@audio_dst_file = common dso_local global i32 0, align 4
@refcount = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @decode_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_packet(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pkt, i32 0, i32 0), align 8
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pkt, i32 0, i32 1), align 8
  %12 = load i64, i64* @video_stream_idx, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %99

14:                                               ; preds = %2
  %15 = load i32, i32* @video_dec_ctx, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @frame, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @avcodec_decode_video2(i32 %15, %struct.TYPE_11__* %16, i32* %17, %struct.TYPE_10__* @pkt)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @av_err2str(i32 %23)
  %25 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %170

27:                                               ; preds = %14
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %98

31:                                               ; preds = %27
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** @frame, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @width, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @frame, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @height, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** @frame, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @pix_fmt, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43, %37, %31
  %50 = load i32, i32* @stderr, align 4
  %51 = load i64, i64* @width, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load i64, i64* @height, align 8
  %54 = load i64, i64* @pix_fmt, align 8
  %55 = call i8* @av_get_pix_fmt_name(i64 %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @frame, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** @frame, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** @frame, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @av_get_pix_fmt_name(i64 %64)
  %66 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.1, i64 0, i64 0), i8* %52, i64 %53, i8* %55, i64 %58, i64 %61, i8* %65)
  store i32 -1, i32* %3, align 4
  br label %170

67:                                               ; preds = %43
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %72 = load i32, i32* @video_frame_count, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @video_frame_count, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** @frame, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = call i32 (i8*, i8*, i32, i64, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %71, i32 %72, i64 %77)
  %79 = load i32*, i32** @video_dst_data, align 8
  %80 = load i32, i32* @video_dst_linesize, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** @frame, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 8
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i32**
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** @frame, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* @pix_fmt, align 8
  %89 = load i64, i64* @width, align 8
  %90 = load i64, i64* @height, align 8
  %91 = call i32 @av_image_copy(i32* %79, i32 %80, i32** %84, i32 %87, i64 %88, i64 %89, i64 %90)
  %92 = load i32*, i32** @video_dst_data, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* @video_dst_bufsize, align 8
  %96 = load i32, i32* @video_dst_file, align 4
  %97 = call i32 @fwrite(i32 %94, i32 1, i64 %95, i32 %96)
  br label %98

98:                                               ; preds = %67, %27
  br label %158

99:                                               ; preds = %2
  %100 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pkt, i32 0, i32 1), align 8
  %101 = load i64, i64* @audio_stream_idx, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %157

103:                                              ; preds = %99
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** @audio_dec_ctx, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** @frame, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @avcodec_decode_audio4(%struct.TYPE_12__* %104, %struct.TYPE_11__* %105, i32* %106, %struct.TYPE_10__* @pkt)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i32, i32* @stderr, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i8* @av_err2str(i32 %112)
  %114 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %113)
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %170

116:                                              ; preds = %103
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pkt, i32 0, i32 0), align 8
  %119 = call i32 @FFMIN(i32 %117, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %156

123:                                              ; preds = %116
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** @frame, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** @frame, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @av_get_bytes_per_sample(i64 %129)
  %131 = mul i64 %126, %130
  store i64 %131, i64* %8, align 8
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %136 = load i32, i32* @audio_frame_count, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* @audio_frame_count, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** @frame, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** @frame, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** @audio_dec_ctx, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = call i8* @av_ts2timestr(i32 %143, i32* %145)
  %147 = call i32 (i8*, i8*, i32, i64, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %135, i32 %136, i64 %140, i8* %146)
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** @frame, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load i64, i64* %8, align 8
  %154 = load i32, i32* @audio_dst_file, align 4
  %155 = call i32 @fwrite(i32 %152, i32 1, i64 %153, i32 %154)
  br label %156

156:                                              ; preds = %123, %116
  br label %157

157:                                              ; preds = %156, %99
  br label %158

158:                                              ; preds = %157, %98
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load i64, i64* @refcount, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** @frame, align 8
  %167 = call i32 @av_frame_unref(%struct.TYPE_11__* %166)
  br label %168

168:                                              ; preds = %165, %162, %158
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %168, %110, %49, %21
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @avcodec_decode_video2(i32, %struct.TYPE_11__*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @av_err2str(i32) #1

declare dso_local i8* @av_get_pix_fmt_name(i64) #1

declare dso_local i32 @printf(i8*, i8*, i32, i64, ...) #1

declare dso_local i32 @av_image_copy(i32*, i32, i32**, i32, i64, i64, i64) #1

declare dso_local i32 @fwrite(i32, i32, i64, i32) #1

declare dso_local i32 @avcodec_decode_audio4(%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i64 @av_get_bytes_per_sample(i64) #1

declare dso_local i8* @av_ts2timestr(i32, i32*) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
