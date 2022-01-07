; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_vaapi_transcode.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_vaapi_transcode.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [116 x i8] c"Usage: %s <input file> <encode codec> <output file>\0AThe output format is guessed according to the file extension.\0A\0A\00", align 1
@hw_device_ctx = common dso_local global i32 0, align 4
@AV_HWDEVICE_TYPE_VAAPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to create a VAAPI device. Error code: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not find encoder '%s'\0A\00", align 1
@ofmt_ctx = common dso_local global %struct.TYPE_12__* null, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"Failed to deduce output format from file extension. Error code: %s\0A\00", align 1
@encoder_ctx = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Cannot open output file. Error code: %s\0A\00", align 1
@ifmt_ctx = common dso_local global %struct.TYPE_12__* null, align 8
@video_stream = common dso_local global i64 0, align 8
@decoder_ctx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 4
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 -1, i32* %3, align 4
  br label %114

17:                                               ; preds = %2
  %18 = load i32, i32* @AV_HWDEVICE_TYPE_VAAPI, align 4
  %19 = call i32 @av_hwdevice_ctx_create(i32* @hw_device_ctx, i32 %18, i32* null, i32* null, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i8* @av_err2str(i32 %24)
  %26 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i32 -1, i32* %3, align 4
  br label %114

27:                                               ; preds = %17
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @open_input_file(i8* %30)
  store i32 %31, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %107

34:                                               ; preds = %27
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32* @avcodec_find_encoder_by_name(i8* %37)
  store i32* %38, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  store i32 -1, i32* %6, align 4
  br label %107

46:                                               ; preds = %34
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 3
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @avformat_alloc_output_context2(%struct.TYPE_12__** @ofmt_ctx, i32* null, i32* null, i8* %49)
  store i32 %50, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i32, i32* @stderr, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i8* @av_err2str(i32 %54)
  %56 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  br label %107

57:                                               ; preds = %46
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @avcodec_alloc_context3(i32* %58)
  store i32 %59, i32* @encoder_ctx, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = call i32 @AVERROR(i32 %62)
  store i32 %63, i32* %6, align 4
  br label %107

64:                                               ; preds = %57
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ofmt_ctx, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 3
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %71 = call i32 @avio_open(i32* %66, i8* %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load i32, i32* @stderr, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i8* @av_err2str(i32 %76)
  %78 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %77)
  br label %107

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %96, %79
  %81 = load i32, i32* %6, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ifmt_ctx, align 8
  %85 = call i32 @av_read_frame(%struct.TYPE_12__* %84, %struct.TYPE_11__* %7)
  store i32 %85, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %98

88:                                               ; preds = %83
  %89 = load i64, i64* @video_stream, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @dec_enc(%struct.TYPE_11__* %7, i32* %94)
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = call i32 @av_packet_unref(%struct.TYPE_11__* %7)
  br label %80

98:                                               ; preds = %87, %80
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i32* null, i32** %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i64 0, i64* %100, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @dec_enc(%struct.TYPE_11__* %7, i32* %101)
  store i32 %102, i32* %6, align 4
  %103 = call i32 @av_packet_unref(%struct.TYPE_11__* %7)
  %104 = call i32 @encode_write(i32* null)
  store i32 %104, i32* %6, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ofmt_ctx, align 8
  %106 = call i32 @av_write_trailer(%struct.TYPE_12__* %105)
  br label %107

107:                                              ; preds = %98, %74, %61, %52, %40, %33
  %108 = call i32 @avformat_close_input(%struct.TYPE_12__** @ifmt_ctx)
  %109 = call i32 @avformat_close_input(%struct.TYPE_12__** @ofmt_ctx)
  %110 = call i32 @avcodec_free_context(i32* @decoder_ctx)
  %111 = call i32 @avcodec_free_context(i32* @encoder_ctx)
  %112 = call i32 @av_buffer_unref(i32* @hw_device_ctx)
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %107, %22, %11
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @av_hwdevice_ctx_create(i32*, i32, i32*, i32*, i32) #1

declare dso_local i8* @av_err2str(i32) #1

declare dso_local i32 @open_input_file(i8*) #1

declare dso_local i32* @avcodec_find_encoder_by_name(i8*) #1

declare dso_local i32 @avformat_alloc_output_context2(%struct.TYPE_12__**, i32*, i32*, i8*) #1

declare dso_local i32 @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_open(i32*, i8*, i32) #1

declare dso_local i32 @av_read_frame(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @dec_enc(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_11__*) #1

declare dso_local i32 @encode_write(i32*) #1

declare dso_local i32 @av_write_trailer(%struct.TYPE_12__*) #1

declare dso_local i32 @avformat_close_input(%struct.TYPE_12__**) #1

declare dso_local i32 @avcodec_free_context(i32*) #1

declare dso_local i32 @av_buffer_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
