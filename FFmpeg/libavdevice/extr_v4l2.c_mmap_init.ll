; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_mmap_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_mmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.video_data* }
%struct.video_data = type { i32, i64*, i64, i32*, i32 }
%struct.v4l2_requestbuffers = type { i32, i32, i64, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_buffer = type { i32, i32, i64, %struct.TYPE_5__, i32, i32 }

@desired_video_buffers = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VIDIOC_REQBUFS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ioctl(VIDIOC_REQBUFS): %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Insufficient buffer memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Cannot allocate buffer pointers\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Cannot allocate buffer sizes\0A\00", align 1
@VIDIOC_QUERYBUF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"ioctl(VIDIOC_QUERYBUF): %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"buf_len[%d] = %d < expected frame size %d\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"mmap: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @mmap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_init(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_data*, align 8
  %7 = alloca %struct.v4l2_requestbuffers, align 8
  %8 = alloca %struct.v4l2_buffer, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.video_data*, %struct.video_data** %10, align 8
  store %struct.video_data* %11, %struct.video_data** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %7, i32 0, i32 0
  %13 = load i32, i32* @desired_video_buffers, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %7, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %7, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %7, i32 0, i32 3
  %17 = bitcast %struct.TYPE_5__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 4, i1 false)
  %18 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %7, i32 0, i32 4
  %19 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %7, i32 0, i32 5
  %21 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  store i32 %21, i32* %20, align 8
  %22 = load %struct.video_data*, %struct.video_data** %6, align 8
  %23 = getelementptr inbounds %struct.video_data, %struct.video_data* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @VIDIOC_REQBUFS, align 4
  %26 = call i64 @v4l2_ioctl(i32 %24, i32 %25, %struct.v4l2_requestbuffers* %7)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %1
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = load i32, i32* @AV_LOG_ERROR, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @av_err2str(i32 %33)
  %35 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %31, i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %208

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %42, i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = call i32 @AVERROR(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %208

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.video_data*, %struct.video_data** %6, align 8
  %51 = getelementptr inbounds %struct.video_data, %struct.video_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.video_data*, %struct.video_data** %6, align 8
  %53 = getelementptr inbounds %struct.video_data, %struct.video_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @av_malloc_array(i32 %54, i32 8)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.video_data*, %struct.video_data** %6, align 8
  %58 = getelementptr inbounds %struct.video_data, %struct.video_data* %57, i32 0, i32 3
  store i32* %56, i32** %58, align 8
  %59 = load %struct.video_data*, %struct.video_data** %6, align 8
  %60 = getelementptr inbounds %struct.video_data, %struct.video_data* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %47
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %64, i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = call i32 @AVERROR(i32 %67)
  store i32 %68, i32* %2, align 4
  br label %208

69:                                               ; preds = %47
  %70 = load %struct.video_data*, %struct.video_data** %6, align 8
  %71 = getelementptr inbounds %struct.video_data, %struct.video_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @av_malloc_array(i32 %72, i32 4)
  %74 = bitcast i8* %73 to i64*
  %75 = load %struct.video_data*, %struct.video_data** %6, align 8
  %76 = getelementptr inbounds %struct.video_data, %struct.video_data* %75, i32 0, i32 1
  store i64* %74, i64** %76, align 8
  %77 = load %struct.video_data*, %struct.video_data** %6, align 8
  %78 = getelementptr inbounds %struct.video_data, %struct.video_data* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = icmp ne i64* %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %69
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %82, i32 %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.video_data*, %struct.video_data** %6, align 8
  %86 = getelementptr inbounds %struct.video_data, %struct.video_data* %85, i32 0, i32 3
  %87 = call i32 @av_freep(i32** %86)
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = call i32 @AVERROR(i32 %88)
  store i32 %89, i32* %2, align 4
  br label %208

90:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %204, %90
  %92 = load i32, i32* %4, align 4
  %93 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %7, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %207

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 0
  store i32 0, i32* %97, align 8
  %98 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 1
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %98, align 4
  %100 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 2
  store i64 0, i64* %100, align 8
  %101 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 3
  %102 = bitcast %struct.TYPE_5__* %101 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %102, i8 0, i64 4, i1 false)
  %103 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 4
  %104 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  store i32 %104, i32* %103, align 4
  %105 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 5
  %106 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  store i32 %106, i32* %105, align 8
  %107 = load %struct.video_data*, %struct.video_data** %6, align 8
  %108 = getelementptr inbounds %struct.video_data, %struct.video_data* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @VIDIOC_QUERYBUF, align 4
  %111 = bitcast %struct.v4l2_buffer* %8 to %struct.v4l2_requestbuffers*
  %112 = call i64 @v4l2_ioctl(i32 %109, i32 %110, %struct.v4l2_requestbuffers* %111)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %96
  %115 = load i32, i32* @errno, align 4
  %116 = call i32 @AVERROR(i32 %115)
  store i32 %116, i32* %5, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %118 = load i32, i32* @AV_LOG_ERROR, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @av_err2str(i32 %119)
  %121 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %117, i32 %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %2, align 4
  br label %208

123:                                              ; preds = %96
  %124 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.video_data*, %struct.video_data** %6, align 8
  %127 = getelementptr inbounds %struct.video_data, %struct.video_data* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  store i64 %125, i64* %131, align 8
  %132 = load %struct.video_data*, %struct.video_data** %6, align 8
  %133 = getelementptr inbounds %struct.video_data, %struct.video_data* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %165

136:                                              ; preds = %123
  %137 = load %struct.video_data*, %struct.video_data** %6, align 8
  %138 = getelementptr inbounds %struct.video_data, %struct.video_data* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.video_data*, %struct.video_data** %6, align 8
  %145 = getelementptr inbounds %struct.video_data, %struct.video_data* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp slt i64 %143, %146
  br i1 %147, label %148, label %165

148:                                              ; preds = %136
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %150 = load i32, i32* @AV_LOG_ERROR, align 4
  %151 = load i32, i32* %4, align 4
  %152 = load %struct.video_data*, %struct.video_data** %6, align 8
  %153 = getelementptr inbounds %struct.video_data, %struct.video_data* %152, i32 0, i32 1
  %154 = load i64*, i64** %153, align 8
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.video_data*, %struct.video_data** %6, align 8
  %160 = getelementptr inbounds %struct.video_data, %struct.video_data* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %149, i32 %150, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %151, i64 %158, i64 %161)
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = call i32 @AVERROR(i32 %163)
  store i32 %164, i32* %2, align 4
  br label %208

165:                                              ; preds = %136, %123
  %166 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* @PROT_READ, align 4
  %169 = load i32, i32* @PROT_WRITE, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @MAP_SHARED, align 4
  %172 = load %struct.video_data*, %struct.video_data** %6, align 8
  %173 = getelementptr inbounds %struct.video_data, %struct.video_data* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @v4l2_mmap(i32* null, i64 %167, i32 %170, i32 %171, i32 %174, i32 %177)
  %179 = load %struct.video_data*, %struct.video_data** %6, align 8
  %180 = getelementptr inbounds %struct.video_data, %struct.video_data* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %178, i32* %184, align 4
  %185 = load %struct.video_data*, %struct.video_data** %6, align 8
  %186 = getelementptr inbounds %struct.video_data, %struct.video_data* %185, i32 0, i32 3
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %4, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @MAP_FAILED, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %203

194:                                              ; preds = %165
  %195 = load i32, i32* @errno, align 4
  %196 = call i32 @AVERROR(i32 %195)
  store i32 %196, i32* %5, align 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %198 = load i32, i32* @AV_LOG_ERROR, align 4
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @av_err2str(i32 %199)
  %201 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %197, i32 %198, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* %5, align 4
  store i32 %202, i32* %2, align 4
  br label %208

203:                                              ; preds = %165
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %4, align 4
  br label %91

207:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %208

208:                                              ; preds = %207, %194, %148, %114, %81, %63, %41, %28
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @v4l2_ioctl(i32, i32, %struct.v4l2_requestbuffers*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, ...) #2

declare dso_local i32 @av_err2str(i32) #2

declare dso_local i8* @av_malloc_array(i32, i32) #2

declare dso_local i32 @av_freep(i32**) #2

declare dso_local i32 @v4l2_mmap(i32*, i64, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
