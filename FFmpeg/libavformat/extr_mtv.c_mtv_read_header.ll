; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mtv.c_mtv_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mtv.c_mtv_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@MTV_IMAGE_DEFAULT_BPP = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Header claims %dbpp (!= 16). Ignoring\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [95 x i8] c"width or height or segment_size is invalid and I cannot calculate them from other information\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"MTV files without audio\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@MTV_AUDIO_PADDING_SIZE = common dso_local global i32 0, align 4
@MTV_ASUBCHUNK_DATA_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_RAWVIDEO = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB565BE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"BottomUp\00", align 1
@MTV_AUDIO_SAMPLING_RATE = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_MP3 = common dso_local global i32 0, align 4
@AVSTREAM_PARSE_FULL = common dso_local global i32 0, align 4
@MTV_HEADER_SIZE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @mtv_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtv_read_header(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @avio_skip(i32* %14, i32 3)
  %16 = load i32*, i32** %5, align 8
  %17 = call i8* @avio_rl32(i32* %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 10
  store i8* %17, i8** %19, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i8* @avio_rl32(i32* %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 9
  store i8* %21, i8** %23, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @avio_skip(i32* %24, i32 32)
  %26 = load i32*, i32** %5, align 8
  %27 = call i8* @avio_rl24(i32* %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 8
  store i8* %27, i8** %29, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i8* @avio_rl16(i32* %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i8* @avio_rl24(i32* %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 7
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @avio_r8(i32* %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = call i8* @avio_rl16(i32* %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i8* @avio_rl16(i32* %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = call i8* @avio_rl16(i32* %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MTV_IMAGE_DEFAULT_BPP, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %1
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %65 = load i32, i32* @AV_LOG_WARNING, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %64, i32 %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @MTV_IMAGE_DEFAULT_BPP, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %63, %1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %103, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %78
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %86, 8
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 3
  %96 = sdiv i32 %91, %95
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = sdiv i32 %96, %99
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %88, %83, %78, %73
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %133, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %108
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp sge i32 %116, 8
  br i1 %117, label %118, label %133

118:                                              ; preds = %113
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %124, 3
  %126 = sdiv i32 %121, %125
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = sdiv i32 %126, %129
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %118, %113, %108, %103
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %133
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %143, %138, %133
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %150 = load i32, i32* @AV_LOG_ERROR, align 4
  %151 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %149, i32 %150, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0))
  %152 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %152, i32* %2, align 4
  br label %287

153:                                              ; preds = %143
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @avio_skip(i32* %154, i32 4)
  %156 = load i32*, i32** %5, align 8
  %157 = call i8* @avio_rl16(i32* %156)
  %158 = ptrtoint i8* %157 to i32
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %153
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %163 = call i32 @avpriv_request_sample(%struct.TYPE_14__* %162, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %164 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %164, i32* %2, align 4
  br label %287

165:                                              ; preds = %153
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @MTV_AUDIO_PADDING_SIZE, align 4
  %168 = load i32, i32* @MTV_ASUBCHUNK_DATA_SIZE, align 4
  %169 = add i32 %167, %168
  %170 = mul i32 %166, %169
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = add i32 %170, %173
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 4
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sdiv i32 %179, 4
  %181 = load i32, i32* %7, align 4
  %182 = udiv i32 %180, %181
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 6
  store i32 %182, i32* %184, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %186 = call %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__* %185, i32* null)
  store %struct.TYPE_13__* %186, %struct.TYPE_13__** %6, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %188 = icmp ne %struct.TYPE_13__* %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %165
  %190 = load i32, i32* @ENOMEM, align 4
  %191 = call i32 @AVERROR(i32 %190)
  store i32 %191, i32* %2, align 4
  br label %287

192:                                              ; preds = %165
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @avpriv_set_pts_info(%struct.TYPE_13__* %193, i32 64, i32 1, i32 %196)
  %198 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 5
  store i32 %198, i32* %202, align 4
  %203 = load i32, i32* @AV_CODEC_ID_RAWVIDEO, align 4
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 4
  store i32 %203, i32* %207, align 4
  %208 = load i32, i32* @AV_PIX_FMT_RGB565BE, align 4
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 7
  store i32 %208, i32* %212, align 4
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  store i32 %215, i32* %219, align 4
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  store i32 %222, i32* %226, align 4
  %227 = call i32 @av_strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 6
  store i32 %227, i32* %231, align 4
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %192
  %239 = load i32, i32* @ENOMEM, align 4
  %240 = call i32 @AVERROR(i32 %239)
  store i32 %240, i32* %2, align 4
  br label %287

241:                                              ; preds = %192
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 2
  store i32 9, i32* %245, align 4
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %247 = call %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__* %246, i32* null)
  store %struct.TYPE_13__* %247, %struct.TYPE_13__** %6, align 8
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %249 = icmp ne %struct.TYPE_13__* %248, null
  br i1 %249, label %253, label %250

250:                                              ; preds = %241
  %251 = load i32, i32* @ENOMEM, align 4
  %252 = call i32 @AVERROR(i32 %251)
  store i32 %252, i32* %2, align 4
  br label %287

253:                                              ; preds = %241
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %255 = load i32, i32* @MTV_AUDIO_SAMPLING_RATE, align 4
  %256 = call i32 @avpriv_set_pts_info(%struct.TYPE_13__* %254, i32 64, i32 1, i32 %255)
  %257 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 5
  store i32 %257, i32* %261, align 4
  %262 = load i32, i32* @AV_CODEC_ID_MP3, align 4
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 4
  store i32 %262, i32* %266, align 4
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 3
  store i32 %269, i32* %273, align 4
  %274 = load i32, i32* @AVSTREAM_PARSE_FULL, align 4
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 8
  %277 = load i32*, i32** %5, align 8
  %278 = load i64, i64* @MTV_HEADER_SIZE, align 8
  %279 = load i32, i32* @SEEK_SET, align 4
  %280 = call i64 @avio_seek(i32* %277, i64 %278, i32 %279)
  %281 = load i64, i64* @MTV_HEADER_SIZE, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %253
  %284 = load i32, i32* @EIO, align 4
  %285 = call i32 @AVERROR(i32 %284)
  store i32 %285, i32* %2, align 4
  br label %287

286:                                              ; preds = %253
  store i32 0, i32* %2, align 4
  br label %287

287:                                              ; preds = %286, %283, %250, %238, %189, %161, %148
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i8* @avio_rl32(i32*) #1

declare dso_local i8* @avio_rl24(i32*) #1

declare dso_local i8* @avio_rl16(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_14__*, i8*) #1

declare dso_local %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @av_strdup(i8*) #1

declare dso_local i64 @avio_seek(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
