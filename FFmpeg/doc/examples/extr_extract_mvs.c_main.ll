; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_extract_mvs.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_extract_mvs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Usage: %s <video>\0A\00", align 1
@src_filename = common dso_local global i8* null, align 8
@fmt_ctx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not open source file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not find stream information\0A\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@video_stream = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Could not find video stream in the input, aborting\0A\00", align 1
@frame = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Could not allocate frame\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"framenum,source,blockw,blockh,srcx,srcy,dstx,dsty,flags\0A\00", align 1
@video_stream_idx = common dso_local global i64 0, align 8
@video_dec_ctx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = call i32 @exit(i32 1) #4
  unreachable

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** @src_filename, align 8
  %22 = load i8*, i8** @src_filename, align 8
  %23 = call i64 @avformat_open_input(i32* @fmt_ctx, i8* %22, i32* null, i32* null)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32, i32* @stderr, align 4
  %27 = load i8*, i8** @src_filename, align 8
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = call i32 @exit(i32 1) #4
  unreachable

30:                                               ; preds = %18
  %31 = load i32, i32* @fmt_ctx, align 4
  %32 = call i64 @avformat_find_stream_info(i32 %31, i32* null)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @exit(i32 1) #4
  unreachable

38:                                               ; preds = %30
  %39 = load i32, i32* @fmt_ctx, align 4
  %40 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %41 = call i32 @open_codec_context(i32 %39, i32 %40)
  %42 = load i32, i32* @fmt_ctx, align 4
  %43 = load i8*, i8** @src_filename, align 8
  %44 = call i32 @av_dump_format(i32 %42, i32 0, i8* %43, i32 0)
  %45 = load i32, i32* @video_stream, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %80

50:                                               ; preds = %38
  %51 = call i32 (...) @av_frame_alloc()
  store i32 %51, i32* @frame, align 4
  %52 = load i32, i32* @frame, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = call i32 @AVERROR(i32 %57)
  store i32 %58, i32* %6, align 4
  br label %80

59:                                               ; preds = %50
  %60 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %61

61:                                               ; preds = %77, %59
  %62 = load i32, i32* @fmt_ctx, align 4
  %63 = call i64 @av_read_frame(i32 %62, %struct.TYPE_5__* %7)
  %64 = icmp sge i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @video_stream_idx, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 @decode_packet(%struct.TYPE_5__* %7)
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %65
  %73 = call i32 @av_packet_unref(%struct.TYPE_5__* %7)
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %78

77:                                               ; preds = %72
  br label %61

78:                                               ; preds = %76, %61
  %79 = call i32 @decode_packet(%struct.TYPE_5__* null)
  br label %80

80:                                               ; preds = %78, %54, %47
  %81 = call i32 @avcodec_free_context(i32* @video_dec_ctx)
  %82 = call i32 @avformat_close_input(i32* @fmt_ctx)
  %83 = call i32 @av_frame_free(i32* @frame)
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  %86 = zext i1 %85 to i32
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @avformat_open_input(i32*, i8*, i32*, i32*) #2

declare dso_local i64 @avformat_find_stream_info(i32, i32*) #2

declare dso_local i32 @open_codec_context(i32, i32) #2

declare dso_local i32 @av_dump_format(i32, i32, i8*, i32) #2

declare dso_local i32 @av_frame_alloc(...) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i64 @av_read_frame(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @decode_packet(%struct.TYPE_5__*) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_5__*) #2

declare dso_local i32 @avcodec_free_context(i32*) #2

declare dso_local i32 @avformat_close_input(i32*) #2

declare dso_local i32 @av_frame_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
