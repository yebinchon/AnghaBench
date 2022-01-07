; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_VIDEOMODE_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_VIDEOMODE_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"-win-width\00", align 1
@window_resolution = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"-win-height\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"-fs-width\00", align 1
@init_fs_resolution = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"-fs-height\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"-fullscreen\00", align 1
@VIDEOMODE_windowed = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"-windowed\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"-horiz-area\00", align 1
@horizontal_area_cfg_strings = common dso_local global i32 0, align 4
@VIDEOMODE_HORIZONTAL_SIZE = common dso_local global i32 0, align 4
@VIDEOMODE_HORIZONTAL_CUSTOM = common dso_local global i32 0, align 4
@VIDEOMODE_horizontal_area = common dso_local global i32 0, align 4
@VIDEOMODE_custom_horizontal_area = common dso_local global i32 0, align 4
@VIDEOMODE_MIN_HORIZONTAL_AREA = common dso_local global i32 0, align 4
@VIDEOMODE_MAX_HORIZONTAL_AREA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"-vert-area\00", align 1
@vertical_area_cfg_strings = common dso_local global i32 0, align 4
@VIDEOMODE_VERTICAL_SIZE = common dso_local global i32 0, align 4
@VIDEOMODE_VERTICAL_CUSTOM = common dso_local global i32 0, align 4
@VIDEOMODE_vertical_area = common dso_local global i32 0, align 4
@VIDEOMODE_custom_vertical_area = common dso_local global i32 0, align 4
@VIDEOMODE_MIN_VERTICAL_AREA = common dso_local global i32 0, align 4
@VIDEOMODE_MAX_VERTICAL_AREA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"-horiz-shift\00", align 1
@VIDEOMODE_horizontal_offset = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"-vert-shift\00", align 1
@VIDEOMODE_vertical_offset = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"-stretch\00", align 1
@stretch_cfg_strings = common dso_local global i32 0, align 4
@VIDEOMODE_STRETCH_SIZE = common dso_local global i32 0, align 4
@VIDEOMODE_STRETCH_CUSTOM = common dso_local global i32 0, align 4
@VIDEOMODE_stretch = common dso_local global i32 0, align 4
@VIDEOMODE_custom_stretch = common dso_local global double 0.000000e+00, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"-fit-screen\00", align 1
@fit_cfg_strings = common dso_local global i32 0, align 4
@VIDEOMODE_FIT_SIZE = common dso_local global i32 0, align 4
@VIDEOMODE_fit = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"-image-aspect\00", align 1
@keep_aspect_cfg_strings = common dso_local global i32 0, align 4
@VIDEOMODE_KEEP_ASPECT_SIZE = common dso_local global i32 0, align 4
@VIDEOMODE_keep_aspect = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [19 x i8] c"-host-aspect-ratio\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@VIDEOMODE_host_aspect_ratio_h = common dso_local global double 0.000000e+00, align 8
@VIDEOMODE_host_aspect_ratio_w = common dso_local global double 0.000000e+00, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"\09-win-width <num>            Host window width\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"\09-win-height <num>           Host window height\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"\09-fs-width <num>             Host fullscreen width\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"\09-fs-height <num>            Host fullscreen height\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"\09-fullscreen                 Run fullscreen\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"\09-windowed                   Run in window\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"\09-horiz-area narrow|tv|full|<number>\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"\09                            Set horizontal view area\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"\09-vert-area short|tv|full|<number>\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"\09                            Set vertical view area\00", align 1
@.str.26 = private unnamed_addr constant [80 x i8] c"\09-horiz-shift <num>          Set horizontal shift of the visible area (-%i..%i)\00", align 1
@.str.27 = private unnamed_addr constant [78 x i8] c"\09-vert-shift <num>           Set vertical shift of the visible area (-%i..%i)\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"\09-stretch none|integral|full|<number>\00", align 1
@.str.29 = private unnamed_addr constant [60 x i8] c"\09                            Set method of image stretching\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"\09-fit-screen width|height|both\00", align 1
@.str.31 = private unnamed_addr constant [68 x i8] c"\09                            Set method of image fitting the screen\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"\09-image-aspect none|square-pixels|real\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"\09                            Set image aspect ratio\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"\09-host-aspect-ratio auto|<w>:<h>\00", align 1
@.str.35 = private unnamed_addr constant [59 x i8] c"\09                            Set host display aspect ratio\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"Missing argument for '%s'\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"Invalid argument for '%s'\00", align 1
@VIDEOMODE_80_column = common dso_local global i32 0, align 4
@VIDEOMODE_MODE_XEP80 = common dso_local global i64 0, align 8
@VIDEOMODE_rotate90 = common dso_local global i32 0, align 4
@display_modes = common dso_local global %struct.TYPE_6__* null, align 8
@xep80_aspect_ratio_ntsc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VIDEOMODE_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %14

14:                                               ; preds = %511, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %514

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %21, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %19
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i8**, i8*** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @Util_sscandec(i8* %44)
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @window_resolution, i32 0, i32 0), align 4
  %46 = icmp eq i32 %45, -1
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %10, align 4
  br label %50

48:                                               ; preds = %35
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %38
  br label %486

51:                                               ; preds = %19
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %51
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @Util_sscandec(i8* %68)
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @window_resolution, i32 0, i32 1), align 4
  %70 = icmp eq i32 %69, -1
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %10, align 4
  br label %74

72:                                               ; preds = %59
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %72, %62
  br label %485

75:                                               ; preds = %51
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @Util_sscandec(i8* %92)
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @init_fs_resolution, i32 0, i32 0), align 4
  %94 = icmp eq i32 %93, -1
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %10, align 4
  br label %98

96:                                               ; preds = %83
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %96, %86
  br label %484

99:                                               ; preds = %75
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %99
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load i8**, i8*** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %111, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @Util_sscandec(i8* %116)
  store i32 %117, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @init_fs_resolution, i32 0, i32 1), align 4
  %118 = icmp eq i32 %117, -1
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %10, align 4
  br label %122

120:                                              ; preds = %107
  %121 = load i32, i32* @TRUE, align 4
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %120, %110
  br label %483

123:                                              ; preds = %99
  %124 = load i8**, i8*** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @strcmp(i8* %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = load i32, i32* @FALSE, align 4
  store i32 %132, i32* @VIDEOMODE_windowed, align 4
  br label %482

133:                                              ; preds = %123
  %134 = load i8**, i8*** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @strcmp(i8* %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load i32, i32* @TRUE, align 4
  store i32 %142, i32* @VIDEOMODE_windowed, align 4
  br label %481

143:                                              ; preds = %133
  %144 = load i8**, i8*** %5, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @strcmp(i8* %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %193

151:                                              ; preds = %143
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %190

154:                                              ; preds = %151
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %155, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* @horizontal_area_cfg_strings, align 4
  %162 = load i32, i32* @VIDEOMODE_HORIZONTAL_SIZE, align 4
  %163 = call i8* @CFG_MatchTextParameter(i8* %160, i32 %161, i32 %162)
  %164 = ptrtoint i8* %163 to i32
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %187

167:                                              ; preds = %154
  %168 = load i32, i32* @VIDEOMODE_HORIZONTAL_CUSTOM, align 4
  store i32 %168, i32* @VIDEOMODE_horizontal_area, align 4
  %169 = load i8**, i8*** %5, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @Util_sscandec(i8* %173)
  store i32 %174, i32* @VIDEOMODE_custom_horizontal_area, align 4
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %184, label %176

176:                                              ; preds = %167
  %177 = load i32, i32* @VIDEOMODE_custom_horizontal_area, align 4
  %178 = load i32, i32* @VIDEOMODE_MIN_HORIZONTAL_AREA, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = load i32, i32* @VIDEOMODE_custom_horizontal_area, align 4
  %182 = load i32, i32* @VIDEOMODE_MAX_HORIZONTAL_AREA, align 4
  %183 = icmp sgt i32 %181, %182
  br label %184

184:                                              ; preds = %180, %176, %167
  %185 = phi i1 [ true, %176 ], [ true, %167 ], [ %183, %180 ]
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %10, align 4
  br label %189

187:                                              ; preds = %154
  %188 = load i32, i32* %11, align 4
  store i32 %188, i32* @VIDEOMODE_horizontal_area, align 4
  br label %189

189:                                              ; preds = %187, %184
  br label %192

190:                                              ; preds = %151
  %191 = load i32, i32* @TRUE, align 4
  store i32 %191, i32* %9, align 4
  br label %192

192:                                              ; preds = %190, %189
  br label %480

193:                                              ; preds = %143
  %194 = load i8**, i8*** %5, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %194, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = call i64 @strcmp(i8* %198, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %243

201:                                              ; preds = %193
  %202 = load i32, i32* %8, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %240

204:                                              ; preds = %201
  %205 = load i8**, i8*** %5, align 8
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %205, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = load i32, i32* @vertical_area_cfg_strings, align 4
  %212 = load i32, i32* @VIDEOMODE_VERTICAL_SIZE, align 4
  %213 = call i8* @CFG_MatchTextParameter(i8* %210, i32 %211, i32 %212)
  %214 = ptrtoint i8* %213 to i32
  store i32 %214, i32* %12, align 4
  %215 = load i32, i32* %12, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %237

217:                                              ; preds = %204
  %218 = load i32, i32* @VIDEOMODE_VERTICAL_CUSTOM, align 4
  store i32 %218, i32* @VIDEOMODE_vertical_area, align 4
  %219 = load i8**, i8*** %5, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8*, i8** %219, i64 %221
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 @Util_sscandec(i8* %223)
  store i32 %224, i32* @VIDEOMODE_custom_vertical_area, align 4
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %234, label %226

226:                                              ; preds = %217
  %227 = load i32, i32* @VIDEOMODE_custom_vertical_area, align 4
  %228 = load i32, i32* @VIDEOMODE_MIN_VERTICAL_AREA, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %234, label %230

230:                                              ; preds = %226
  %231 = load i32, i32* @VIDEOMODE_custom_vertical_area, align 4
  %232 = load i32, i32* @VIDEOMODE_MAX_VERTICAL_AREA, align 4
  %233 = icmp sgt i32 %231, %232
  br label %234

234:                                              ; preds = %230, %226, %217
  %235 = phi i1 [ true, %226 ], [ true, %217 ], [ %233, %230 ]
  %236 = zext i1 %235 to i32
  store i32 %236, i32* %10, align 4
  br label %239

237:                                              ; preds = %204
  %238 = load i32, i32* %12, align 4
  store i32 %238, i32* @VIDEOMODE_vertical_area, align 4
  br label %239

239:                                              ; preds = %237, %234
  br label %242

240:                                              ; preds = %201
  %241 = load i32, i32* @TRUE, align 4
  store i32 %241, i32* %9, align 4
  br label %242

242:                                              ; preds = %240, %239
  br label %479

243:                                              ; preds = %193
  %244 = load i8**, i8*** %5, align 8
  %245 = load i32, i32* %6, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8*, i8** %244, i64 %246
  %248 = load i8*, i8** %247, align 8
  %249 = call i64 @strcmp(i8* %248, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %268

251:                                              ; preds = %243
  %252 = load i32, i32* %8, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %265

254:                                              ; preds = %251
  %255 = load i8**, i8*** %5, align 8
  %256 = load i32, i32* %6, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8*, i8** %255, i64 %258
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 @Util_sscansdec(i8* %260, i32* @VIDEOMODE_horizontal_offset)
  %262 = icmp ne i32 %261, 0
  %263 = xor i1 %262, true
  %264 = zext i1 %263 to i32
  store i32 %264, i32* %10, align 4
  br label %267

265:                                              ; preds = %251
  %266 = load i32, i32* @TRUE, align 4
  store i32 %266, i32* %9, align 4
  br label %267

267:                                              ; preds = %265, %254
  br label %478

268:                                              ; preds = %243
  %269 = load i8**, i8*** %5, align 8
  %270 = load i32, i32* %6, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8*, i8** %269, i64 %271
  %273 = load i8*, i8** %272, align 8
  %274 = call i64 @strcmp(i8* %273, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %293

276:                                              ; preds = %268
  %277 = load i32, i32* %8, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %290

279:                                              ; preds = %276
  %280 = load i8**, i8*** %5, align 8
  %281 = load i32, i32* %6, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %6, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8*, i8** %280, i64 %283
  %285 = load i8*, i8** %284, align 8
  %286 = call i32 @Util_sscansdec(i8* %285, i32* @VIDEOMODE_vertical_offset)
  %287 = icmp ne i32 %286, 0
  %288 = xor i1 %287, true
  %289 = zext i1 %288 to i32
  store i32 %289, i32* %10, align 4
  br label %292

290:                                              ; preds = %276
  %291 = load i32, i32* @TRUE, align 4
  store i32 %291, i32* %9, align 4
  br label %292

292:                                              ; preds = %290, %279
  br label %477

293:                                              ; preds = %268
  %294 = load i8**, i8*** %5, align 8
  %295 = load i32, i32* %6, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8*, i8** %294, i64 %296
  %298 = load i8*, i8** %297, align 8
  %299 = call i64 @strcmp(i8* %298, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %338

301:                                              ; preds = %293
  %302 = load i32, i32* %8, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %335

304:                                              ; preds = %301
  %305 = load i8**, i8*** %5, align 8
  %306 = load i32, i32* %6, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %6, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8*, i8** %305, i64 %308
  %310 = load i8*, i8** %309, align 8
  %311 = load i32, i32* @stretch_cfg_strings, align 4
  %312 = load i32, i32* @VIDEOMODE_STRETCH_SIZE, align 4
  %313 = call i8* @CFG_MatchTextParameter(i8* %310, i32 %311, i32 %312)
  %314 = ptrtoint i8* %313 to i32
  store i32 %314, i32* %13, align 4
  %315 = load i32, i32* %13, align 4
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %332

317:                                              ; preds = %304
  %318 = load i32, i32* @VIDEOMODE_STRETCH_CUSTOM, align 4
  store i32 %318, i32* @VIDEOMODE_stretch, align 4
  %319 = load i8**, i8*** %5, align 8
  %320 = load i32, i32* %6, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8*, i8** %319, i64 %321
  %323 = load i8*, i8** %322, align 8
  %324 = call i32 @Util_sscandouble(i8* %323, double* @VIDEOMODE_custom_stretch)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %317
  %327 = load double, double* @VIDEOMODE_custom_stretch, align 8
  %328 = fcmp olt double %327, 1.000000e+00
  br label %329

329:                                              ; preds = %326, %317
  %330 = phi i1 [ true, %317 ], [ %328, %326 ]
  %331 = zext i1 %330 to i32
  store i32 %331, i32* %10, align 4
  br label %334

332:                                              ; preds = %304
  %333 = load i32, i32* %13, align 4
  store i32 %333, i32* @VIDEOMODE_stretch, align 4
  br label %334

334:                                              ; preds = %332, %329
  br label %337

335:                                              ; preds = %301
  %336 = load i32, i32* @TRUE, align 4
  store i32 %336, i32* %9, align 4
  br label %337

337:                                              ; preds = %335, %334
  br label %476

338:                                              ; preds = %293
  %339 = load i8**, i8*** %5, align 8
  %340 = load i32, i32* %6, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8*, i8** %339, i64 %341
  %343 = load i8*, i8** %342, align 8
  %344 = call i64 @strcmp(i8* %343, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %346, label %366

346:                                              ; preds = %338
  %347 = load i32, i32* %8, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %363

349:                                              ; preds = %346
  %350 = load i8**, i8*** %5, align 8
  %351 = load i32, i32* %6, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %6, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8*, i8** %350, i64 %353
  %355 = load i8*, i8** %354, align 8
  %356 = load i32, i32* @fit_cfg_strings, align 4
  %357 = load i32, i32* @VIDEOMODE_FIT_SIZE, align 4
  %358 = call i8* @CFG_MatchTextParameter(i8* %355, i32 %356, i32 %357)
  store i8* %358, i8** @VIDEOMODE_fit, align 8
  %359 = icmp ult i8* %358, null
  br i1 %359, label %360, label %362

360:                                              ; preds = %349
  %361 = load i32, i32* @TRUE, align 4
  store i32 %361, i32* %10, align 4
  br label %362

362:                                              ; preds = %360, %349
  br label %365

363:                                              ; preds = %346
  %364 = load i32, i32* @TRUE, align 4
  store i32 %364, i32* %9, align 4
  br label %365

365:                                              ; preds = %363, %362
  br label %475

366:                                              ; preds = %338
  %367 = load i8**, i8*** %5, align 8
  %368 = load i32, i32* %6, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i8*, i8** %367, i64 %369
  %371 = load i8*, i8** %370, align 8
  %372 = call i64 @strcmp(i8* %371, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %374, label %394

374:                                              ; preds = %366
  %375 = load i32, i32* %8, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %391

377:                                              ; preds = %374
  %378 = load i8**, i8*** %5, align 8
  %379 = load i32, i32* %6, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %6, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i8*, i8** %378, i64 %381
  %383 = load i8*, i8** %382, align 8
  %384 = load i32, i32* @keep_aspect_cfg_strings, align 4
  %385 = load i32, i32* @VIDEOMODE_KEEP_ASPECT_SIZE, align 4
  %386 = call i8* @CFG_MatchTextParameter(i8* %383, i32 %384, i32 %385)
  store i8* %386, i8** @VIDEOMODE_keep_aspect, align 8
  %387 = icmp ult i8* %386, null
  br i1 %387, label %388, label %390

388:                                              ; preds = %377
  %389 = load i32, i32* @TRUE, align 4
  store i32 %389, i32* %10, align 4
  br label %390

390:                                              ; preds = %388, %377
  br label %393

391:                                              ; preds = %374
  %392 = load i32, i32* @TRUE, align 4
  store i32 %392, i32* %9, align 4
  br label %393

393:                                              ; preds = %391, %390
  br label %474

394:                                              ; preds = %366
  %395 = load i8**, i8*** %5, align 8
  %396 = load i32, i32* %6, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i8*, i8** %395, i64 %397
  %399 = load i8*, i8** %398, align 8
  %400 = call i64 @strcmp(i8* %399, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %402, label %429

402:                                              ; preds = %394
  %403 = load i32, i32* %8, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %426

405:                                              ; preds = %402
  %406 = load i8**, i8*** %5, align 8
  %407 = load i32, i32* %6, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %6, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8*, i8** %406, i64 %409
  %411 = load i8*, i8** %410, align 8
  %412 = call i64 @strcmp(i8* %411, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %413 = icmp eq i64 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %405
  store double 0.000000e+00, double* @VIDEOMODE_host_aspect_ratio_h, align 8
  store double 0.000000e+00, double* @VIDEOMODE_host_aspect_ratio_w, align 8
  br label %425

415:                                              ; preds = %405
  %416 = load i8**, i8*** %5, align 8
  %417 = load i32, i32* %6, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i8*, i8** %416, i64 %418
  %420 = load i8*, i8** %419, align 8
  %421 = call i32 @ParseAspectRatio(i8* %420, double* @VIDEOMODE_host_aspect_ratio_w, double* @VIDEOMODE_host_aspect_ratio_h)
  %422 = icmp ne i32 %421, 0
  %423 = xor i1 %422, true
  %424 = zext i1 %423 to i32
  store i32 %424, i32* %10, align 4
  br label %425

425:                                              ; preds = %415, %414
  br label %428

426:                                              ; preds = %402
  %427 = load i32, i32* @TRUE, align 4
  store i32 %427, i32* %9, align 4
  br label %428

428:                                              ; preds = %426, %425
  br label %473

429:                                              ; preds = %394
  %430 = load i8**, i8*** %5, align 8
  %431 = load i32, i32* %6, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i8*, i8** %430, i64 %432
  %434 = load i8*, i8** %433, align 8
  %435 = call i64 @strcmp(i8* %434, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %436 = icmp eq i64 %435, 0
  br i1 %436, label %437, label %462

437:                                              ; preds = %429
  %438 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0))
  %439 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0))
  %440 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i64 0, i64 0))
  %441 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.19, i64 0, i64 0))
  %442 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0))
  %443 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0))
  %444 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0))
  %445 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i64 0, i64 0))
  %446 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0))
  %447 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i64 0, i64 0))
  %448 = load i32, i32* @VIDEOMODE_MAX_HORIZONTAL_AREA, align 4
  %449 = load i32, i32* @VIDEOMODE_MAX_HORIZONTAL_AREA, align 4
  %450 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.26, i64 0, i64 0), i32 %448, i32 %449)
  %451 = load i32, i32* @VIDEOMODE_MAX_VERTICAL_AREA, align 4
  %452 = load i32, i32* @VIDEOMODE_MAX_VERTICAL_AREA, align 4
  %453 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.27, i64 0, i64 0), i32 %451, i32 %452)
  %454 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0))
  %455 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.29, i64 0, i64 0))
  %456 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0))
  %457 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.31, i64 0, i64 0))
  %458 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0))
  %459 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.33, i64 0, i64 0))
  %460 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0))
  %461 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.35, i64 0, i64 0))
  br label %462

462:                                              ; preds = %437, %429
  %463 = load i8**, i8*** %5, align 8
  %464 = load i32, i32* %6, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i8*, i8** %463, i64 %465
  %467 = load i8*, i8** %466, align 8
  %468 = load i8**, i8*** %5, align 8
  %469 = load i32, i32* %7, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %7, align 4
  %471 = sext i32 %469 to i64
  %472 = getelementptr inbounds i8*, i8** %468, i64 %471
  store i8* %467, i8** %472, align 8
  br label %473

473:                                              ; preds = %462, %428
  br label %474

474:                                              ; preds = %473, %393
  br label %475

475:                                              ; preds = %474, %365
  br label %476

476:                                              ; preds = %475, %337
  br label %477

477:                                              ; preds = %476, %292
  br label %478

478:                                              ; preds = %477, %267
  br label %479

479:                                              ; preds = %478, %242
  br label %480

480:                                              ; preds = %479, %192
  br label %481

481:                                              ; preds = %480, %141
  br label %482

482:                                              ; preds = %481, %131
  br label %483

483:                                              ; preds = %482, %122
  br label %484

484:                                              ; preds = %483, %98
  br label %485

485:                                              ; preds = %484, %74
  br label %486

486:                                              ; preds = %485, %50
  %487 = load i32, i32* %9, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %497

489:                                              ; preds = %486
  %490 = load i8**, i8*** %5, align 8
  %491 = load i32, i32* %6, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i8*, i8** %490, i64 %492
  %494 = load i8*, i8** %493, align 8
  %495 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i64 0, i64 0), i8* %494)
  %496 = load i32, i32* @FALSE, align 4
  store i32 %496, i32* %3, align 4
  br label %518

497:                                              ; preds = %486
  %498 = load i32, i32* %10, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %509

500:                                              ; preds = %497
  %501 = load i8**, i8*** %5, align 8
  %502 = load i32, i32* %6, align 4
  %503 = add nsw i32 %502, -1
  store i32 %503, i32* %6, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i8*, i8** %501, i64 %504
  %506 = load i8*, i8** %505, align 8
  %507 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0), i8* %506)
  %508 = load i32, i32* @FALSE, align 4
  store i32 %508, i32* %3, align 4
  br label %518

509:                                              ; preds = %497
  br label %510

510:                                              ; preds = %509
  br label %511

511:                                              ; preds = %510
  %512 = load i32, i32* %6, align 4
  %513 = add nsw i32 %512, 1
  store i32 %513, i32* %6, align 4
  br label %14

514:                                              ; preds = %14
  %515 = load i32, i32* %7, align 4
  %516 = load i32*, i32** %4, align 8
  store i32 %515, i32* %516, align 4
  %517 = load i32, i32* @TRUE, align 4
  store i32 %517, i32* %3, align 4
  br label %518

518:                                              ; preds = %514, %500, %489
  %519 = load i32, i32* %3, align 4
  ret i32 %519
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Util_sscandec(i8*) #1

declare dso_local i8* @CFG_MatchTextParameter(i8*, i32, i32) #1

declare dso_local i32 @Util_sscansdec(i8*, i32*) #1

declare dso_local i32 @Util_sscandouble(i8*, double*) #1

declare dso_local i32 @ParseAspectRatio(i8*, double*, double*) #1

declare dso_local i32 @Log_print(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
