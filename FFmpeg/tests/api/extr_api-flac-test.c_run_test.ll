; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-flac-test.c_run_test.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-flac-test.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32, i64, i64, i32*, i32, i64* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Can't allocate input frame\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Can't allocate a buffer for input frame\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Can't allocate output frame\0A\00", align 1
@NUMBER_OF_AUDIO_FRAMES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Can't allocate memory for raw_in\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for raw_out\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Incorrect value of input frame linesize\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Error encoding audio frame\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Error decoding audio packet\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [92 x i8] c"Decoder consumed only part of a packet, it is allowed to do so -- need to update this test\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [72 x i8] c"Error frames before and after decoding has different number of samples\0A\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"Error frames before and after decoding has different channel layout\0A\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"Error frames before and after decoding has different sample format\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Incorrect value of output frame linesize\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Output differs\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_19__*, %struct.TYPE_19__*)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test(i32* %0, i32* %1, %struct.TYPE_19__* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %22 = call %struct.TYPE_18__* (...) @av_frame_alloc()
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %11, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %24 = icmp ne %struct.TYPE_18__* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @AV_LOG_ERROR, align 4
  %27 = call i32 @av_log(i32* null, i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %5, align 4
  br label %286

30:                                               ; preds = %4
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %47 = call i64 @av_frame_get_buffer(%struct.TYPE_18__* %46, i32 32)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %30
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = call i32 @av_log(i32* null, i32 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = call i32 @AVERROR(i32 %52)
  store i32 %53, i32* %5, align 4
  br label %286

54:                                               ; preds = %30
  %55 = call %struct.TYPE_18__* (...) @av_frame_alloc()
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %12, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %57 = icmp ne %struct.TYPE_18__* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = call i32 @av_log(i32* null, i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = call i32 @AVERROR(i32 %61)
  store i32 %62, i32* %5, align 4
  br label %286

63:                                               ; preds = %54
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @NUMBER_OF_AUDIO_FRAMES, align 4
  %70 = mul nsw i32 %68, %69
  %71 = call i32* @av_malloc(i32 %70)
  store i32* %71, i32** %13, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %63
  %75 = load i32, i32* @AV_LOG_ERROR, align 4
  %76 = call i32 @av_log(i32* null, i32 %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = call i32 @AVERROR(i32 %77)
  store i32 %78, i32* %5, align 4
  br label %286

79:                                               ; preds = %63
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NUMBER_OF_AUDIO_FRAMES, align 4
  %86 = mul nsw i32 %84, %85
  %87 = call i32* @av_malloc(i32 %86)
  store i32* %87, i32** %14, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %79
  %91 = load i32, i32* @AV_LOG_ERROR, align 4
  %92 = call i32 @av_log(i32* null, i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = call i32 @AVERROR(i32 %93)
  store i32 %94, i32* %5, align 4
  br label %286

95:                                               ; preds = %79
  store i32 0, i32* %19, align 4
  br label %96

96:                                               ; preds = %265, %95
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* @NUMBER_OF_AUDIO_FRAMES, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %268

100:                                              ; preds = %96
  %101 = call i32 @av_init_packet(%struct.TYPE_17__* %10)
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i32* null, i32** %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 5
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32*
  %110 = load i32, i32* %19, align 4
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @generate_raw_frame(i32* %109, i32 %110, i32 %113, i32 %116, i32 %119)
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = mul nsw i32 %123, %126
  %128 = sext i32 %127 to i64
  %129 = mul i64 %128, 4
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %20, align 4
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %131, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %100
  %139 = load i32, i32* @AV_LOG_ERROR, align 4
  %140 = call i32 @av_log(i32* null, i32 %139, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %286

141:                                              ; preds = %100
  %142 = load i32*, i32** %13, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 5
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %20, align 4
  %152 = call i32 @memcpy(i32* %145, i64 %150, i32 %151)
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %15, align 4
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %158 = call i32 @avcodec_encode_audio2(%struct.TYPE_19__* %156, %struct.TYPE_17__* %10, %struct.TYPE_18__* %157, i32* %18)
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %17, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %141
  %162 = load i32, i32* @AV_LOG_ERROR, align 4
  %163 = call i32 @av_log(i32* null, i32 %162, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %164 = load i32, i32* %17, align 4
  store i32 %164, i32* %5, align 4
  br label %286

165:                                              ; preds = %141
  %166 = load i32, i32* %18, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %263

168:                                              ; preds = %165
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %171 = call i32 @avcodec_decode_audio4(%struct.TYPE_19__* %169, %struct.TYPE_18__* %170, i32* %18, %struct.TYPE_17__* %10)
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %17, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load i32, i32* @AV_LOG_ERROR, align 4
  %176 = call i32 @av_log(i32* null, i32 %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %177 = load i32, i32* %17, align 4
  store i32 %177, i32* %5, align 4
  br label %286

178:                                              ; preds = %168
  %179 = load i32, i32* %18, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %262

181:                                              ; preds = %178
  %182 = load i32, i32* %17, align 4
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %182, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load i32, i32* @AV_LOG_INFO, align 4
  %188 = call i32 @av_log(i32* null, i32 %187, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.8, i64 0, i64 0))
  %189 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %189, i32* %5, align 4
  br label %286

190:                                              ; preds = %181
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %193, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %190
  %199 = load i32, i32* @AV_LOG_ERROR, align 4
  %200 = call i32 @av_log(i32* null, i32 %199, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.9, i64 0, i64 0))
  %201 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %201, i32* %5, align 4
  br label %286

202:                                              ; preds = %190
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %205, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %202
  %211 = load i32, i32* @AV_LOG_ERROR, align 4
  %212 = call i32 @av_log(i32* null, i32 %211, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.10, i64 0, i64 0))
  %213 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %213, i32* %5, align 4
  br label %286

214:                                              ; preds = %202
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %217, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %214
  %223 = load i32, i32* @AV_LOG_ERROR, align 4
  %224 = call i32 @av_log(i32* null, i32 %223, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0))
  %225 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %225, i32* %5, align 4
  br label %286

226:                                              ; preds = %214
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = mul nsw i32 %229, %232
  %234 = sext i32 %233 to i64
  %235 = mul i64 %234, 4
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %21, align 4
  %237 = load i32, i32* %21, align 4
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 3
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp sgt i32 %237, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %226
  %245 = load i32, i32* @AV_LOG_ERROR, align 4
  %246 = call i32 @av_log(i32* null, i32 %245, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %286

247:                                              ; preds = %226
  %248 = load i32*, i32** %14, align 8
  %249 = load i32, i32* %16, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 5
  %254 = load i64*, i64** %253, align 8
  %255 = getelementptr inbounds i64, i64* %254, i64 0
  %256 = load i64, i64* %255, align 8
  %257 = load i32, i32* %21, align 4
  %258 = call i32 @memcpy(i32* %251, i64 %256, i32 %257)
  %259 = load i32, i32* %21, align 4
  %260 = load i32, i32* %16, align 4
  %261 = add nsw i32 %260, %259
  store i32 %261, i32* %16, align 4
  br label %262

262:                                              ; preds = %247, %178
  br label %263

263:                                              ; preds = %262, %165
  %264 = call i32 @av_packet_unref(%struct.TYPE_17__* %10)
  br label %265

265:                                              ; preds = %263
  %266 = load i32, i32* %19, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %19, align 4
  br label %96

268:                                              ; preds = %96
  %269 = load i32*, i32** %13, align 8
  %270 = load i32*, i32** %14, align 8
  %271 = load i32, i32* %21, align 4
  %272 = load i32, i32* @NUMBER_OF_AUDIO_FRAMES, align 4
  %273 = mul nsw i32 %271, %272
  %274 = call i64 @memcmp(i32* %269, i32* %270, i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %268
  %277 = load i32, i32* @AV_LOG_ERROR, align 4
  %278 = call i32 @av_log(i32* null, i32 %277, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %286

279:                                              ; preds = %268
  %280 = load i32, i32* @AV_LOG_INFO, align 4
  %281 = call i32 @av_log(i32* null, i32 %280, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %282 = call i32 @av_freep(i32** %13)
  %283 = call i32 @av_freep(i32** %14)
  %284 = call i32 @av_frame_free(%struct.TYPE_18__** %11)
  %285 = call i32 @av_frame_free(%struct.TYPE_18__** %12)
  store i32 0, i32* %5, align 4
  br label %286

286:                                              ; preds = %279, %276, %244, %222, %210, %198, %186, %174, %161, %138, %90, %74, %58, %49, %25
  %287 = load i32, i32* %5, align 4
  ret i32 %287
}

declare dso_local %struct.TYPE_18__* @av_frame_alloc(...) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_frame_get_buffer(%struct.TYPE_18__*, i32) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_17__*) #1

declare dso_local i32 @generate_raw_frame(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @avcodec_encode_audio2(%struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @avcodec_decode_audio4(%struct.TYPE_19__*, %struct.TYPE_18__*, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_17__*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_18__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
