; ModuleID = '/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_init_audio.c'
source_filename = "/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_init_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.record_params, %struct.ff_audio_info, %struct.ff_config_param }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.record_params = type { i32, double }
%struct.ff_audio_info = type { double, i32, i32, i32*, i32*, %struct.TYPE_12__*, i32, i32, i32* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i64, i32, i8*, i32, i32, i32 }
%struct.ff_config_param = type { i8*, i32, i64, i64, i32, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"flac\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"[FFmpeg]: Cannot find acodec %s.\0A\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@RESAMPLER_QUALITY_DONTCARE = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S16 = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_QSCALE = common dso_local global i32 0, align 4
@FF_COMPLIANCE_EXPERIMENTAL = common dso_local global i32 0, align 4
@AVFMT_GLOBALHEADER = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_GLOBAL_HEADER = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_MIN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @ffmpeg_init_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_init_audio(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.ff_config_param*, align 8
  %6 = alloca %struct.ff_audio_info*, align 8
  %7 = alloca %struct.record_params*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %9 = call %struct.TYPE_17__* (...) @config_get_ptr()
  store %struct.TYPE_17__* %9, %struct.TYPE_17__** %4, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 3
  store %struct.ff_config_param* %11, %struct.ff_config_param** %5, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 2
  store %struct.ff_audio_info* %13, %struct.ff_audio_info** %6, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  store %struct.record_params* %15, %struct.record_params** %7, align 8
  %16 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %17 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %24 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i8* [ %25, %22 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %26 ]
  %29 = call i32* @avcodec_find_encoder_by_name(i8* %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %47, label %32

32:                                               ; preds = %27
  %33 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %34 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %41 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i8* [ %42, %39 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %43 ]
  %46 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  store i32 0, i32* %2, align 4
  br label %287

47:                                               ; preds = %27
  %48 = load i32*, i32** %8, align 8
  %49 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %50 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %49, i32 0, i32 8
  store i32* %48, i32** %50, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call %struct.TYPE_12__* @avcodec_alloc_context3(i32* %51)
  %53 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %54 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %53, i32 0, i32 5
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %54, align 8
  %55 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %56 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %57 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %56, i32 0, i32 5
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 10
  store i32 %55, i32* %59, align 8
  %60 = load %struct.record_params*, %struct.record_params** %7, align 8
  %61 = getelementptr inbounds %struct.record_params, %struct.record_params* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %64 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %63, i32 0, i32 5
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  %67 = load %struct.record_params*, %struct.record_params** %7, align 8
  %68 = getelementptr inbounds %struct.record_params, %struct.record_params* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %47
  %72 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  br label %75

73:                                               ; preds = %47
  %74 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %78 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %77, i32 0, i32 5
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 9
  store i32 %76, i32* %80, align 4
  %81 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @ffmpeg_audio_resolve_format(%struct.ff_audio_info* %81, i32* %82)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @ffmpeg_audio_resolve_sample_rate(%struct.TYPE_18__* %84, i32* %85)
  %87 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %88 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %132

91:                                               ; preds = %75
  %92 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %93 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sitofp i32 %94 to double
  %96 = load %struct.record_params*, %struct.record_params** %7, align 8
  %97 = getelementptr inbounds %struct.record_params, %struct.record_params* %96, i32 0, i32 1
  %98 = load double, double* %97, align 8
  %99 = fdiv double %95, %98
  %100 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %101 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %100, i32 0, i32 0
  store double %99, double* %101, align 8
  %102 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %103 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %106 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %105, i32 0, i32 5
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 4
  %109 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %110 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sitofp i32 %111 to double
  %113 = fdiv double 1.000000e+00, %112
  %114 = call i8* @av_d2q(double %113, i32 1000000)
  %115 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %116 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %115, i32 0, i32 5
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 7
  store i8* %114, i8** %118, align 8
  %119 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %120 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %119, i32 0, i32 7
  %121 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %122 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %121, i32 0, i32 6
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @RESAMPLER_QUALITY_DONTCARE, align 4
  %128 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %129 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %128, i32 0, i32 0
  %130 = load double, double* %129, align 8
  %131 = call i32 @retro_resampler_realloc(i32* %120, i32* %122, i32 %126, i32 %127, double %130)
  br label %156

132:                                              ; preds = %75
  %133 = load i32, i32* @AV_SAMPLE_FMT_S16, align 4
  %134 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %135 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %134, i32 0, i32 5
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 8
  store i32 %133, i32* %137, align 8
  %138 = load %struct.record_params*, %struct.record_params** %7, align 8
  %139 = getelementptr inbounds %struct.record_params, %struct.record_params* %138, i32 0, i32 1
  %140 = load double, double* %139, align 8
  %141 = call i64 @roundf(double %140)
  %142 = trunc i64 %141 to i32
  %143 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %144 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %143, i32 0, i32 5
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  store i32 %142, i32* %146, align 4
  %147 = load %struct.record_params*, %struct.record_params** %7, align 8
  %148 = getelementptr inbounds %struct.record_params, %struct.record_params* %147, i32 0, i32 1
  %149 = load double, double* %148, align 8
  %150 = fdiv double 1.000000e+00, %149
  %151 = call i8* @av_d2q(double %150, i32 1000000)
  %152 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %153 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %152, i32 0, i32 5
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 7
  store i8* %151, i8** %155, align 8
  br label %156

156:                                              ; preds = %132, %91
  %157 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %158 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %156
  %162 = load i32, i32* @AV_CODEC_FLAG_QSCALE, align 4
  %163 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %164 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %163, i32 0, i32 5
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %162
  store i32 %168, i32* %166, align 4
  %169 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %170 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %173 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %172, i32 0, i32 5
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 6
  store i32 %171, i32* %175, align 8
  br label %190

176:                                              ; preds = %156
  %177 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %178 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %176
  %182 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %183 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %186 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %185, i32 0, i32 5
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 5
  store i64 %184, i64* %188, align 8
  br label %189

189:                                              ; preds = %181, %176
  br label %190

190:                                              ; preds = %189, %161
  %191 = load i32, i32* @FF_COMPLIANCE_EXPERIMENTAL, align 4
  %192 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %193 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %192, i32 0, i32 5
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 4
  store i32 %191, i32* %195, align 8
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @AVFMT_GLOBALHEADER, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %190
  %208 = load i32, i32* @AV_CODEC_FLAG_GLOBAL_HEADER, align 4
  %209 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %210 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %209, i32 0, i32 5
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %208
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %207, %190
  %216 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %217 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %216, i32 0, i32 5
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %217, align 8
  %219 = load i32*, i32** %8, align 8
  %220 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %221 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %215
  %225 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %226 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %225, i32 0, i32 2
  br label %228

227:                                              ; preds = %215
  br label %228

228:                                              ; preds = %227, %224
  %229 = phi i64* [ %226, %224 ], [ null, %227 ]
  %230 = call i64 @avcodec_open2(%struct.TYPE_12__* %218, i32* %219, i64* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  store i32 0, i32* %2, align 4
  br label %287

233:                                              ; preds = %228
  %234 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %235 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %234, i32 0, i32 5
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %233
  %241 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %242 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %241, i32 0, i32 5
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 2
  store i32 1024, i32* %244, align 8
  br label %245

245:                                              ; preds = %240, %233
  %246 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %247 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %246, i32 0, i32 5
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %252 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %251, i32 0, i32 5
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = mul nsw i32 %250, %255
  %257 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %258 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = mul nsw i32 %256, %259
  %261 = call i64 @av_malloc(i32 %260)
  %262 = inttoptr i64 %261 to i32*
  %263 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %264 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %263, i32 0, i32 4
  store i32* %262, i32** %264, align 8
  %265 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %266 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %265, i32 0, i32 4
  %267 = load i32*, i32** %266, align 8
  %268 = icmp ne i32* %267, null
  br i1 %268, label %270, label %269

269:                                              ; preds = %245
  store i32 0, i32* %2, align 4
  br label %287

270:                                              ; preds = %245
  %271 = load i32, i32* @AV_INPUT_BUFFER_MIN_SIZE, align 4
  %272 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %273 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %272, i32 0, i32 2
  store i32 %271, i32* %273, align 4
  %274 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %275 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = call i64 @av_malloc(i32 %276)
  %278 = inttoptr i64 %277 to i32*
  %279 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %280 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %279, i32 0, i32 3
  store i32* %278, i32** %280, align 8
  %281 = load %struct.ff_audio_info*, %struct.ff_audio_info** %6, align 8
  %282 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %281, i32 0, i32 3
  %283 = load i32*, i32** %282, align 8
  %284 = icmp ne i32* %283, null
  br i1 %284, label %286, label %285

285:                                              ; preds = %270
  store i32 0, i32* %2, align 4
  br label %287

286:                                              ; preds = %270
  store i32 1, i32* %2, align 4
  br label %287

287:                                              ; preds = %286, %285, %269, %232, %44
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local %struct.TYPE_17__* @config_get_ptr(...) #1

declare dso_local i32* @avcodec_find_encoder_by_name(i8*) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*) #1

declare dso_local %struct.TYPE_12__* @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @ffmpeg_audio_resolve_format(%struct.ff_audio_info*, i32*) #1

declare dso_local i32 @ffmpeg_audio_resolve_sample_rate(%struct.TYPE_18__*, i32*) #1

declare dso_local i8* @av_d2q(double, i32) #1

declare dso_local i32 @retro_resampler_realloc(i32*, i32*, i32, i32, double) #1

declare dso_local i64 @roundf(double) #1

declare dso_local i64 @avcodec_open2(%struct.TYPE_12__*, i32*, i64*) #1

declare dso_local i64 @av_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
