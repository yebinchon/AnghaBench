; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_preset_clean.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_preset_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"PresetName\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"FileFormat\00", align 1
@HB_MUX_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Preset %s: Invalid container (%s)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"VideoEncoder\00", align 1
@HB_VCODEC_INVALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Preset %s: Invalid video encoder (%s)\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"VideoFramerate\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"same as source\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Preset %s: Invalid video framerate (%s)\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"AudioEncoderFallback\00", align 1
@HB_ACODEC_INVALID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [47 x i8] c"Preset %s: Invalid audio fallback encoder (%s)\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"AudioList\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"AudioEncoder\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Preset %s: Invalid audio encoder (%s)\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"AudioSamplerate\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Preset %s: Invalid audio samplerate (%s)\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"AudioMixdown\00", align 1
@HB_INVALID_AMIXDOWN = common dso_local global i32 0, align 4
@HB_AMIXDOWN_NONE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [38 x i8] c"Preset %s: Invalid audio mixdown (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @preset_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preset_clean(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @dict_clean(i32* %32, i32* %33)
  store i8* null, i8** %6, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32* @hb_dict_get(i32* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32*, i32** %5, align 8
  %41 = call i8* @hb_value_get_string(i32* %40)
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %39, %2
  %43 = load i32*, i32** %3, align 8
  %44 = call i32* @hb_dict_get(i32* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %71

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = call i8* @hb_value_get_string(i32* %48)
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @hb_container_get_from_name(i8* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @HB_MUX_INVALID, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = call %struct.TYPE_3__* @hb_container_get_next(i32* null)
  store %struct.TYPE_3__* %56, %struct.TYPE_3__** %10, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @hb_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %60, i8* %61)
  br label %63

63:                                               ; preds = %55, %47
  %64 = load i32, i32* %7, align 4
  %65 = call i8* @hb_container_get_short_name(i32 %64)
  store i8* %65, i8** %9, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = call i32* @hb_value_string(i8* %66)
  store i32* %67, i32** %5, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @hb_dict_set(i32* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %69)
  br label %76

71:                                               ; preds = %42
  %72 = call %struct.TYPE_3__* @hb_container_get_next(i32* null)
  store %struct.TYPE_3__* %72, %struct.TYPE_3__** %11, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %71, %63
  %77 = load i32*, i32** %3, align 8
  %78 = call i32* @hb_dict_get(i32* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32* %78, i32** %5, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %103

81:                                               ; preds = %76
  %82 = load i32*, i32** %5, align 8
  %83 = call i8* @hb_value_get_string(i32* %82)
  store i8* %83, i8** %12, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @hb_video_encoder_get_from_name(i8* %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @HB_VCODEC_INVALID, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @hb_video_encoder_get_default(i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i8*, i8** %6, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = call i32 @hb_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %92, i8* %93)
  br label %95

95:                                               ; preds = %89, %81
  %96 = load i32, i32* %14, align 4
  %97 = call i8* @hb_video_encoder_get_short_name(i32 %96)
  store i8* %97, i8** %13, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = call i32* @hb_value_string(i8* %98)
  store i32* %99, i32** %5, align 8
  %100 = load i32*, i32** %3, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @hb_dict_set(i32* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %101)
  br label %103

103:                                              ; preds = %95, %76
  %104 = load i32*, i32** %3, align 8
  %105 = call i32* @hb_dict_get(i32* %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32* %105, i32** %5, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %134

108:                                              ; preds = %103
  %109 = load i32*, i32** %5, align 8
  %110 = call i8* @hb_value_get_string(i32* %109)
  store i8* %110, i8** %15, align 8
  %111 = load i8*, i8** %15, align 8
  %112 = call i64 @strcasecmp(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %108
  %115 = load i8*, i8** %15, align 8
  %116 = call i32 @hb_video_framerate_get_from_name(i8* %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load i8*, i8** %15, align 8
  %121 = call i64 @strcasecmp(i8* %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i8*, i8** %6, align 8
  %125 = load i8*, i8** %15, align 8
  %126 = call i32 @hb_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* %124, i8* %125)
  br label %127

127:                                              ; preds = %123, %119
  %128 = call i32* @hb_value_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32* %128, i32** %5, align 8
  %129 = load i32*, i32** %3, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @hb_dict_set(i32* %129, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %130)
  br label %132

132:                                              ; preds = %127, %114
  br label %133

133:                                              ; preds = %132, %108
  br label %134

134:                                              ; preds = %133, %103
  %135 = load i32*, i32** %3, align 8
  %136 = call i32* @hb_dict_get(i32* %135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  store i32* %136, i32** %5, align 8
  %137 = load i32*, i32** %5, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %161

139:                                              ; preds = %134
  %140 = load i32*, i32** %5, align 8
  %141 = call i8* @hb_value_get_string(i32* %140)
  store i8* %141, i8** %17, align 8
  %142 = load i8*, i8** %17, align 8
  %143 = call i32 @hb_audio_encoder_get_from_name(i8* %142)
  store i32 %143, i32* %19, align 4
  %144 = load i32, i32* %19, align 4
  %145 = load i32, i32* @HB_ACODEC_INVALID, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %139
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @hb_audio_encoder_get_default(i32 %148)
  store i32 %149, i32* %19, align 4
  %150 = load i8*, i8** %6, align 8
  %151 = load i8*, i8** %17, align 8
  %152 = call i32 @hb_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i8* %150, i8* %151)
  br label %153

153:                                              ; preds = %147, %139
  %154 = load i32, i32* %19, align 4
  %155 = call i8* @hb_audio_encoder_get_short_name(i32 %154)
  store i8* %155, i8** %18, align 8
  %156 = load i8*, i8** %18, align 8
  %157 = call i32* @hb_value_string(i8* %156)
  store i32* %157, i32** %5, align 8
  %158 = load i32*, i32** %3, align 8
  %159 = load i32*, i32** %5, align 8
  %160 = call i32 @hb_dict_set(i32* %158, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32* %159)
  br label %161

161:                                              ; preds = %153, %134
  %162 = load i32*, i32** %3, align 8
  %163 = call i32* @hb_dict_get(i32* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  store i32* %163, i32** %20, align 8
  %164 = load i32*, i32** %20, align 8
  %165 = call i32 @hb_value_array_len(i32* %164)
  store i32 %165, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %166

166:                                              ; preds = %253, %161
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* %21, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %256

170:                                              ; preds = %166
  %171 = load i32*, i32** %20, align 8
  %172 = load i32, i32* %22, align 4
  %173 = call i32* @hb_value_array_get(i32* %171, i32 %172)
  store i32* %173, i32** %23, align 8
  %174 = load i32*, i32** %23, align 8
  %175 = call i32* @hb_dict_get(i32* %174, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  store i32* %175, i32** %5, align 8
  %176 = load i32*, i32** %5, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %200

178:                                              ; preds = %170
  %179 = load i32*, i32** %5, align 8
  %180 = call i8* @hb_value_get_string(i32* %179)
  store i8* %180, i8** %24, align 8
  %181 = load i8*, i8** %24, align 8
  %182 = call i32 @hb_audio_encoder_get_from_name(i8* %181)
  store i32 %182, i32* %26, align 4
  %183 = load i32, i32* %26, align 4
  %184 = load i32, i32* @HB_ACODEC_INVALID, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %178
  %187 = load i32, i32* %7, align 4
  %188 = call i32 @hb_audio_encoder_get_default(i32 %187)
  store i32 %188, i32* %26, align 4
  %189 = load i8*, i8** %6, align 8
  %190 = load i8*, i8** %24, align 8
  %191 = call i32 @hb_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i8* %189, i8* %190)
  br label %192

192:                                              ; preds = %186, %178
  %193 = load i32, i32* %26, align 4
  %194 = call i8* @hb_audio_encoder_get_short_name(i32 %193)
  store i8* %194, i8** %25, align 8
  %195 = load i8*, i8** %25, align 8
  %196 = call i32* @hb_value_string(i8* %195)
  store i32* %196, i32** %5, align 8
  %197 = load i32*, i32** %23, align 8
  %198 = load i32*, i32** %5, align 8
  %199 = call i32 @hb_dict_set(i32* %197, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32* %198)
  br label %200

200:                                              ; preds = %192, %170
  %201 = load i32*, i32** %23, align 8
  %202 = call i32* @hb_dict_get(i32* %201, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  store i32* %202, i32** %5, align 8
  %203 = load i32*, i32** %5, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %226

205:                                              ; preds = %200
  %206 = load i32*, i32** %5, align 8
  %207 = call i8* @hb_value_get_string(i32* %206)
  store i8* %207, i8** %27, align 8
  %208 = load i8*, i8** %27, align 8
  %209 = call i64 @strcasecmp(i8* %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %225

211:                                              ; preds = %205
  %212 = load i8*, i8** %27, align 8
  %213 = call i32 @hb_audio_samplerate_get_from_name(i8* %212)
  store i32 %213, i32* %28, align 4
  %214 = load i32, i32* %28, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %211
  %217 = load i8*, i8** %6, align 8
  %218 = load i8*, i8** %27, align 8
  %219 = call i32 @hb_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i8* %217, i8* %218)
  %220 = call i32* @hb_value_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32* %220, i32** %5, align 8
  %221 = load i32*, i32** %23, align 8
  %222 = load i32*, i32** %5, align 8
  %223 = call i32 @hb_dict_set(i32* %221, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32* %222)
  br label %224

224:                                              ; preds = %216, %211
  br label %225

225:                                              ; preds = %224, %205
  br label %226

226:                                              ; preds = %225, %200
  %227 = load i32*, i32** %23, align 8
  %228 = call i32* @hb_dict_get(i32* %227, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  store i32* %228, i32** %5, align 8
  %229 = load i32*, i32** %5, align 8
  %230 = icmp ne i32* %229, null
  br i1 %230, label %231, label %252

231:                                              ; preds = %226
  %232 = load i32*, i32** %5, align 8
  %233 = call i8* @hb_value_get_string(i32* %232)
  store i8* %233, i8** %29, align 8
  %234 = load i8*, i8** %29, align 8
  %235 = call i32 @hb_mixdown_get_from_name(i8* %234)
  store i32 %235, i32* %31, align 4
  %236 = load i32, i32* %31, align 4
  %237 = load i32, i32* @HB_INVALID_AMIXDOWN, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %244

239:                                              ; preds = %231
  %240 = load i32, i32* @HB_AMIXDOWN_NONE, align 4
  store i32 %240, i32* %31, align 4
  %241 = load i8*, i8** %6, align 8
  %242 = load i8*, i8** %29, align 8
  %243 = call i32 @hb_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0), i8* %241, i8* %242)
  br label %244

244:                                              ; preds = %239, %231
  %245 = load i32, i32* %31, align 4
  %246 = call i8* @hb_mixdown_get_short_name(i32 %245)
  store i8* %246, i8** %30, align 8
  %247 = load i8*, i8** %30, align 8
  %248 = call i32* @hb_value_string(i8* %247)
  store i32* %248, i32** %5, align 8
  %249 = load i32*, i32** %23, align 8
  %250 = load i32*, i32** %5, align 8
  %251 = call i32 @hb_dict_set(i32* %249, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32* %250)
  br label %252

252:                                              ; preds = %244, %226
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %22, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %22, align 4
  br label %166

256:                                              ; preds = %166
  ret void
}

declare dso_local i32 @dict_clean(i32*, i32*) #1

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i32 @hb_container_get_from_name(i8*) #1

declare dso_local %struct.TYPE_3__* @hb_container_get_next(i32*) #1

declare dso_local i32 @hb_error(i8*, i8*, i8*) #1

declare dso_local i8* @hb_container_get_short_name(i32) #1

declare dso_local i32* @hb_value_string(i8*) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32 @hb_video_encoder_get_from_name(i8*) #1

declare dso_local i32 @hb_video_encoder_get_default(i32) #1

declare dso_local i8* @hb_video_encoder_get_short_name(i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @hb_video_framerate_get_from_name(i8*) #1

declare dso_local i32 @hb_audio_encoder_get_from_name(i8*) #1

declare dso_local i32 @hb_audio_encoder_get_default(i32) #1

declare dso_local i8* @hb_audio_encoder_get_short_name(i32) #1

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i32 @hb_audio_samplerate_get_from_name(i8*) #1

declare dso_local i32 @hb_mixdown_get_from_name(i8*) #1

declare dso_local i8* @hb_mixdown_get_short_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
