; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_vaapi_transcode.c_dec_enc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_vaapi_transcode.c_dec_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@decoder_ctx = common dso_local global %struct.TYPE_11__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error during decoding. Error code: %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Error while decoding. Error code: %s\0A\00", align 1
@initialized = common dso_local global i32 0, align 4
@encoder_ctx = common dso_local global %struct.TYPE_10__* null, align 8
@AV_PIX_FMT_VAAPI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to open encode codec. Error code: %s\0A\00", align 1
@ofmt_ctx = common dso_local global i32 0, align 4
@ost = common dso_local global %struct.TYPE_9__* null, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"Failed to allocate stream for output format.\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Failed to copy the stream parameters. Error code: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Error while writing stream header. Error code: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Error during encoding and writing.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @dec_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dec_enc(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** @decoder_ctx, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @avcodec_send_packet(%struct.TYPE_11__* %8, i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i8* @av_err2str(i32 %15)
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %152

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %150, %19
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %151

23:                                               ; preds = %20
  %24 = call i32* (...) @av_frame_alloc()
  store i32* %24, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = call i32 @AVERROR(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %152

29:                                               ; preds = %23
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** @decoder_ctx, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @avcodec_receive_frame(%struct.TYPE_11__* %30, i32* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = call i32 @AVERROR(i32 %34)
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @AVERROR_EOF, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %29
  %42 = call i32 @av_frame_free(i32** %6)
  store i32 0, i32* %3, align 4
  br label %152

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* @stderr, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i8* @av_err2str(i32 %48)
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %144

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* @initialized, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %136, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @decoder_ctx, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @av_buffer_ref(i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @encoder_ctx, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @encoder_ctx, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = call i32 @AVERROR(i32 %67)
  store i32 %68, i32* %7, align 4
  br label %144

69:                                               ; preds = %55
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** @decoder_ctx, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @av_inv_q(i32 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** @encoder_ctx, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @AV_PIX_FMT_VAAPI, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** @encoder_ctx, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** @decoder_ctx, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** @encoder_ctx, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** @decoder_ctx, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** @encoder_ctx, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** @encoder_ctx, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @avcodec_open2(%struct.TYPE_10__* %89, i32* %90, i32* null)
  store i32 %91, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %69
  %94 = load i32, i32* @stderr, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i8* @av_err2str(i32 %95)
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %96)
  br label %144

98:                                               ; preds = %69
  %99 = load i32, i32* @ofmt_ctx, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = call %struct.TYPE_9__* @avformat_new_stream(i32 %99, i32* %100)
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** @ost, align 8
  %102 = icmp ne %struct.TYPE_9__* %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @stderr, align 4
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = call i32 @AVERROR(i32 %106)
  store i32 %107, i32* %7, align 4
  br label %144

108:                                              ; preds = %98
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** @encoder_ctx, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ost, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ost, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** @encoder_ctx, align 8
  %118 = call i32 @avcodec_parameters_from_context(i32 %116, %struct.TYPE_10__* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %108
  %122 = load i32, i32* @stderr, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i8* @av_err2str(i32 %123)
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i8* %124)
  br label %144

126:                                              ; preds = %108
  %127 = load i32, i32* @ofmt_ctx, align 4
  %128 = call i32 @avformat_write_header(i32 %127, i32* null)
  store i32 %128, i32* %7, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load i32, i32* @stderr, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i8* @av_err2str(i32 %132)
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8* %133)
  br label %144

135:                                              ; preds = %126
  store i32 1, i32* @initialized, align 4
  br label %136

136:                                              ; preds = %135, %52
  %137 = load i32*, i32** %6, align 8
  %138 = call i32 @encode_write(i32* %137)
  store i32 %138, i32* %7, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* @stderr, align 4
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %141, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %136
  br label %144

144:                                              ; preds = %143, %130, %121, %103, %93, %66, %46
  %145 = call i32 @av_frame_free(i32** %6)
  %146 = load i32, i32* %7, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* %7, align 4
  store i32 %149, i32* %3, align 4
  br label %152

150:                                              ; preds = %144
  br label %20

151:                                              ; preds = %20
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %151, %148, %41, %26, %13
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @avcodec_send_packet(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @av_err2str(i32) #1

declare dso_local i32* @av_frame_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avcodec_receive_frame(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @av_frame_free(i32**) #1

declare dso_local i32 @av_buffer_ref(i32) #1

declare dso_local i32 @av_inv_q(i32) #1

declare dso_local i32 @avcodec_open2(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @avformat_new_stream(i32, i32*) #1

declare dso_local i32 @avcodec_parameters_from_context(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @avformat_write_header(i32, i32*) #1

declare dso_local i32 @encode_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
