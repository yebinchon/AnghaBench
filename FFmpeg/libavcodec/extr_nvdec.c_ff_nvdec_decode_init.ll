; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvdec.c_ff_nvdec_decode_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvdec.c_ff_nvdec_decode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32, %struct.TYPE_20__*, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AVERROR_BUG = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported codec ID\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unsupported chroma format\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@cudaVideoChromaFormat_444 = common dso_local global i32 0, align 4
@AV_HWDEVICE_TYPE_CUDA = common dso_local global i32 0, align 4
@cudaVideoSurfaceFormat_YUV444 = common dso_local global i32 0, align 4
@cudaVideoSurfaceFormat_NV12 = common dso_local global i32 0, align 4
@cudaVideoSurfaceFormat_YUV444_16Bit = common dso_local global i32 0, align 4
@cudaVideoSurfaceFormat_P016 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Unsupported bit depth\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [68 x i8] c"Using more than 32 (%d) decode surfaces might cause nvdec to fail.\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Try lowering the amount of threads. Using %d right now.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@nvdec_decoder_frame_alloc = common dso_local global i32 0, align 4
@av_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_nvdec_decode_init(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 6
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %4, align 8
  %19 = bitcast %struct.TYPE_24__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 44, i1 false)
  store i32 0, i32* %13, align 4
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_25__* @av_pix_fmt_desc_get(i32 %22)
  store %struct.TYPE_25__* %23, %struct.TYPE_25__** %7, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %25 = icmp ne %struct.TYPE_25__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %27, i32* %2, align 4
  br label %212

28:                                               ; preds = %1
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @map_avcodec_id(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %36, i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %39, i32* %2, align 4
  br label %212

40:                                               ; preds = %28
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @map_chroma_format(i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %48, i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENOSYS, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %212

53:                                               ; preds = %40
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @cudaVideoChromaFormat_444, align 4
  %61 = icmp eq i32 %59, %60
  br label %62

62:                                               ; preds = %58, %53
  %63 = phi i1 [ false, %53 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %12, align 4
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  %68 = icmp ne %struct.TYPE_20__* %67, null
  br i1 %68, label %78, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %71 = load i32, i32* @AV_HWDEVICE_TYPE_CUDA, align 4
  %72 = call i32 @ff_decode_get_hw_frames_ctx(%struct.TYPE_27__* %70, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %2, align 4
  br label %212

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %62
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %103 [
    i32 8, label %85
    i32 10, label %94
    i32 12, label %94
  ]

85:                                               ; preds = %78
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @cudaVideoSurfaceFormat_YUV444, align 4
  br label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @cudaVideoSurfaceFormat_NV12, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  store i32 %93, i32* %9, align 4
  br label %109

94:                                               ; preds = %78, %78
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @cudaVideoSurfaceFormat_YUV444_16Bit, align 4
  br label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @cudaVideoSurfaceFormat_P016, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  store i32 %102, i32* %9, align 4
  br label %109

103:                                              ; preds = %78
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %105 = load i32, i32* @AV_LOG_ERROR, align 4
  %106 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %104, i32 %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* @ENOSYS, align 4
  %108 = call i32 @AVERROR(i32 %107)
  store i32 %108, i32* %2, align 4
  br label %212

109:                                              ; preds = %101, %92
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %115, %struct.TYPE_26__** %6, align 8
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 9
  store i32 %118, i32* %119, align 4
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 8
  store i32 %122, i32* %123, align 4
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 7
  store i32 %126, i32* %127, align 4
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 6
  store i32 %130, i32* %131, align 4
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %137, 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* %9, align 4
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 5
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* %10, align 4
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 1
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* %11, align 4
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 2
  store i32 %144, i32* %145, align 4
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 3
  store i32 %148, i32* %149, align 4
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 4
  store i32 %152, i32* %153, align 4
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %160 = call i32 @nvdec_decoder_create(i32* %155, i32 %158, %struct.TYPE_24__* %8, %struct.TYPE_27__* %159)
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %181

163:                                              ; preds = %109
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = icmp sgt i32 %165, 32
  br i1 %166, label %167, label %179

167:                                              ; preds = %163
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %169 = load i32, i32* @AV_LOG_WARNING, align 4
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %168, i32 %169, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %174 = load i32, i32* @AV_LOG_WARNING, align 4
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %173, i32 %174, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %167, %163
  %180 = load i32, i32* %13, align 4
  store i32 %180, i32* %2, align 4
  br label %212

181:                                              ; preds = %109
  %182 = call %struct.TYPE_22__* @av_mallocz(i32 4)
  store %struct.TYPE_22__* %182, %struct.TYPE_22__** %5, align 8
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %184 = icmp ne %struct.TYPE_22__* %183, null
  br i1 %184, label %188, label %185

185:                                              ; preds = %181
  %186 = load i32, i32* @ENOMEM, align 4
  %187 = call i32 @AVERROR(i32 %186)
  store i32 %187, i32* %13, align 4
  br label %208

188:                                              ; preds = %181
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 4
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %195 = load i32, i32* @nvdec_decoder_frame_alloc, align 4
  %196 = load i32, i32* @av_free, align 4
  %197 = call i32 @av_buffer_pool_init2(i32 4, %struct.TYPE_22__* %194, i32 %195, i32 %196)
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %188
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = call i32 @AVERROR(i32 %205)
  store i32 %206, i32* %13, align 4
  br label %208

207:                                              ; preds = %188
  store i32 0, i32* %2, align 4
  br label %212

208:                                              ; preds = %204, %185
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %210 = call i32 @ff_nvdec_decode_uninit(%struct.TYPE_27__* %209)
  %211 = load i32, i32* %13, align 4
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %208, %207, %179, %103, %75, %47, %35, %26
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_25__* @av_pix_fmt_desc_get(i32) #2

declare dso_local i32 @map_avcodec_id(i32) #2

declare dso_local i32 @av_log(%struct.TYPE_27__*, i32, i8*, ...) #2

declare dso_local i32 @map_chroma_format(i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @ff_decode_get_hw_frames_ctx(%struct.TYPE_27__*, i32) #2

declare dso_local i32 @nvdec_decoder_create(i32*, i32, %struct.TYPE_24__*, %struct.TYPE_27__*) #2

declare dso_local %struct.TYPE_22__* @av_mallocz(i32) #2

declare dso_local i32 @av_buffer_pool_init2(i32, %struct.TYPE_22__*, i32, i32) #2

declare dso_local i32 @ff_nvdec_decode_uninit(%struct.TYPE_27__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
