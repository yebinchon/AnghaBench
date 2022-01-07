; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rkmppdec.c_rkmpp_init_decoder.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rkmppdec.c_rkmpp_init_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (i32, i32, i32*)* }

@MPP_VIDEO_CodingUnused = common dso_local global i64 0, align 8
@AV_PIX_FMT_DRM_PRIME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rkmpp_release_decoder = common dso_local global i32 0, align 4
@AV_BUFFER_FLAG_READONLY = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Initializing RKMPP decoder.\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown codec type (%d).\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@MPP_CTX_DEC = common dso_local global i32 0, align 4
@MPP_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Codec type (%d) unsupported by MPP\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to create MPP context (code = %d).\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Failed to initialize MPP context (code = %d).\0A\00", align 1
@MPP_POLL_BLOCK = common dso_local global i32 0, align 4
@MPP_SET_OUTPUT_BLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"Failed to set blocking mode on MPI (code = %d).\0A\00", align 1
@RECEIVE_FRAME_TIMEOUT = common dso_local global i32 0, align 4
@MPP_SET_OUTPUT_BLOCK_TIMEOUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"Failed to set block timeout on MPI (code = %d).\0A\00", align 1
@MPP_BUFFER_TYPE_ION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"Failed to retrieve buffer group (code = %d)\0A\00", align 1
@MPP_DEC_SET_EXT_BUF_GROUP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"Failed to assign buffer group (code = %d)\0A\00", align 1
@FRAMEGROUP_MAX_FRAMES = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"Failed to set buffer group limit (code = %d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"RKMPP decoder initialized successfully.\0A\00", align 1
@AV_HWDEVICE_TYPE_DRM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"Failed to initialize RKMPP decoder.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @rkmpp_init_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rkmpp_init_decoder(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  %13 = load i64, i64* @MPP_VIDEO_CodingUnused, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i32, i32* @AV_PIX_FMT_DRM_PRIME, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = call %struct.TYPE_11__* @av_mallocz(i32 32)
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %5, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %7, align 4
  br label %220

23:                                               ; preds = %1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = bitcast %struct.TYPE_11__* %24 to i32*
  %26 = load i32, i32* @rkmpp_release_decoder, align 4
  %27 = load i32, i32* @AV_BUFFER_FLAG_READONLY, align 4
  %28 = call i32 @av_buffer_create(i32* %25, i32 32, i32 %26, i32* null, i32 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %23
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = call i32 @av_free(%struct.TYPE_11__* %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %7, align 4
  br label %220

40:                                               ; preds = %23
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = load i32, i32* @AV_LOG_DEBUG, align 4
  %43 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %41, i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = call i64 @rkmpp_get_codingtype(%struct.TYPE_13__* %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @MPP_VIDEO_CodingUnused, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %40
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %50, i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %56, i32* %7, align 4
  br label %220

57:                                               ; preds = %40
  %58 = load i32, i32* @MPP_CTX_DEC, align 4
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @mpp_check_support_format(i32 %58, i64 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @MPP_OK, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = load i32, i32* @AV_LOG_ERROR, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %65, i32 %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %71, i32* %7, align 4
  br label %220

72:                                               ; preds = %57
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 4
  %77 = call i32 @mpp_create(i32* %74, %struct.TYPE_14__** %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @MPP_OK, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %72
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %82, i32 %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %86, i32* %7, align 4
  br label %220

87:                                               ; preds = %72
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @MPP_CTX_DEC, align 4
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @mpp_init(i32 %90, i32 %91, i64 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @MPP_OK, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %87
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %99 = load i32, i32* @AV_LOG_ERROR, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %98, i32 %99, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %102, i32* %7, align 4
  br label %220

103:                                              ; preds = %87
  %104 = load i32, i32* @MPP_POLL_BLOCK, align 4
  store i32 %104, i32* %9, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %108, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @MPP_SET_OUTPUT_BLOCK, align 4
  %114 = call i32 %109(i32 %112, i32 %113, i32* %9)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @MPP_OK, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %103
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %120 = load i32, i32* @AV_LOG_ERROR, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %119, i32 %120, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %123, i32* %7, align 4
  br label %220

124:                                              ; preds = %103
  %125 = load i32, i32* @RECEIVE_FRAME_TIMEOUT, align 4
  store i32 %125, i32* %8, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %129, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @MPP_SET_OUTPUT_BLOCK_TIMEOUT, align 4
  %135 = call i32 %130(i32 %133, i32 %134, i32* %8)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @MPP_OK, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %124
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %141 = load i32, i32* @AV_LOG_ERROR, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %140, i32 %141, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %144, i32* %7, align 4
  br label %220

145:                                              ; preds = %124
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 2
  %148 = load i32, i32* @MPP_BUFFER_TYPE_ION, align 4
  %149 = call i32 @mpp_buffer_group_get_internal(i32** %147, i32 %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %145
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %154 = load i32, i32* @AV_LOG_ERROR, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %153, i32 %154, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %157, i32* %7, align 4
  br label %220

158:                                              ; preds = %145
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 4
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %162, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @MPP_DEC_SET_EXT_BUF_GROUP, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 %163(i32 %166, i32 %167, i32* %170)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %158
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %176 = load i32, i32* @AV_LOG_ERROR, align 4
  %177 = load i32, i32* %7, align 4
  %178 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %175, i32 %176, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %179, i32* %7, align 4
  br label %220

180:                                              ; preds = %158
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* @FRAMEGROUP_MAX_FRAMES, align 4
  %185 = call i32 @mpp_buffer_group_limit_config(i32* %183, i32 0, i32 %184)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %180
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %190 = load i32, i32* @AV_LOG_ERROR, align 4
  %191 = load i32, i32* %7, align 4
  %192 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %189, i32 %190, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %193, i32* %7, align 4
  br label %220

194:                                              ; preds = %180
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  store i32 1, i32* %196, align 8
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %198 = load i32, i32* @AV_LOG_DEBUG, align 4
  %199 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %197, i32 %198, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %200 = load i32, i32* @AV_HWDEVICE_TYPE_DRM, align 4
  %201 = call i32 @av_hwdevice_ctx_alloc(i32 %200)
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %194
  %209 = load i32, i32* @ENOMEM, align 4
  %210 = call i32 @AVERROR(i32 %209)
  store i32 %210, i32* %7, align 4
  br label %220

211:                                              ; preds = %194
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @av_hwdevice_ctx_init(i32 %214)
  store i32 %215, i32* %7, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %211
  br label %220

219:                                              ; preds = %211
  store i32 0, i32* %2, align 4
  br label %227

220:                                              ; preds = %218, %208, %188, %174, %152, %139, %118, %97, %81, %64, %49, %35, %20
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %222 = load i32, i32* @AV_LOG_ERROR, align 4
  %223 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %221, i32 %222, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %225 = call i32 @rkmpp_close_decoder(%struct.TYPE_13__* %224)
  %226 = load i32, i32* %7, align 4
  store i32 %226, i32* %2, align 4
  br label %227

227:                                              ; preds = %220, %219
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local %struct.TYPE_11__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_buffer_create(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @av_free(%struct.TYPE_11__*) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local i64 @rkmpp_get_codingtype(%struct.TYPE_13__*) #1

declare dso_local i32 @mpp_check_support_format(i32, i64) #1

declare dso_local i32 @mpp_create(i32*, %struct.TYPE_14__**) #1

declare dso_local i32 @mpp_init(i32, i32, i64) #1

declare dso_local i32 @mpp_buffer_group_get_internal(i32**, i32) #1

declare dso_local i32 @mpp_buffer_group_limit_config(i32*, i32, i32) #1

declare dso_local i32 @av_hwdevice_ctx_alloc(i32) #1

declare dso_local i32 @av_hwdevice_ctx_init(i32) #1

declare dso_local i32 @rkmpp_close_decoder(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
