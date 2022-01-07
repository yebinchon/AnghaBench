; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_validate_filters.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_validate_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"PictureDetelecine\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@HB_FILTER_DETELECINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"PictureDetelecineCustom\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Invalid Detelecine Settings:\0A\0APreset:\09%s\0ACustom:\09%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Invalid Detelecine Settings:\0A\0APreset:\09%s\0A\00", align 1
@GTK_MESSAGE_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"PictureCombDetectPreset\00", align 1
@HB_FILTER_COMB_DETECT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"PictureCombDetectCustom\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"Invalid Comb Detect Settings:\0A\0APreset:\09%s\0ACustom:\09%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Invalid Comb Detect Settings:\0A\0APreset:\09%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"PictureDeinterlaceFilter\00", align 1
@HB_FILTER_INVALID = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"PictureDeinterlacePreset\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"PictureDeinterlaceCustom\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"Invalid Deinterlace Settings:\0A\0AFilter:\09%s\0APreset:\09%s\0ACustom:\09%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"Invalid Deinterlace Settings:\0A\0AFilter:\09%s\0APreset:\09%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"PictureDenoiseFilter\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"PictureDenoisePreset\00", align 1
@HB_FILTER_NLMEANS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"PictureDenoiseTune\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"PictureDenoiseCustom\00", align 1
@.str.19 = private unnamed_addr constant [70 x i8] c"Invalid Denoise Settings:\0A\0AFilter:\09%s\0APreset:\09%s\0ATune:\09%s\0ACustom:\09%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"PictureSharpenFilter\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"PictureSharpenPreset\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"PictureSharpenTune\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"PictureSharpenCustom\00", align 1
@.str.24 = private unnamed_addr constant [70 x i8] c"Invalid Sharpen Settings:\0A\0AFilter:\09%s\0APreset:\09%s\0ATune:\09%s\0ACustom:\09%s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ghb_validate_filters(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i8* @ghb_dict_get_string(i32* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strcasecmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %2
  store i8* null, i8** %8, align 8
  %31 = load i32, i32* @HB_FILTER_DETELECINE, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i8* @ghb_dict_get_string(i32* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i8* %33, i8** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @hb_validate_filter_preset(i32 %34, i8* %35, i8* null, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32* (i32, i8*, ...) @g_strdup_printf(i32 %43, i8* %44, i8* %45)
  store i32* %46, i32** %6, align 8
  br label %51

47:                                               ; preds = %39
  %48 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i8*, i8** %7, align 8
  %50 = call i32* (i32, i8*, ...) @g_strdup_printf(i32 %48, i8* %49)
  store i32* %50, i32** %6, align 8
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @GTK_MESSAGE_ERROR, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %56 = call i32 @ghb_message_dialog(i32* %52, i32 %53, i32* %54, i32 %55, i32* null)
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @g_free(i32* %57)
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %3, align 4
  br label %227

60:                                               ; preds = %30
  br label %61

61:                                               ; preds = %60, %2
  %62 = load i32*, i32** %4, align 8
  %63 = call i8* @ghb_dict_get_string(i32* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i64 @strcasecmp(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %104

67:                                               ; preds = %61
  store i8* null, i8** %11, align 8
  %68 = load i32, i32* @HB_FILTER_COMB_DETECT, align 4
  store i32 %68, i32* %12, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = call i8* @ghb_dict_get_string(i32* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  store i8* %70, i8** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = call i64 @hb_validate_filter_preset(i32 %71, i8* %72, i8* null, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %67
  %77 = load i8*, i8** %11, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0))
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = call i32* (i32, i8*, ...) @g_strdup_printf(i32 %86, i8* %87, i8* %88)
  store i32* %89, i32** %6, align 8
  br label %94

90:                                               ; preds = %79, %76
  %91 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %92 = load i8*, i8** %10, align 8
  %93 = call i32* (i32, i8*, ...) @g_strdup_printf(i32 %91, i8* %92)
  store i32* %93, i32** %6, align 8
  br label %94

94:                                               ; preds = %90, %85
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* @GTK_MESSAGE_ERROR, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %99 = call i32 @ghb_message_dialog(i32* %95, i32 %96, i32* %97, i32 %98, i32* null)
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @g_free(i32* %100)
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %3, align 4
  br label %227

103:                                              ; preds = %67
  br label %104

104:                                              ; preds = %103, %61
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @ghb_settings_combo_int(i32* %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @HB_FILTER_INVALID, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %146

110:                                              ; preds = %104
  store i8* null, i8** %16, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = call i8* @ghb_dict_get_string(i32* %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  store i8* %112, i8** %14, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = call i8* @ghb_dict_get_string(i32* %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  store i8* %114, i8** %15, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = call i8* @ghb_dict_get_string(i32* %115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  store i8* %116, i8** %16, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i8*, i8** %15, align 8
  %119 = load i8*, i8** %16, align 8
  %120 = call i64 @hb_validate_filter_preset(i32 %117, i8* %118, i8* null, i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %145

122:                                              ; preds = %110
  %123 = load i8*, i8** %16, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0))
  %127 = load i8*, i8** %14, align 8
  %128 = load i8*, i8** %15, align 8
  %129 = load i8*, i8** %16, align 8
  %130 = call i32* (i32, i8*, ...) @g_strdup_printf(i32 %126, i8* %127, i8* %128, i8* %129)
  store i32* %130, i32** %6, align 8
  br label %136

131:                                              ; preds = %122
  %132 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0))
  %133 = load i8*, i8** %14, align 8
  %134 = load i8*, i8** %15, align 8
  %135 = call i32* (i32, i8*, ...) @g_strdup_printf(i32 %132, i8* %133, i8* %134)
  store i32* %135, i32** %6, align 8
  br label %136

136:                                              ; preds = %131, %125
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* @GTK_MESSAGE_ERROR, align 4
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %141 = call i32 @ghb_message_dialog(i32* %137, i32 %138, i32* %139, i32 %140, i32* null)
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 @g_free(i32* %142)
  %144 = load i32, i32* @FALSE, align 4
  store i32 %144, i32* %3, align 4
  br label %227

145:                                              ; preds = %110
  br label %146

146:                                              ; preds = %145, %104
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 @ghb_settings_combo_int(i32* %147, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @HB_FILTER_INVALID, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %188

152:                                              ; preds = %146
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  %153 = load i32*, i32** %4, align 8
  %154 = call i8* @ghb_dict_get_string(i32* %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  store i8* %154, i8** %17, align 8
  %155 = load i32*, i32** %4, align 8
  %156 = call i8* @ghb_dict_get_string(i32* %155, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  store i8* %156, i8** %18, align 8
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @HB_FILTER_NLMEANS, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %152
  %161 = load i32*, i32** %4, align 8
  %162 = call i8* @ghb_dict_get_string(i32* %161, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  store i8* %162, i8** %19, align 8
  br label %163

163:                                              ; preds = %160, %152
  %164 = load i32*, i32** %4, align 8
  %165 = call i8* @ghb_dict_get_string(i32* %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  store i8* %165, i8** %20, align 8
  %166 = load i32, i32* %13, align 4
  %167 = load i8*, i8** %18, align 8
  %168 = load i8*, i8** %19, align 8
  %169 = load i8*, i8** %20, align 8
  %170 = call i64 @hb_validate_filter_preset(i32 %166, i8* %167, i8* %168, i8* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %163
  %173 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.19, i64 0, i64 0))
  %174 = load i8*, i8** %17, align 8
  %175 = load i8*, i8** %18, align 8
  %176 = load i8*, i8** %19, align 8
  %177 = load i8*, i8** %20, align 8
  %178 = call i32* (i32, i8*, ...) @g_strdup_printf(i32 %173, i8* %174, i8* %175, i8* %176, i8* %177)
  store i32* %178, i32** %6, align 8
  %179 = load i32*, i32** %5, align 8
  %180 = load i32, i32* @GTK_MESSAGE_ERROR, align 4
  %181 = load i32*, i32** %6, align 8
  %182 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %183 = call i32 @ghb_message_dialog(i32* %179, i32 %180, i32* %181, i32 %182, i32* null)
  %184 = load i32*, i32** %6, align 8
  %185 = call i32 @g_free(i32* %184)
  %186 = load i32, i32* @FALSE, align 4
  store i32 %186, i32* %3, align 4
  br label %227

187:                                              ; preds = %163
  br label %188

188:                                              ; preds = %187, %146
  %189 = load i32*, i32** %4, align 8
  %190 = call i32 @ghb_settings_combo_int(i32* %189, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* @HB_FILTER_INVALID, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %225

194:                                              ; preds = %188
  store i8* null, i8** %23, align 8
  store i8* null, i8** %24, align 8
  %195 = load i32*, i32** %4, align 8
  %196 = call i8* @ghb_dict_get_string(i32* %195, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  store i8* %196, i8** %21, align 8
  %197 = load i32*, i32** %4, align 8
  %198 = call i8* @ghb_dict_get_string(i32* %197, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  store i8* %198, i8** %22, align 8
  %199 = load i32*, i32** %4, align 8
  %200 = call i8* @ghb_dict_get_string(i32* %199, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  store i8* %200, i8** %23, align 8
  %201 = load i32*, i32** %4, align 8
  %202 = call i8* @ghb_dict_get_string(i32* %201, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  store i8* %202, i8** %24, align 8
  %203 = load i32, i32* %13, align 4
  %204 = load i8*, i8** %22, align 8
  %205 = load i8*, i8** %23, align 8
  %206 = load i8*, i8** %24, align 8
  %207 = call i64 @hb_validate_filter_preset(i32 %203, i8* %204, i8* %205, i8* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %224

209:                                              ; preds = %194
  %210 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.24, i64 0, i64 0))
  %211 = load i8*, i8** %21, align 8
  %212 = load i8*, i8** %22, align 8
  %213 = load i8*, i8** %23, align 8
  %214 = load i8*, i8** %24, align 8
  %215 = call i32* (i32, i8*, ...) @g_strdup_printf(i32 %210, i8* %211, i8* %212, i8* %213, i8* %214)
  store i32* %215, i32** %6, align 8
  %216 = load i32*, i32** %5, align 8
  %217 = load i32, i32* @GTK_MESSAGE_ERROR, align 4
  %218 = load i32*, i32** %6, align 8
  %219 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %220 = call i32 @ghb_message_dialog(i32* %216, i32 %217, i32* %218, i32 %219, i32* null)
  %221 = load i32*, i32** %6, align 8
  %222 = call i32 @g_free(i32* %221)
  %223 = load i32, i32* @FALSE, align 4
  store i32 %223, i32* %3, align 4
  br label %227

224:                                              ; preds = %194
  br label %225

225:                                              ; preds = %224, %188
  %226 = load i32, i32* @TRUE, align 4
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %225, %209, %172, %136, %94, %51
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @hb_validate_filter_preset(i32, i8*, i8*, i8*) #1

declare dso_local i32* @g_strdup_printf(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ghb_message_dialog(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @ghb_settings_combo_int(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
