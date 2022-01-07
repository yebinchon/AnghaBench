; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_check_new_extra_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_check_new_extra_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_21__*, %struct.TYPE_20__**, %struct.TYPE_23__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i8*, i8* }
%struct.TYPE_24__ = type { i64 }

@AV_PKT_DATA_NEW_EXTRADATA = common dso_local global i32 0, align 4
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@MAX_PCE_SIZE = common dso_local global i32 0, align 4
@MATROSKA_ID_AUDIOSAMPLINGFREQ = common dso_local global i32 0, align 4
@MATROSKA_ID_AUDIOOUTSAMPLINGFREQ = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Error parsing AAC extradata, unable to determine samplerate.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Invalid FLAC STREAMINFO metadata for output stream %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@MATROSKA_ID_CODECPRIVATE = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Ignoring new extradata in a packet for stream %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)* @mkv_check_new_extra_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_check_new_extra_data(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %6, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i64 %29
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %7, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %32, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %33, i64 %36
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %39, align 8
  store %struct.TYPE_26__* %40, %struct.TYPE_26__** %8, align 8
  store i32 0, i32* %10, align 4
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %42 = load i32, i32* @AV_PKT_DATA_NEW_EXTRADATA, align 4
  %43 = call i32* @av_packet_get_side_data(%struct.TYPE_24__* %41, i32 %42, i32* %10)
  store i32* %43, i32** %9, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %361 [
    i32 130, label %47
    i32 128, label %189
    i32 129, label %270
  ]

47:                                               ; preds = %2
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %171

50:                                               ; preds = %47
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %171

59:                                               ; preds = %50
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %171, label %64

64:                                               ; preds = %59
  store i32 0, i32* %13, align 4
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = call i32 @get_aac_sample_rates(%struct.TYPE_25__* %65, i32* %66, i32 %67, i32* %69, i32* %13)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %3, align 4
  br label %373

75:                                               ; preds = %64
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %78, %75
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 2
  %85 = call i32 @av_freep(i32* %84)
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @ff_alloc_extradata(%struct.TYPE_26__* %86, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %3, align 4
  br label %373

93:                                               ; preds = %82
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @memcpy(i32 %96, i32* %97, i32 %98)
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @avio_tell(i32 %102)
  store i8* %103, i8** %14, align 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* @SEEK_SET, align 4
  %111 = call i32 @avio_seek(i32 %106, i8* %109, i32 %110)
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %117 = call i32 @mkv_write_codecprivate(%struct.TYPE_25__* %112, i32 %115, %struct.TYPE_26__* %116, i32 1, i32 0)
  %118 = load i32, i32* @MAX_PCE_SIZE, align 4
  %119 = add nsw i32 %118, 2
  %120 = add nsw i32 %119, 4
  %121 = sext i32 %120 to i64
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i8* @avio_tell(i32 %124)
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = ptrtoint i8* %125 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = sub nsw i64 %121, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %93
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @put_ebml_void(i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %136, %93
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* @SEEK_SET, align 4
  %150 = call i32 @avio_seek(i32 %145, i8* %148, i32 %149)
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @MATROSKA_ID_AUDIOSAMPLINGFREQ, align 4
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @put_ebml_float(i32 %153, i32 %154, i32 %157)
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @MATROSKA_ID_AUDIOOUTSAMPLINGFREQ, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @put_ebml_float(i32 %161, i32 %162, i32 %163)
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i8*, i8** %14, align 8
  %169 = load i32, i32* @SEEK_SET, align 4
  %170 = call i32 @avio_seek(i32 %167, i8* %168, i32 %169)
  br label %188

171:                                              ; preds = %59, %50, %47
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %187, label %176

176:                                              ; preds = %171
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %176
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %183 = load i32, i32* @AV_LOG_ERROR, align 4
  %184 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %182, i32 %183, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %185 = load i32, i32* @EINVAL, align 4
  %186 = call i32 @AVERROR(i32 %185)
  store i32 %186, i32* %3, align 4
  br label %373

187:                                              ; preds = %176, %171
  br label %188

188:                                              ; preds = %187, %142
  br label %372

189:                                              ; preds = %2
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %269

192:                                              ; preds = %189
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %269

201:                                              ; preds = %192
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %269, label %206

206:                                              ; preds = %201
  %207 = load i32, i32* %10, align 4
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %207, %210
  br i1 %211, label %212, label %221

212:                                              ; preds = %206
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %214 = load i32, i32* @AV_LOG_ERROR, align 4
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %213, i32 %214, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %217)
  %219 = load i32, i32* @EINVAL, align 4
  %220 = call i32 @AVERROR(i32 %219)
  store i32 %220, i32* %3, align 4
  br label %373

221:                                              ; preds = %206
  %222 = call %struct.TYPE_26__* (...) @avcodec_parameters_alloc()
  store %struct.TYPE_26__* %222, %struct.TYPE_26__** %15, align 8
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %224 = icmp ne %struct.TYPE_26__* %223, null
  br i1 %224, label %228, label %225

225:                                              ; preds = %221
  %226 = load i32, i32* @ENOMEM, align 4
  %227 = call i32 @AVERROR(i32 %226)
  store i32 %227, i32* %3, align 4
  br label %373

228:                                              ; preds = %221
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %230 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %231 = call i32 @avcodec_parameters_copy(%struct.TYPE_26__* %229, %struct.TYPE_26__* %230)
  store i32 %231, i32* %11, align 4
  %232 = load i32, i32* %11, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = call i32 @avcodec_parameters_free(%struct.TYPE_26__** %15)
  %236 = load i32, i32* %11, align 4
  store i32 %236, i32* %3, align 4
  br label %373

237:                                              ; preds = %228
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %9, align 8
  %242 = load i32, i32* %10, align 4
  %243 = call i32 @memcpy(i32 %240, i32* %241, i32 %242)
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i8* @avio_tell(i32 %246)
  store i8* %247, i8** %16, align 8
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 1
  %253 = load i8*, i8** %252, align 8
  %254 = load i32, i32* @SEEK_SET, align 4
  %255 = call i32 @avio_seek(i32 %250, i8* %253, i32 %254)
  %256 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %261 = call i32 @mkv_write_codecprivate(%struct.TYPE_25__* %256, i32 %259, %struct.TYPE_26__* %260, i32 1, i32 0)
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i8*, i8** %16, align 8
  %266 = load i32, i32* @SEEK_SET, align 4
  %267 = call i32 @avio_seek(i32 %264, i8* %265, i32 %266)
  %268 = call i32 @avcodec_parameters_free(%struct.TYPE_26__** %15)
  br label %269

269:                                              ; preds = %237, %201, %192, %189
  br label %372

270:                                              ; preds = %2
  %271 = load i32, i32* %10, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %352

273:                                              ; preds = %270
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %352

282:                                              ; preds = %273
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %352, label %287

287:                                              ; preds = %282
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %352, label %292

292:                                              ; preds = %287
  %293 = call i32 @avio_open_dyn_buf(i32** %17)
  store i32 %293, i32* %11, align 4
  %294 = load i32, i32* %11, align 4
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %292
  %297 = load i32, i32* %11, align 4
  store i32 %297, i32* %3, align 4
  br label %373

298:                                              ; preds = %292
  %299 = load i32*, i32** %17, align 8
  %300 = load i32*, i32** %9, align 8
  %301 = load i32, i32* %10, align 4
  %302 = call i32 @ff_isom_write_av1c(i32* %299, i32* %300, i32 %301)
  %303 = load i32*, i32** %17, align 8
  %304 = call i32 @avio_close_dyn_buf(i32* %303, i32** %18)
  store i32 %304, i32* %19, align 4
  %305 = load i32, i32* %19, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %311, label %307

307:                                              ; preds = %298
  %308 = load i32*, i32** %18, align 8
  %309 = call i32 @av_free(i32* %308)
  %310 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %310, i32* %3, align 4
  br label %373

311:                                              ; preds = %298
  %312 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = call i8* @avio_tell(i32 %314)
  store i8* %315, i8** %20, align 8
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %319, i32 0, i32 1
  %321 = load i8*, i8** %320, align 8
  %322 = load i32, i32* @SEEK_SET, align 4
  %323 = call i32 @avio_seek(i32 %318, i8* %321, i32 %322)
  %324 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @MATROSKA_ID_CODECPRIVATE, align 4
  %328 = load i32*, i32** %18, align 8
  %329 = call i32 @put_ebml_binary(i32 %326, i32 %327, i32* %328, i32 4)
  %330 = load i32*, i32** %18, align 8
  %331 = call i32 @av_free(i32* %330)
  %332 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i8*, i8** %20, align 8
  %336 = load i32, i32* @SEEK_SET, align 4
  %337 = call i32 @avio_seek(i32 %334, i8* %335, i32 %336)
  %338 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %339 = load i32, i32* %10, align 4
  %340 = call i32 @ff_alloc_extradata(%struct.TYPE_26__* %338, i32 %339)
  store i32 %340, i32* %11, align 4
  %341 = load i32, i32* %11, align 4
  %342 = icmp slt i32 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %311
  %344 = load i32, i32* %11, align 4
  store i32 %344, i32* %3, align 4
  br label %373

345:                                              ; preds = %311
  %346 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = load i32*, i32** %9, align 8
  %350 = load i32, i32* %10, align 4
  %351 = call i32 @memcpy(i32 %348, i32* %349, i32 %350)
  br label %360

352:                                              ; preds = %287, %282, %273, %270
  %353 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %354 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %359, label %357

357:                                              ; preds = %352
  %358 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %358, i32* %3, align 4
  br label %373

359:                                              ; preds = %352
  br label %360

360:                                              ; preds = %359, %345
  br label %372

361:                                              ; preds = %2
  %362 = load i32, i32* %10, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %371

364:                                              ; preds = %361
  %365 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %366 = load i32, i32* @AV_LOG_DEBUG, align 4
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %365, i32 %366, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %369)
  br label %371

371:                                              ; preds = %364, %361
  br label %372

372:                                              ; preds = %371, %360, %269, %188
  store i32 0, i32* %3, align 4
  br label %373

373:                                              ; preds = %372, %357, %343, %307, %296, %234, %225, %212, %181, %91, %73
  %374 = load i32, i32* %3, align 4
  ret i32 %374
}

declare dso_local i32* @av_packet_get_side_data(%struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32 @get_aac_sample_rates(%struct.TYPE_25__*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @ff_alloc_extradata(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i8* @avio_tell(i32) #1

declare dso_local i32 @avio_seek(i32, i8*, i32) #1

declare dso_local i32 @mkv_write_codecprivate(%struct.TYPE_25__*, i32, %struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @put_ebml_void(i32, i32) #1

declare dso_local i32 @put_ebml_float(i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_26__* @avcodec_parameters_alloc(...) #1

declare dso_local i32 @avcodec_parameters_copy(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @avcodec_parameters_free(%struct.TYPE_26__**) #1

declare dso_local i32 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @ff_isom_write_av1c(i32*, i32*, i32) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @put_ebml_binary(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
