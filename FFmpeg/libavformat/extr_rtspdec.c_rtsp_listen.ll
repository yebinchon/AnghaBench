; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_rtsp_listen.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_rtsp_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }

@RTSP_DEFAULT_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"rtsps\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tls\00", align 1
@RTSPS_DEFAULT_PORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"?listen&listen_timeout=%d\00", align 1
@AVIO_FLAG_READ_WRITE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Unable to open RTSP for listening\0A\00", align 1
@RTSP_STATE_IDLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"RTSP: Unexpected Command\0A\00", align 1
@ANNOUNCE = common dso_local global i32 0, align 4
@RTSP_STATE_PAUSED = common dso_local global i32 0, align 4
@OPTIONS = common dso_local global i32 0, align 4
@RECORD = common dso_local global i32 0, align 4
@SETUP = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @rtsp_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_listen(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca [128 x i8], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca [128 x i8], align 16
  %9 = alloca [500 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [500 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca [4096 x i8], align 16
  %15 = alloca [10 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %4, align 8
  %22 = load i32, i32* @RTSP_DEFAULT_PORT, align 4
  store i32 %22, i32* %11, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i32 0, i32* %16, align 4
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @av_url_split(i8* %23, i32 128, i8* %24, i32 128, i8* %25, i32 128, i32* %10, i8* %26, i32 512, i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %40 = call i32 (i8*, i32, i8*, i32*, i8*, i32, i8*, ...) @ff_url_join(i8* %35, i32 4, i8* %36, i32* null, i8* %37, i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  %45 = load i32, i32* @RTSPS_DEFAULT_PORT, align 4
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %44, %1
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %49, %46
  %52 = getelementptr inbounds [500 x i8], [500 x i8]* %12, i64 0, i64 0
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 1000
  %60 = call i32 (i8*, i32, i8*, i32*, i8*, i32, i8*, ...) @ff_url_join(i8* %52, i32 500, i8* %53, i32* null, i8* %54, i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = getelementptr inbounds [500 x i8], [500 x i8]* %12, i64 0, i64 0
  %64 = load i32, i32* @AVIO_FLAG_READ_WRITE, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ffurl_open_whitelist(i32* %62, i8* %63, i32 %64, i32* %66, i32* null, i32 %69, i32 %72, i32* null)
  store i32 %73, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %51
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = load i32, i32* @AV_LOG_ERROR, align 4
  %78 = call i32 @av_log(%struct.TYPE_12__* %76, i32 %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i32, i32* %17, align 4
  store i32 %79, i32* %2, align 4
  br label %161

80:                                               ; preds = %51
  %81 = load i32, i32* @RTSP_STATE_IDLE, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %160, %80
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %91 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  %92 = call i32 @read_line(%struct.TYPE_12__* %90, i8* %91, i32 4096, i32* %16)
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* %17, align 4
  store i32 %96, i32* %2, align 4
  br label %161

97:                                               ; preds = %89
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  %100 = load i32, i32* %16, align 4
  %101 = getelementptr inbounds [500 x i8], [500 x i8]* %9, i64 0, i64 0
  %102 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %103 = call i32 @parse_command_line(%struct.TYPE_12__* %98, i8* %99, i32 %100, i8* %101, i32 500, i8* %102, i32 10, i32* %18)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %97
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = load i32, i32* @AV_LOG_ERROR, align 4
  %109 = call i32 @av_log(%struct.TYPE_12__* %107, i32 %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %110 = load i32, i32* %17, align 4
  store i32 %110, i32* %2, align 4
  br label %161

111:                                              ; preds = %97
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* @ANNOUNCE, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %117 = call i32 @rtsp_read_announce(%struct.TYPE_12__* %116)
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* @RTSP_STATE_PAUSED, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  br label %151

121:                                              ; preds = %111
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* @OPTIONS, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %127 = call i32 @rtsp_read_options(%struct.TYPE_12__* %126)
  store i32 %127, i32* %17, align 4
  br label %150

128:                                              ; preds = %121
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* @RECORD, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %134 = call i32 @rtsp_read_record(%struct.TYPE_12__* %133)
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %17, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %161

138:                                              ; preds = %132
  br label %149

139:                                              ; preds = %128
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* @SETUP, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %145 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %146 = getelementptr inbounds [500 x i8], [500 x i8]* %9, i64 0, i64 0
  %147 = call i32 @rtsp_read_setup(%struct.TYPE_12__* %144, i8* %145, i8* %146)
  store i32 %147, i32* %17, align 4
  br label %148

148:                                              ; preds = %143, %139
  br label %149

149:                                              ; preds = %148, %138
  br label %150

150:                                              ; preds = %149, %125
  br label %151

151:                                              ; preds = %150, %115
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ffurl_close(i32 %157)
  %159 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %159, i32* %2, align 4
  br label %161

160:                                              ; preds = %151
  br label %89

161:                                              ; preds = %154, %137, %106, %95, %75
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @av_url_split(i8*, i32, i8*, i32, i8*, i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @ff_url_join(i8*, i32, i8*, i32*, i8*, i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @ffurl_open_whitelist(i32*, i8*, i32, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @read_line(%struct.TYPE_12__*, i8*, i32, i32*) #1

declare dso_local i32 @parse_command_line(%struct.TYPE_12__*, i8*, i32, i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @rtsp_read_announce(%struct.TYPE_12__*) #1

declare dso_local i32 @rtsp_read_options(%struct.TYPE_12__*) #1

declare dso_local i32 @rtsp_read_record(%struct.TYPE_12__*) #1

declare dso_local i32 @rtsp_read_setup(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @ffurl_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
