; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_ghb_preset_to_settings.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_ghb_preset_to_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"x264Option\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Initialization\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"scale_height\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"PictureHeight\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"scale_width\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"PictureWidth\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"UsesPictureSettings\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"autoscale\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"PictureWidthEnable\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"PictureHeightEnable\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"VideoQualityType\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"vquality_type_bitrate\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"vquality_type_constant\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"VideoFramerateMode\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"cfr\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"VideoFramerateCFR\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"VideoFrameratePFR\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"VideoFramerateVFR\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"pfr\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"VideoPreset\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"VideoTune\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c",./-+\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"x264FastDecode\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"x264ZeroLatency\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"fastdecode\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"zerolatency\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Superfluous tunes! %s\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"VideoProfile\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"VideoLevel\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"x264OptionExtra\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"VideoOptionExtra\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"AudioCopyMask\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"AudioAllowMP3Pass\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"AudioAllowAACPass\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"AudioAllowAC3Pass\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"AudioAllowDTSPass\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"AudioAllowDTSHDPass\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"AudioAllowEAC3Pass\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"AudioAllowFLACPass\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"AudioAllowTRUEHDPass\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ghb_preset_to_settings(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @ghb_dict_remove(i32* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @ghb_settings_init(i32* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @ghb_dict_copy(i32* %30, i32* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @ghb_dict_get_value(i32* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i32 @ghb_value_dup(i32 %35)
  %37 = call i32 @ghb_dict_set(i32* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @ghb_dict_get_value(i32* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %41 = call i32 @ghb_value_dup(i32 %40)
  %42 = call i32 @ghb_dict_set(i32* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @ghb_dict_get_int(i32* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 %44, i32* %5, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @ghb_dict_get_int(i32* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 %46, i32* %6, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @ghb_dict_get_int(i32* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %59, label %51

51:                                               ; preds = %2
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 0
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ false, %51 ], [ %56, %54 ]
  br label %59

59:                                               ; preds = %57, %2
  %60 = phi i1 [ true, %2 ], [ %58, %57 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @ghb_dict_set_bool(i32* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @ghb_dict_set_int(i32* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @ghb_dict_set_int(i32* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @ghb_dict_get_int(i32* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  switch i32 %79, label %101 [
    i32 0, label %80
    i32 1, label %87
    i32 2, label %94
  ]

80:                                               ; preds = %59
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* @TRUE, align 4
  %83 = call i32 @ghb_dict_set_bool(i32* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %82)
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* @FALSE, align 4
  %86 = call i32 @ghb_dict_set_bool(i32* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %85)
  br label %108

87:                                               ; preds = %59
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* @TRUE, align 4
  %90 = call i32 @ghb_dict_set_bool(i32* %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* @FALSE, align 4
  %93 = call i32 @ghb_dict_set_bool(i32* %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %92)
  br label %108

94:                                               ; preds = %59
  %95 = load i32*, i32** %3, align 8
  %96 = load i32, i32* @FALSE, align 4
  %97 = call i32 @ghb_dict_set_bool(i32* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %96)
  %98 = load i32*, i32** %3, align 8
  %99 = load i32, i32* @TRUE, align 4
  %100 = call i32 @ghb_dict_set_bool(i32* %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %99)
  br label %108

101:                                              ; preds = %59
  %102 = load i32*, i32** %3, align 8
  %103 = load i32, i32* @FALSE, align 4
  %104 = call i32 @ghb_dict_set_bool(i32* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %103)
  %105 = load i32*, i32** %3, align 8
  %106 = load i32, i32* @TRUE, align 4
  %107 = call i32 @ghb_dict_set_bool(i32* %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %101, %94, %87, %80
  %109 = load i32*, i32** %3, align 8
  %110 = call i8* @ghb_dict_get_string(i32* %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  store i8* %110, i8** %10, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %127

113:                                              ; preds = %108
  %114 = load i8*, i8** %10, align 8
  %115 = call i64 @strcmp(i8* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i32*, i32** %3, align 8
  %119 = load i32, i32* @TRUE, align 4
  %120 = call i32 @ghb_dict_set_bool(i32* %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %119)
  %121 = load i32*, i32** %3, align 8
  %122 = load i32, i32* @FALSE, align 4
  %123 = call i32 @ghb_dict_set_bool(i32* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %122)
  %124 = load i32*, i32** %3, align 8
  %125 = load i32, i32* @FALSE, align 4
  %126 = call i32 @ghb_dict_set_bool(i32* %124, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %125)
  br label %155

127:                                              ; preds = %113, %108
  %128 = load i8*, i8** %10, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %144

130:                                              ; preds = %127
  %131 = load i8*, i8** %10, align 8
  %132 = call i64 @strcmp(i8* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i32*, i32** %3, align 8
  %136 = load i32, i32* @FALSE, align 4
  %137 = call i32 @ghb_dict_set_bool(i32* %135, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %136)
  %138 = load i32*, i32** %3, align 8
  %139 = load i32, i32* @TRUE, align 4
  %140 = call i32 @ghb_dict_set_bool(i32* %138, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %139)
  %141 = load i32*, i32** %3, align 8
  %142 = load i32, i32* @FALSE, align 4
  %143 = call i32 @ghb_dict_set_bool(i32* %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %142)
  br label %154

144:                                              ; preds = %130, %127
  %145 = load i32*, i32** %3, align 8
  %146 = load i32, i32* @FALSE, align 4
  %147 = call i32 @ghb_dict_set_bool(i32* %145, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %146)
  %148 = load i32*, i32** %3, align 8
  %149 = load i32, i32* @FALSE, align 4
  %150 = call i32 @ghb_dict_set_bool(i32* %148, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %149)
  %151 = load i32*, i32** %3, align 8
  %152 = load i32, i32* @TRUE, align 4
  %153 = call i32 @ghb_dict_set_bool(i32* %151, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %144, %134
  br label %155

155:                                              ; preds = %154, %117
  %156 = load i32*, i32** %3, align 8
  %157 = call i32 @ghb_get_video_encoder(i32* %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32*, i32** %3, align 8
  %159 = call i8* @ghb_dict_get_string(i32* %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  store i8* %159, i8** %12, align 8
  %160 = load i32*, i32** %3, align 8
  %161 = load i32, i32* %11, align 4
  %162 = load i8*, i8** %12, align 8
  %163 = call i32 @ghb_set_video_preset(i32* %160, i32 %161, i8* %162)
  store i8* null, i8** %14, align 8
  %164 = load i32*, i32** %3, align 8
  %165 = call i8* @ghb_dict_get_string(i32* %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %166 = call i8* @g_strdup(i8* %165)
  store i8* %166, i8** %13, align 8
  %167 = load i8*, i8** %13, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %213

169:                                              ; preds = %155
  %170 = load i8*, i8** %13, align 8
  %171 = call i8* @strtok_r(i8* %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %15)
  store i8* %171, i8** %16, align 8
  %172 = load i32*, i32** %3, align 8
  %173 = load i32, i32* @FALSE, align 4
  %174 = call i32 @ghb_dict_set_bool(i32* %172, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 %173)
  %175 = load i32*, i32** %3, align 8
  %176 = load i32, i32* @FALSE, align 4
  %177 = call i32 @ghb_dict_set_bool(i32* %175, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %208, %169
  %179 = load i8*, i8** %16, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %210

181:                                              ; preds = %178
  %182 = load i8*, i8** %16, align 8
  %183 = call i32 @strcasecmp(i8* %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = load i32*, i32** %3, align 8
  %187 = load i32, i32* @TRUE, align 4
  %188 = call i32 @ghb_dict_set_bool(i32* %186, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 %187)
  br label %208

189:                                              ; preds = %181
  %190 = load i8*, i8** %16, align 8
  %191 = call i32 @strcasecmp(i8* %190, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = load i32*, i32** %3, align 8
  %195 = load i32, i32* @TRUE, align 4
  %196 = call i32 @ghb_dict_set_bool(i32* %194, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 %195)
  br label %207

197:                                              ; preds = %189
  %198 = load i8*, i8** %14, align 8
  %199 = icmp eq i8* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i8*, i8** %16, align 8
  %202 = call i8* @g_strdup(i8* %201)
  store i8* %202, i8** %14, align 8
  br label %206

203:                                              ; preds = %197
  %204 = load i8*, i8** %16, align 8
  %205 = call i32 @ghb_log(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0), i8* %204)
  br label %206

206:                                              ; preds = %203, %200
  br label %207

207:                                              ; preds = %206, %193
  br label %208

208:                                              ; preds = %207, %185
  %209 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %15)
  store i8* %209, i8** %16, align 8
  br label %178

210:                                              ; preds = %178
  %211 = load i8*, i8** %13, align 8
  %212 = call i32 @g_free(i8* %211)
  br label %213

213:                                              ; preds = %210, %155
  %214 = load i8*, i8** %14, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load i32*, i32** %3, align 8
  %218 = load i8*, i8** %14, align 8
  %219 = call i32 @ghb_dict_set_string(i32* %217, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* %218)
  %220 = load i8*, i8** %14, align 8
  %221 = call i32 @g_free(i8* %220)
  br label %222

222:                                              ; preds = %216, %213
  %223 = load i32*, i32** %3, align 8
  %224 = call i8* @ghb_dict_get_string(i32* %223, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  store i8* %224, i8** %17, align 8
  %225 = load i8*, i8** %17, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %231

227:                                              ; preds = %222
  %228 = load i32*, i32** %3, align 8
  %229 = load i8*, i8** %17, align 8
  %230 = call i32 @ghb_dict_set_string(i32* %228, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i8* %229)
  br label %231

231:                                              ; preds = %227, %222
  %232 = load i32*, i32** %3, align 8
  %233 = call i8* @ghb_dict_get_string(i32* %232, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0))
  store i8* %233, i8** %18, align 8
  %234 = load i8*, i8** %18, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %231
  %237 = load i32*, i32** %3, align 8
  %238 = load i8*, i8** %18, align 8
  %239 = call i32 @ghb_dict_set_string(i32* %237, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8* %238)
  br label %240

240:                                              ; preds = %236, %231
  %241 = load i32*, i32** %3, align 8
  %242 = call i32* @ghb_dict_get(i32* %241, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0))
  %243 = icmp ne i32* %242, null
  br i1 %243, label %244, label %250

244:                                              ; preds = %240
  %245 = load i32*, i32** %3, align 8
  %246 = call i8* @ghb_dict_get_string(i32* %245, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0))
  store i8* %246, i8** %19, align 8
  %247 = load i32*, i32** %3, align 8
  %248 = load i8*, i8** %19, align 8
  %249 = call i32 @ghb_dict_set_string(i32* %247, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i8* %248)
  br label %250

250:                                              ; preds = %244, %240
  %251 = load i32*, i32** %4, align 8
  %252 = call i32* @ghb_dict_get(i32* %251, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0))
  store i32* %252, i32** %20, align 8
  %253 = load i32*, i32** %20, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %301

255:                                              ; preds = %250
  %256 = load i32*, i32** %20, align 8
  %257 = call i32 @ghb_array_len(i32* %256)
  store i32 %257, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %258

258:                                              ; preds = %297, %255
  %259 = load i32, i32* %22, align 4
  %260 = load i32, i32* %21, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %300

262:                                              ; preds = %258
  %263 = load i32*, i32** %20, align 8
  %264 = load i32, i32* %22, align 4
  %265 = call i32* @ghb_array_get(i32* %263, i32 %264)
  store i32* %265, i32** %23, align 8
  %266 = load i32*, i32** %23, align 8
  %267 = call i8* @ghb_value_get_string(i32* %266)
  store i8* %267, i8** %24, align 8
  %268 = load i8*, i8** %24, align 8
  %269 = call i32 @hb_audio_encoder_get_from_name(i8* %268)
  store i32 %269, i32* %25, align 4
  %270 = load i32, i32* %25, align 4
  switch i32 %270, label %271 [
    i32 130, label %272
    i32 129, label %272
    i32 143, label %275
    i32 137, label %275
    i32 136, label %275
    i32 146, label %275
    i32 145, label %278
    i32 144, label %278
    i32 142, label %281
    i32 139, label %281
    i32 141, label %284
    i32 140, label %284
    i32 135, label %287
    i32 138, label %287
    i32 134, label %290
    i32 133, label %290
    i32 131, label %290
    i32 132, label %293
    i32 128, label %293
  ]

271:                                              ; preds = %262
  br label %296

272:                                              ; preds = %262, %262
  %273 = load i32*, i32** %3, align 8
  %274 = call i32 @ghb_dict_set_bool(i32* %273, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i32 1)
  br label %296

275:                                              ; preds = %262, %262, %262, %262
  %276 = load i32*, i32** %3, align 8
  %277 = call i32 @ghb_dict_set_bool(i32* %276, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i32 1)
  br label %296

278:                                              ; preds = %262, %262
  %279 = load i32*, i32** %3, align 8
  %280 = call i32 @ghb_dict_set_bool(i32* %279, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i32 1)
  br label %296

281:                                              ; preds = %262, %262
  %282 = load i32*, i32** %3, align 8
  %283 = call i32 @ghb_dict_set_bool(i32* %282, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i32 1)
  br label %296

284:                                              ; preds = %262, %262
  %285 = load i32*, i32** %3, align 8
  %286 = call i32 @ghb_dict_set_bool(i32* %285, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i32 1)
  br label %296

287:                                              ; preds = %262, %262
  %288 = load i32*, i32** %3, align 8
  %289 = call i32 @ghb_dict_set_bool(i32* %288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i64 0, i64 0), i32 1)
  br label %296

290:                                              ; preds = %262, %262, %262
  %291 = load i32*, i32** %3, align 8
  %292 = call i32 @ghb_dict_set_bool(i32* %291, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i32 1)
  br label %296

293:                                              ; preds = %262, %262
  %294 = load i32*, i32** %3, align 8
  %295 = call i32 @ghb_dict_set_bool(i32* %294, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i32 1)
  br label %296

296:                                              ; preds = %293, %290, %287, %284, %281, %278, %275, %272, %271
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %22, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %22, align 4
  br label %258

300:                                              ; preds = %258
  br label %301

301:                                              ; preds = %300, %250
  ret void
}

declare dso_local i32 @ghb_dict_remove(i32*, i8*) #1

declare dso_local i32 @ghb_settings_init(i32*, i8*) #1

declare dso_local i32 @ghb_dict_copy(i32*, i32*) #1

declare dso_local i32 @ghb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @ghb_value_dup(i32) #1

declare dso_local i32 @ghb_dict_get_value(i32*, i8*) #1

declare dso_local i32 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32 @ghb_dict_set_bool(i32*, i8*, i32) #1

declare dso_local i32 @ghb_dict_set_int(i32*, i8*, i32) #1

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ghb_get_video_encoder(i32*) #1

declare dso_local i32 @ghb_set_video_preset(i32*, i32, i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @ghb_log(i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @ghb_dict_set_string(i32*, i8*, i8*) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i32 @ghb_array_len(i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i32) #1

declare dso_local i8* @ghb_value_get_string(i32*) #1

declare dso_local i32 @hb_audio_encoder_get_from_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
