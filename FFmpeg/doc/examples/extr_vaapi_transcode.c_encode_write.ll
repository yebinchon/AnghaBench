; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_vaapi_transcode.c_encode_write.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_vaapi_transcode.c_encode_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i32* }

@encoder_ctx = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error during encoding. Error code: %s\0A\00", align 1
@ifmt_ctx = common dso_local global %struct.TYPE_15__* null, align 8
@video_stream = common dso_local global i64 0, align 8
@ofmt_ctx = common dso_local global %struct.TYPE_14__* null, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"Error during writing data to output file. Error code: %s\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @encode_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_write(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = call i32 @av_init_packet(%struct.TYPE_13__* %5)
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 2
  store i32* null, i32** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @encoder_ctx, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @avcodec_send_frame(i32 %9, i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i8* @av_err2str(i32 %15)
  %17 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %54

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %52
  %20 = load i32, i32* @encoder_ctx, align 4
  %21 = call i32 @avcodec_receive_packet(i32 %20, %struct.TYPE_13__* %5)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %53

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ifmt_ctx, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %28, align 8
  %30 = load i64, i64* @video_stream, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %29, i64 %30
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ofmt_ctx, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %37, i64 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @av_packet_rescale_ts(%struct.TYPE_13__* %5, i32 %34, i32 %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ofmt_ctx, align 8
  %44 = call i32 @av_interleaved_write_frame(%struct.TYPE_14__* %43, %struct.TYPE_13__* %5)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %25
  %48 = load i32, i32* @stderr, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i8* @av_err2str(i32 %49)
  %51 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  store i32 -1, i32* %2, align 4
  br label %67

52:                                               ; preds = %25
  br label %19

53:                                               ; preds = %24
  br label %54

54:                                               ; preds = %53, %13
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @AVERROR_EOF, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %67

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = call i32 @AVERROR(i32 %61)
  %63 = icmp eq i32 %60, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 0, i32 -1
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %59, %58, %47
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @av_init_packet(%struct.TYPE_13__*) #1

declare dso_local i32 @avcodec_send_frame(i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @av_err2str(i32) #1

declare dso_local i32 @avcodec_receive_packet(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @av_packet_rescale_ts(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @av_interleaved_write_frame(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
