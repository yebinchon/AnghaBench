; ModuleID = '/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_init_video.c'
source_filename = "/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_init_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.record_params, %struct.ff_video_info, %struct.ff_config_param }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.record_params = type { i32, float, float, double, double }
%struct.ff_video_info = type { i64, i32, i32, i32, i32, %struct.TYPE_16__*, i32*, i64, i32*, %struct.TYPE_15__*, %struct.TYPE_10__, i32* }
%struct.TYPE_16__ = type { double, double, i32 }
%struct.TYPE_15__ = type { float, float, i32, i32, i64, i32, i32, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.ff_config_param = type { i8*, i64, float, i64, i64, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"qp\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"libx264rgb\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"[FFmpeg]: Cannot find vcodec %s.\0A\00", align 1
@PIX_FMT_NONE = common dso_local global i64 0, align 8
@SCALER_FMT_BGR24 = common dso_local global i8* null, align 8
@SCALER_FMT_ARGB8888 = common dso_local global i8* null, align 8
@SCALER_FMT_RGB565 = common dso_local global i8* null, align 8
@PIX_FMT_RGB565 = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_QSCALE = common dso_local global i32 0, align 4
@AVFMT_GLOBALHEADER = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_GLOBAL_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @ffmpeg_init_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_init_video(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ff_config_param*, align 8
  %6 = alloca %struct.ff_video_info*, align 8
  %7 = alloca %struct.record_params*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  store %struct.ff_config_param* %10, %struct.ff_config_param** %5, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  store %struct.ff_video_info* %12, %struct.ff_video_info** %6, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  store %struct.record_params* %14, %struct.record_params** %7, align 8
  store i32* null, i32** %8, align 8
  %15 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %16 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %22 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32* @avcodec_find_encoder_by_name(i8* %23)
  store i32* %24, i32** %8, align 8
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %27 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %26, i32 0, i32 4
  %28 = call i32 @av_dict_set(i64* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %29 = call i32* @avcodec_find_encoder_by_name(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32* %29, i32** %8, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %30
  %34 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %35 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %42 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  br label %45

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i8* [ %43, %40 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %44 ]
  %47 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  store i32 0, i32* %2, align 4
  br label %371

48:                                               ; preds = %30
  %49 = load i32*, i32** %8, align 8
  %50 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %51 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %50, i32 0, i32 11
  store i32* %49, i32** %51, align 8
  %52 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %53 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PIX_FMT_NONE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %91

57:                                               ; preds = %48
  %58 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %59 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %62 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %64 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 129
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %69 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 128
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %74 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %73, i32 0, i32 1
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %67, %57
  %76 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %77 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  switch i64 %78, label %89 [
    i64 129, label %79
    i64 128, label %84
  ]

79:                                               ; preds = %75
  %80 = load i8*, i8** @SCALER_FMT_BGR24, align 8
  %81 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %82 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %81, i32 0, i32 10
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  store i8* %80, i8** %83, align 8
  br label %90

84:                                               ; preds = %75
  %85 = load i8*, i8** @SCALER_FMT_ARGB8888, align 8
  %86 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %87 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %86, i32 0, i32 10
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  br label %90

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %84, %79
  br label %98

91:                                               ; preds = %48
  %92 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %93 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %92, i32 0, i32 0
  store i64 129, i64* %93, align 8
  %94 = load i8*, i8** @SCALER_FMT_BGR24, align 8
  %95 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %96 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %95, i32 0, i32 10
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  store i8* %94, i8** %97, align 8
  br label %98

98:                                               ; preds = %91, %90
  %99 = load %struct.record_params*, %struct.record_params** %7, align 8
  %100 = getelementptr inbounds %struct.record_params, %struct.record_params* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  switch i32 %101, label %130 [
    i32 130, label %102
    i32 131, label %112
    i32 132, label %121
  ]

102:                                              ; preds = %98
  %103 = load i8*, i8** @SCALER_FMT_RGB565, align 8
  %104 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %105 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %104, i32 0, i32 10
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  store i8* %103, i8** %106, align 8
  %107 = load i32, i32* @PIX_FMT_RGB565, align 4
  %108 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %109 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %111 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %110, i32 0, i32 3
  store i32 2, i32* %111, align 8
  br label %131

112:                                              ; preds = %98
  %113 = load i8*, i8** @SCALER_FMT_BGR24, align 8
  %114 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %115 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %114, i32 0, i32 10
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  store i8* %113, i8** %116, align 8
  %117 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %118 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %117, i32 0, i32 2
  store i32 129, i32* %118, align 4
  %119 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %120 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %119, i32 0, i32 3
  store i32 3, i32* %120, align 8
  br label %131

121:                                              ; preds = %98
  %122 = load i8*, i8** @SCALER_FMT_ARGB8888, align 8
  %123 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %124 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %123, i32 0, i32 10
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  %126 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %127 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %126, i32 0, i32 2
  store i32 128, i32* %127, align 4
  %128 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %129 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %128, i32 0, i32 3
  store i32 4, i32* %129, align 8
  br label %131

130:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %371

131:                                              ; preds = %121, %112, %102
  %132 = load i32*, i32** %8, align 8
  %133 = call %struct.TYPE_15__* @avcodec_alloc_context3(i32* %132)
  %134 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %135 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %134, i32 0, i32 9
  store %struct.TYPE_15__* %133, %struct.TYPE_15__** %135, align 8
  %136 = load %struct.record_params*, %struct.record_params** %7, align 8
  %137 = getelementptr inbounds %struct.record_params, %struct.record_params* %136, i32 0, i32 1
  %138 = load float, float* %137, align 4
  %139 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %140 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %139, i32 0, i32 2
  %141 = load float, float* %140, align 8
  %142 = fmul float %138, %141
  %143 = load %struct.record_params*, %struct.record_params** %7, align 8
  %144 = getelementptr inbounds %struct.record_params, %struct.record_params* %143, i32 0, i32 1
  store float %142, float* %144, align 4
  %145 = load %struct.record_params*, %struct.record_params** %7, align 8
  %146 = getelementptr inbounds %struct.record_params, %struct.record_params* %145, i32 0, i32 2
  %147 = load float, float* %146, align 8
  %148 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %149 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %148, i32 0, i32 2
  %150 = load float, float* %149, align 8
  %151 = fmul float %147, %150
  %152 = load %struct.record_params*, %struct.record_params** %7, align 8
  %153 = getelementptr inbounds %struct.record_params, %struct.record_params* %152, i32 0, i32 2
  store float %151, float* %153, align 8
  %154 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %155 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %156 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %155, i32 0, i32 9
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 9
  store i32 %154, i32* %158, align 8
  %159 = load %struct.record_params*, %struct.record_params** %7, align 8
  %160 = getelementptr inbounds %struct.record_params, %struct.record_params* %159, i32 0, i32 1
  %161 = load float, float* %160, align 4
  %162 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %163 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %162, i32 0, i32 9
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  store float %161, float* %165, align 8
  %166 = load %struct.record_params*, %struct.record_params** %7, align 8
  %167 = getelementptr inbounds %struct.record_params, %struct.record_params* %166, i32 0, i32 2
  %168 = load float, float* %167, align 8
  %169 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %170 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %169, i32 0, i32 9
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  store float %168, float* %172, align 4
  %173 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %174 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = sitofp i64 %175 to double
  %177 = load %struct.record_params*, %struct.record_params** %7, align 8
  %178 = getelementptr inbounds %struct.record_params, %struct.record_params* %177, i32 0, i32 3
  %179 = load double, double* %178, align 8
  %180 = fdiv double %176, %179
  %181 = call i8* @av_d2q(double %180, i32 1000000)
  %182 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %183 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %182, i32 0, i32 9
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 8
  store i8* %181, i8** %185, align 8
  %186 = load %struct.record_params*, %struct.record_params** %7, align 8
  %187 = getelementptr inbounds %struct.record_params, %struct.record_params* %186, i32 0, i32 4
  %188 = load double, double* %187, align 8
  %189 = load %struct.record_params*, %struct.record_params** %7, align 8
  %190 = getelementptr inbounds %struct.record_params, %struct.record_params* %189, i32 0, i32 2
  %191 = load float, float* %190, align 8
  %192 = fpext float %191 to double
  %193 = fmul double %188, %192
  %194 = load %struct.record_params*, %struct.record_params** %7, align 8
  %195 = getelementptr inbounds %struct.record_params, %struct.record_params* %194, i32 0, i32 1
  %196 = load float, float* %195, align 4
  %197 = fpext float %196 to double
  %198 = fdiv double %193, %197
  %199 = call i8* @av_d2q(double %198, i32 255)
  %200 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %201 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %200, i32 0, i32 9
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 7
  store i8* %199, i8** %203, align 8
  %204 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %205 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = trunc i64 %206 to i32
  %208 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %209 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %208, i32 0, i32 9
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 2
  store i32 %207, i32* %211, align 8
  %212 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %213 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %212, i32 0, i32 8
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %216 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %215, i32 0, i32 9
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 6
  store i32 %214, i32* %218, align 4
  %219 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %220 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %219, i32 0, i32 7
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %238

223:                                              ; preds = %131
  %224 = load i32, i32* @AV_CODEC_FLAG_QSCALE, align 4
  %225 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %226 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %225, i32 0, i32 9
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %224
  store i32 %230, i32* %228, align 4
  %231 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %232 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %235 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %234, i32 0, i32 9
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 5
  store i32 %233, i32* %237, align 8
  br label %252

238:                                              ; preds = %131
  %239 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %240 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %239, i32 0, i32 5
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %238
  %244 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %245 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %244, i32 0, i32 5
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %248 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %247, i32 0, i32 9
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 4
  store i64 %246, i64* %250, align 8
  br label %251

251:                                              ; preds = %243, %238
  br label %252

252:                                              ; preds = %251, %223
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @AVFMT_GLOBALHEADER, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %272

264:                                              ; preds = %252
  %265 = load i32, i32* @AV_CODEC_FLAG_GLOBAL_HEADER, align 4
  %266 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %267 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %266, i32 0, i32 9
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, %265
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %264, %252
  %273 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %274 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %273, i32 0, i32 9
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %274, align 8
  %276 = load i32*, i32** %8, align 8
  %277 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %278 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %277, i32 0, i32 4
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %272
  %282 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %283 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %282, i32 0, i32 4
  br label %285

284:                                              ; preds = %272
  br label %285

285:                                              ; preds = %284, %281
  %286 = phi i64* [ %283, %281 ], [ null, %284 ]
  %287 = call i64 @avcodec_open2(%struct.TYPE_15__* %275, i32* %276, i64* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %285
  store i32 0, i32* %2, align 4
  br label %371

290:                                              ; preds = %285
  %291 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %292 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %291, i32 0, i32 4
  store i32 8388608, i32* %292, align 4
  %293 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %294 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = call i64 @av_malloc(i64 %296)
  %298 = inttoptr i64 %297 to i32*
  %299 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %300 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %299, i32 0, i32 8
  store i32* %298, i32** %300, align 8
  %301 = load %struct.ff_config_param*, %struct.ff_config_param** %5, align 8
  %302 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %301, i32 0, i32 3
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %305 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %304, i32 0, i32 7
  store i64 %303, i64* %305, align 8
  %306 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %307 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = trunc i64 %308 to i32
  %310 = load %struct.record_params*, %struct.record_params** %7, align 8
  %311 = getelementptr inbounds %struct.record_params, %struct.record_params* %310, i32 0, i32 1
  %312 = load float, float* %311, align 4
  %313 = fpext float %312 to double
  %314 = load %struct.record_params*, %struct.record_params** %7, align 8
  %315 = getelementptr inbounds %struct.record_params, %struct.record_params* %314, i32 0, i32 2
  %316 = load float, float* %315, align 8
  %317 = fpext float %316 to double
  %318 = call i64 @avpicture_get_size(i32 %309, double %313, double %317)
  store i64 %318, i64* %4, align 8
  %319 = load i64, i64* %4, align 8
  %320 = call i64 @av_malloc(i64 %319)
  %321 = inttoptr i64 %320 to i32*
  %322 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %323 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %322, i32 0, i32 6
  store i32* %321, i32** %323, align 8
  %324 = call %struct.TYPE_16__* (...) @av_frame_alloc()
  %325 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %326 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %325, i32 0, i32 5
  store %struct.TYPE_16__* %324, %struct.TYPE_16__** %326, align 8
  %327 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %328 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %327, i32 0, i32 5
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %328, align 8
  %330 = bitcast %struct.TYPE_16__* %329 to i32*
  %331 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %332 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %331, i32 0, i32 6
  %333 = load i32*, i32** %332, align 8
  %334 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %335 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = trunc i64 %336 to i32
  %338 = load %struct.record_params*, %struct.record_params** %7, align 8
  %339 = getelementptr inbounds %struct.record_params, %struct.record_params* %338, i32 0, i32 1
  %340 = load float, float* %339, align 4
  %341 = fpext float %340 to double
  %342 = load %struct.record_params*, %struct.record_params** %7, align 8
  %343 = getelementptr inbounds %struct.record_params, %struct.record_params* %342, i32 0, i32 2
  %344 = load float, float* %343, align 8
  %345 = fpext float %344 to double
  %346 = call i32 @avpicture_fill(i32* %330, i32* %333, i32 %337, double %341, double %345)
  %347 = load %struct.record_params*, %struct.record_params** %7, align 8
  %348 = getelementptr inbounds %struct.record_params, %struct.record_params* %347, i32 0, i32 1
  %349 = load float, float* %348, align 4
  %350 = fpext float %349 to double
  %351 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %352 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %351, i32 0, i32 5
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 0
  store double %350, double* %354, align 8
  %355 = load %struct.record_params*, %struct.record_params** %7, align 8
  %356 = getelementptr inbounds %struct.record_params, %struct.record_params* %355, i32 0, i32 2
  %357 = load float, float* %356, align 8
  %358 = fpext float %357 to double
  %359 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %360 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %359, i32 0, i32 5
  %361 = load %struct.TYPE_16__*, %struct.TYPE_16__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 1
  store double %358, double* %362, align 8
  %363 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %364 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = trunc i64 %365 to i32
  %367 = load %struct.ff_video_info*, %struct.ff_video_info** %6, align 8
  %368 = getelementptr inbounds %struct.ff_video_info, %struct.ff_video_info* %367, i32 0, i32 5
  %369 = load %struct.TYPE_16__*, %struct.TYPE_16__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 2
  store i32 %366, i32* %370, align 8
  store i32 1, i32* %2, align 4
  br label %371

371:                                              ; preds = %290, %289, %130, %45
  %372 = load i32, i32* %2, align 4
  ret i32 %372
}

declare dso_local i32* @avcodec_find_encoder_by_name(i8*) #1

declare dso_local i32 @av_dict_set(i64*, i8*, i8*, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*) #1

declare dso_local %struct.TYPE_15__* @avcodec_alloc_context3(i32*) #1

declare dso_local i8* @av_d2q(double, i32) #1

declare dso_local i64 @avcodec_open2(%struct.TYPE_15__*, i32*, i64*) #1

declare dso_local i64 @av_malloc(i64) #1

declare dso_local i64 @avpicture_get_size(i32, double, double) #1

declare dso_local %struct.TYPE_16__* @av_frame_alloc(...) #1

declare dso_local i32 @avpicture_fill(i32*, i32*, i32, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
