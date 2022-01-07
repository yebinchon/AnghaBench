; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-seek-test.c_seek_test.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-seek-test.c_seek_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }

@size_of_array = common dso_local global i64 0, align 8
@number_of_elements = common dso_local global i64 0, align 8
@crc_array = common dso_local global i32* null, align 8
@pts_array = common dso_local global i32* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Can't open file\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Can't get stream info\0A\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Can't find video stream in input file\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Can't find decoder\0A\00", align 1
@AVERROR_DECODER_NOT_FOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Can't allocate decoder context\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Can't copy decoder context\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Can't open decoder\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Can't allocate frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @seek_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seek_test(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  store i32* null, i32** %11, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  store i64 0, i64* @size_of_array, align 8
  store i64 0, i64* @number_of_elements, align 8
  store i32* null, i32** @crc_array, align 8
  store i32* null, i32** @pts_array, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @avformat_open_input(%struct.TYPE_11__** %12, i8* %19, i32* null, i32* null)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @AV_LOG_ERROR, align 4
  %25 = call i32 @av_log(i32* null, i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %4, align 4
  br label %168

27:                                               ; preds = %3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %29 = call i32 @avformat_find_stream_info(%struct.TYPE_11__* %28, i32* null)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = call i32 @av_log(i32* null, i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %159

35:                                               ; preds = %27
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @read_seek_range(i8* %36)
  store i64 %37, i64* %17, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @read_seek_range(i8* %38)
  store i64 %39, i64* %18, align 8
  %40 = load i64, i64* %17, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %18, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %35
  store i32 -1, i32* %14, align 4
  br label %159

46:                                               ; preds = %42
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %48 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %49 = call i32 @av_find_best_stream(%struct.TYPE_11__* %47, i32 %48, i32 -1, i32 -1, i32* null, i32 0)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = call i32 @av_log(i32* null, i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %14, align 4
  br label %159

56:                                               ; preds = %46
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %59, i64 %61
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  store %struct.TYPE_12__* %65, %struct.TYPE_12__** %10, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32* @avcodec_find_decoder(i32 %68)
  store i32* %69, i32** %8, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %56
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = call i32 @av_log(i32* null, i32 %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @AVERROR_DECODER_NOT_FOUND, align 4
  store i32 %75, i32* %14, align 4
  br label %159

76:                                               ; preds = %56
  %77 = load i32*, i32** %8, align 8
  %78 = call i32* @avcodec_alloc_context3(i32* %77)
  store i32* %78, i32** %9, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @AV_LOG_ERROR, align 4
  %83 = call i32 @av_log(i32* null, i32 %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = call i32 @AVERROR(i32 %84)
  store i32 %85, i32* %14, align 4
  br label %159

86:                                               ; preds = %76
  %87 = load i32*, i32** %9, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %89 = call i32 @avcodec_parameters_to_context(i32* %87, %struct.TYPE_12__* %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @AV_LOG_ERROR, align 4
  %94 = call i32 @av_log(i32* null, i32 %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %159

95:                                               ; preds = %86
  %96 = load i32*, i32** %9, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @avcodec_open2(i32* %96, i32* %97, i32* null)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* @AV_LOG_ERROR, align 4
  %104 = call i32 @av_log(i32* %102, i32 %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %159

105:                                              ; preds = %95
  %106 = call i32* (...) @av_frame_alloc()
  store i32* %106, i32** %11, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @AV_LOG_ERROR, align 4
  %111 = call i32 @av_log(i32* null, i32 %110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = call i32 @AVERROR(i32 %112)
  store i32 %113, i32* %14, align 4
  br label %159

114:                                              ; preds = %105
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @compute_crc_of_packets(%struct.TYPE_11__* %115, i32 %116, i32* %117, i32* %118, i32 0, i32 0, i32 1)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %159

123:                                              ; preds = %114
  %124 = load i64, i64* %17, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %15, align 4
  br label %126

126:                                              ; preds = %155, %123
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %18, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %158

131:                                              ; preds = %126
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, 100
  store i32 %133, i32* %16, align 4
  br label %134

134:                                              ; preds = %151, %131
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %18, align 8
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %134
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %141 = load i32, i32* %13, align 4
  %142 = load i32*, i32** %9, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %16, align 4
  %146 = call i32 @compute_crc_of_packets(%struct.TYPE_11__* %140, i32 %141, i32* %142, i32* %143, i32 %144, i32 %145, i32 0)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %139
  br label %154

150:                                              ; preds = %139
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, 100
  store i32 %153, i32* %16, align 4
  br label %134

154:                                              ; preds = %149, %134
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 100
  store i32 %157, i32* %15, align 4
  br label %126

158:                                              ; preds = %126
  br label %159

159:                                              ; preds = %158, %122, %109, %101, %92, %81, %72, %52, %45, %32
  %160 = call i32 @av_freep(i32** @crc_array)
  %161 = call i32 @av_freep(i32** @pts_array)
  %162 = call i32 @av_frame_free(i32** %11)
  %163 = load i32*, i32** %9, align 8
  %164 = call i32 @avcodec_close(i32* %163)
  %165 = call i32 @avformat_close_input(%struct.TYPE_11__** %12)
  %166 = call i32 @avcodec_free_context(i32** %9)
  %167 = load i32, i32* %14, align 4
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %159, %23
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @avformat_open_input(%struct.TYPE_11__**, i8*, i32*, i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @avformat_find_stream_info(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @read_seek_range(i8*) #1

declare dso_local i32 @av_find_best_stream(%struct.TYPE_11__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32* @avcodec_find_decoder(i32) #1

declare dso_local i32* @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avcodec_parameters_to_context(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @avcodec_open2(i32*, i32*, i32*) #1

declare dso_local i32* @av_frame_alloc(...) #1

declare dso_local i32 @compute_crc_of_packets(%struct.TYPE_11__*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @av_frame_free(i32**) #1

declare dso_local i32 @avcodec_close(i32*) #1

declare dso_local i32 @avformat_close_input(%struct.TYPE_11__**) #1

declare dso_local i32 @avcodec_free_context(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
