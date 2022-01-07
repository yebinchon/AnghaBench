; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mmst.c_mms_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mmst.c_mms_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@AVIO_FLAG_READ_WRITE = common dso_local global i32 0, align 4
@send_startup_packet = common dso_local global i32* null, align 8
@SC_PKT_CLIENT_ACCEPTED = common dso_local global i32 0, align 4
@send_time_test_data = common dso_local global i32* null, align 8
@SC_PKT_TIMING_TEST_REPLY = common dso_local global i32 0, align 4
@send_protocol_select = common dso_local global i32* null, align 8
@SC_PKT_PROTOCOL_ACCEPTED = common dso_local global i32 0, align 4
@send_media_file_request = common dso_local global i32* null, align 8
@SC_PKT_MEDIA_FILE_DETAILS = common dso_local global i32 0, align 4
@send_media_header_request = common dso_local global i32* null, align 8
@SC_PKT_HEADER_REQUEST_ACCEPTED = common dso_local global i32 0, align 4
@SC_PKT_ASF_HEADER = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"The server does not support MMST (try MMSH or RTSP)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"asf header parsed failed!\0A\00", align 1
@send_stream_selection_request = common dso_local global i32* null, align 8
@SC_PKT_STREAM_ID_ACCEPTED = common dso_local global i32 0, align 4
@send_media_packet_request = common dso_local global i32* null, align 8
@SC_PKT_MEDIA_PKT_FOLLOWS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Leaving open (success)\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Leaving open (failure: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32)* @mms_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mms_open(%struct.TYPE_11__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %8, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 5
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %9, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @av_url_split(i32* null, i32 0, i32* null, i32 0, i32 %22, i32 4, i32* %10, i32 %25, i32 4, i8* %26)
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 1755, i32* %10, align 4
  br label %31

31:                                               ; preds = %30, %3
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @ff_url_join(i8* %32, i32 256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i32 %35, i32 %36, i32* null)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %41 = load i32, i32* @AVIO_FLAG_READ_WRITE, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = call i32 @ffurl_open_whitelist(i32* %39, i8* %40, i32 %41, i32* %43, i32* null, i32 %46, i32 %49, %struct.TYPE_11__* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %31
  br label %166

55:                                               ; preds = %31
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i32 3, i32* %57, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  store i32 2, i32* %59, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = load i32*, i32** @send_startup_packet, align 8
  %62 = load i32, i32* @SC_PKT_CLIENT_ACCEPTED, align 4
  %63 = call i32 @mms_safe_send_recv(%struct.TYPE_12__* %60, i32* %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %166

67:                                               ; preds = %55
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = load i32*, i32** @send_time_test_data, align 8
  %70 = load i32, i32* @SC_PKT_TIMING_TEST_REPLY, align 4
  %71 = call i32 @mms_safe_send_recv(%struct.TYPE_12__* %68, i32* %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %166

75:                                               ; preds = %67
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %77 = load i32*, i32** @send_protocol_select, align 8
  %78 = load i32, i32* @SC_PKT_PROTOCOL_ACCEPTED, align 4
  %79 = call i32 @mms_safe_send_recv(%struct.TYPE_12__* %76, i32* %77, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %166

83:                                               ; preds = %75
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %85 = load i32*, i32** @send_media_file_request, align 8
  %86 = load i32, i32* @SC_PKT_MEDIA_FILE_DETAILS, align 4
  %87 = call i32 @mms_safe_send_recv(%struct.TYPE_12__* %84, i32* %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %166

91:                                               ; preds = %83
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %93 = load i32*, i32** @send_media_header_request, align 8
  %94 = load i32, i32* @SC_PKT_HEADER_REQUEST_ACCEPTED, align 4
  %95 = call i32 @mms_safe_send_recv(%struct.TYPE_12__* %92, i32* %93, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %166

99:                                               ; preds = %91
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %101 = load i32, i32* @SC_PKT_ASF_HEADER, align 4
  %102 = call i32 @mms_safe_send_recv(%struct.TYPE_12__* %100, i32* null, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %166

106:                                              ; preds = %99
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 8
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 12
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = load i32, i32* @AV_LOG_ERROR, align 4
  %119 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %117, i32 %118, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = call i32 @AVERROR(i32 %120)
  store i32 %121, i32* %11, align 4
  br label %166

122:                                              ; preds = %111, %106
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %124 = call i32 @ff_mms_asf_header_parser(%struct.TYPE_13__* %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %129 = load i32, i32* @AV_LOG_TRACE, align 4
  %130 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %128, i32 %129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %166

131:                                              ; preds = %122
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  store i32 1, i32* %133, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %138, %131
  br label %166

144:                                              ; preds = %138
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %146 = call i32 @clear_stream_buffers(%struct.TYPE_13__* %145)
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %148 = load i32*, i32** @send_stream_selection_request, align 8
  %149 = load i32, i32* @SC_PKT_STREAM_ID_ACCEPTED, align 4
  %150 = call i32 @mms_safe_send_recv(%struct.TYPE_12__* %147, i32* %148, i32 %149)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  br label %166

154:                                              ; preds = %144
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %156 = load i32*, i32** @send_media_packet_request, align 8
  %157 = load i32, i32* @SC_PKT_MEDIA_PKT_FOLLOWS, align 4
  %158 = call i32 @mms_safe_send_recv(%struct.TYPE_12__* %155, i32* %156, i32 %157)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  br label %166

162:                                              ; preds = %154
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %164 = load i32, i32* @AV_LOG_TRACE, align 4
  %165 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %163, i32 %164, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %178

166:                                              ; preds = %161, %153, %143, %127, %116, %105, %98, %90, %82, %74, %66, %54
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %168 = call i32 @mms_close(%struct.TYPE_11__* %167)
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to %struct.TYPE_11__*
  %174 = load i32, i32* @AV_LOG_TRACE, align 4
  %175 = load i32, i32* %11, align 4
  %176 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %173, i32 %174, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %11, align 4
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %166, %162
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @av_url_split(i32*, i32, i32*, i32, i32, i32, i32*, i32, i32, i8*) #1

declare dso_local i32 @ff_url_join(i8*, i32, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @ffurl_open_whitelist(i32*, i8*, i32, i32*, i32*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @mms_safe_send_recv(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_mms_asf_header_parser(%struct.TYPE_13__*) #1

declare dso_local i32 @clear_stream_buffers(%struct.TYPE_13__*) #1

declare dso_local i32 @mms_close(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
