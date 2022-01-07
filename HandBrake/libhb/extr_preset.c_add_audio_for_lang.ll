; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_add_audio_for_lang.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_add_audio_for_lang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"AudioList\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"AudioEncoder\00", align 1
@HB_VALUE_TYPE_STRING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"PresetEncoder\00", align 1
@HB_ACODEC_NONE = common dso_local global i32 0, align 4
@HB_ACODEC_INVALID = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Encoder\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"AudioTrackName\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"AudioTrackGainSlider\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Gain\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"AudioTrackDRCSlider\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"DRC\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"AudioMixdown\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Mixdown\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"AudioNormalizeMixLevel\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"NormalizeMixLevel\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"AudioDitherMethod\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"DitherMethod\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"AudioSamplerate\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"Samplerate\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"AudioCompressionLevel\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"CompressionLevel\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"AudioTrackQualityEnable\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"Quality\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"AudioTrackQuality\00", align 1
@HB_VALUE_TYPE_DOUBLE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [8 x i8] c"Bitrate\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"AudioBitrate\00", align 1
@HB_VALUE_TYPE_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_9__*, i32, i32, i32, i8*, i32, i32, i32*)* @add_audio_for_lang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_audio_for_lang(i32* %0, i32* %1, %struct.TYPE_9__* %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [8 x i8], align 1
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_10__*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32* %9, i32** %20, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32* @hb_dict_get(i32* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32* %37, i32** %21, align 8
  %38 = load i32*, i32** %21, align 8
  %39 = call i32 @hb_value_array_len(i32* %38)
  store i32 %39, i32* %22, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %41 = load i8*, i8** %17, align 8
  %42 = load i32, i32* %18, align 4
  %43 = call i32 @find_audio_track(%struct.TYPE_9__* %40, i8* %41, i32 0, i32 %42)
  store i32 %43, i32* %23, align 4
  br label %44

44:                                               ; preds = %297, %10
  %45 = load i32, i32* %23, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %298

47:                                               ; preds = %44
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @hb_value_array_len(i32* %48)
  store i32 %49, i32* %24, align 4
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %25, i64 0, i64 0
  %51 = load i32, i32* %23, align 4
  %52 = call i32 @snprintf(i8* %50, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %19, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i32, i32* %24, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %61

59:                                               ; preds = %55, %47
  %60 = load i32, i32* %22, align 4
  br label %61

61:                                               ; preds = %59, %58
  %62 = phi i32 [ 1, %58 ], [ %60, %59 ]
  store i32 %62, i32* %22, align 4
  store i32 0, i32* %26, align 4
  br label %63

63:                                               ; preds = %283, %61
  %64 = load i32, i32* %26, align 4
  %65 = load i32, i32* %22, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %286

67:                                               ; preds = %63
  %68 = load i32*, i32** %20, align 8
  %69 = load i32, i32* %26, align 4
  %70 = call i32* @source_audio_track_used(i32* %68, i32 %69)
  store i32* %70, i32** %27, align 8
  %71 = load i32*, i32** %27, align 8
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %25, i64 0, i64 0
  %73 = call i32* @hb_dict_get(i32* %71, i8* %72)
  %74 = call i64 @hb_value_get_bool(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %283

77:                                               ; preds = %67
  %78 = call i32* (...) @hb_dict_init()
  store i32* %78, i32** %28, align 8
  %79 = load i32*, i32** %21, align 8
  %80 = load i32, i32* %26, align 4
  %81 = call i32* @hb_value_array_get(i32* %79, i32 %80)
  store i32* %81, i32** %30, align 8
  %82 = load i32*, i32** %30, align 8
  %83 = call i32* @hb_dict_get(i32* %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32* %83, i32** %29, align 8
  %84 = load i32*, i32** %29, align 8
  %85 = call i64 @hb_value_type(i32* %84)
  %86 = load i64, i64* @HB_VALUE_TYPE_STRING, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %77
  %89 = load i32*, i32** %29, align 8
  %90 = call i32 @hb_value_get_string(i32* %89)
  %91 = call i32 @hb_audio_encoder_get_from_name(i32 %90)
  store i32 %91, i32* %31, align 4
  br label %95

92:                                               ; preds = %77
  %93 = load i32*, i32** %29, align 8
  %94 = call i32 @hb_value_get_int(i32* %93)
  store i32 %94, i32* %31, align 4
  br label %95

95:                                               ; preds = %92, %88
  %96 = load i32*, i32** %28, align 8
  %97 = load i32, i32* %31, align 4
  %98 = call i32 @hb_audio_encoder_get_short_name(i32 %97)
  %99 = call i32 @hb_value_string(i32 %98)
  %100 = call i32 @hb_dict_set(i32* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %23, align 4
  %105 = call %struct.TYPE_10__* @hb_list_audio_config_item(i32 %103, i32 %104)
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %32, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %31, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @sanitize_audio_codec(i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  store i32 %114, i32* %31, align 4
  %115 = load i32, i32* %31, align 4
  %116 = load i32, i32* @HB_ACODEC_NONE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %121, label %118

118:                                              ; preds = %95
  %119 = load i64, i64* @HB_ACODEC_INVALID, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118, %95
  %122 = call i32 @hb_value_free(i32** %28)
  br label %283

123:                                              ; preds = %118
  %124 = load i32*, i32** %28, align 8
  %125 = load i32, i32* %23, align 4
  %126 = call i32 @hb_value_int(i32 %125)
  %127 = call i32 @hb_dict_set(i32* %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  %128 = load i32*, i32** %28, align 8
  %129 = load i32, i32* %31, align 4
  %130 = call i32 @hb_audio_encoder_get_short_name(i32 %129)
  %131 = call i32 @hb_value_string(i32 %130)
  %132 = call i32 @hb_dict_set(i32* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  %133 = load i32*, i32** %30, align 8
  %134 = call i8* @hb_dict_get_string(i32* %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i8* %134, i8** %33, align 8
  %135 = load i8*, i8** %33, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %147

137:                                              ; preds = %123
  %138 = load i8*, i8** %33, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load i32*, i32** %28, align 8
  %145 = load i8*, i8** %33, align 8
  %146 = call i32 @hb_dict_set_string(i32* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %145)
  br label %170

147:                                              ; preds = %137, %123
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = icmp ne i64* %151, null
  br i1 %152, label %153, label %169

153:                                              ; preds = %147
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %153
  %162 = load i32*, i32** %28, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = bitcast i64* %166 to i8*
  %168 = call i32 @hb_dict_set_string(i32* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %161, %153, %147
  br label %170

170:                                              ; preds = %169, %143
  %171 = load i32, i32* %31, align 4
  %172 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %272, label %175

175:                                              ; preds = %170
  %176 = load i32*, i32** %30, align 8
  %177 = call i32* @hb_dict_get(i32* %176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %185

179:                                              ; preds = %175
  %180 = load i32*, i32** %28, align 8
  %181 = load i32*, i32** %30, align 8
  %182 = call i32* @hb_dict_get(i32* %181, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %183 = call i32 @hb_value_dup(i32* %182)
  %184 = call i32 @hb_dict_set(i32* %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %179, %175
  %186 = load i32*, i32** %30, align 8
  %187 = call i32* @hb_dict_get(i32* %186, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %195

189:                                              ; preds = %185
  %190 = load i32*, i32** %28, align 8
  %191 = load i32*, i32** %30, align 8
  %192 = call i32* @hb_dict_get(i32* %191, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %193 = call i32 @hb_value_dup(i32* %192)
  %194 = call i32 @hb_dict_set(i32* %190, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %189, %185
  %196 = load i32*, i32** %30, align 8
  %197 = call i32* @hb_dict_get(i32* %196, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %205

199:                                              ; preds = %195
  %200 = load i32*, i32** %28, align 8
  %201 = load i32*, i32** %30, align 8
  %202 = call i32* @hb_dict_get(i32* %201, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %203 = call i32 @hb_value_dup(i32* %202)
  %204 = call i32 @hb_dict_set(i32* %200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %199, %195
  %206 = load i32*, i32** %30, align 8
  %207 = call i32* @hb_dict_get(i32* %206, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = load i32*, i32** %28, align 8
  %211 = load i32*, i32** %30, align 8
  %212 = call i32* @hb_dict_get(i32* %211, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %213 = call i32 @hb_value_dup(i32* %212)
  %214 = call i32 @hb_dict_set(i32* %210, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %209, %205
  %216 = load i32*, i32** %30, align 8
  %217 = call i32* @hb_dict_get(i32* %216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %225

219:                                              ; preds = %215
  %220 = load i32*, i32** %28, align 8
  %221 = load i32*, i32** %30, align 8
  %222 = call i32* @hb_dict_get(i32* %221, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %223 = call i32 @hb_value_dup(i32* %222)
  %224 = call i32 @hb_dict_set(i32* %220, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 %223)
  br label %225

225:                                              ; preds = %219, %215
  %226 = load i32*, i32** %30, align 8
  %227 = call i32* @hb_dict_get(i32* %226, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %242

229:                                              ; preds = %225
  %230 = load i32*, i32** %30, align 8
  %231 = call i8* @hb_dict_get_string(i32* %230, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  store i8* %231, i8** %34, align 8
  %232 = load i8*, i8** %34, align 8
  %233 = call i32 @hb_audio_samplerate_get_from_name(i8* %232)
  store i32 %233, i32* %35, align 4
  %234 = load i32, i32* %35, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %229
  store i32 0, i32* %35, align 4
  br label %237

237:                                              ; preds = %236, %229
  %238 = load i32*, i32** %28, align 8
  %239 = load i32, i32* %35, align 4
  %240 = call i32 @hb_value_int(i32 %239)
  %241 = call i32 @hb_dict_set(i32* %238, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 %240)
  br label %242

242:                                              ; preds = %237, %225
  %243 = load i32*, i32** %30, align 8
  %244 = call i32* @hb_dict_get(i32* %243, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %252

246:                                              ; preds = %242
  %247 = load i32*, i32** %28, align 8
  %248 = load i32*, i32** %30, align 8
  %249 = call i32* @hb_dict_get(i32* %248, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %250 = call i32 @hb_value_dup(i32* %249)
  %251 = call i32 @hb_dict_set(i32* %247, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %246, %242
  %253 = load i32*, i32** %30, align 8
  %254 = call i32* @hb_dict_get(i32* %253, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  %255 = call i64 @hb_value_get_bool(i32* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %252
  %258 = load i32*, i32** %28, align 8
  %259 = load i32*, i32** %30, align 8
  %260 = call i32* @hb_dict_get(i32* %259, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  %261 = load i32, i32* @HB_VALUE_TYPE_DOUBLE, align 4
  %262 = call i32 @hb_value_xform(i32* %260, i32 %261)
  %263 = call i32 @hb_dict_set(i32* %258, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i32 %262)
  br label %271

264:                                              ; preds = %252
  %265 = load i32*, i32** %28, align 8
  %266 = load i32*, i32** %30, align 8
  %267 = call i32* @hb_dict_get(i32* %266, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  %268 = load i32, i32* @HB_VALUE_TYPE_INT, align 4
  %269 = call i32 @hb_value_xform(i32* %267, i32 %268)
  %270 = call i32 @hb_dict_set(i32* %265, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 %269)
  br label %271

271:                                              ; preds = %264, %257
  br label %272

272:                                              ; preds = %271, %170
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %274 = load i32*, i32** %28, align 8
  %275 = call i32 @hb_sanitize_audio_settings(%struct.TYPE_9__* %273, i32* %274)
  %276 = load i32*, i32** %11, align 8
  %277 = load i32*, i32** %28, align 8
  %278 = call i32 @hb_value_array_append(i32* %276, i32* %277)
  %279 = load i32*, i32** %27, align 8
  %280 = getelementptr inbounds [8 x i8], [8 x i8]* %25, i64 0, i64 0
  %281 = call i32 @hb_value_bool(i32 1)
  %282 = call i32 @hb_dict_set(i32* %279, i8* %280, i32 %281)
  br label %283

283:                                              ; preds = %272, %121, %76
  %284 = load i32, i32* %26, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %26, align 4
  br label %63

286:                                              ; preds = %63
  %287 = load i32, i32* %18, align 4
  %288 = icmp eq i32 %287, 2
  br i1 %288, label %289, label %296

289:                                              ; preds = %286
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %291 = load i8*, i8** %17, align 8
  %292 = load i32, i32* %23, align 4
  %293 = add nsw i32 %292, 1
  %294 = load i32, i32* %18, align 4
  %295 = call i32 @find_audio_track(%struct.TYPE_9__* %290, i8* %291, i32 %293, i32 %294)
  store i32 %295, i32* %23, align 4
  br label %297

296:                                              ; preds = %286
  br label %298

297:                                              ; preds = %289
  br label %44

298:                                              ; preds = %296, %44
  ret void
}

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i32 @find_audio_track(%struct.TYPE_9__*, i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @source_audio_track_used(i32*, i32) #1

declare dso_local i64 @hb_value_get_bool(i32*) #1

declare dso_local i32* @hb_dict_init(...) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32 @hb_audio_encoder_get_from_name(i32) #1

declare dso_local i32 @hb_value_get_string(i32*) #1

declare dso_local i32 @hb_value_get_int(i32*) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32) #1

declare dso_local i32 @hb_value_string(i32) #1

declare dso_local i32 @hb_audio_encoder_get_short_name(i32) #1

declare dso_local %struct.TYPE_10__* @hb_list_audio_config_item(i32, i32) #1

declare dso_local i32 @sanitize_audio_codec(i32, i32, i32, i32, i32) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i32 @hb_value_int(i32) #1

declare dso_local i8* @hb_dict_get_string(i32*, i8*) #1

declare dso_local i32 @hb_dict_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @hb_value_dup(i32*) #1

declare dso_local i32 @hb_audio_samplerate_get_from_name(i8*) #1

declare dso_local i32 @hb_value_xform(i32*, i32) #1

declare dso_local i32 @hb_sanitize_audio_settings(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @hb_value_array_append(i32*, i32*) #1

declare dso_local i32 @hb_value_bool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
