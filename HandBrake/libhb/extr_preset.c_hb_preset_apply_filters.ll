; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_preset_apply_filters.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_preset_apply_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Filters\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"FilterList\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"PictureDetelecine\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"PictureDetelecineCustom\00", align 1
@HB_FILTER_DETELECINE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Invalid detelecine filter settings (%s)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Settings\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"PictureCombDetectPreset\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"PictureCombDetectCustom\00", align 1
@HB_FILTER_COMB_DETECT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"Invalid comb detect filter preset (%s)\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"PictureDeinterlaceFilter\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"PictureDeinterlacePreset\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"PictureDeinterlaceCustom\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"decomb\00", align 1
@HB_FILTER_DECOMB = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"deinterlace\00", align 1
@HB_FILTER_DEINTERLACE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [32 x i8] c"Invalid deinterlace filter (%s)\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Invalid deinterlace filter preset (%s)\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"PictureDenoiseFilter\00", align 1
@HB_VALUE_TYPE_STRING = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c"nlmeans\00", align 1
@HB_FILTER_NLMEANS = common dso_local global i32 0, align 4
@HB_FILTER_HQDN3D = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"PictureDenoisePreset\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"PictureDenoiseTune\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"PictureDenoiseCustom\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"Invalid denoise filter settings (%s%s%s)\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"PictureChromaSmoothPreset\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"PictureChromaSmoothTune\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"PictureChromaSmoothCustom\00", align 1
@HB_FILTER_CHROMA_SMOOTH = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [47 x i8] c"Invalid chroma smooth filter settings (%s%s%s)\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"PictureSharpenFilter\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"PictureSharpenPreset\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"PictureSharpenTune\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"PictureSharpenCustom\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"lapsharp\00", align 1
@HB_FILTER_LAPSHARP = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [8 x i8] c"unsharp\00", align 1
@HB_FILTER_UNSHARP = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [28 x i8] c"Invalid sharpen filter (%s)\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"Invalid sharpen filter settings (%s%s%s)\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"PictureDeblockPreset\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"PictureDeblockTune\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"PictureDeblockCustom\00", align 1
@HB_FILTER_DEBLOCK = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [37 x i8] c"Invalid deblock filter settings (%s)\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"PictureRotate\00", align 1
@HB_FILTER_ROTATE = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [36 x i8] c"Invalid rotate filter settings (%s)\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"VideoGrayScale\00", align 1
@HB_FILTER_GRAYSCALE = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [11 x i8] c"PicturePad\00", align 1
@HB_FILTER_PAD = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [33 x i8] c"Invalid pad filter settings (%s)\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"VideoFramerate\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"Invalid video framerate (%s)\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"VideoFramerateMode\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"cfr\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"pfr\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@HB_FILTER_VFR = common dso_local global i32 0, align 4
@.str.56 = private unnamed_addr constant [53 x i8] c"hb_preset_apply_filters: Internal error, invalid VFR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_preset_apply_filters(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i8*, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32*, align 8
  %47 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %48 = call i32 @hb_video_framerate_get_limits(i32* %10, i32* %11, i32* %12)
  %49 = call i32* (...) @hb_dict_init()
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @hb_dict_set(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %51)
  %53 = call i32* (...) @hb_value_array_init()
  store i32* %53, i32** %7, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @hb_dict_set(i32* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32* @hb_dict_get(i32* %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32* %58, i32** %13, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %99

61:                                               ; preds = %2
  %62 = load i32*, i32** %4, align 8
  %63 = call i32* @hb_dict_get(i32* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %64 = call i8* @hb_value_get_string(i32* %63)
  store i8* %64, i8** %14, align 8
  %65 = load i32, i32* @HB_FILTER_DETELECINE, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = call i8* @hb_value_get_string(i32* %66)
  %68 = load i8*, i8** %14, align 8
  %69 = call i32* @hb_generate_filter_settings(i32 %65, i8* %67, i8* null, i8* %68)
  store i32* %69, i32** %9, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %61
  %73 = load i32*, i32** %13, align 8
  %74 = call i8* @hb_value_get_string_xform(i32* %73)
  store i8* %74, i8** %15, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  %77 = load i8*, i8** %15, align 8
  %78 = call i32 @free(i8* %77)
  store i32 -1, i32* %3, align 4
  br label %649

79:                                               ; preds = %61
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @hb_dict_get_bool(i32* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %79
  %84 = call i32* (...) @hb_dict_init()
  store i32* %84, i32** %8, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* @HB_FILTER_DETELECINE, align 4
  %87 = call i32* @hb_value_int(i32 %86)
  %88 = call i32 @hb_dict_set(i32* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %87)
  %89 = load i32*, i32** %8, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @hb_dict_set(i32* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %90)
  %92 = load i32*, i32** %7, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @hb_add_filter2(i32* %92, i32* %93)
  br label %97

95:                                               ; preds = %79
  %96 = call i32 @hb_value_free(i32** %9)
  br label %97

97:                                               ; preds = %95, %83
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98, %2
  %100 = load i32*, i32** %4, align 8
  %101 = call i32* @hb_dict_get(i32* %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %102 = call i8* @hb_value_get_string(i32* %101)
  store i8* %102, i8** %16, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %138

105:                                              ; preds = %99
  %106 = load i32*, i32** %4, align 8
  %107 = call i32* @hb_dict_get(i32* %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %108 = call i8* @hb_value_get_string(i32* %107)
  store i8* %108, i8** %17, align 8
  %109 = load i32, i32* @HB_FILTER_COMB_DETECT, align 4
  %110 = load i8*, i8** %16, align 8
  %111 = load i8*, i8** %17, align 8
  %112 = call i32* @hb_generate_filter_settings(i32 %109, i8* %110, i8* null, i8* %111)
  store i32* %112, i32** %9, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %105
  %116 = load i8*, i8** %16, align 8
  %117 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* %116)
  store i32 -1, i32* %3, align 4
  br label %649

118:                                              ; preds = %105
  %119 = load i32*, i32** %9, align 8
  %120 = call i32 @hb_dict_get_bool(i32* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %134, label %122

122:                                              ; preds = %118
  %123 = call i32* (...) @hb_dict_init()
  store i32* %123, i32** %8, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* @HB_FILTER_COMB_DETECT, align 4
  %126 = call i32* @hb_value_int(i32 %125)
  %127 = call i32 @hb_dict_set(i32* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %126)
  %128 = load i32*, i32** %8, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = call i32 @hb_dict_set(i32* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %129)
  %131 = load i32*, i32** %7, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = call i32 @hb_add_filter2(i32* %131, i32* %132)
  br label %136

134:                                              ; preds = %118
  %135 = call i32 @hb_value_free(i32** %9)
  br label %136

136:                                              ; preds = %134, %122
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137, %99
  %139 = load i32*, i32** %4, align 8
  %140 = call i32* @hb_dict_get(i32* %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %141 = call i8* @hb_value_get_string(i32* %140)
  store i8* %141, i8** %18, align 8
  %142 = load i32*, i32** %4, align 8
  %143 = call i32* @hb_dict_get(i32* %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %144 = call i8* @hb_value_get_string(i32* %143)
  store i8* %144, i8** %19, align 8
  %145 = load i32*, i32** %4, align 8
  %146 = call i32* @hb_dict_get(i32* %145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %147 = call i8* @hb_value_get_string(i32* %146)
  store i8* %147, i8** %20, align 8
  %148 = load i8*, i8** %18, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %202

150:                                              ; preds = %138
  %151 = load i8*, i8** %19, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %202

153:                                              ; preds = %150
  %154 = load i8*, i8** %18, align 8
  %155 = call i64 @strcasecmp(i8* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %202

157:                                              ; preds = %153
  %158 = load i8*, i8** %18, align 8
  %159 = call i64 @strcasecmp(i8* %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* @HB_FILTER_DECOMB, align 4
  store i32 %162, i32* %21, align 4
  br label %173

163:                                              ; preds = %157
  %164 = load i8*, i8** %18, align 8
  %165 = call i64 @strcasecmp(i8* %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = load i32, i32* @HB_FILTER_DEINTERLACE, align 4
  store i32 %168, i32* %21, align 4
  br label %172

169:                                              ; preds = %163
  %170 = load i8*, i8** %18, align 8
  %171 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8* %170)
  store i32 -1, i32* %3, align 4
  br label %649

172:                                              ; preds = %167
  br label %173

173:                                              ; preds = %172, %161
  %174 = load i32, i32* %21, align 4
  %175 = load i8*, i8** %19, align 8
  %176 = load i8*, i8** %20, align 8
  %177 = call i32* @hb_generate_filter_settings(i32 %174, i8* %175, i8* null, i8* %176)
  store i32* %177, i32** %9, align 8
  %178 = load i32*, i32** %9, align 8
  %179 = icmp eq i32* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  %181 = load i8*, i8** %19, align 8
  %182 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i8* %181)
  store i32 -1, i32* %3, align 4
  br label %649

183:                                              ; preds = %173
  %184 = load i32*, i32** %9, align 8
  %185 = call i32 @hb_dict_get_bool(i32* %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %199, label %187

187:                                              ; preds = %183
  %188 = call i32* (...) @hb_dict_init()
  store i32* %188, i32** %8, align 8
  %189 = load i32*, i32** %8, align 8
  %190 = load i32, i32* %21, align 4
  %191 = call i32* @hb_value_int(i32 %190)
  %192 = call i32 @hb_dict_set(i32* %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %191)
  %193 = load i32*, i32** %8, align 8
  %194 = load i32*, i32** %9, align 8
  %195 = call i32 @hb_dict_set(i32* %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %194)
  %196 = load i32*, i32** %7, align 8
  %197 = load i32*, i32** %8, align 8
  %198 = call i32 @hb_add_filter2(i32* %196, i32* %197)
  br label %201

199:                                              ; preds = %183
  %200 = call i32 @hb_value_free(i32** %9)
  br label %201

201:                                              ; preds = %199, %187
  br label %202

202:                                              ; preds = %201, %153, %150, %138
  %203 = load i32*, i32** %4, align 8
  %204 = call i32* @hb_dict_get(i32* %203, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  store i32* %204, i32** %23, align 8
  %205 = load i32*, i32** %23, align 8
  %206 = call i64 @hb_value_type(i32* %205)
  %207 = load i64, i64* @HB_VALUE_TYPE_STRING, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %225

209:                                              ; preds = %202
  %210 = load i32*, i32** %23, align 8
  %211 = call i8* @hb_value_get_string(i32* %210)
  %212 = call i64 @strcasecmp(i8* %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %209
  br label %223

215:                                              ; preds = %209
  %216 = load i32*, i32** %23, align 8
  %217 = call i8* @hb_value_get_string(i32* %216)
  %218 = call i64 @strcasecmp(i8* %217, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %219 = icmp ne i64 %218, 0
  %220 = xor i1 %219, true
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i32 1, i32 2
  br label %223

223:                                              ; preds = %215, %214
  %224 = phi i32 [ 0, %214 ], [ %222, %215 ]
  br label %228

225:                                              ; preds = %202
  %226 = load i32*, i32** %23, align 8
  %227 = call i32 @hb_value_get_int(i32* %226)
  br label %228

228:                                              ; preds = %225, %223
  %229 = phi i32 [ %224, %223 ], [ %227, %225 ]
  store i32 %229, i32* %22, align 4
  %230 = load i32, i32* %22, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %295

232:                                              ; preds = %228
  %233 = load i32, i32* %22, align 4
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = load i32, i32* @HB_FILTER_NLMEANS, align 4
  br label %239

237:                                              ; preds = %232
  %238 = load i32, i32* @HB_FILTER_HQDN3D, align 4
  br label %239

239:                                              ; preds = %237, %235
  %240 = phi i32 [ %236, %235 ], [ %238, %237 ]
  store i32 %240, i32* %24, align 4
  %241 = load i32*, i32** %4, align 8
  %242 = call i32* @hb_dict_get(i32* %241, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  %243 = call i8* @hb_value_get_string(i32* %242)
  store i8* %243, i8** %25, align 8
  %244 = load i8*, i8** %25, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %294

246:                                              ; preds = %239
  %247 = load i32*, i32** %4, align 8
  %248 = call i32* @hb_dict_get(i32* %247, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  %249 = call i8* @hb_value_get_string(i32* %248)
  store i8* %249, i8** %26, align 8
  %250 = load i32*, i32** %4, align 8
  %251 = call i32* @hb_dict_get(i32* %250, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  %252 = call i8* @hb_value_get_string(i32* %251)
  store i8* %252, i8** %27, align 8
  %253 = load i32, i32* %24, align 4
  %254 = load i8*, i8** %25, align 8
  %255 = load i8*, i8** %26, align 8
  %256 = load i8*, i8** %27, align 8
  %257 = call i32* @hb_generate_filter_settings(i32 %253, i8* %254, i8* %255, i8* %256)
  store i32* %257, i32** %9, align 8
  %258 = load i32*, i32** %9, align 8
  %259 = icmp eq i32* %258, null
  br i1 %259, label %260, label %274

260:                                              ; preds = %246
  %261 = load i8*, i8** %25, align 8
  %262 = load i8*, i8** %26, align 8
  %263 = icmp ne i8* %262, null
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0)
  %266 = load i8*, i8** %26, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %270

268:                                              ; preds = %260
  %269 = load i8*, i8** %26, align 8
  br label %271

270:                                              ; preds = %260
  br label %271

271:                                              ; preds = %270, %268
  %272 = phi i8* [ %269, %268 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0), %270 ]
  %273 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0), i8* %261, i8* %265, i8* %272)
  store i32 -1, i32* %3, align 4
  br label %649

274:                                              ; preds = %246
  %275 = load i32*, i32** %9, align 8
  %276 = call i32 @hb_dict_get_bool(i32* %275, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %290, label %278

278:                                              ; preds = %274
  %279 = call i32* (...) @hb_dict_init()
  store i32* %279, i32** %8, align 8
  %280 = load i32*, i32** %8, align 8
  %281 = load i32, i32* %24, align 4
  %282 = call i32* @hb_value_int(i32 %281)
  %283 = call i32 @hb_dict_set(i32* %280, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %282)
  %284 = load i32*, i32** %8, align 8
  %285 = load i32*, i32** %9, align 8
  %286 = call i32 @hb_dict_set(i32* %284, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %285)
  %287 = load i32*, i32** %7, align 8
  %288 = load i32*, i32** %8, align 8
  %289 = call i32 @hb_add_filter2(i32* %287, i32* %288)
  br label %292

290:                                              ; preds = %274
  %291 = call i32 @hb_value_free(i32** %9)
  br label %292

292:                                              ; preds = %290, %278
  br label %293

293:                                              ; preds = %292
  br label %294

294:                                              ; preds = %293, %239
  br label %295

295:                                              ; preds = %294, %228
  %296 = load i32*, i32** %4, align 8
  %297 = call i32* @hb_dict_get(i32* %296, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  %298 = call i8* @hb_value_get_string(i32* %297)
  store i8* %298, i8** %28, align 8
  %299 = load i32*, i32** %4, align 8
  %300 = call i32* @hb_dict_get(i32* %299, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0))
  %301 = call i8* @hb_value_get_string(i32* %300)
  store i8* %301, i8** %29, align 8
  %302 = load i32*, i32** %4, align 8
  %303 = call i32* @hb_dict_get(i32* %302, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0))
  %304 = call i8* @hb_value_get_string(i32* %303)
  store i8* %304, i8** %30, align 8
  %305 = load i8*, i8** %28, align 8
  %306 = icmp ne i8* %305, null
  br i1 %306, label %307, label %354

307:                                              ; preds = %295
  %308 = load i8*, i8** %28, align 8
  %309 = call i64 @strcasecmp(i8* %308, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %354

311:                                              ; preds = %307
  %312 = load i32, i32* @HB_FILTER_CHROMA_SMOOTH, align 4
  store i32 %312, i32* %31, align 4
  %313 = load i32, i32* %31, align 4
  %314 = load i8*, i8** %28, align 8
  %315 = load i8*, i8** %29, align 8
  %316 = load i8*, i8** %30, align 8
  %317 = call i32* @hb_generate_filter_settings(i32 %313, i8* %314, i8* %315, i8* %316)
  store i32* %317, i32** %9, align 8
  %318 = load i32*, i32** %9, align 8
  %319 = icmp eq i32* %318, null
  br i1 %319, label %320, label %334

320:                                              ; preds = %311
  %321 = load i8*, i8** %28, align 8
  %322 = load i8*, i8** %29, align 8
  %323 = icmp ne i8* %322, null
  %324 = zext i1 %323 to i64
  %325 = select i1 %323, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0)
  %326 = load i8*, i8** %29, align 8
  %327 = icmp ne i8* %326, null
  br i1 %327, label %328, label %330

328:                                              ; preds = %320
  %329 = load i8*, i8** %29, align 8
  br label %331

330:                                              ; preds = %320
  br label %331

331:                                              ; preds = %330, %328
  %332 = phi i8* [ %329, %328 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0), %330 ]
  %333 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i64 0, i64 0), i8* %321, i8* %325, i8* %332)
  store i32 -1, i32* %3, align 4
  br label %649

334:                                              ; preds = %311
  %335 = load i32*, i32** %9, align 8
  %336 = call i32 @hb_dict_get_bool(i32* %335, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %350, label %338

338:                                              ; preds = %334
  %339 = call i32* (...) @hb_dict_init()
  store i32* %339, i32** %8, align 8
  %340 = load i32*, i32** %8, align 8
  %341 = load i32, i32* %31, align 4
  %342 = call i32* @hb_value_int(i32 %341)
  %343 = call i32 @hb_dict_set(i32* %340, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %342)
  %344 = load i32*, i32** %8, align 8
  %345 = load i32*, i32** %9, align 8
  %346 = call i32 @hb_dict_set(i32* %344, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %345)
  %347 = load i32*, i32** %7, align 8
  %348 = load i32*, i32** %8, align 8
  %349 = call i32 @hb_add_filter2(i32* %347, i32* %348)
  br label %352

350:                                              ; preds = %334
  %351 = call i32 @hb_value_free(i32** %9)
  br label %352

352:                                              ; preds = %350, %338
  br label %353

353:                                              ; preds = %352
  br label %354

354:                                              ; preds = %353, %307, %295
  %355 = load i32*, i32** %4, align 8
  %356 = call i32* @hb_dict_get(i32* %355, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0))
  %357 = call i8* @hb_value_get_string(i32* %356)
  store i8* %357, i8** %32, align 8
  %358 = load i32*, i32** %4, align 8
  %359 = call i32* @hb_dict_get(i32* %358, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0))
  %360 = call i8* @hb_value_get_string(i32* %359)
  store i8* %360, i8** %33, align 8
  %361 = load i32*, i32** %4, align 8
  %362 = call i32* @hb_dict_get(i32* %361, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0))
  %363 = call i8* @hb_value_get_string(i32* %362)
  store i8* %363, i8** %34, align 8
  %364 = load i32*, i32** %4, align 8
  %365 = call i32* @hb_dict_get(i32* %364, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0))
  %366 = call i8* @hb_value_get_string(i32* %365)
  store i8* %366, i8** %35, align 8
  %367 = load i8*, i8** %32, align 8
  %368 = icmp ne i8* %367, null
  br i1 %368, label %369, label %434

369:                                              ; preds = %354
  %370 = load i8*, i8** %33, align 8
  %371 = icmp ne i8* %370, null
  br i1 %371, label %372, label %434

372:                                              ; preds = %369
  %373 = load i8*, i8** %32, align 8
  %374 = call i64 @strcasecmp(i8* %373, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %434

376:                                              ; preds = %372
  %377 = load i8*, i8** %32, align 8
  %378 = call i64 @strcasecmp(i8* %377, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0))
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %382, label %380

380:                                              ; preds = %376
  %381 = load i32, i32* @HB_FILTER_LAPSHARP, align 4
  store i32 %381, i32* %36, align 4
  br label %392

382:                                              ; preds = %376
  %383 = load i8*, i8** %32, align 8
  %384 = call i64 @strcasecmp(i8* %383, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0))
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %388, label %386

386:                                              ; preds = %382
  %387 = load i32, i32* @HB_FILTER_UNSHARP, align 4
  store i32 %387, i32* %36, align 4
  br label %391

388:                                              ; preds = %382
  %389 = load i8*, i8** %32, align 8
  %390 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0), i8* %389)
  store i32 -1, i32* %3, align 4
  br label %649

391:                                              ; preds = %386
  br label %392

392:                                              ; preds = %391, %380
  %393 = load i32, i32* %36, align 4
  %394 = load i8*, i8** %33, align 8
  %395 = load i8*, i8** %34, align 8
  %396 = load i8*, i8** %35, align 8
  %397 = call i32* @hb_generate_filter_settings(i32 %393, i8* %394, i8* %395, i8* %396)
  store i32* %397, i32** %9, align 8
  %398 = load i32*, i32** %9, align 8
  %399 = icmp eq i32* %398, null
  br i1 %399, label %400, label %414

400:                                              ; preds = %392
  %401 = load i8*, i8** %33, align 8
  %402 = load i8*, i8** %34, align 8
  %403 = icmp ne i8* %402, null
  %404 = zext i1 %403 to i64
  %405 = select i1 %403, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0)
  %406 = load i8*, i8** %34, align 8
  %407 = icmp ne i8* %406, null
  br i1 %407, label %408, label %410

408:                                              ; preds = %400
  %409 = load i8*, i8** %34, align 8
  br label %411

410:                                              ; preds = %400
  br label %411

411:                                              ; preds = %410, %408
  %412 = phi i8* [ %409, %408 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0), %410 ]
  %413 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i64 0, i64 0), i8* %401, i8* %405, i8* %412)
  store i32 -1, i32* %3, align 4
  br label %649

414:                                              ; preds = %392
  %415 = load i32*, i32** %9, align 8
  %416 = call i32 @hb_dict_get_bool(i32* %415, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %430, label %418

418:                                              ; preds = %414
  %419 = call i32* (...) @hb_dict_init()
  store i32* %419, i32** %8, align 8
  %420 = load i32*, i32** %8, align 8
  %421 = load i32, i32* %36, align 4
  %422 = call i32* @hb_value_int(i32 %421)
  %423 = call i32 @hb_dict_set(i32* %420, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %422)
  %424 = load i32*, i32** %8, align 8
  %425 = load i32*, i32** %9, align 8
  %426 = call i32 @hb_dict_set(i32* %424, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %425)
  %427 = load i32*, i32** %7, align 8
  %428 = load i32*, i32** %8, align 8
  %429 = call i32 @hb_add_filter2(i32* %427, i32* %428)
  br label %432

430:                                              ; preds = %414
  %431 = call i32 @hb_value_free(i32** %9)
  br label %432

432:                                              ; preds = %430, %418
  br label %433

433:                                              ; preds = %432
  br label %434

434:                                              ; preds = %433, %372, %369, %354
  %435 = load i32*, i32** %4, align 8
  %436 = call i32* @hb_dict_get(i32* %435, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0))
  %437 = call i8* @hb_value_get_string(i32* %436)
  store i8* %437, i8** %37, align 8
  %438 = load i8*, i8** %37, align 8
  %439 = icmp ne i8* %438, null
  br i1 %439, label %440, label %477

440:                                              ; preds = %434
  %441 = load i32*, i32** %4, align 8
  %442 = call i32* @hb_dict_get(i32* %441, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i64 0, i64 0))
  %443 = call i8* @hb_value_get_string(i32* %442)
  store i8* %443, i8** %38, align 8
  %444 = load i32*, i32** %4, align 8
  %445 = call i32* @hb_dict_get(i32* %444, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0))
  %446 = call i8* @hb_value_get_string(i32* %445)
  store i8* %446, i8** %39, align 8
  %447 = load i32, i32* @HB_FILTER_DEBLOCK, align 4
  %448 = load i8*, i8** %37, align 8
  %449 = load i8*, i8** %38, align 8
  %450 = load i8*, i8** %39, align 8
  %451 = call i32* @hb_generate_filter_settings(i32 %447, i8* %448, i8* %449, i8* %450)
  store i32* %451, i32** %9, align 8
  %452 = load i32*, i32** %9, align 8
  %453 = icmp eq i32* %452, null
  br i1 %453, label %454, label %457

454:                                              ; preds = %440
  %455 = load i8*, i8** %37, align 8
  %456 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i64 0, i64 0), i8* %455)
  store i32 -1, i32* %3, align 4
  br label %649

457:                                              ; preds = %440
  %458 = load i32*, i32** %9, align 8
  %459 = call i32 @hb_dict_get_bool(i32* %458, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %473, label %461

461:                                              ; preds = %457
  %462 = call i32* (...) @hb_dict_init()
  store i32* %462, i32** %8, align 8
  %463 = load i32*, i32** %8, align 8
  %464 = load i32, i32* @HB_FILTER_DEBLOCK, align 4
  %465 = call i32* @hb_value_int(i32 %464)
  %466 = call i32 @hb_dict_set(i32* %463, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %465)
  %467 = load i32*, i32** %8, align 8
  %468 = load i32*, i32** %9, align 8
  %469 = call i32 @hb_dict_set(i32* %467, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %468)
  %470 = load i32*, i32** %7, align 8
  %471 = load i32*, i32** %8, align 8
  %472 = call i32 @hb_add_filter2(i32* %470, i32* %471)
  br label %475

473:                                              ; preds = %457
  %474 = call i32 @hb_value_free(i32** %9)
  br label %475

475:                                              ; preds = %473, %461
  br label %476

476:                                              ; preds = %475
  br label %477

477:                                              ; preds = %476, %434
  %478 = load i32*, i32** %4, align 8
  %479 = call i32* @hb_dict_get(i32* %478, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0))
  %480 = call i8* @hb_value_get_string_xform(i32* %479)
  store i8* %480, i8** %40, align 8
  %481 = load i8*, i8** %40, align 8
  %482 = icmp ne i8* %481, null
  br i1 %482, label %483, label %512

483:                                              ; preds = %477
  %484 = load i32, i32* @HB_FILTER_ROTATE, align 4
  %485 = load i8*, i8** %40, align 8
  %486 = call i32* @hb_generate_filter_settings(i32 %484, i8* null, i8* null, i8* %485)
  store i32* %486, i32** %9, align 8
  %487 = load i32*, i32** %9, align 8
  %488 = icmp eq i32* %487, null
  br i1 %488, label %489, label %492

489:                                              ; preds = %483
  %490 = load i8*, i8** %40, align 8
  %491 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.44, i64 0, i64 0), i8* %490)
  store i32 -1, i32* %3, align 4
  br label %649

492:                                              ; preds = %483
  %493 = load i32*, i32** %9, align 8
  %494 = call i32 @hb_dict_get_bool(i32* %493, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %508, label %496

496:                                              ; preds = %492
  %497 = call i32* (...) @hb_dict_init()
  store i32* %497, i32** %8, align 8
  %498 = load i32*, i32** %8, align 8
  %499 = load i32, i32* @HB_FILTER_ROTATE, align 4
  %500 = call i32* @hb_value_int(i32 %499)
  %501 = call i32 @hb_dict_set(i32* %498, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %500)
  %502 = load i32*, i32** %8, align 8
  %503 = load i32*, i32** %9, align 8
  %504 = call i32 @hb_dict_set(i32* %502, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %503)
  %505 = load i32*, i32** %7, align 8
  %506 = load i32*, i32** %8, align 8
  %507 = call i32 @hb_add_filter2(i32* %505, i32* %506)
  br label %510

508:                                              ; preds = %492
  %509 = call i32 @hb_value_free(i32** %9)
  br label %510

510:                                              ; preds = %508, %496
  br label %511

511:                                              ; preds = %510
  br label %512

512:                                              ; preds = %511, %477
  %513 = load i8*, i8** %40, align 8
  %514 = call i32 @free(i8* %513)
  %515 = load i32*, i32** %4, align 8
  %516 = call i32* @hb_dict_get(i32* %515, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0))
  %517 = call i64 @hb_value_get_bool(i32* %516)
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %528

519:                                              ; preds = %512
  %520 = call i32* (...) @hb_dict_init()
  store i32* %520, i32** %8, align 8
  %521 = load i32*, i32** %8, align 8
  %522 = load i32, i32* @HB_FILTER_GRAYSCALE, align 4
  %523 = call i32* @hb_value_int(i32 %522)
  %524 = call i32 @hb_dict_set(i32* %521, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %523)
  %525 = load i32*, i32** %7, align 8
  %526 = load i32*, i32** %8, align 8
  %527 = call i32 @hb_add_filter2(i32* %525, i32* %526)
  br label %528

528:                                              ; preds = %519, %512
  %529 = load i32*, i32** %4, align 8
  %530 = call i32* @hb_dict_get(i32* %529, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0))
  %531 = call i8* @hb_value_get_string_xform(i32* %530)
  store i8* %531, i8** %41, align 8
  %532 = load i8*, i8** %41, align 8
  %533 = icmp ne i8* %532, null
  br i1 %533, label %534, label %563

534:                                              ; preds = %528
  %535 = load i32, i32* @HB_FILTER_PAD, align 4
  %536 = load i8*, i8** %41, align 8
  %537 = call i32* @hb_generate_filter_settings(i32 %535, i8* null, i8* null, i8* %536)
  store i32* %537, i32** %9, align 8
  %538 = load i32*, i32** %9, align 8
  %539 = icmp eq i32* %538, null
  br i1 %539, label %540, label %543

540:                                              ; preds = %534
  %541 = load i8*, i8** %41, align 8
  %542 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.47, i64 0, i64 0), i8* %541)
  store i32 -1, i32* %3, align 4
  br label %649

543:                                              ; preds = %534
  %544 = load i32*, i32** %9, align 8
  %545 = call i32 @hb_dict_get_bool(i32* %544, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %559, label %547

547:                                              ; preds = %543
  %548 = call i32* (...) @hb_dict_init()
  store i32* %548, i32** %8, align 8
  %549 = load i32*, i32** %8, align 8
  %550 = load i32, i32* @HB_FILTER_PAD, align 4
  %551 = call i32* @hb_value_int(i32 %550)
  %552 = call i32 @hb_dict_set(i32* %549, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %551)
  %553 = load i32*, i32** %8, align 8
  %554 = load i32*, i32** %9, align 8
  %555 = call i32 @hb_dict_set(i32* %553, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %554)
  %556 = load i32*, i32** %7, align 8
  %557 = load i32*, i32** %8, align 8
  %558 = call i32 @hb_add_filter2(i32* %556, i32* %557)
  br label %561

559:                                              ; preds = %543
  %560 = call i32 @hb_value_free(i32** %9)
  br label %561

561:                                              ; preds = %559, %547
  br label %562

562:                                              ; preds = %561
  br label %563

563:                                              ; preds = %562, %528
  %564 = load i8*, i8** %41, align 8
  %565 = call i32 @free(i8* %564)
  %566 = load i32*, i32** %4, align 8
  %567 = call i32* @hb_dict_get(i32* %566, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0))
  store i32* %567, i32** %42, align 8
  %568 = load i32*, i32** %42, align 8
  %569 = call i32 @get_video_framerate(i32* %568)
  store i32 %569, i32* %43, align 4
  %570 = load i32, i32* %43, align 4
  %571 = icmp slt i32 %570, 0
  br i1 %571, label %572, label %579

572:                                              ; preds = %563
  %573 = load i32*, i32** %42, align 8
  %574 = call i8* @hb_value_get_string_xform(i32* %573)
  store i8* %574, i8** %44, align 8
  %575 = load i8*, i8** %44, align 8
  %576 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.49, i64 0, i64 0), i8* %575)
  %577 = load i8*, i8** %44, align 8
  %578 = call i32 @free(i8* %577)
  store i32 -1, i32* %3, align 4
  br label %649

579:                                              ; preds = %563
  %580 = load i32*, i32** %4, align 8
  %581 = call i32* @hb_dict_get(i32* %580, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i64 0, i64 0))
  store i32* %581, i32** %46, align 8
  %582 = load i32*, i32** %46, align 8
  %583 = call i64 @hb_value_type(i32* %582)
  %584 = load i64, i64* @HB_VALUE_TYPE_STRING, align 8
  %585 = icmp eq i64 %583, %584
  br i1 %585, label %586, label %602

586:                                              ; preds = %579
  %587 = load i32*, i32** %46, align 8
  %588 = call i8* @hb_value_get_string(i32* %587)
  %589 = call i64 @strcasecmp(i8* %588, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0))
  %590 = icmp ne i64 %589, 0
  br i1 %590, label %592, label %591

591:                                              ; preds = %586
  br label %600

592:                                              ; preds = %586
  %593 = load i32*, i32** %46, align 8
  %594 = call i8* @hb_value_get_string(i32* %593)
  %595 = call i64 @strcasecmp(i8* %594, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0))
  %596 = icmp ne i64 %595, 0
  %597 = xor i1 %596, true
  %598 = zext i1 %597 to i64
  %599 = select i1 %597, i32 2, i32 0
  br label %600

600:                                              ; preds = %592, %591
  %601 = phi i32 [ 1, %591 ], [ %599, %592 ]
  br label %605

602:                                              ; preds = %579
  %603 = load i32*, i32** %46, align 8
  %604 = call i32 @hb_value_get_int(i32* %603)
  br label %605

605:                                              ; preds = %602, %600
  %606 = phi i32 [ %601, %600 ], [ %604, %602 ]
  store i32 %606, i32* %45, align 4
  %607 = call i32* (...) @hb_dict_init()
  store i32* %607, i32** %9, align 8
  %608 = load i32, i32* %43, align 4
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %610, label %615

610:                                              ; preds = %605
  %611 = load i32*, i32** %9, align 8
  %612 = load i32, i32* %45, align 4
  %613 = call i32* @hb_value_int(i32 %612)
  %614 = call i32 @hb_dict_set(i32* %611, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i32* %613)
  br label %629

615:                                              ; preds = %605
  %616 = load i32, i32* %12, align 4
  %617 = load i32, i32* %43, align 4
  %618 = call i8* @hb_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), i32 %616, i32 %617)
  store i8* %618, i8** %47, align 8
  %619 = load i32*, i32** %9, align 8
  %620 = load i32, i32* %45, align 4
  %621 = call i32* @hb_value_int(i32 %620)
  %622 = call i32 @hb_dict_set(i32* %619, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i32* %621)
  %623 = load i32*, i32** %9, align 8
  %624 = load i8*, i8** %47, align 8
  %625 = call i32* @hb_value_string(i8* %624)
  %626 = call i32 @hb_dict_set(i32* %623, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i32* %625)
  %627 = load i8*, i8** %47, align 8
  %628 = call i32 @free(i8* %627)
  br label %629

629:                                              ; preds = %615, %610
  %630 = load i32, i32* @HB_FILTER_VFR, align 4
  %631 = load i32*, i32** %9, align 8
  %632 = call i64 @hb_validate_filter_settings(i32 %630, i32* %631)
  %633 = icmp ne i64 %632, 0
  br i1 %633, label %634, label %637

634:                                              ; preds = %629
  %635 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.56, i64 0, i64 0))
  %636 = call i32 @hb_value_free(i32** %9)
  store i32 -1, i32* %3, align 4
  br label %649

637:                                              ; preds = %629
  %638 = call i32* (...) @hb_dict_init()
  store i32* %638, i32** %8, align 8
  %639 = load i32*, i32** %8, align 8
  %640 = load i32, i32* @HB_FILTER_VFR, align 4
  %641 = call i32* @hb_value_int(i32 %640)
  %642 = call i32 @hb_dict_set(i32* %639, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %641)
  %643 = load i32*, i32** %8, align 8
  %644 = load i32*, i32** %9, align 8
  %645 = call i32 @hb_dict_set(i32* %643, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %644)
  %646 = load i32*, i32** %7, align 8
  %647 = load i32*, i32** %8, align 8
  %648 = call i32 @hb_add_filter2(i32* %646, i32* %647)
  store i32 0, i32* %3, align 4
  br label %649

649:                                              ; preds = %637, %634, %572, %540, %489, %454, %411, %388, %331, %271, %180, %169, %115, %72
  %650 = load i32, i32* %3, align 4
  ret i32 %650
}

declare dso_local i32 @hb_video_framerate_get_limits(i32*, i32*, i32*) #1

declare dso_local i32* @hb_dict_init(...) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32* @hb_value_array_init(...) #1

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i32* @hb_generate_filter_settings(i32, i8*, i8*, i8*) #1

declare dso_local i8* @hb_value_get_string_xform(i32*) #1

declare dso_local i32 @hb_error(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hb_dict_get_bool(i32*, i8*) #1

declare dso_local i32* @hb_value_int(i32) #1

declare dso_local i32 @hb_add_filter2(i32*, i32*) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32 @hb_value_get_int(i32*) #1

declare dso_local i64 @hb_value_get_bool(i32*) #1

declare dso_local i32 @get_video_framerate(i32*) #1

declare dso_local i8* @hb_strdup_printf(i8*, i32, i32) #1

declare dso_local i32* @hb_value_string(i8*) #1

declare dso_local i64 @hb_validate_filter_settings(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
