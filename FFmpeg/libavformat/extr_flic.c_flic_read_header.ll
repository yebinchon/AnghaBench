; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flic.c_flic_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flic.c_flic_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i32 }

@FLIC_HEADER_SIZE = common dso_local global i32 0, align 4
@FLIC_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FLIC_DEFAULT_SPEED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_FLIC = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"File with no specified width/height. Trying 640x480.\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to peek at preamble\0A\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@FLIC_TFTD_CHUNK_AUDIO = common dso_local global i8* null, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_U8 = common dso_local global i32 0, align 4
@FLIC_TFTD_SAMPLE_RATE = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@FLIC_CHUNK_MAGIC_1 = common dso_local global i8* null, align 8
@FLIC_MC_SPEED = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@FLIC_FILE_MAGIC_1 = common dso_local global i32 0, align 4
@FLIC_FILE_MAGIC_2 = common dso_local global i32 0, align 4
@FLIC_FILE_MAGIC_3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Invalid or unsupported magic chunk in file\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @flic_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flic_read_header(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* @FLIC_HEADER_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = load i32, i32* @FLIC_PREAMBLE_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @FLIC_HEADER_SIZE, align 4
  %31 = call i32 @avio_read(i32* %29, i8* %23, i32 %30)
  %32 = load i32, i32* @FLIC_HEADER_SIZE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load i32, i32* @EIO, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %293

37:                                               ; preds = %1
  %38 = getelementptr inbounds i8, i8* %23, i64 4
  %39 = call i8* @AV_RL16(i8* %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = getelementptr inbounds i8, i8* %23, i64 16
  %42 = call i8* @AV_RL32(i8* %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @FLIC_DEFAULT_SPEED, align 4
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %46, %37
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = call %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_12__* %49, i32* null)
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %8, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = icmp ne %struct.TYPE_11__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %293

56:                                               ; preds = %48
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 12
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* @AV_CODEC_ID_FLIC, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 11
  store i32 %67, i32* %71, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 10
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds i8, i8* %23, i64 8
  %77 = call i8* @AV_RL16(i8* %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 8
  %83 = getelementptr inbounds i8, i8* %23, i64 10
  %84 = call i8* @AV_RL16(i8* %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  store i32 %85, i32* %89, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %56
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %96, %56
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %105 = load i32, i32* @AV_LOG_WARNING, align 4
  %106 = call i32 @av_log(%struct.TYPE_12__* %104, i32 %105, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  store i32 640, i32* %110, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  store i32 480, i32* %114, align 4
  br label %115

115:                                              ; preds = %103, %96
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = load i32, i32* @FLIC_HEADER_SIZE, align 4
  %120 = call i64 @ff_alloc_extradata(%struct.TYPE_13__* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = call i32 @AVERROR(i32 %123)
  store i32 %124, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %293

125:                                              ; preds = %115
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @FLIC_HEADER_SIZE, align 4
  %132 = call i32 @memcpy(i32 %130, i8* %23, i32 %131)
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* @FLIC_PREAMBLE_SIZE, align 4
  %135 = call i32 @avio_read(i32* %133, i8* %26, i32 %134)
  %136 = load i32, i32* @FLIC_PREAMBLE_SIZE, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %125
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %140 = load i32, i32* @AV_LOG_ERROR, align 4
  %141 = call i32 @av_log(%struct.TYPE_12__* %139, i32 %140, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %142 = load i32, i32* @EIO, align 4
  %143 = call i32 @AVERROR(i32 %142)
  store i32 %143, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %293

144:                                              ; preds = %125
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* @FLIC_PREAMBLE_SIZE, align 4
  %147 = sub nsw i32 0, %146
  %148 = load i32, i32* @SEEK_CUR, align 4
  %149 = call i32 @avio_seek(i32* %145, i32 %147, i32 %148)
  %150 = getelementptr inbounds i8, i8* %26, i64 4
  %151 = call i8* @AV_RL16(i8* %150)
  %152 = load i8*, i8** @FLIC_TFTD_CHUNK_AUDIO, align 8
  %153 = icmp eq i8* %151, %152
  br i1 %153, label %154, label %232

154:                                              ; preds = %144
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %156 = call %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_12__* %155, i32* null)
  store %struct.TYPE_11__* %156, %struct.TYPE_11__** %9, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %158 = icmp ne %struct.TYPE_11__* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = call i32 @AVERROR(i32 %160)
  store i32 %161, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %293

162:                                              ; preds = %154
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = getelementptr inbounds i8, i8* %26, i64 0
  %169 = call i8* @AV_RL32(i8* %168)
  %170 = ptrtoint i8* %169 to i32
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 2
  store i32 %170, i32* %174, align 8
  %175 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 12
  store i32 %175, i32* %179, align 4
  %180 = load i32, i32* @AV_CODEC_ID_PCM_U8, align 4
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 11
  store i32 %180, i32* %184, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 10
  store i64 0, i64* %188, align 8
  %189 = load i32, i32* @FLIC_TFTD_SAMPLE_RATE, align 4
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 3
  store i32 %189, i32* %193, align 4
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 4
  store i32 1, i32* %197, align 8
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %202, 8
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 5
  store i32 %203, i32* %207, align 4
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 6
  store i32 8, i32* %211, align 8
  %212 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 9
  store i32 %212, i32* %216, align 8
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 8
  store i64 0, i64* %220, align 8
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @FLIC_TFTD_SAMPLE_RATE, align 4
  %228 = call i32 @avpriv_set_pts_info(%struct.TYPE_11__* %221, i32 64, i32 %226, i32 %227)
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %230 = load i32, i32* @FLIC_TFTD_SAMPLE_RATE, align 4
  %231 = call i32 @avpriv_set_pts_info(%struct.TYPE_11__* %229, i32 64, i32 1, i32 %230)
  br label %292

232:                                              ; preds = %144
  %233 = getelementptr inbounds i8, i8* %23, i64 16
  %234 = call i8* @AV_RL16(i8* %233)
  %235 = load i8*, i8** @FLIC_CHUNK_MAGIC_1, align 8
  %236 = icmp eq i8* %234, %235
  br i1 %236, label %237, label %264

237:                                              ; preds = %232
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %239 = load i32, i32* @FLIC_MC_SPEED, align 4
  %240 = call i32 @avpriv_set_pts_info(%struct.TYPE_11__* %238, i32 64, i32 %239, i32 70)
  %241 = load i32*, i32** %5, align 8
  %242 = load i32, i32* @SEEK_SET, align 4
  %243 = call i32 @avio_seek(i32* %241, i32 12, i32 %242)
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 7
  %248 = call i32 @av_freep(i32* %247)
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %250, align 8
  %252 = call i64 @ff_alloc_extradata(%struct.TYPE_13__* %251, i32 12)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %237
  %255 = load i32, i32* @ENOMEM, align 4
  %256 = call i32 @AVERROR(i32 %255)
  store i32 %256, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %293

257:                                              ; preds = %237
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 7
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @memcpy(i32 %262, i8* %23, i32 12)
  br label %291

264:                                              ; preds = %232
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* @FLIC_FILE_MAGIC_1, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %272

268:                                              ; preds = %264
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %270 = load i32, i32* %10, align 4
  %271 = call i32 @avpriv_set_pts_info(%struct.TYPE_11__* %269, i32 64, i32 %270, i32 70)
  br label %290

272:                                              ; preds = %264
  %273 = load i32, i32* %11, align 4
  %274 = load i32, i32* @FLIC_FILE_MAGIC_2, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %280, label %276

276:                                              ; preds = %272
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* @FLIC_FILE_MAGIC_3, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %276, %272
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %282 = load i32, i32* %10, align 4
  %283 = call i32 @avpriv_set_pts_info(%struct.TYPE_11__* %281, i32 64, i32 %282, i32 1000)
  br label %289

284:                                              ; preds = %276
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %286 = load i32, i32* @AV_LOG_ERROR, align 4
  %287 = call i32 @av_log(%struct.TYPE_12__* %285, i32 %286, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %288 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %288, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %293

289:                                              ; preds = %280
  br label %290

290:                                              ; preds = %289, %268
  br label %291

291:                                              ; preds = %290, %257
  br label %292

292:                                              ; preds = %291, %162
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %293

293:                                              ; preds = %292, %284, %254, %159, %138, %122, %53, %34
  %294 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %294)
  %295 = load i32, i32* %2, align 4
  ret i32 %295
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @avio_read(i32*, i8*, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i8* @AV_RL16(i8*) #2

declare dso_local i8* @AV_RL32(i8*) #2

declare dso_local %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_12__*, i32*) #2

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*) #2

declare dso_local i64 @ff_alloc_extradata(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @avio_seek(i32*, i32, i32) #2

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_11__*, i32, i32, i32) #2

declare dso_local i32 @av_freep(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
