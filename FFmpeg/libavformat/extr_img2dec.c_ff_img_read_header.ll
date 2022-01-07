; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2dec.c_ff_img_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2dec.c_ff_img_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i64, i32, i64, i32, %struct.TYPE_18__*, i32, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_21__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_17__, i64, i64, i64, i64, %struct.TYPE_19__, i64, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__*, i64, i32 }
%struct.TYPE_20__ = type { i64, i64, i32, i64, i64 }
%struct.TYPE_24__ = type { i64, i64 (%struct.TYPE_23__*)*, i32, i64 }
%struct.TYPE_23__ = type { i8*, i32, i32, i32 }

@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@AVFMTCTX_NOHEADER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"No such pixel format: %s.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AVFMT_NOFILE = common dso_local global i32 0, align 4
@AVSTREAM_PARSE_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"POSIX.1-2008 not supported, nanosecond file timestamps unavailable\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@PT_DEFAULT = common dso_local global i64 0, align 8
@PT_NONE = common dso_local global i64 0, align 8
@PT_GLOB_SEQUENCE = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"Pattern type 'glob_sequence' is deprecated: use pattern_type 'glob' instead\0A\00", align 1
@PT_SEQUENCE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [64 x i8] c"Could find no file with path '%s' and index in the range %d-%d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@PT_GLOB = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [90 x i8] c"Pattern type 'glob' was selected but globbing is not supported by this libavformat build\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Unknown value '%d' for pattern_type option\0A\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@AVPROBE_PADDING_SIZE = common dso_local global i64 0, align 8
@AVFMT_FLAG_CUSTOM_IO = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@AV_CODEC_ID_LJPEG = common dso_local global i64 0, align 8
@AV_CODEC_ID_MJPEG = common dso_local global i64 0, align 8
@AV_CODEC_ID_ALIAS_PIX = common dso_local global i64 0, align 8
@GLOB_BRACE = common dso_local global i32 0, align 4
@GLOB_NOCHECK = common dso_local global i32 0, align 4
@GLOB_NOMAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_img_read_header(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 7
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %18 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @AVFMTCTX_NOHEADER, align 4
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %25 = call %struct.TYPE_22__* @avformat_new_stream(%struct.TYPE_25__* %24, i32* null)
  store %struct.TYPE_22__* %25, %struct.TYPE_22__** %7, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %27 = icmp ne %struct.TYPE_22__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %551

31:                                               ; preds = %1
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 16
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 16
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @av_get_pix_fmt(i64 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %45 = load i32, i32* @AV_LOG_ERROR, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 16
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %44, i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %551

52:                                               ; preds = %36, %31
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @av_strlcpy(i8* %55, i32 %58, i32 8)
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  store i32 0, i32* %61, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 15
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @AVFMT_NOFILE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %52
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 2
  store i32 0, i32* %74, align 4
  br label %81

75:                                               ; preds = %52
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 2
  store i32 1, i32* %77, align 4
  %78 = load i32, i32* @AVSTREAM_PARSE_FULL, align 4
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %75, %72
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %88 = load i32, i32* @AV_LOG_ERROR, align 4
  %89 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %87, i32 %88, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @ENOSYS, align 4
  %91 = call i32 @AVERROR(i32 %90)
  store i32 %91, i32* %2, align 4
  br label %551

92:                                               ; preds = %81
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %99 = call i32 @avpriv_set_pts_info(%struct.TYPE_22__* %98, i32 64, i32 1, i32 1)
  br label %111

100:                                              ; preds = %92
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 14
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 14
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @avpriv_set_pts_info(%struct.TYPE_22__* %101, i32 64, i32 %105, i32 %109)
  br label %111

111:                                              ; preds = %100, %97
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 13
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %112
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 12
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %117
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 13
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 4
  store i64 %125, i64* %129, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 12
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 3
  store i64 %132, i64* %136, align 8
  br label %137

137:                                              ; preds = %122, %117, %112
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %296, label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 8
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @PT_DEFAULT, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %142
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i64, i64* @PT_NONE, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 8
  store i64 %154, i64* %156, align 8
  br label %161

157:                                              ; preds = %148
  %158 = load i64, i64* @PT_GLOB_SEQUENCE, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 8
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %157, %153
  br label %162

162:                                              ; preds = %161, %142
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 8
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @PT_GLOB_SEQUENCE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %184

168:                                              ; preds = %162
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @is_glob(i8* %171)
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 4
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %168
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %181 = load i32, i32* @AV_LOG_WARNING, align 4
  %182 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %180, i32 %181, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0))
  br label %183

183:                                              ; preds = %179, %168
  br label %184

184:                                              ; preds = %183, %162
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 8
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @PT_GLOB_SEQUENCE, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %184
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190, %184
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 8
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @PT_SEQUENCE, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %237

201:                                              ; preds = %195, %190
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 11
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 10
  %213 = load i64, i64* %212, align 8
  %214 = call i64 @find_image_range(i64 %204, i32* %5, i32* %6, i8* %207, i64 %210, i64 %213)
  %215 = icmp slt i64 %214, 0
  br i1 %215, label %216, label %236

216:                                              ; preds = %201
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %218 = load i32, i32* @AV_LOG_ERROR, align 4
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 11
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 11
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 10
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %227, %230
  %232 = sub nsw i64 %231, 1
  %233 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %217, i32 %218, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* %221, i64 %224, i64 %232)
  %234 = load i32, i32* @ENOENT, align 4
  %235 = call i32 @AVERROR(i32 %234)
  store i32 %235, i32* %2, align 4
  br label %551

236:                                              ; preds = %201
  br label %272

237:                                              ; preds = %195
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 8
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @PT_GLOB, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %237
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %245 = load i32, i32* @AV_LOG_ERROR, align 4
  %246 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %244, i32 %245, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0))
  %247 = load i32, i32* @ENOSYS, align 4
  %248 = call i32 @AVERROR(i32 %247)
  store i32 %248, i32* %2, align 4
  br label %551

249:                                              ; preds = %237
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 8
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @PT_GLOB_SEQUENCE, align 8
  %254 = icmp ne i64 %252, %253
  br i1 %254, label %255, label %270

255:                                              ; preds = %249
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 8
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @PT_NONE, align 8
  %260 = icmp ne i64 %258, %259
  br i1 %260, label %261, label %270

261:                                              ; preds = %255
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %263 = load i32, i32* @AV_LOG_ERROR, align 4
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 8
  %266 = load i64, i64* %265, align 8
  %267 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %262, i32 %263, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i64 %266)
  %268 = load i32, i32* @EINVAL, align 4
  %269 = call i32 @AVERROR(i32 %268)
  store i32 %269, i32* %2, align 4
  br label %551

270:                                              ; preds = %255, %249
  br label %271

271:                                              ; preds = %270
  br label %272

272:                                              ; preds = %271, %236
  %273 = load i32, i32* %5, align 4
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 5
  store i32 %273, i32* %275, align 8
  %276 = load i32, i32* %6, align 4
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 6
  store i32 %276, i32* %278, align 4
  %279 = load i32, i32* %5, align 4
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 8
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %295, label %286

286:                                              ; preds = %272
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 2
  store i64 0, i64* %288, align 8
  %289 = load i32, i32* %6, align 4
  %290 = load i32, i32* %5, align 4
  %291 = sub nsw i32 %289, %290
  %292 = add nsw i32 %291, 1
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 0
  store i32 %292, i32* %294, align 8
  br label %295

295:                                              ; preds = %286, %272
  br label %296

296:                                              ; preds = %295, %137
  %297 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %314

301:                                              ; preds = %296
  %302 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %303 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_20__*, %struct.TYPE_20__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 0
  store i64 %302, i64* %306, align 8
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_20__*, %struct.TYPE_20__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %312, i32 0, i32 1
  store i64 %309, i64* %313, align 8
  br label %532

314:                                              ; preds = %296
  %315 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %332

319:                                              ; preds = %314
  %320 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 0
  store i64 %320, i64* %324, align 8
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i32 0, i32 1
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 1
  store i64 %327, i64* %331, align 8
  br label %531

332:                                              ; preds = %314
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 5
  %335 = load %struct.TYPE_18__*, %struct.TYPE_18__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %354

339:                                              ; preds = %332
  %340 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %341 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_20__*, %struct.TYPE_20__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 0
  store i64 %340, i64* %344, align 8
  %345 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %345, i32 0, i32 5
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 1
  %352 = load %struct.TYPE_20__*, %struct.TYPE_20__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %352, i32 0, i32 1
  store i64 %349, i64* %353, align 8
  br label %530

354:                                              ; preds = %332
  %355 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %355, i32 0, i32 0
  %357 = load i8*, i8** %356, align 8
  %358 = call i8* @strrchr(i8* %357, i8 signext 46)
  store i8* %358, i8** %9, align 8
  %359 = load i8*, i8** %9, align 8
  %360 = icmp ne i8* %359, null
  br i1 %360, label %361, label %367

361:                                              ; preds = %354
  %362 = load i8*, i8** %9, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 1
  %364 = call i32 @av_strcasecmp(i8* %363, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %365 = icmp ne i32 %364, 0
  %366 = xor i1 %365, true
  br label %367

367:                                              ; preds = %361, %354
  %368 = phi i1 [ false, %354 ], [ %366, %361 ]
  %369 = zext i1 %368 to i32
  %370 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %370, i32 0, i32 7
  store i32 %369, i32* %371, align 8
  %372 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %373 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %373, i32 0, i32 1
  %375 = load %struct.TYPE_20__*, %struct.TYPE_20__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 0
  store i64 %372, i64* %376, align 8
  %377 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %377, i32 0, i32 3
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %484

381:                                              ; preds = %367
  store i32 2048, i32* %10, align 4
  %382 = load i32, i32* %10, align 4
  %383 = sext i32 %382 to i64
  %384 = load i64, i64* @AVPROBE_PADDING_SIZE, align 8
  %385 = add nsw i64 %383, %384
  %386 = call i8* @av_realloc(i32* null, i64 %385)
  store i8* %386, i8** %11, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %12, align 8
  store i8* null, i8** %13, align 8
  %387 = bitcast %struct.TYPE_23__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %387, i8 0, i64 24, i1 false)
  %388 = load i8*, i8** %11, align 8
  %389 = icmp ne i8* %388, null
  br i1 %389, label %393, label %390

390:                                              ; preds = %381
  %391 = load i32, i32* @ENOMEM, align 4
  %392 = call i32 @AVERROR(i32 %391)
  store i32 %392, i32* %2, align 4
  br label %551

393:                                              ; preds = %381
  %394 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %394, i32 0, i32 3
  %396 = load i64, i64* %395, align 8
  %397 = load i8*, i8** %11, align 8
  %398 = load i32, i32* %10, align 4
  %399 = call i32 @avio_read(i64 %396, i8* %397, i32 %398)
  store i32 %399, i32* %10, align 4
  %400 = load i32, i32* %10, align 4
  %401 = icmp slt i32 %400, 0
  br i1 %401, label %402, label %406

402:                                              ; preds = %393
  %403 = load i8*, i8** %11, align 8
  %404 = call i32 @av_free(i8* %403)
  %405 = load i32, i32* %10, align 4
  store i32 %405, i32* %2, align 4
  br label %551

406:                                              ; preds = %393
  %407 = load i8*, i8** %11, align 8
  %408 = load i32, i32* %10, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8, i8* %407, i64 %409
  %411 = load i64, i64* @AVPROBE_PADDING_SIZE, align 8
  %412 = call i32 @memset(i8* %410, i32 0, i64 %411)
  %413 = load i8*, i8** %11, align 8
  %414 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  store i8* %413, i8** %414, align 8
  %415 = load i32, i32* %10, align 4
  %416 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  store i32 %415, i32* %416, align 8
  %417 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %418 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %417, i32 0, i32 4
  %419 = load i32, i32* %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  store i32 %419, i32* %420, align 4
  br label %421

421:                                              ; preds = %462, %447, %406
  %422 = call %struct.TYPE_24__* @av_demuxer_iterate(i8** %13)
  store %struct.TYPE_24__* %422, %struct.TYPE_24__** %12, align 8
  %423 = icmp ne %struct.TYPE_24__* %422, null
  br i1 %423, label %424, label %463

424:                                              ; preds = %421
  %425 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %426 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = inttoptr i64 %427 to i32 (%struct.TYPE_25__*)*
  %429 = icmp ne i32 (%struct.TYPE_25__*)* %428, @ff_img_read_header
  br i1 %429, label %447, label %430

430:                                              ; preds = %424
  %431 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %432 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %431, i32 0, i32 1
  %433 = load i64 (%struct.TYPE_23__*)*, i64 (%struct.TYPE_23__*)** %432, align 8
  %434 = icmp ne i64 (%struct.TYPE_23__*)* %433, null
  br i1 %434, label %435, label %447

435:                                              ; preds = %430
  %436 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %437 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* @AVFMT_NOFILE, align 4
  %440 = and i32 %438, %439
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %447, label %442

442:                                              ; preds = %435
  %443 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %444 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %443, i32 0, i32 3
  %445 = load i64, i64* %444, align 8
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %448, label %447

447:                                              ; preds = %442, %435, %430, %424
  br label %421

448:                                              ; preds = %442
  %449 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %450 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %449, i32 0, i32 1
  %451 = load i64 (%struct.TYPE_23__*)*, i64 (%struct.TYPE_23__*)** %450, align 8
  %452 = call i64 %451(%struct.TYPE_23__* %14)
  %453 = icmp sgt i64 %452, 0
  br i1 %453, label %454, label %462

454:                                              ; preds = %448
  %455 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %456 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %455, i32 0, i32 3
  %457 = load i64, i64* %456, align 8
  %458 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %459 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %458, i32 0, i32 1
  %460 = load %struct.TYPE_20__*, %struct.TYPE_20__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %460, i32 0, i32 1
  store i64 %457, i64* %461, align 8
  br label %463

462:                                              ; preds = %448
  br label %421

463:                                              ; preds = %454, %421
  %464 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %465 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 8
  %467 = load i32, i32* @AVFMT_FLAG_CUSTOM_IO, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %477

470:                                              ; preds = %463
  %471 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %472 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %471, i32 0, i32 3
  %473 = load i64, i64* %472, align 8
  %474 = load i32, i32* @SEEK_SET, align 4
  %475 = call i32 @avio_seek(i64 %473, i32 0, i32 %474)
  %476 = call i32 @av_freep(i8** %11)
  br label %483

477:                                              ; preds = %463
  %478 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %479 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %478, i32 0, i32 3
  %480 = load i64, i64* %479, align 8
  %481 = load i32, i32* %10, align 4
  %482 = call i32 @ffio_rewind_with_probe_data(i64 %480, i8** %11, i32 %481)
  br label %483

483:                                              ; preds = %477, %470
  br label %484

484:                                              ; preds = %483, %367
  %485 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %486 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %485, i32 0, i32 1
  %487 = load %struct.TYPE_20__*, %struct.TYPE_20__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %487, i32 0, i32 1
  %489 = load i64, i64* %488, align 8
  %490 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %491 = icmp eq i64 %489, %490
  br i1 %491, label %492, label %501

492:                                              ; preds = %484
  %493 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %494 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %493, i32 0, i32 0
  %495 = load i8*, i8** %494, align 8
  %496 = call i64 @ff_guess_image2_codec(i8* %495)
  %497 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %498 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %497, i32 0, i32 1
  %499 = load %struct.TYPE_20__*, %struct.TYPE_20__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %499, i32 0, i32 1
  store i64 %496, i64* %500, align 8
  br label %501

501:                                              ; preds = %492, %484
  %502 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %503 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %502, i32 0, i32 1
  %504 = load %struct.TYPE_20__*, %struct.TYPE_20__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %504, i32 0, i32 1
  %506 = load i64, i64* %505, align 8
  %507 = load i64, i64* @AV_CODEC_ID_LJPEG, align 8
  %508 = icmp eq i64 %506, %507
  br i1 %508, label %509, label %515

509:                                              ; preds = %501
  %510 = load i64, i64* @AV_CODEC_ID_MJPEG, align 8
  %511 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %512 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %511, i32 0, i32 1
  %513 = load %struct.TYPE_20__*, %struct.TYPE_20__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %513, i32 0, i32 1
  store i64 %510, i64* %514, align 8
  br label %515

515:                                              ; preds = %509, %501
  %516 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %517 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %516, i32 0, i32 1
  %518 = load %struct.TYPE_20__*, %struct.TYPE_20__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %518, i32 0, i32 1
  %520 = load i64, i64* %519, align 8
  %521 = load i64, i64* @AV_CODEC_ID_ALIAS_PIX, align 8
  %522 = icmp eq i64 %520, %521
  br i1 %522, label %523, label %529

523:                                              ; preds = %515
  %524 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %525 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %526 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %525, i32 0, i32 1
  %527 = load %struct.TYPE_20__*, %struct.TYPE_20__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %527, i32 0, i32 1
  store i64 %524, i64* %528, align 8
  br label %529

529:                                              ; preds = %523, %515
  br label %530

530:                                              ; preds = %529, %339
  br label %531

531:                                              ; preds = %530, %319
  br label %532

532:                                              ; preds = %531, %301
  %533 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %534 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %533, i32 0, i32 1
  %535 = load %struct.TYPE_20__*, %struct.TYPE_20__** %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %535, i32 0, i32 0
  %537 = load i64, i64* %536, align 8
  %538 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %539 = icmp eq i64 %537, %538
  br i1 %539, label %540, label %550

540:                                              ; preds = %532
  %541 = load i32, i32* %8, align 4
  %542 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %543 = icmp ne i32 %541, %542
  br i1 %543, label %544, label %550

544:                                              ; preds = %540
  %545 = load i32, i32* %8, align 4
  %546 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %547 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %546, i32 0, i32 1
  %548 = load %struct.TYPE_20__*, %struct.TYPE_20__** %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %548, i32 0, i32 2
  store i32 %545, i32* %549, align 8
  br label %550

550:                                              ; preds = %544, %540, %532
  store i32 0, i32* %2, align 4
  br label %551

551:                                              ; preds = %550, %402, %390, %261, %243, %216, %86, %43, %28
  %552 = load i32, i32* %2, align 4
  ret i32 %552
}

declare dso_local %struct.TYPE_22__* @avformat_new_stream(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_get_pix_fmt(i64) #1

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*, ...) #1

declare dso_local i32 @av_strlcpy(i8*, i32, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @is_glob(i8*) #1

declare dso_local i64 @find_image_range(i64, i32*, i32*, i8*, i64, i64) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @av_strcasecmp(i8*, i8*) #1

declare dso_local i8* @av_realloc(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @avio_read(i64, i8*, i32) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local %struct.TYPE_24__* @av_demuxer_iterate(i8**) #1

declare dso_local i32 @avio_seek(i64, i32, i32) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @ffio_rewind_with_probe_data(i64, i8**, i32) #1

declare dso_local i64 @ff_guess_image2_codec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
