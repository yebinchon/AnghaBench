; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_preset_apply_video.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_preset_apply_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"Destination\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Mux\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"VideoEncoder\00", align 1
@HB_VALUE_TYPE_STRING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Invalid video encoder (%s)\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Incompatible video encoder (%s) for muxer (%s)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Video\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Encoder\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"VideoColorMatrixCodeOveride\00", align 1
@HB_COLR_PRI_BT2020 = common dso_local global i32 0, align 4
@HB_COLR_TRA_BT709 = common dso_local global i32 0, align 4
@HB_COLR_MAT_BT2020_NCL = common dso_local global i32 0, align 4
@HB_COLR_PRI_BT709 = common dso_local global i32 0, align 4
@HB_COLR_MAT_BT709 = common dso_local global i32 0, align 4
@HB_COLR_PRI_EBUTECH = common dso_local global i32 0, align 4
@HB_COLR_MAT_SMPTE170M = common dso_local global i32 0, align 4
@HB_COLR_PRI_SMPTEC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"ColorPrimariesOverride\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"ColorTransferOverride\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"ColorMatrixOverride\00", align 1
@HB_VCODEC_X264_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"x264UseAdvancedOptions\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Options\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"x264Option\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"VideoPreset\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Preset\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"VideoProfile\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Profile\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"VideoLevel\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Level\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"VideoTune\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Tune\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"VideoOptionExtra\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"VideoQualityType\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"Quality\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"VideoQualitySlider\00", align 1
@HB_VALUE_TYPE_DOUBLE = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [8 x i8] c"Bitrate\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"VideoAvgBitrate\00", align 1
@HB_VALUE_TYPE_INT = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [8 x i8] c"TwoPass\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"VideoTwoPass\00", align 1
@HB_VALUE_TYPE_BOOL = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"Turbo\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"VideoTurboTwoPass\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"QSV\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"VideoQSVDecode\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Decode\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"VideoQSVLowPower\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"LowPower\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"VideoQSVAsyncDepth\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"AsyncDepth\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_preset_apply_video(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @hb_dict_get(i32* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32* @hb_dict_get(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @hb_value_get_string(i32* %23)
  %25 = call i32 @hb_container_get_from_name(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32* @hb_dict_get(i32* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i64 @hb_value_type(i32* %28)
  %30 = load i64, i64* @HB_VALUE_TYPE_STRING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @hb_value_get_string(i32* %33)
  %35 = call i32 @hb_video_encoder_get_from_name(i32 %34)
  store i32 %35, i32* %12, align 4
  br label %39

36:                                               ; preds = %2
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @hb_value_get_int(i32* %37)
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32, i32* %12, align 4
  %41 = call %struct.TYPE_3__* @hb_video_encoder_get_from_codec(i32 %40)
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %15, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %43 = icmp eq %struct.TYPE_3__* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32*, i32** %10, align 8
  %46 = call i8* @hb_value_get_string_xform(i32* %45)
  store i8* %46, i8** %16, align 8
  %47 = load i8*, i8** %16, align 8
  %48 = call i32 (i8*, i8*, ...) @hb_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  %49 = load i8*, i8** %16, align 8
  %50 = call i32 @free(i8* %49)
  store i32 -1, i32* %3, align 4
  br label %298

51:                                               ; preds = %39
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @hb_video_encoder_get_name(i32 %59)
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @hb_container_get_name(i32 %63)
  %65 = call i32 (i8*, i8*, ...) @hb_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %62, i32 %64)
  store i32 -1, i32* %3, align 4
  br label %298

66:                                               ; preds = %51
  %67 = load i32*, i32** %5, align 8
  %68 = call i32* @hb_dict_get(i32* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32* %68, i32** %7, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @hb_value_string(i32 %72)
  %74 = call i32 @hb_dict_set(i32* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %73)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32* @hb_dict_get(i32* %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %77 = call i32 @hb_value_get_int(i32* %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %112

80:                                               ; preds = %66
  %81 = load i32, i32* %14, align 4
  switch i32 %81, label %95 [
    i32 4, label %82
    i32 3, label %86
    i32 2, label %90
    i32 1, label %94
  ]

82:                                               ; preds = %80
  %83 = load i32, i32* @HB_COLR_PRI_BT2020, align 4
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* @HB_COLR_TRA_BT709, align 4
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* @HB_COLR_MAT_BT2020_NCL, align 4
  store i32 %85, i32* %19, align 4
  br label %99

86:                                               ; preds = %80
  %87 = load i32, i32* @HB_COLR_PRI_BT709, align 4
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* @HB_COLR_TRA_BT709, align 4
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* @HB_COLR_MAT_BT709, align 4
  store i32 %89, i32* %19, align 4
  br label %99

90:                                               ; preds = %80
  %91 = load i32, i32* @HB_COLR_PRI_EBUTECH, align 4
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* @HB_COLR_TRA_BT709, align 4
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* @HB_COLR_MAT_SMPTE170M, align 4
  store i32 %93, i32* %19, align 4
  br label %99

94:                                               ; preds = %80
  br label %95

95:                                               ; preds = %80, %94
  %96 = load i32, i32* @HB_COLR_PRI_SMPTEC, align 4
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* @HB_COLR_TRA_BT709, align 4
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* @HB_COLR_MAT_SMPTE170M, align 4
  store i32 %98, i32* %19, align 4
  br label %99

99:                                               ; preds = %95, %90, %86, %82
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %17, align 4
  %102 = call i32* @hb_value_int(i32 %101)
  %103 = call i32 @hb_dict_set(i32* %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32* %102)
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %18, align 4
  %106 = call i32* @hb_value_int(i32 %105)
  %107 = call i32 @hb_dict_set(i32* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32* %106)
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %19, align 4
  %110 = call i32* @hb_value_int(i32 %109)
  %111 = call i32 @hb_dict_set(i32* %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32* %110)
  br label %112

112:                                              ; preds = %99, %66
  %113 = load i32*, i32** %7, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = call i32* @hb_value_dup(i32* %114)
  %116 = call i32 @hb_dict_set(i32* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %115)
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @HB_VCODEC_X264_MASK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %112
  %122 = load i32*, i32** %4, align 8
  %123 = call i32* @hb_dict_get(i32* %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %124 = call i64 @hb_value_get_bool(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i32*, i32** %7, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = call i32* @hb_dict_get(i32* %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %130 = call i32* @hb_value_dup(i32* %129)
  %131 = call i32 @hb_dict_set(i32* %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32* %130)
  br label %178

132:                                              ; preds = %121, %112
  %133 = load i32*, i32** %4, align 8
  %134 = call i32* @hb_dict_get(i32* %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  store i32* %134, i32** %9, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i32*, i32** %7, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = call i32* @hb_value_dup(i32* %138)
  %140 = call i32 @hb_dict_set(i32* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32* %139)
  br label %141

141:                                              ; preds = %136, %132
  %142 = load i32*, i32** %4, align 8
  %143 = call i32* @hb_dict_get(i32* %142, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  store i32* %143, i32** %9, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load i32*, i32** %7, align 8
  %147 = load i32*, i32** %9, align 8
  %148 = call i32* @hb_value_dup(i32* %147)
  %149 = call i32 @hb_dict_set(i32* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32* %148)
  br label %150

150:                                              ; preds = %145, %141
  %151 = load i32*, i32** %4, align 8
  %152 = call i32* @hb_dict_get(i32* %151, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  store i32* %152, i32** %9, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i32*, i32** %7, align 8
  %156 = load i32*, i32** %9, align 8
  %157 = call i32* @hb_value_dup(i32* %156)
  %158 = call i32 @hb_dict_set(i32* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32* %157)
  br label %159

159:                                              ; preds = %154, %150
  %160 = load i32*, i32** %4, align 8
  %161 = call i32* @hb_dict_get(i32* %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  store i32* %161, i32** %9, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load i32*, i32** %7, align 8
  %165 = load i32*, i32** %9, align 8
  %166 = call i32* @hb_value_dup(i32* %165)
  %167 = call i32 @hb_dict_set(i32* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32* %166)
  br label %168

168:                                              ; preds = %163, %159
  %169 = load i32*, i32** %4, align 8
  %170 = call i32* @hb_dict_get(i32* %169, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  store i32* %170, i32** %9, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = load i32*, i32** %7, align 8
  %174 = load i32*, i32** %9, align 8
  %175 = call i32* @hb_value_dup(i32* %174)
  %176 = call i32 @hb_dict_set(i32* %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32* %175)
  br label %177

177:                                              ; preds = %172, %168
  br label %178

178:                                              ; preds = %177, %126
  %179 = load i32*, i32** %4, align 8
  %180 = call i32* @hb_dict_get(i32* %179, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0))
  %181 = call i32 @hb_value_get_int(i32* %180)
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* %13, align 4
  %183 = icmp eq i32 %182, 2
  br i1 %183, label %184, label %193

184:                                              ; preds = %178
  %185 = load i32*, i32** %7, align 8
  %186 = load i32*, i32** %4, align 8
  %187 = call i32* @hb_dict_get(i32* %186, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  %188 = load i32, i32* @HB_VALUE_TYPE_DOUBLE, align 4
  %189 = call i32* @hb_value_xform(i32* %187, i32 %188)
  %190 = call i32 @hb_dict_set(i32* %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i32* %189)
  %191 = load i32*, i32** %7, align 8
  %192 = call i32 @hb_dict_remove(i32* %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  br label %257

193:                                              ; preds = %178
  %194 = load i32, i32* %13, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %217

196:                                              ; preds = %193
  %197 = load i32*, i32** %7, align 8
  %198 = load i32*, i32** %4, align 8
  %199 = call i32* @hb_dict_get(i32* %198, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0))
  %200 = load i32, i32* @HB_VALUE_TYPE_INT, align 4
  %201 = call i32* @hb_value_xform(i32* %199, i32 %200)
  %202 = call i32 @hb_dict_set(i32* %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i32* %201)
  %203 = load i32*, i32** %7, align 8
  %204 = load i32*, i32** %4, align 8
  %205 = call i32* @hb_dict_get(i32* %204, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  %206 = load i32, i32* @HB_VALUE_TYPE_BOOL, align 4
  %207 = call i32* @hb_value_xform(i32* %205, i32 %206)
  %208 = call i32 @hb_dict_set(i32* %203, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i32* %207)
  %209 = load i32*, i32** %7, align 8
  %210 = load i32*, i32** %4, align 8
  %211 = call i32* @hb_dict_get(i32* %210, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0))
  %212 = load i32, i32* @HB_VALUE_TYPE_BOOL, align 4
  %213 = call i32* @hb_value_xform(i32* %211, i32 %212)
  %214 = call i32 @hb_dict_set(i32* %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32* %213)
  %215 = load i32*, i32** %7, align 8
  %216 = call i32 @hb_dict_remove(i32* %215, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  br label %256

217:                                              ; preds = %193
  %218 = load i32*, i32** %4, align 8
  %219 = call i32* @hb_dict_get(i32* %218, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  store i32* %219, i32** %9, align 8
  %220 = load i32*, i32** %9, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %234

222:                                              ; preds = %217
  %223 = load i32*, i32** %9, align 8
  %224 = call i64 @hb_value_get_double(i32* %223)
  %225 = icmp sge i64 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %222
  %227 = load i32*, i32** %7, align 8
  %228 = load i32*, i32** %9, align 8
  %229 = load i32, i32* @HB_VALUE_TYPE_DOUBLE, align 4
  %230 = call i32* @hb_value_xform(i32* %228, i32 %229)
  %231 = call i32 @hb_dict_set(i32* %227, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i32* %230)
  %232 = load i32*, i32** %7, align 8
  %233 = call i32 @hb_dict_remove(i32* %232, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  br label %255

234:                                              ; preds = %222, %217
  %235 = load i32*, i32** %7, align 8
  %236 = load i32*, i32** %4, align 8
  %237 = call i32* @hb_dict_get(i32* %236, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0))
  %238 = load i32, i32* @HB_VALUE_TYPE_INT, align 4
  %239 = call i32* @hb_value_xform(i32* %237, i32 %238)
  %240 = call i32 @hb_dict_set(i32* %235, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i32* %239)
  %241 = load i32*, i32** %7, align 8
  %242 = load i32*, i32** %4, align 8
  %243 = call i32* @hb_dict_get(i32* %242, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  %244 = load i32, i32* @HB_VALUE_TYPE_BOOL, align 4
  %245 = call i32* @hb_value_xform(i32* %243, i32 %244)
  %246 = call i32 @hb_dict_set(i32* %241, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i32* %245)
  %247 = load i32*, i32** %7, align 8
  %248 = load i32*, i32** %4, align 8
  %249 = call i32* @hb_dict_get(i32* %248, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0))
  %250 = load i32, i32* @HB_VALUE_TYPE_BOOL, align 4
  %251 = call i32* @hb_value_xform(i32* %249, i32 %250)
  %252 = call i32 @hb_dict_set(i32* %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32* %251)
  %253 = load i32*, i32** %7, align 8
  %254 = call i32 @hb_dict_remove(i32* %253, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  br label %255

255:                                              ; preds = %234, %226
  br label %256

256:                                              ; preds = %255, %196
  br label %257

257:                                              ; preds = %256, %184
  %258 = load i32*, i32** %7, align 8
  %259 = call i32* @hb_dict_get(i32* %258, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0))
  store i32* %259, i32** %8, align 8
  %260 = load i32*, i32** %8, align 8
  %261 = icmp eq i32* %260, null
  br i1 %261, label %262, label %267

262:                                              ; preds = %257
  %263 = call i32* (...) @hb_dict_init()
  store i32* %263, i32** %8, align 8
  %264 = load i32*, i32** %7, align 8
  %265 = load i32*, i32** %8, align 8
  %266 = call i32 @hb_dict_set(i32* %264, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i32* %265)
  br label %267

267:                                              ; preds = %262, %257
  %268 = load i32*, i32** %4, align 8
  %269 = call i32* @hb_dict_get(i32* %268, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0))
  store i32* %269, i32** %9, align 8
  %270 = icmp ne i32* %269, null
  br i1 %270, label %271, label %277

271:                                              ; preds = %267
  %272 = load i32*, i32** %8, align 8
  %273 = load i32*, i32** %9, align 8
  %274 = load i32, i32* @HB_VALUE_TYPE_BOOL, align 4
  %275 = call i32* @hb_value_xform(i32* %273, i32 %274)
  %276 = call i32 @hb_dict_set(i32* %272, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i32* %275)
  br label %277

277:                                              ; preds = %271, %267
  %278 = load i32*, i32** %4, align 8
  %279 = call i32* @hb_dict_get(i32* %278, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0))
  store i32* %279, i32** %9, align 8
  %280 = icmp ne i32* %279, null
  br i1 %280, label %281, label %287

281:                                              ; preds = %277
  %282 = load i32*, i32** %8, align 8
  %283 = load i32*, i32** %9, align 8
  %284 = load i32, i32* @HB_VALUE_TYPE_BOOL, align 4
  %285 = call i32* @hb_value_xform(i32* %283, i32 %284)
  %286 = call i32 @hb_dict_set(i32* %282, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i32* %285)
  br label %287

287:                                              ; preds = %281, %277
  %288 = load i32*, i32** %4, align 8
  %289 = call i32* @hb_dict_get(i32* %288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i64 0, i64 0))
  store i32* %289, i32** %9, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %291, label %297

291:                                              ; preds = %287
  %292 = load i32*, i32** %8, align 8
  %293 = load i32*, i32** %9, align 8
  %294 = load i32, i32* @HB_VALUE_TYPE_INT, align 4
  %295 = call i32* @hb_value_xform(i32* %293, i32 %294)
  %296 = call i32 @hb_dict_set(i32* %292, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i32* %295)
  br label %297

297:                                              ; preds = %291, %287
  store i32 0, i32* %3, align 4
  br label %298

298:                                              ; preds = %297, %58, %44
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i32 @hb_container_get_from_name(i32) #1

declare dso_local i32 @hb_value_get_string(i32*) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32 @hb_video_encoder_get_from_name(i32) #1

declare dso_local i32 @hb_value_get_int(i32*) #1

declare dso_local %struct.TYPE_3__* @hb_video_encoder_get_from_codec(i32) #1

declare dso_local i8* @hb_value_get_string_xform(i32*) #1

declare dso_local i32 @hb_error(i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hb_video_encoder_get_name(i32) #1

declare dso_local i32 @hb_container_get_name(i32) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32* @hb_value_string(i32) #1

declare dso_local i32* @hb_value_int(i32) #1

declare dso_local i32* @hb_value_dup(i32*) #1

declare dso_local i64 @hb_value_get_bool(i32*) #1

declare dso_local i32* @hb_value_xform(i32*, i32) #1

declare dso_local i32 @hb_dict_remove(i32*, i8*) #1

declare dso_local i64 @hb_value_get_double(i32*) #1

declare dso_local i32* @hb_dict_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
