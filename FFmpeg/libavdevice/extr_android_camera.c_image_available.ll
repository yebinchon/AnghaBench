; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_android_camera.c_image_available.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_android_camera.c_image_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@AMEDIA_OK = common dso_local global i64 0, align 8
@AMEDIA_IMGREADER_NO_BUFFER_AVAILABLE = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"An image reader frame was discarded\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Failed to acquire latest image from image reader, error: %s.\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not get image format of camera.\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Unsupported camera image format.\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Failed to create new av packet, error: %s.\0A\00", align 1
@VIDEO_STREAM_INDEX = common dso_local global i32 0, align 4
@AV_THREAD_MESSAGE_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Error while processing new image, error: %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [104 x i8] c"Input queue was full, dropping frame, consider raising the input_queue_size option (current value: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @image_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_available(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca [4 x i32*], align 16
  %13 = alloca [4 x i32], align 16
  %14 = alloca %struct.TYPE_10__, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %5, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %15, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @AImageReader_acquireLatestImage(i32* %21, i32** %9)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @AMEDIA_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %2
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @AMEDIA_IMGREADER_NO_BUFFER_AVAILABLE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = load i32, i32* @AV_LOG_WARNING, align 4
  %33 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %31, i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %41

34:                                               ; preds = %26
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @media_status_string(i64 %37)
  %39 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %35, i32 %36, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %34, %30
  br label %164

42:                                               ; preds = %2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = call i64 @atomic_load(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %164

48:                                               ; preds = %42
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 6
  %51 = call i64 @atomic_load(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @get_image_format(%struct.TYPE_11__* %54, i32* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = load i32, i32* @AV_LOG_ERROR, align 4
  %62 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %60, i32 %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %164

63:                                               ; preds = %53
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 6
  %66 = call i32 @atomic_store(i32* %65, i32 1)
  br label %67

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %48
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @av_image_get_buffer_size(i32 %71, i32 %74, i32 %77, i32 32)
  store i32 %78, i32* %15, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @AImage_getTimestamp(i32* %79, i32* %10)
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %83 = call i32 @AImage_getPlaneRowStride(i32* %81, i32 0, i32* %82)
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 0
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %87 = call i32 @AImage_getPlaneData(i32* %84, i32 0, i32** %85, i32* %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %122 [
    i32 128, label %91
    i32 130, label %106
    i32 129, label %114
  ]

91:                                               ; preds = %68
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %94 = call i32 @AImage_getPlaneRowStride(i32* %92, i32 1, i32* %93)
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 1
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %98 = call i32 @AImage_getPlaneData(i32* %95, i32 1, i32** %96, i32* %97)
  %99 = load i32*, i32** %9, align 8
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %101 = call i32 @AImage_getPlaneRowStride(i32* %99, i32 2, i32* %100)
  %102 = load i32*, i32** %9, align 8
  %103 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 2
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %105 = call i32 @AImage_getPlaneData(i32* %102, i32 2, i32** %103, i32* %104)
  br label %128

106:                                              ; preds = %68
  %107 = load i32*, i32** %9, align 8
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %109 = call i32 @AImage_getPlaneRowStride(i32* %107, i32 1, i32* %108)
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 1
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %113 = call i32 @AImage_getPlaneData(i32* %110, i32 1, i32** %111, i32* %112)
  br label %128

114:                                              ; preds = %68
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %117 = call i32 @AImage_getPlaneRowStride(i32* %115, i32 2, i32* %116)
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 1
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %121 = call i32 @AImage_getPlaneData(i32* %118, i32 2, i32** %119, i32* %120)
  br label %128

122:                                              ; preds = %68
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = load i32, i32* @AV_LOG_ERROR, align 4
  %125 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %123, i32 %124, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32, i32* @ENOSYS, align 4
  %127 = call i32 @AVERROR(i32 %126)
  store i32 %127, i32* %8, align 4
  br label %164

128:                                              ; preds = %114, %106, %91
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @av_new_packet(%struct.TYPE_10__* %14, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = load i32, i32* @AV_LOG_ERROR, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @av_err2str(i32 %136)
  %138 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %134, i32 %135, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  br label %164

139:                                              ; preds = %128
  %140 = load i32, i32* @VIDEO_STREAM_INDEX, align 4
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* %10, align 4
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i32 %142, i32* %143, align 4
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %15, align 4
  %147 = getelementptr inbounds [4 x i32*], [4 x i32*]* %12, i64 0, i64 0
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @av_image_copy_to_buffer(i32 %145, i32 %146, i32** %147, i32* %148, i32 %151, i32 %154, i32 %157, i32 32)
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @AV_THREAD_MESSAGE_NONBLOCK, align 4
  %163 = call i32 @av_thread_message_queue_send(i32 %161, %struct.TYPE_10__* %14, i32 %162)
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %139, %133, %122, %59, %47, %41
  %165 = load i32, i32* %8, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %199

167:                                              ; preds = %164
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @EAGAIN, align 4
  %170 = call i32 @AVERROR(i32 %169)
  %171 = icmp ne i32 %168, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %167
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %174 = load i32, i32* @AV_LOG_ERROR, align 4
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @av_err2str(i32 %175)
  %177 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %173, i32 %174, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %176)
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @av_thread_message_queue_set_err_recv(i32 %180, i32 %181)
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 2
  %185 = call i32 @atomic_store(i32* %184, i32 1)
  br label %193

186:                                              ; preds = %167
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %188 = load i32, i32* @AV_LOG_WARNING, align 4
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %187, i32 %188, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.6, i64 0, i64 0), i32 %191)
  br label %193

193:                                              ; preds = %186, %172
  %194 = load i32, i32* %15, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = call i32 @av_packet_unref(%struct.TYPE_10__* %14)
  br label %198

198:                                              ; preds = %196, %193
  br label %199

199:                                              ; preds = %198, %164
  %200 = load i32*, i32** %9, align 8
  %201 = call i32 @AImage_delete(i32* %200)
  ret void
}

declare dso_local i64 @AImageReader_acquireLatestImage(i32*, i32**) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @media_status_string(i64) #1

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local i32 @get_image_format(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @av_image_get_buffer_size(i32, i32, i32, i32) #1

declare dso_local i32 @AImage_getTimestamp(i32*, i32*) #1

declare dso_local i32 @AImage_getPlaneRowStride(i32*, i32, i32*) #1

declare dso_local i32 @AImage_getPlaneData(i32*, i32, i32**, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @av_image_copy_to_buffer(i32, i32, i32**, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @av_thread_message_queue_send(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @av_thread_message_queue_set_err_recv(i32, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_10__*) #1

declare dso_local i32 @AImage_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
