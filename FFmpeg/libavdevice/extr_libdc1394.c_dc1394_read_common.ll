; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_libdc1394.c_dc1394_read_common.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_libdc1394.c_dc1394_read_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc1394_frame_format = type { i32, i32, i32 }
%struct.dc1394_frame_rate = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32, %struct.TYPE_15__ }
%struct.TYPE_12__ = type { i32, i32, i32, i8*, i32, i32 }
%struct.TYPE_15__ = type { i64, i32 }

@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"No such pixel format: %s.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not parse video size '%s'.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not parse framerate '%s'.\0A\00", align 1
@dc1394_frame_formats = common dso_local global %struct.dc1394_frame_format* null, align 8
@dc1394_frame_rates = common dso_local global %struct.dc1394_frame_rate* null, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"Can't find matching camera format for %s, %dx%d@%d:1000fps\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_RAWVIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.dc1394_frame_format**, %struct.dc1394_frame_rate**)* @dc1394_read_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc1394_read_common(%struct.TYPE_16__* %0, %struct.dc1394_frame_format** %1, %struct.dc1394_frame_rate** %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.dc1394_frame_format**, align 8
  %6 = alloca %struct.dc1394_frame_rate**, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.dc1394_frame_format*, align 8
  %10 = alloca %struct.dc1394_frame_rate*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.dc1394_frame_format** %1, %struct.dc1394_frame_format*** %5, align 8
  store %struct.dc1394_frame_rate** %2, %struct.dc1394_frame_rate*** %6, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %7, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @av_get_pix_fmt(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = load i32, i32* @AV_LOG_ERROR, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_16__* %26, i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %15, align 4
  br label %222

34:                                               ; preds = %3
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @av_parse_video_size(i32* %12, i32* %13, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = load i32, i32* @AV_LOG_ERROR, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_16__* %41, i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %222

47:                                               ; preds = %34
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @av_parse_video_rate(%struct.TYPE_15__* %14, i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_16__* %54, i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %222

60:                                               ; preds = %47
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @av_rescale(i32 1000, i64 %62, i32 %64)
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.dc1394_frame_format*, %struct.dc1394_frame_format** @dc1394_frame_formats, align 8
  store %struct.dc1394_frame_format* %69, %struct.dc1394_frame_format** %9, align 8
  br label %70

70:                                               ; preds = %95, %60
  %71 = load %struct.dc1394_frame_format*, %struct.dc1394_frame_format** %9, align 8
  %72 = getelementptr inbounds %struct.dc1394_frame_format, %struct.dc1394_frame_format* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = load %struct.dc1394_frame_format*, %struct.dc1394_frame_format** %9, align 8
  %77 = getelementptr inbounds %struct.dc1394_frame_format, %struct.dc1394_frame_format* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %75
  %82 = load %struct.dc1394_frame_format*, %struct.dc1394_frame_format** %9, align 8
  %83 = getelementptr inbounds %struct.dc1394_frame_format, %struct.dc1394_frame_format* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.dc1394_frame_format*, %struct.dc1394_frame_format** %9, align 8
  %89 = getelementptr inbounds %struct.dc1394_frame_format, %struct.dc1394_frame_format* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %98

94:                                               ; preds = %87, %81, %75
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.dc1394_frame_format*, %struct.dc1394_frame_format** %9, align 8
  %97 = getelementptr inbounds %struct.dc1394_frame_format, %struct.dc1394_frame_format* %96, i32 1
  store %struct.dc1394_frame_format* %97, %struct.dc1394_frame_format** %9, align 8
  br label %70

98:                                               ; preds = %93, %70
  %99 = load %struct.dc1394_frame_rate*, %struct.dc1394_frame_rate** @dc1394_frame_rates, align 8
  store %struct.dc1394_frame_rate* %99, %struct.dc1394_frame_rate** %10, align 8
  br label %100

100:                                              ; preds = %115, %98
  %101 = load %struct.dc1394_frame_rate*, %struct.dc1394_frame_rate** %10, align 8
  %102 = getelementptr inbounds %struct.dc1394_frame_rate, %struct.dc1394_frame_rate* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %100
  %106 = load %struct.dc1394_frame_rate*, %struct.dc1394_frame_rate** %10, align 8
  %107 = getelementptr inbounds %struct.dc1394_frame_rate, %struct.dc1394_frame_rate* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %118

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.dc1394_frame_rate*, %struct.dc1394_frame_rate** %10, align 8
  %117 = getelementptr inbounds %struct.dc1394_frame_rate, %struct.dc1394_frame_rate* %116, i32 1
  store %struct.dc1394_frame_rate* %117, %struct.dc1394_frame_rate** %10, align 8
  br label %100

118:                                              ; preds = %113, %100
  %119 = load %struct.dc1394_frame_rate*, %struct.dc1394_frame_rate** %10, align 8
  %120 = getelementptr inbounds %struct.dc1394_frame_rate, %struct.dc1394_frame_rate* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.dc1394_frame_format*, %struct.dc1394_frame_format** %9, align 8
  %125 = getelementptr inbounds %struct.dc1394_frame_format, %struct.dc1394_frame_format* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %141, label %128

128:                                              ; preds = %123, %118
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %130 = load i32, i32* @AV_LOG_ERROR, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @av_get_pix_fmt_name(i32 %131)
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_16__* %129, i32 %130, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %132, i32 %133, i32 %134, i64 %137)
  %139 = load i32, i32* @EINVAL, align 4
  %140 = call i32 @AVERROR(i32 %139)
  store i32 %140, i32* %15, align 4
  br label %222

141:                                              ; preds = %123
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %143 = call %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_16__* %142, i32* null)
  store %struct.TYPE_14__* %143, %struct.TYPE_14__** %8, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %145 = icmp ne %struct.TYPE_14__* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = call i32 @AVERROR(i32 %147)
  store i32 %148, i32* %15, align 4
  br label %222

149:                                              ; preds = %141
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %151 = call i32 @avpriv_set_pts_info(%struct.TYPE_14__* %150, i32 64, i32 1, i32 1000)
  %152 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 5
  store i32 %152, i32* %156, align 4
  %157 = load i32, i32* @AV_CODEC_ID_RAWVIDEO, align 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 4
  store i32 %157, i32* %161, align 8
  %162 = load %struct.dc1394_frame_format*, %struct.dc1394_frame_format** %9, align 8
  %163 = getelementptr inbounds %struct.dc1394_frame_format, %struct.dc1394_frame_format* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  store i32 %164, i32* %168, align 8
  %169 = load %struct.dc1394_frame_format*, %struct.dc1394_frame_format** %9, align 8
  %170 = getelementptr inbounds %struct.dc1394_frame_format, %struct.dc1394_frame_format* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  store i32 %171, i32* %175, align 4
  %176 = load %struct.dc1394_frame_format*, %struct.dc1394_frame_format** %9, align 8
  %177 = getelementptr inbounds %struct.dc1394_frame_format, %struct.dc1394_frame_format* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  store i32 %178, i32* %182, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  %185 = bitcast %struct.TYPE_15__* %184 to i8*
  %186 = bitcast %struct.TYPE_15__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %185, i8* align 8 %186, i64 16, i1 false)
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 3
  store i64 0, i64* %188, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 4
  %194 = load %struct.dc1394_frame_format*, %struct.dc1394_frame_format** %9, align 8
  %195 = getelementptr inbounds %struct.dc1394_frame_format, %struct.dc1394_frame_format* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.dc1394_frame_format*, %struct.dc1394_frame_format** %9, align 8
  %198 = getelementptr inbounds %struct.dc1394_frame_format, %struct.dc1394_frame_format* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.dc1394_frame_format*, %struct.dc1394_frame_format** %9, align 8
  %201 = getelementptr inbounds %struct.dc1394_frame_format, %struct.dc1394_frame_format* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @av_image_get_buffer_size(i32 %196, i32 %199, i32 %202, i32 1)
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 8
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = mul nsw i32 %208, 8
  %210 = load %struct.dc1394_frame_rate*, %struct.dc1394_frame_rate** %10, align 8
  %211 = getelementptr inbounds %struct.dc1394_frame_rate, %struct.dc1394_frame_rate* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i8* @av_rescale(i32 %209, i64 %212, i32 1000)
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 3
  store i8* %213, i8** %217, align 8
  %218 = load %struct.dc1394_frame_rate*, %struct.dc1394_frame_rate** %10, align 8
  %219 = load %struct.dc1394_frame_rate**, %struct.dc1394_frame_rate*** %6, align 8
  store %struct.dc1394_frame_rate* %218, %struct.dc1394_frame_rate** %219, align 8
  %220 = load %struct.dc1394_frame_format*, %struct.dc1394_frame_format** %9, align 8
  %221 = load %struct.dc1394_frame_format**, %struct.dc1394_frame_format*** %5, align 8
  store %struct.dc1394_frame_format* %220, %struct.dc1394_frame_format** %221, align 8
  br label %222

222:                                              ; preds = %149, %146, %128, %53, %40, %25
  %223 = load i32, i32* %15, align 4
  ret i32 %223
}

declare dso_local i32 @av_get_pix_fmt(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, i32, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_parse_video_size(i32*, i32*, i32) #1

declare dso_local i32 @av_parse_video_rate(%struct.TYPE_15__*, i32) #1

declare dso_local i8* @av_rescale(i32, i64, i32) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

declare dso_local %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_14__*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @av_image_get_buffer_size(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
