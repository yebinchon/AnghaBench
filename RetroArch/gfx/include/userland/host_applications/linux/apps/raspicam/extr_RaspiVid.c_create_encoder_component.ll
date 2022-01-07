; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVid.c_create_encoder_component.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiVid.c_create_encoder_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_43__ = type { i64, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_33__*, %struct.TYPE_42__, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_44__**, %struct.TYPE_44__**, i32, i32 }
%struct.TYPE_44__ = type { i32, i32, i32, i64, i64, i64, i32, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i64, i64, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32, i64 }
%struct.TYPE_42__ = type { i32, i32, i64 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_34__, %struct.TYPE_40__ }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_40__ = type { i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_34__, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i64, i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_34__, i64, i64, i64, i64 }

@MMAL_COMPONENT_DEFAULT_VIDEO_ENCODER = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Unable to create video encoder component\00", align 1
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Video encoder doesn't have input/output ports\00", align 1
@MMAL_ENCODING_H264 = common dso_local global i64 0, align 8
@MMAL_VIDEO_LEVEL_H264_4 = common dso_local global i64 0, align 8
@MAX_BITRATE_LEVEL4 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Bitrate too high: Reducing to 25MBit/s\0A\00", align 1
@MAX_BITRATE_LEVEL42 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Bitrate too high: Reducing to 62.5MBit/s\0A\00", align 1
@MMAL_ENCODING_MJPEG = common dso_local global i64 0, align 8
@MAX_BITRATE_MJPEG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"Unable to set format on video encoder output port\00", align 1
@MMAL_PARAMETER_INTRAPERIOD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Unable to set intraperiod\00", align 1
@.str.6 = private unnamed_addr constant [85 x i8] c"H264 Slice count (%d) exceeds number of macroblock rows (%d). Setting slices to %d.\0A\00", align 1
@MMAL_PARAMETER_MB_ROWS_PER_SLICE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Unable to set number of slices\00", align 1
@MMAL_PARAMETER_VIDEO_ENCODE_INITIAL_QUANT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Unable to set initial QP\00", align 1
@MMAL_PARAMETER_VIDEO_ENCODE_MIN_QUANT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"Unable to set min QP\00", align 1
@MMAL_PARAMETER_VIDEO_ENCODE_MAX_QUANT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"Unable to set max QP\00", align 1
@MMAL_PARAMETER_PROFILE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [54 x i8] c"Too many macroblocks/s: Increasing H264 Level to 4.2\0A\00", align 1
@MMAL_VIDEO_LEVEL_H264_42 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [33 x i8] c"Too many macroblocks/s requested\00", align 1
@MMAL_EINVAL = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [27 x i8] c"Unable to set H264 profile\00", align 1
@MMAL_PARAMETER_VIDEO_IMMUTABLE_INPUT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"Unable to set immutable input flag\00", align 1
@MMAL_PARAMETER_VIDEO_ENCODE_INLINE_HEADER = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [44 x i8] c"failed to set INLINE HEADER FLAG parameters\00", align 1
@MMAL_PARAMETER_VIDEO_ENCODE_SPS_TIMING = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [42 x i8] c"failed to set SPS TIMINGS FLAG parameters\00", align 1
@MMAL_PARAMETER_VIDEO_ENCODE_INLINE_VECTORS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [40 x i8] c"failed to set INLINE VECTORS parameters\00", align 1
@MMAL_PARAMETER_VIDEO_INTRA_REFRESH = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [78 x i8] c"Unable to get existing H264 intra-refresh values. Please update your firmware\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"Unable to set H264 intra-refresh values\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"Unable to enable video encoder component\00", align 1
@.str.21 = private unnamed_addr constant [63 x i8] c"Failed to create buffer header pool for encoder output port %s\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"Encoder component done\0A\00", align 1
@MMAL_PARAMETER_RATECONTROL = common dso_local global i32 0, align 4
@MMAL_VIDEO_RATECONTROL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_43__*)* @create_encoder_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_encoder_component(%struct.TYPE_43__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_43__*, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_44__*, align 8
  %6 = alloca %struct.TYPE_44__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_32__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_32__, align 4
  %13 = alloca %struct.TYPE_32__, align 4
  %14 = alloca %struct.TYPE_32__, align 4
  %15 = alloca %struct.TYPE_30__, align 8
  %16 = alloca %struct.TYPE_31__, align 8
  store %struct.TYPE_43__* %0, %struct.TYPE_43__** %3, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %5, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %6, align 8
  %17 = load i32, i32* @MMAL_COMPONENT_DEFAULT_VIDEO_ENCODER, align 4
  %18 = call i64 @mmal_component_create(i32 %17, %struct.TYPE_33__** %4)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @MMAL_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %576

24:                                               ; preds = %1
  %25 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29, %24
  %35 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %35, i64* %7, align 8
  %36 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %576

37:                                               ; preds = %29
  %38 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_44__*, %struct.TYPE_44__** %40, i64 0
  %42 = load %struct.TYPE_44__*, %struct.TYPE_44__** %41, align 8
  store %struct.TYPE_44__* %42, %struct.TYPE_44__** %5, align 8
  %43 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_44__*, %struct.TYPE_44__** %45, i64 0
  %47 = load %struct.TYPE_44__*, %struct.TYPE_44__** %46, align 8
  store %struct.TYPE_44__* %47, %struct.TYPE_44__** %6, align 8
  %48 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %48, i32 0, i32 7
  %50 = load %struct.TYPE_36__*, %struct.TYPE_36__** %49, align 8
  %51 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %51, i32 0, i32 7
  %53 = load %struct.TYPE_36__*, %struct.TYPE_36__** %52, align 8
  %54 = call i32 @mmal_format_copy(%struct.TYPE_36__* %50, %struct.TYPE_36__* %53)
  %55 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %58, i32 0, i32 7
  %60 = load %struct.TYPE_36__*, %struct.TYPE_36__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %60, i32 0, i32 0
  store i64 %57, i64* %61, align 8
  %62 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MMAL_ENCODING_H264, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %37
  %68 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MMAL_VIDEO_LEVEL_H264_4, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MAX_BITRATE_LEVEL4, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i64, i64* @MAX_BITRATE_LEVEL4, align 8
  %83 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %79, %73
  br label %99

86:                                               ; preds = %67
  %87 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MAX_BITRATE_LEVEL42, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load i32, i32* @stderr, align 4
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i64, i64* @MAX_BITRATE_LEVEL42, align 8
  %96 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %92, %86
  br label %99

99:                                               ; preds = %98, %85
  br label %120

100:                                              ; preds = %37
  %101 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MMAL_ENCODING_MJPEG, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %100
  %107 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @MAX_BITRATE_MJPEG, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load i32, i32* @stderr, align 4
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i64, i64* @MAX_BITRATE_MJPEG, align 8
  %116 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %112, %106
  br label %119

119:                                              ; preds = %118, %100
  br label %120

120:                                              ; preds = %119, %99
  %121 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %124, i32 0, i32 7
  %126 = load %struct.TYPE_36__*, %struct.TYPE_36__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %126, i32 0, i32 1
  store i64 %123, i64* %127, align 8
  %128 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @MMAL_ENCODING_H264, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %120
  %134 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %142

139:                                              ; preds = %120
  %140 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %140, i32 0, i32 0
  store i32 262144, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %133
  %143 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %142
  %151 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %150, %142
  %157 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %160, i32 0, i32 3
  store i64 %159, i64* %161, align 8
  %162 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = icmp slt i64 %164, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %156
  %170 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %173, i32 0, i32 3
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %169, %156
  %176 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %176, i32 0, i32 7
  %178 = load %struct.TYPE_36__*, %struct.TYPE_36__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_38__*, %struct.TYPE_38__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %182, i32 0, i32 1
  store i64 0, i64* %183, align 8
  %184 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %184, i32 0, i32 7
  %186 = load %struct.TYPE_36__*, %struct.TYPE_36__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_38__*, %struct.TYPE_38__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %190, i32 0, i32 0
  store i32 1, i32* %191, align 8
  %192 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %193 = call i64 @mmal_port_format_commit(%struct.TYPE_44__* %192)
  store i64 %193, i64* %7, align 8
  %194 = load i64, i64* %7, align 8
  %195 = load i64, i64* @MMAL_SUCCESS, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %175
  %198 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %576

199:                                              ; preds = %175
  %200 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @MMAL_ENCODING_H264, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %230

205:                                              ; preds = %199
  %206 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, -1
  br i1 %209, label %210, label %230

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %9, i32 0, i32 0
  %212 = load i32, i32* @MMAL_PARAMETER_INTRAPERIOD, align 4
  store i32 %212, i32* %211, align 4
  %213 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %9, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  store i32 %217, i32* %214, align 4
  %218 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %213, i32 0, i32 1
  store i32 0, i32* %218, align 4
  %219 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %9, i32 0, i32 2
  %220 = bitcast %struct.TYPE_40__* %219 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %220, i8 0, i64 8, i1 false)
  %221 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %9, i32 0, i32 1
  %223 = call i64 @mmal_port_parameter_set(%struct.TYPE_44__* %221, %struct.TYPE_34__* %222)
  store i64 %223, i64* %7, align 8
  %224 = load i64, i64* %7, align 8
  %225 = load i64, i64* @MMAL_SUCCESS, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %210
  %228 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %576

229:                                              ; preds = %210
  br label %230

230:                                              ; preds = %229, %205, %199
  %231 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @MMAL_ENCODING_H264, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %295

236:                                              ; preds = %230
  %237 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = icmp sgt i32 %239, 1
  br i1 %240, label %241, label %295

241:                                              ; preds = %236
  %242 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %242, i32 0, i32 9
  %244 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp sle i32 %245, 1280
  br i1 %246, label %247, label %295

247:                                              ; preds = %241
  %248 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %248, i32 0, i32 9
  %250 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @VCOS_ALIGN_UP(i32 %251, i32 16)
  %253 = ashr i32 %252, 4
  store i32 %253, i32* %10, align 4
  %254 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %10, align 4
  %258 = icmp sgt i32 %256, %257
  br i1 %258, label %259, label %267

259:                                              ; preds = %247
  %260 = load i32, i32* @stderr, align 4
  %261 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %10, align 4
  %265 = load i32, i32* %10, align 4
  %266 = call i32 (i32, i8*, ...) @fprintf(i32 %260, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0), i32 %263, i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %259, %247
  %268 = load i32, i32* %10, align 4
  %269 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 4
  %272 = sdiv i32 %268, %271
  store i32 %272, i32* %11, align 4
  %273 = load i32, i32* %10, align 4
  %274 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %11, align 4
  %278 = mul nsw i32 %276, %277
  %279 = sub nsw i32 %273, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %267
  %282 = load i32, i32* %11, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %11, align 4
  br label %284

284:                                              ; preds = %281, %267
  %285 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %286 = load i32, i32* @MMAL_PARAMETER_MB_ROWS_PER_SLICE, align 4
  %287 = load i32, i32* %11, align 4
  %288 = call i64 @mmal_port_parameter_set_uint32(%struct.TYPE_44__* %285, i32 %286, i32 %287)
  store i64 %288, i64* %7, align 8
  %289 = load i64, i64* %7, align 8
  %290 = load i64, i64* @MMAL_SUCCESS, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %284
  %293 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %576

294:                                              ; preds = %284
  br label %295

295:                                              ; preds = %294, %241, %236, %230
  %296 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @MMAL_ENCODING_H264, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %364

301:                                              ; preds = %295
  %302 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 8
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %364

306:                                              ; preds = %301
  %307 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 0
  %308 = load i32, i32* @MMAL_PARAMETER_VIDEO_ENCODE_INITIAL_QUANT, align 4
  store i32 %308, i32* %307, align 4
  %309 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %311, i32 0, i32 5
  %313 = load i32, i32* %312, align 8
  store i32 %313, i32* %310, align 4
  %314 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %309, i32 0, i32 1
  store i32 0, i32* %314, align 4
  %315 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 2
  %316 = bitcast %struct.TYPE_40__* %315 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %316, i8 0, i64 8, i1 false)
  %317 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 1
  %319 = call i64 @mmal_port_parameter_set(%struct.TYPE_44__* %317, %struct.TYPE_34__* %318)
  store i64 %319, i64* %7, align 8
  %320 = load i64, i64* %7, align 8
  %321 = load i64, i64* @MMAL_SUCCESS, align 8
  %322 = icmp ne i64 %320, %321
  br i1 %322, label %323, label %325

323:                                              ; preds = %306
  %324 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %576

325:                                              ; preds = %306
  %326 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %13, i32 0, i32 0
  %327 = load i32, i32* @MMAL_PARAMETER_VIDEO_ENCODE_MIN_QUANT, align 4
  store i32 %327, i32* %326, align 4
  %328 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %13, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %328, i32 0, i32 0
  %330 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 8
  store i32 %332, i32* %329, align 4
  %333 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %328, i32 0, i32 1
  store i32 0, i32* %333, align 4
  %334 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %13, i32 0, i32 2
  %335 = bitcast %struct.TYPE_40__* %334 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %335, i8 0, i64 8, i1 false)
  %336 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %13, i32 0, i32 1
  %338 = call i64 @mmal_port_parameter_set(%struct.TYPE_44__* %336, %struct.TYPE_34__* %337)
  store i64 %338, i64* %7, align 8
  %339 = load i64, i64* %7, align 8
  %340 = load i64, i64* @MMAL_SUCCESS, align 8
  %341 = icmp ne i64 %339, %340
  br i1 %341, label %342, label %344

342:                                              ; preds = %325
  %343 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %576

344:                                              ; preds = %325
  %345 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 0
  %346 = load i32, i32* @MMAL_PARAMETER_VIDEO_ENCODE_MAX_QUANT, align 4
  store i32 %346, i32* %345, align 4
  %347 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %349, i32 0, i32 5
  %351 = load i32, i32* %350, align 8
  store i32 %351, i32* %348, align 4
  %352 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %347, i32 0, i32 1
  store i32 0, i32* %352, align 4
  %353 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 2
  %354 = bitcast %struct.TYPE_40__* %353 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %354, i8 0, i64 8, i1 false)
  %355 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 1
  %357 = call i64 @mmal_port_parameter_set(%struct.TYPE_44__* %355, %struct.TYPE_34__* %356)
  store i64 %357, i64* %7, align 8
  %358 = load i64, i64* %7, align 8
  %359 = load i64, i64* @MMAL_SUCCESS, align 8
  %360 = icmp ne i64 %358, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %344
  %362 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %576

363:                                              ; preds = %344
  br label %364

364:                                              ; preds = %363, %301, %295
  %365 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @MMAL_ENCODING_H264, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %370, label %447

370:                                              ; preds = %364
  %371 = load i32, i32* @MMAL_PARAMETER_PROFILE, align 4
  %372 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %372, i32 0, i32 1
  store i32 %371, i32* %373, align 4
  %374 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %374, i32 0, i32 0
  store i32 16, i32* %375, align 8
  %376 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %376, i32 0, i32 15
  %378 = load i32, i32* %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 1
  %380 = load %struct.TYPE_41__*, %struct.TYPE_41__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %380, i64 0
  %382 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %381, i32 0, i32 1
  store i32 %378, i32* %382, align 8
  %383 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %384 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %383, i32 0, i32 9
  %385 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @VCOS_ALIGN_UP(i32 %386, i32 16)
  %388 = ashr i32 %387, 4
  %389 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %389, i32 0, i32 9
  %391 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @VCOS_ALIGN_UP(i32 %392, i32 16)
  %394 = ashr i32 %393, 4
  %395 = mul nsw i32 %388, %394
  %396 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %396, i32 0, i32 6
  %398 = load i32, i32* %397, align 4
  %399 = mul nsw i32 %395, %398
  %400 = icmp sgt i32 %399, 245760
  br i1 %400, label %401, label %430

401:                                              ; preds = %370
  %402 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %402, i32 0, i32 9
  %404 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = call i32 @VCOS_ALIGN_UP(i32 %405, i32 16)
  %407 = ashr i32 %406, 4
  %408 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %408, i32 0, i32 9
  %410 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @VCOS_ALIGN_UP(i32 %411, i32 16)
  %413 = ashr i32 %412, 4
  %414 = mul nsw i32 %407, %413
  %415 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %415, i32 0, i32 6
  %417 = load i32, i32* %416, align 4
  %418 = mul nsw i32 %414, %417
  %419 = icmp sle i32 %418, 522240
  br i1 %419, label %420, label %426

420:                                              ; preds = %401
  %421 = load i32, i32* @stderr, align 4
  %422 = call i32 (i32, i8*, ...) @fprintf(i32 %421, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0))
  %423 = load i64, i64* @MMAL_VIDEO_LEVEL_H264_42, align 8
  %424 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %424, i32 0, i32 1
  store i64 %423, i64* %425, align 8
  br label %429

426:                                              ; preds = %401
  %427 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %428 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %428, i64* %7, align 8
  br label %576

429:                                              ; preds = %420
  br label %430

430:                                              ; preds = %429, %370
  %431 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %431, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 1
  %435 = load %struct.TYPE_41__*, %struct.TYPE_41__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %435, i64 0
  %437 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %436, i32 0, i32 0
  store i64 %433, i64* %437, align 8
  %438 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %439 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %440 = call i64 @mmal_port_parameter_set(%struct.TYPE_44__* %438, %struct.TYPE_34__* %439)
  store i64 %440, i64* %7, align 8
  %441 = load i64, i64* %7, align 8
  %442 = load i64, i64* @MMAL_SUCCESS, align 8
  %443 = icmp ne i64 %441, %442
  br i1 %443, label %444, label %446

444:                                              ; preds = %430
  %445 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  br label %576

446:                                              ; preds = %430
  br label %447

447:                                              ; preds = %446, %364
  %448 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %449 = load i32, i32* @MMAL_PARAMETER_VIDEO_IMMUTABLE_INPUT, align 4
  %450 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %450, i32 0, i32 14
  %452 = load i32, i32* %451, align 4
  %453 = call i64 @mmal_port_parameter_set_boolean(%struct.TYPE_44__* %448, i32 %449, i32 %452)
  %454 = load i64, i64* @MMAL_SUCCESS, align 8
  %455 = icmp ne i64 %453, %454
  br i1 %455, label %456, label %458

456:                                              ; preds = %447
  %457 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  br label %458

458:                                              ; preds = %456, %447
  %459 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %460 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = load i64, i64* @MMAL_ENCODING_H264, align 8
  %463 = icmp eq i64 %461, %462
  br i1 %463, label %464, label %535

464:                                              ; preds = %458
  %465 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %466 = load i32, i32* @MMAL_PARAMETER_VIDEO_ENCODE_INLINE_HEADER, align 4
  %467 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %468 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %467, i32 0, i32 13
  %469 = load i32, i32* %468, align 8
  %470 = call i64 @mmal_port_parameter_set_boolean(%struct.TYPE_44__* %465, i32 %466, i32 %469)
  %471 = load i64, i64* @MMAL_SUCCESS, align 8
  %472 = icmp ne i64 %470, %471
  br i1 %472, label %473, label %475

473:                                              ; preds = %464
  %474 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0))
  br label %475

475:                                              ; preds = %473, %464
  %476 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %477 = load i32, i32* @MMAL_PARAMETER_VIDEO_ENCODE_SPS_TIMING, align 4
  %478 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %479 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %478, i32 0, i32 12
  %480 = load i32, i32* %479, align 4
  %481 = call i64 @mmal_port_parameter_set_boolean(%struct.TYPE_44__* %476, i32 %477, i32 %480)
  %482 = load i64, i64* @MMAL_SUCCESS, align 8
  %483 = icmp ne i64 %481, %482
  br i1 %483, label %484, label %486

484:                                              ; preds = %475
  %485 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0))
  br label %486

486:                                              ; preds = %484, %475
  %487 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %488 = load i32, i32* @MMAL_PARAMETER_VIDEO_ENCODE_INLINE_VECTORS, align 4
  %489 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %490 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %489, i32 0, i32 11
  %491 = load i32, i32* %490, align 8
  %492 = call i64 @mmal_port_parameter_set_boolean(%struct.TYPE_44__* %487, i32 %488, i32 %491)
  %493 = load i64, i64* @MMAL_SUCCESS, align 8
  %494 = icmp ne i64 %492, %493
  br i1 %494, label %495, label %497

495:                                              ; preds = %486
  %496 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0))
  br label %497

497:                                              ; preds = %495, %486
  %498 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %499 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %498, i32 0, i32 7
  %500 = load i32, i32* %499, align 8
  %501 = icmp ne i32 %500, -1
  br i1 %501, label %502, label %534

502:                                              ; preds = %497
  %503 = load i32, i32* @MMAL_PARAMETER_VIDEO_INTRA_REFRESH, align 4
  %504 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 1
  %505 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %504, i32 0, i32 1
  store i32 %503, i32* %505, align 4
  %506 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 1
  %507 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %506, i32 0, i32 0
  store i32 48, i32* %507, align 4
  %508 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %509 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 1
  %510 = call i64 @mmal_port_parameter_get(%struct.TYPE_44__* %508, %struct.TYPE_34__* %509)
  store i64 %510, i64* %7, align 8
  %511 = load i64, i64* %7, align 8
  %512 = load i64, i64* @MMAL_SUCCESS, align 8
  %513 = icmp ne i64 %511, %512
  br i1 %513, label %514, label %520

514:                                              ; preds = %502
  %515 = call i32 @vcos_log_warn(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.18, i64 0, i64 0))
  %516 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 2
  store i64 0, i64* %516, align 8
  %517 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 3
  store i64 0, i64* %517, align 8
  %518 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 4
  store i64 0, i64* %518, align 8
  %519 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 5
  store i64 0, i64* %519, align 8
  br label %520

520:                                              ; preds = %514, %502
  %521 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %522 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %521, i32 0, i32 7
  %523 = load i32, i32* %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 0
  store i32 %523, i32* %524, align 8
  %525 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %526 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 1
  %527 = call i64 @mmal_port_parameter_set(%struct.TYPE_44__* %525, %struct.TYPE_34__* %526)
  store i64 %527, i64* %7, align 8
  %528 = load i64, i64* %7, align 8
  %529 = load i64, i64* @MMAL_SUCCESS, align 8
  %530 = icmp ne i64 %528, %529
  br i1 %530, label %531, label %533

531:                                              ; preds = %520
  %532 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0))
  br label %576

533:                                              ; preds = %520
  br label %534

534:                                              ; preds = %533, %497
  br label %535

535:                                              ; preds = %534, %458
  %536 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %537 = call i64 @mmal_component_enable(%struct.TYPE_33__* %536)
  store i64 %537, i64* %7, align 8
  %538 = load i64, i64* %7, align 8
  %539 = load i64, i64* @MMAL_SUCCESS, align 8
  %540 = icmp ne i64 %538, %539
  br i1 %540, label %541, label %543

541:                                              ; preds = %535
  %542 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0))
  br label %576

543:                                              ; preds = %535
  %544 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %545 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %546 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %545, i32 0, i32 3
  %547 = load i64, i64* %546, align 8
  %548 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %549 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 8
  %551 = call i32* @mmal_port_pool_create(%struct.TYPE_44__* %544, i64 %547, i32 %550)
  store i32* %551, i32** %8, align 8
  %552 = load i32*, i32** %8, align 8
  %553 = icmp ne i32* %552, null
  br i1 %553, label %559, label %554

554:                                              ; preds = %543
  %555 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %556 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %555, i32 0, i32 6
  %557 = load i32, i32* %556, align 8
  %558 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.21, i64 0, i64 0), i32 %557)
  br label %559

559:                                              ; preds = %554, %543
  %560 = load i32*, i32** %8, align 8
  %561 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %562 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %561, i32 0, i32 10
  store i32* %560, i32** %562, align 8
  %563 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %564 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %565 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %564, i32 0, i32 8
  store %struct.TYPE_33__* %563, %struct.TYPE_33__** %565, align 8
  %566 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %567 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %566, i32 0, i32 9
  %568 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %567, i32 0, i32 2
  %569 = load i64, i64* %568, align 8
  %570 = icmp ne i64 %569, 0
  br i1 %570, label %571, label %574

571:                                              ; preds = %559
  %572 = load i32, i32* @stderr, align 4
  %573 = call i32 (i32, i8*, ...) @fprintf(i32 %572, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  br label %574

574:                                              ; preds = %571, %559
  %575 = load i64, i64* %7, align 8
  store i64 %575, i64* %2, align 8
  br label %586

576:                                              ; preds = %541, %531, %444, %426, %361, %342, %323, %292, %227, %197, %34, %22
  %577 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %578 = icmp ne %struct.TYPE_33__* %577, null
  br i1 %578, label %579, label %582

579:                                              ; preds = %576
  %580 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %581 = call i32 @mmal_component_destroy(%struct.TYPE_33__* %580)
  br label %582

582:                                              ; preds = %579, %576
  %583 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %584 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %583, i32 0, i32 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %584, align 8
  %585 = load i64, i64* %7, align 8
  store i64 %585, i64* %2, align 8
  br label %586

586:                                              ; preds = %582, %574
  %587 = load i64, i64* %2, align 8
  ret i64 %587
}

declare dso_local i64 @mmal_component_create(i32, %struct.TYPE_33__**) #1

declare dso_local i32 @vcos_log_error(i8*, ...) #1

declare dso_local i32 @mmal_format_copy(%struct.TYPE_36__*, %struct.TYPE_36__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @mmal_port_format_commit(%struct.TYPE_44__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @mmal_port_parameter_set(%struct.TYPE_44__*, %struct.TYPE_34__*) #1

declare dso_local i32 @VCOS_ALIGN_UP(i32, i32) #1

declare dso_local i64 @mmal_port_parameter_set_uint32(%struct.TYPE_44__*, i32, i32) #1

declare dso_local i64 @mmal_port_parameter_set_boolean(%struct.TYPE_44__*, i32, i32) #1

declare dso_local i64 @mmal_port_parameter_get(%struct.TYPE_44__*, %struct.TYPE_34__*) #1

declare dso_local i32 @vcos_log_warn(i8*) #1

declare dso_local i64 @mmal_component_enable(%struct.TYPE_33__*) #1

declare dso_local i32* @mmal_port_pool_create(%struct.TYPE_44__*, i64, i32) #1

declare dso_local i32 @mmal_component_destroy(%struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
