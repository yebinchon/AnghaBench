; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopenjpegenc.c_libopenjpeg_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopenjpegenc.c_libopenjpeg_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_34__ = type { i32*, i32* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_33__*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error creating the mj2 image\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"The frame's pixel format '%s' is not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Could not copy the frame data to the internal image buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Error creating the compressor\0A\00", align 1
@error_callback = common dso_local global i32 0, align 4
@warning_callback = common dso_local global i32 0, align 4
@info_callback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Error setting the compressor handlers\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Error setting up the compressor\0A\00", align 1
@OPJ_STREAM_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Error creating the cio stream\0A\00", align 1
@stream_write = common dso_local global i32 0, align 4
@stream_skip = common dso_local global i32 0, align 4
@stream_seek = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Error during the opj encode\0A\00", align 1
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_35__*, %struct.TYPE_33__*, %struct.TYPE_34__*, i32*)* @libopenjpeg_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libopenjpeg_encode_frame(%struct.TYPE_35__* %0, %struct.TYPE_33__* %1, %struct.TYPE_34__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_34__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_31__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %5, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %6, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  store %struct.TYPE_32__* %19, %struct.TYPE_32__** %9, align 8
  store i32 0, i32* %12, align 4
  %20 = bitcast %struct.TYPE_31__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %21 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %22, i32 0, i32 0
  %24 = call i32* @mj2_create_image(%struct.TYPE_35__* %21, i32* %23)
  store i32* %24, i32** %16, align 8
  %25 = load i32*, i32** %16, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %4
  %28 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %28, i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %10, align 4
  br label %268

33:                                               ; preds = %4
  %34 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %141 [
    i32 167, label %37
    i32 165, label %37
    i32 161, label %37
    i32 163, label %42
    i32 166, label %47
    i32 164, label %47
    i32 162, label %47
    i32 178, label %52
    i32 173, label %52
    i32 177, label %52
    i32 176, label %52
    i32 175, label %52
    i32 174, label %52
    i32 168, label %131
    i32 160, label %131
    i32 159, label %131
    i32 158, label %131
    i32 152, label %131
    i32 146, label %131
    i32 145, label %131
    i32 139, label %131
    i32 135, label %131
    i32 131, label %131
    i32 172, label %136
    i32 171, label %136
    i32 170, label %136
    i32 169, label %136
    i32 153, label %136
    i32 147, label %136
    i32 140, label %136
    i32 136, label %136
    i32 132, label %136
    i32 128, label %136
    i32 144, label %136
    i32 151, label %136
    i32 157, label %136
    i32 130, label %136
    i32 134, label %136
    i32 138, label %136
    i32 156, label %136
    i32 150, label %136
    i32 143, label %136
    i32 155, label %136
    i32 149, label %136
    i32 142, label %136
    i32 141, label %136
    i32 148, label %136
    i32 154, label %136
    i32 129, label %136
    i32 133, label %136
    i32 137, label %136
  ]

37:                                               ; preds = %33, %33, %33
  %38 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %39 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = call i32 @libopenjpeg_copy_packed8(%struct.TYPE_35__* %38, %struct.TYPE_34__* %39, i32* %40)
  store i32 %41, i32* %12, align 4
  br label %151

42:                                               ; preds = %33
  %43 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %45 = load i32*, i32** %16, align 8
  %46 = call i32 @libopenjpeg_copy_packed12(%struct.TYPE_35__* %43, %struct.TYPE_34__* %44, i32* %45)
  store i32 %46, i32* %12, align 4
  br label %151

47:                                               ; preds = %33, %33, %33
  %48 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %49 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 @libopenjpeg_copy_packed16(%struct.TYPE_35__* %48, %struct.TYPE_34__* %49, i32* %50)
  store i32 %51, i32* %12, align 4
  br label %151

52:                                               ; preds = %33, %33, %33, %33, %33, %33
  %53 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %54 = call %struct.TYPE_34__* @av_frame_clone(%struct.TYPE_34__* %53)
  store %struct.TYPE_34__* %54, %struct.TYPE_34__** %11, align 8
  %55 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %56 = icmp ne %struct.TYPE_34__* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = call i32 @AVERROR(i32 %58)
  store i32 %59, i32* %10, align 4
  br label %268

60:                                               ; preds = %52
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %65, i32* %69, align 4
  %70 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 %74, i32* %78, align 4
  %79 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32 %83, i32* %87, align 4
  %88 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %92, i32* %96, align 4
  %97 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  store i32 %101, i32* %105, align 4
  %106 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  store i32 %110, i32* %114, align 4
  %115 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 178
  br i1 %118, label %119, label %124

119:                                              ; preds = %60
  %120 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %122 = load i32*, i32** %16, align 8
  %123 = call i32 @libopenjpeg_copy_unpacked8(%struct.TYPE_35__* %120, %struct.TYPE_34__* %121, i32* %122)
  store i32 %123, i32* %12, align 4
  br label %129

124:                                              ; preds = %60
  %125 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %126 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %127 = load i32*, i32** %16, align 8
  %128 = call i32 @libopenjpeg_copy_unpacked16(%struct.TYPE_35__* %125, %struct.TYPE_34__* %126, i32* %127)
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %124, %119
  %130 = call i32 @av_frame_free(%struct.TYPE_34__** %11)
  br label %151

131:                                              ; preds = %33, %33, %33, %33, %33, %33, %33, %33, %33, %33
  %132 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %133 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %134 = load i32*, i32** %16, align 8
  %135 = call i32 @libopenjpeg_copy_unpacked8(%struct.TYPE_35__* %132, %struct.TYPE_34__* %133, i32* %134)
  store i32 %135, i32* %12, align 4
  br label %151

136:                                              ; preds = %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33
  %137 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %138 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %139 = load i32*, i32** %16, align 8
  %140 = call i32 @libopenjpeg_copy_unpacked16(%struct.TYPE_35__* %137, %struct.TYPE_34__* %138, i32* %139)
  store i32 %140, i32* %12, align 4
  br label %151

141:                                              ; preds = %33
  %142 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %143 = load i32, i32* @AV_LOG_ERROR, align 4
  %144 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @av_get_pix_fmt_name(i32 %146)
  %148 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %142, i32 %143, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @EINVAL, align 4
  %150 = call i32 @AVERROR(i32 %149)
  store i32 %150, i32* %10, align 4
  br label %268

151:                                              ; preds = %136, %131, %129, %47, %42, %37
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %156 = load i32, i32* @AV_LOG_ERROR, align 4
  %157 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %155, i32 %156, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %268

158:                                              ; preds = %151
  %159 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %161 = call i32 @ff_alloc_packet2(%struct.TYPE_35__* %159, %struct.TYPE_33__* %160, i32 1024, i32 0)
  store i32 %161, i32* %10, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %268

164:                                              ; preds = %158
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32* @opj_create_compress(i32 %167)
  store i32* %168, i32** %14, align 8
  %169 = load i32*, i32** %14, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %177, label %171

171:                                              ; preds = %164
  %172 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %173 = load i32, i32* @AV_LOG_ERROR, align 4
  %174 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %172, i32 %173, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %175 = load i32, i32* @ENOMEM, align 4
  %176 = call i32 @AVERROR(i32 %175)
  store i32 %176, i32* %10, align 4
  br label %268

177:                                              ; preds = %164
  %178 = load i32*, i32** %14, align 8
  %179 = load i32, i32* @error_callback, align 4
  %180 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %181 = call i32 @opj_set_error_handler(i32* %178, i32 %179, %struct.TYPE_35__* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %177
  %184 = load i32*, i32** %14, align 8
  %185 = load i32, i32* @warning_callback, align 4
  %186 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %187 = call i32 @opj_set_warning_handler(i32* %184, i32 %185, %struct.TYPE_35__* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = load i32*, i32** %14, align 8
  %191 = load i32, i32* @info_callback, align 4
  %192 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %193 = call i32 @opj_set_info_handler(i32* %190, i32 %191, %struct.TYPE_35__* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %189, %183, %177
  %196 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %197 = load i32, i32* @AV_LOG_ERROR, align 4
  %198 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %196, i32 %197, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %199 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %199, i32* %10, align 4
  br label %268

200:                                              ; preds = %189
  %201 = load i32*, i32** %14, align 8
  %202 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %202, i32 0, i32 0
  %204 = load i32*, i32** %16, align 8
  %205 = call i32 @opj_setup_encoder(i32* %201, i32* %203, i32* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %200
  %208 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %209 = load i32, i32* @AV_LOG_ERROR, align 4
  %210 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %208, i32 %209, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %211 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %211, i32* %10, align 4
  br label %268

212:                                              ; preds = %200
  %213 = load i32, i32* @OPJ_STREAM_WRITE, align 4
  %214 = call i32* @opj_stream_default_create(i32 %213)
  store i32* %214, i32** %15, align 8
  %215 = load i32*, i32** %15, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %223, label %217

217:                                              ; preds = %212
  %218 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %219 = load i32, i32* @AV_LOG_ERROR, align 4
  %220 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %218, i32 %219, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %221 = load i32, i32* @ENOMEM, align 4
  %222 = call i32 @AVERROR(i32 %221)
  store i32 %222, i32* %10, align 4
  br label %268

223:                                              ; preds = %212
  %224 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 1
  store %struct.TYPE_33__* %224, %struct.TYPE_33__** %225, align 8
  %226 = load i32*, i32** %15, align 8
  %227 = load i32, i32* @stream_write, align 4
  %228 = call i32 @opj_stream_set_write_function(i32* %226, i32 %227)
  %229 = load i32*, i32** %15, align 8
  %230 = load i32, i32* @stream_skip, align 4
  %231 = call i32 @opj_stream_set_skip_function(i32* %229, i32 %230)
  %232 = load i32*, i32** %15, align 8
  %233 = load i32, i32* @stream_seek, align 4
  %234 = call i32 @opj_stream_set_seek_function(i32* %232, i32 %233)
  %235 = load i32*, i32** %15, align 8
  %236 = call i32 @opj_stream_set_user_data(i32* %235, %struct.TYPE_31__* %13, i32* null)
  %237 = load i32*, i32** %14, align 8
  %238 = load i32*, i32** %16, align 8
  %239 = load i32*, i32** %15, align 8
  %240 = call i32 @opj_start_compress(i32* %237, i32* %238, i32* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %252

242:                                              ; preds = %223
  %243 = load i32*, i32** %14, align 8
  %244 = load i32*, i32** %15, align 8
  %245 = call i32 @opj_encode(i32* %243, i32* %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %242
  %248 = load i32*, i32** %14, align 8
  %249 = load i32*, i32** %15, align 8
  %250 = call i32 @opj_end_compress(i32* %248, i32* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %247, %242, %223
  %253 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %254 = load i32, i32* @AV_LOG_ERROR, align 4
  %255 = call i32 (%struct.TYPE_35__*, i32, i8*, ...) @av_log(%struct.TYPE_35__* %253, i32 %254, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %256 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %256, i32* %10, align 4
  br label %268

257:                                              ; preds = %247
  %258 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @av_shrink_packet(%struct.TYPE_33__* %258, i32 %260)
  %262 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %263 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 4
  %267 = load i32*, i32** %8, align 8
  store i32 1, i32* %267, align 4
  store i32 0, i32* %10, align 4
  br label %268

268:                                              ; preds = %257, %252, %217, %207, %195, %171, %163, %154, %141, %57, %27
  %269 = load i32*, i32** %15, align 8
  %270 = call i32 @opj_stream_destroy(i32* %269)
  %271 = load i32*, i32** %14, align 8
  %272 = call i32 @opj_destroy_codec(i32* %271)
  %273 = load i32*, i32** %16, align 8
  %274 = call i32 @opj_image_destroy(i32* %273)
  %275 = load i32, i32* %10, align 4
  ret i32 %275
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @mj2_create_image(%struct.TYPE_35__*, i32*) #2

declare dso_local i32 @av_log(%struct.TYPE_35__*, i32, i8*, ...) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @libopenjpeg_copy_packed8(%struct.TYPE_35__*, %struct.TYPE_34__*, i32*) #2

declare dso_local i32 @libopenjpeg_copy_packed12(%struct.TYPE_35__*, %struct.TYPE_34__*, i32*) #2

declare dso_local i32 @libopenjpeg_copy_packed16(%struct.TYPE_35__*, %struct.TYPE_34__*, i32*) #2

declare dso_local %struct.TYPE_34__* @av_frame_clone(%struct.TYPE_34__*) #2

declare dso_local i32 @libopenjpeg_copy_unpacked8(%struct.TYPE_35__*, %struct.TYPE_34__*, i32*) #2

declare dso_local i32 @libopenjpeg_copy_unpacked16(%struct.TYPE_35__*, %struct.TYPE_34__*, i32*) #2

declare dso_local i32 @av_frame_free(%struct.TYPE_34__**) #2

declare dso_local i32 @av_get_pix_fmt_name(i32) #2

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_35__*, %struct.TYPE_33__*, i32, i32) #2

declare dso_local i32* @opj_create_compress(i32) #2

declare dso_local i32 @opj_set_error_handler(i32*, i32, %struct.TYPE_35__*) #2

declare dso_local i32 @opj_set_warning_handler(i32*, i32, %struct.TYPE_35__*) #2

declare dso_local i32 @opj_set_info_handler(i32*, i32, %struct.TYPE_35__*) #2

declare dso_local i32 @opj_setup_encoder(i32*, i32*, i32*) #2

declare dso_local i32* @opj_stream_default_create(i32) #2

declare dso_local i32 @opj_stream_set_write_function(i32*, i32) #2

declare dso_local i32 @opj_stream_set_skip_function(i32*, i32) #2

declare dso_local i32 @opj_stream_set_seek_function(i32*, i32) #2

declare dso_local i32 @opj_stream_set_user_data(i32*, %struct.TYPE_31__*, i32*) #2

declare dso_local i32 @opj_start_compress(i32*, i32*, i32*) #2

declare dso_local i32 @opj_encode(i32*, i32*) #2

declare dso_local i32 @opj_end_compress(i32*, i32*) #2

declare dso_local i32 @av_shrink_packet(%struct.TYPE_33__*, i32) #2

declare dso_local i32 @opj_stream_destroy(i32*) #2

declare dso_local i32 @opj_destroy_codec(i32*) #2

declare dso_local i32 @opj_image_destroy(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
