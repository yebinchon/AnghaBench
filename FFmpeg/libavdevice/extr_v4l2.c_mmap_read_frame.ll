; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_mmap_read_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_mmap_read_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.video_data* }
%struct.video_data = type { i32, i64, i32*, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i32 }
%struct.v4l2_buffer = type { i32, i32, i64, %struct.timeval, i32, i32 }
%struct.timeval = type { i32, i64 }
%struct.buff_data = type { i64, %struct.video_data* }

@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VIDIOC_DQBUF = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ioctl(VIDIOC_DQBUF): %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid buffer index received.\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@AV_CODEC_ID_CPIA = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"Dequeued v4l2 buffer contains %d bytes, but %d were expected. Flags: 0x%08X.\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Error allocating a packet.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to allocate a buffer descriptor\0A\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@mmap_release_buffer = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to create a buffer\0A\00", align 1
@V4L2_BUF_FLAG_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @mmap_read_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_read_frame(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.video_data*, align 8
  %7 = alloca %struct.v4l2_buffer, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buff_data*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.video_data*, %struct.video_data** %12, align 8
  store %struct.video_data* %13, %struct.video_data** %6, align 8
  %14 = bitcast %struct.v4l2_buffer* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  %15 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 4
  %16 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 5
  %18 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  store i32 %18, i32* %17, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %34, %2
  %22 = load %struct.video_data*, %struct.video_data** %6, align 8
  %23 = getelementptr inbounds %struct.video_data, %struct.video_data* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VIDIOC_DQBUF, align 4
  %26 = call i32 @v4l2_ioctl(i32 %24, i32 %25, %struct.v4l2_buffer* %7)
  store i32 %26, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EINTR, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %28, %21
  %33 = phi i1 [ false, %21 ], [ %31, %28 ]
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  br label %21

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @EAGAIN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* @EAGAIN, align 8
  %44 = call i32 @AVERROR(i64 %43)
  store i32 %44, i32* %3, align 4
  br label %241

45:                                               ; preds = %38
  %46 = load i64, i64* @errno, align 8
  %47 = call i32 @AVERROR(i64 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @av_err2str(i32 %50)
  %52 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %48, i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %241

54:                                               ; preds = %35
  %55 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 3
  %56 = bitcast %struct.timeval* %8 to i8*
  %57 = bitcast %struct.timeval* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  %58 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.video_data*, %struct.video_data** %6, align 8
  %61 = getelementptr inbounds %struct.video_data, %struct.video_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %54
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = load i32, i32* @AV_LOG_ERROR, align 4
  %67 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %65, i32 %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i64, i64* @EINVAL, align 8
  %69 = call i32 @AVERROR(i64 %68)
  store i32 %69, i32* %3, align 4
  br label %241

70:                                               ; preds = %54
  %71 = load %struct.video_data*, %struct.video_data** %6, align 8
  %72 = getelementptr inbounds %struct.video_data, %struct.video_data* %71, i32 0, i32 3
  %73 = call i32 @atomic_fetch_add(i32* %72, i32 -1)
  %74 = load %struct.video_data*, %struct.video_data** %6, align 8
  %75 = getelementptr inbounds %struct.video_data, %struct.video_data* %74, i32 0, i32 3
  %76 = call i32 @atomic_load(i32* %75)
  %77 = icmp sge i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = call i32 @av_assert0(i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AV_CODEC_ID_CPIA, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %70
  %86 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.video_data*, %struct.video_data** %6, align 8
  %89 = getelementptr inbounds %struct.video_data, %struct.video_data* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %85, %70
  %91 = load %struct.video_data*, %struct.video_data** %6, align 8
  %92 = getelementptr inbounds %struct.video_data, %struct.video_data* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.video_data*, %struct.video_data** %6, align 8
  %99 = getelementptr inbounds %struct.video_data, %struct.video_data* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %95
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = load i32, i32* @AV_LOG_WARNING, align 4
  %105 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.video_data*, %struct.video_data** %6, align 8
  %108 = getelementptr inbounds %struct.video_data, %struct.video_data* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %103, i32 %104, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i64 %106, i64 %109, i32 %111)
  %113 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 2
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %102, %95, %90
  %115 = load %struct.video_data*, %struct.video_data** %6, align 8
  %116 = getelementptr inbounds %struct.video_data, %struct.video_data* %115, i32 0, i32 3
  %117 = call i32 @atomic_load(i32* %116)
  %118 = load %struct.video_data*, %struct.video_data** %6, align 8
  %119 = getelementptr inbounds %struct.video_data, %struct.video_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sdiv i32 %120, 8
  %122 = call i32 @FFMAX(i32 %121, i32 1)
  %123 = icmp eq i32 %117, %122
  br i1 %123, label %124, label %162

124:                                              ; preds = %114
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @av_new_packet(%struct.TYPE_9__* %125, i64 %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %124
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %133 = load i32, i32* @AV_LOG_ERROR, align 4
  %134 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %132, i32 %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %135 = load %struct.video_data*, %struct.video_data** %6, align 8
  %136 = call i32 @enqueue_buffer(%struct.video_data* %135, %struct.v4l2_buffer* %7)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %241

138:                                              ; preds = %124
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.video_data*, %struct.video_data** %6, align 8
  %143 = getelementptr inbounds %struct.video_data, %struct.video_data* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @memcpy(i32 %141, i32 %149, i64 %151)
  %153 = load %struct.video_data*, %struct.video_data** %6, align 8
  %154 = call i32 @enqueue_buffer(%struct.video_data* %153, %struct.v4l2_buffer* %7)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %138
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %159 = call i32 @av_packet_unref(%struct.TYPE_9__* %158)
  %160 = load i32, i32* %9, align 4
  store i32 %160, i32* %3, align 4
  br label %241

161:                                              ; preds = %138
  br label %222

162:                                              ; preds = %114
  %163 = load %struct.video_data*, %struct.video_data** %6, align 8
  %164 = getelementptr inbounds %struct.video_data, %struct.video_data* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 4
  %173 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = call %struct.buff_data* @av_malloc(i32 16)
  store %struct.buff_data* %177, %struct.buff_data** %10, align 8
  %178 = load %struct.buff_data*, %struct.buff_data** %10, align 8
  %179 = icmp ne %struct.buff_data* %178, null
  br i1 %179, label %188, label %180

180:                                              ; preds = %162
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %182 = load i32, i32* @AV_LOG_ERROR, align 4
  %183 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %181, i32 %182, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %184 = load %struct.video_data*, %struct.video_data** %6, align 8
  %185 = call i32 @enqueue_buffer(%struct.video_data* %184, %struct.v4l2_buffer* %7)
  %186 = load i64, i64* @ENOMEM, align 8
  %187 = call i32 @AVERROR(i64 %186)
  store i32 %187, i32* %3, align 4
  br label %241

188:                                              ; preds = %162
  %189 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = load %struct.buff_data*, %struct.buff_data** %10, align 8
  %193 = getelementptr inbounds %struct.buff_data, %struct.buff_data* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  %194 = load %struct.video_data*, %struct.video_data** %6, align 8
  %195 = load %struct.buff_data*, %struct.buff_data** %10, align 8
  %196 = getelementptr inbounds %struct.buff_data, %struct.buff_data* %195, i32 0, i32 1
  store %struct.video_data* %194, %struct.video_data** %196, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* @mmap_release_buffer, align 4
  %204 = load %struct.buff_data*, %struct.buff_data** %10, align 8
  %205 = call i32 @av_buffer_create(i32 %199, i64 %202, i32 %203, %struct.buff_data* %204, i32 0)
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %221, label %212

212:                                              ; preds = %188
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %214 = load i32, i32* @AV_LOG_ERROR, align 4
  %215 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %213, i32 %214, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %216 = load %struct.video_data*, %struct.video_data** %6, align 8
  %217 = call i32 @enqueue_buffer(%struct.video_data* %216, %struct.v4l2_buffer* %7)
  %218 = call i32 @av_freep(%struct.buff_data** %10)
  %219 = load i64, i64* @ENOMEM, align 8
  %220 = call i32 @AVERROR(i64 %219)
  store i32 %220, i32* %3, align 4
  br label %241

221:                                              ; preds = %188
  br label %222

222:                                              ; preds = %221, %161
  %223 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @INT64_C(i32 1000000)
  %226 = mul nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %227, %229
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 1
  store i64 %230, i64* %232, align 8
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 1
  %236 = call i32 @convert_timestamp(%struct.TYPE_10__* %233, i64* %235)
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %3, align 4
  br label %241

241:                                              ; preds = %222, %212, %180, %157, %131, %64, %45, %42
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @v4l2_ioctl(i32, i32, %struct.v4l2_buffer*) #2

declare dso_local i32 @AVERROR(i64) #2

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #2

declare dso_local i32 @av_err2str(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @atomic_fetch_add(i32*, i32) #2

declare dso_local i32 @av_assert0(i32) #2

declare dso_local i32 @atomic_load(i32*) #2

declare dso_local i32 @FFMAX(i32, i32) #2

declare dso_local i32 @av_new_packet(%struct.TYPE_9__*, i64) #2

declare dso_local i32 @enqueue_buffer(%struct.video_data*, %struct.v4l2_buffer*) #2

declare dso_local i32 @memcpy(i32, i32, i64) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_9__*) #2

declare dso_local %struct.buff_data* @av_malloc(i32) #2

declare dso_local i32 @av_buffer_create(i32, i64, i32, %struct.buff_data*, i32) #2

declare dso_local i32 @av_freep(%struct.buff_data**) #2

declare dso_local i32 @INT64_C(i32) #2

declare dso_local i32 @convert_timestamp(%struct.TYPE_10__*, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
