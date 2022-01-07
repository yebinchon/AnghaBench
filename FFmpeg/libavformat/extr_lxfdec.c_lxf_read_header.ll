; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_lxfdec.c_lxf_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_lxfdec.c_lxf_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32, i8* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }

@LXF_HEADER_DATA_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"expected %d B size header, got %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@lxf_tags = common dso_local global i32 0, align 4
@AVSTREAM_PARSE_HEADERS = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"record: %x = %i-%02i-%02i\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"expire: %x = %i-%02i-%02i\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"VBI data not yet supported\0A\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@LXF_SAMPLERATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @lxf_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lxf_read_header(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %4, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  %21 = load i32, i32* @LXF_HEADER_DATA_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = call i32 @get_packet_header(%struct.TYPE_14__* %25)
  store i32 %26, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %194

30:                                               ; preds = %1
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @LXF_HEADER_DATA_SIZE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = load i32, i32* @LXF_HEADER_DATA_SIZE, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %35, i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %194

41:                                               ; preds = %30
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @LXF_HEADER_DATA_SIZE, align 4
  %44 = call i32 @avio_read(i32* %42, i32* %24, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @LXF_HEADER_DATA_SIZE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  br label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @AVERROR_EOF, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %194

56:                                               ; preds = %41
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = call %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__* %57, i32* null)
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %9, align 8
  %59 = icmp ne %struct.TYPE_13__* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = call i32 @AVERROR(i32 %61)
  store i32 %62, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %194

63:                                               ; preds = %56
  %64 = getelementptr inbounds i32, i32* %24, i64 32
  %65 = call i8* @AV_RL32(i32* %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = getelementptr inbounds i32, i32* %24, i64 40
  %69 = call i8* @AV_RL32(i32* %68)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %10, align 4
  %71 = getelementptr inbounds i32, i32* %24, i64 56
  %72 = call i32 @AV_RL16(i32* %71)
  store i32 %72, i32* %12, align 4
  %73 = getelementptr inbounds i32, i32* %24, i64 58
  %74 = call i32 @AV_RL16(i32* %73)
  store i32 %74, i32* %13, align 4
  %75 = getelementptr inbounds i32, i32* %24, i64 116
  %76 = call i8* @AV_RL32(i32* %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 4
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* %10, align 4
  %84 = ashr i32 %83, 14
  %85 = and i32 %84, 255
  %86 = mul nsw i32 1000000, %85
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* %10, align 4
  %92 = and i32 %91, 15
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* @lxf_tags, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ff_codec_get_id(i32 %97, i32 %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 5
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* @AVSTREAM_PARSE_HEADERS, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %112 = load i32, i32* @AV_LOG_DEBUG, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = and i32 %114, 127
  %116 = add nsw i32 1900, %115
  %117 = load i32, i32* %12, align 4
  %118 = ashr i32 %117, 7
  %119 = and i32 %118, 15
  %120 = load i32, i32* %12, align 4
  %121 = ashr i32 %120, 11
  %122 = and i32 %121, 31
  %123 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %111, i32 %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %116, i32 %119, i32 %122)
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %125 = load i32, i32* @AV_LOG_DEBUG, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = and i32 %127, 127
  %129 = add nsw i32 1900, %128
  %130 = load i32, i32* %13, align 4
  %131 = ashr i32 %130, 7
  %132 = and i32 %131, 15
  %133 = load i32, i32* %13, align 4
  %134 = ashr i32 %133, 11
  %135 = and i32 %134, 31
  %136 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %124, i32 %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %126, i32 %129, i32 %132, i32 %135)
  %137 = load i32, i32* %10, align 4
  %138 = ashr i32 %137, 22
  %139 = and i32 %138, 1
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %63
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %143 = load i32, i32* @AV_LOG_WARNING, align 4
  %144 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %142, i32 %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %145

145:                                              ; preds = %141, %63
  %146 = load i32, i32* %11, align 4
  %147 = ashr i32 %146, 4
  %148 = and i32 %147, 3
  %149 = add nsw i32 %148, 1
  %150 = shl i32 1, %149
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  %153 = icmp ne i32 %150, 0
  br i1 %153, label %154, label %186

154:                                              ; preds = %145
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %156 = call %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__* %155, i32* null)
  store %struct.TYPE_13__* %156, %struct.TYPE_13__** %9, align 8
  %157 = icmp ne %struct.TYPE_13__* %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = call i32 @AVERROR(i32 %159)
  store i32 %160, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %194

161:                                              ; preds = %154
  %162 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 4
  store i32 %162, i32* %166, align 4
  %167 = load i32, i32* @LXF_SAMPLERATE, align 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 3
  store i32 %167, i32* %171, align 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 2
  store i32 %174, i32* %178, align 4
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @avpriv_set_pts_info(%struct.TYPE_13__* %179, i32 64, i32 1, i32 %184)
  br label %186

186:                                              ; preds = %161, %145
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @avio_skip(i32* %189, i32 %192)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %194

194:                                              ; preds = %186, %158, %60, %54, %34, %28
  %195 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %195)
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_packet_header(%struct.TYPE_14__*) #2

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #2

declare dso_local i32 @avio_read(i32*, i32*, i32) #2

declare dso_local %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__*, i32*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i8* @AV_RL32(i32*) #2

declare dso_local i32 @AV_RL16(i32*) #2

declare dso_local i32 @ff_codec_get_id(i32, i32) #2

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_13__*, i32, i32, i32) #2

declare dso_local i32 @avio_skip(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
