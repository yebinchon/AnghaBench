; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_preset_job_add_subtitles.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_preset_job_add_subtitles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.subtitle_behavior_s = type { i32, i32, i32, i32, i32, i32*, i8*, i8* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_14__ = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Invalid title index (%d)\00", align 1
@HB_MUX_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Audio\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"AudioList\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Subtitle\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"SubtitleList\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"SubtitleTrackSelectionBehavior\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"SubtitleBurnBehavior\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"foreign\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"foreign_first\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"SubtitleBurnDVDSub\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"SubtitleBurnBDSub\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"SubtitleAddForeignAudioSearch\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"SubtitleAddForeignAudioSubtitle\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"SubtitleLanguageList\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Search\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Forced\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Burn\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"und\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"SubtitleAddCC\00", align 1
@CC608SUB = common dso_local global i64 0, align 8
@CC708SUB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_preset_job_add_subtitles(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.subtitle_behavior_s, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca %struct.TYPE_12__*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i8*, align 8
  %40 = alloca %struct.TYPE_14__*, align 8
  %41 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.TYPE_13__* @hb_find_title_by_index(i32* %42, i32 %43)
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %10, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %46 = icmp eq %struct.TYPE_13__* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @hb_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 -1, i32* %5, align 4
  br label %446

50:                                               ; preds = %4
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @get_job_mux(i32* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @HB_MUX_INVALID, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 -1, i32* %5, align 4
  br label %446

57:                                               ; preds = %50
  %58 = load i32*, i32** %9, align 8
  %59 = call i32* @hb_dict_get(i32* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %59, i32** %12, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = call i32* @hb_dict_get(i32* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32* %61, i32** %13, align 8
  store i8* null, i8** %14, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @hb_value_array_len(i32* %62)
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %57
  %66 = load i32*, i32** %13, align 8
  %67 = call i32* @hb_value_array_get(i32* %66, i32 0)
  store i32* %67, i32** %16, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = call i32* @hb_dict_get(i32* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i8* @hb_value_get_int(i32* %69)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %15, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @hb_list_count(i32 %74)
  %76 = load i32, i32* %15, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %65
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call %struct.TYPE_15__* @hb_list_audio_config_item(i32 %81, i32 %82)
  store %struct.TYPE_15__* %83, %struct.TYPE_15__** %17, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %85 = icmp ne %struct.TYPE_15__* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %14, align 8
  br label %91

91:                                               ; preds = %86, %78
  br label %92

92:                                               ; preds = %91, %65
  br label %93

93:                                               ; preds = %92, %57
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @hb_list_count(i32 %96)
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  store i32 0, i32* %5, align 4
  br label %446

101:                                              ; preds = %93
  %102 = load i32*, i32** %9, align 8
  %103 = call i32* @hb_dict_get(i32* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32* %103, i32** %19, align 8
  %104 = load i32*, i32** %19, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = call i32* (...) @hb_dict_init()
  store i32* %107, i32** %19, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = load i32*, i32** %19, align 8
  %110 = call i32 @hb_dict_set(i32* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %109)
  br label %111

111:                                              ; preds = %106, %101
  %112 = load i32*, i32** %19, align 8
  %113 = call i32* @hb_dict_get(i32* %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32* %113, i32** %20, align 8
  %114 = load i32*, i32** %20, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = call i32* (...) @hb_value_array_init()
  store i32* %117, i32** %20, align 8
  %118 = load i32*, i32** %19, align 8
  %119 = load i32*, i32** %20, align 8
  %120 = call i32 @hb_dict_set(i32* %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %119)
  br label %121

121:                                              ; preds = %116, %111
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %122 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 0
  store i32 0, i32* %122, align 8
  %123 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 1
  store i32 0, i32* %123, align 4
  %124 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 2
  store i32 0, i32* %124, align 8
  %125 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 3
  store i32 0, i32* %125, align 4
  %126 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 7
  store i8* null, i8** %126, align 8
  %127 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 6
  store i8* null, i8** %127, align 8
  %128 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 4
  store i32 0, i32* %128, align 8
  %129 = load i32, i32* %18, align 4
  %130 = call i32* @calloc(i32 %129, i32 4)
  %131 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 5
  store i32* %130, i32** %131, align 8
  %132 = load i32*, i32** %20, align 8
  %133 = call i32 @hb_value_array_len(i32* %132)
  store i32 %133, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %134

134:                                              ; preds = %151, %121
  %135 = load i32, i32* %26, align 4
  %136 = load i32, i32* %25, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %154

138:                                              ; preds = %134
  %139 = load i32*, i32** %20, align 8
  %140 = load i32, i32* %26, align 4
  %141 = call i32* @hb_value_array_get(i32* %139, i32 %140)
  store i32* %141, i32** %27, align 8
  %142 = load i32*, i32** %27, align 8
  %143 = call i32* @hb_dict_get(i32* %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %144 = call i8* @hb_value_get_int(i32* %143)
  %145 = ptrtoint i8* %144 to i32
  store i32 %145, i32* %28, align 4
  %146 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 5
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %28, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %138
  %152 = load i32, i32* %26, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %26, align 4
  br label %134

154:                                              ; preds = %134
  %155 = load i32*, i32** %8, align 8
  %156 = call i32* @hb_dict_get(i32* %155, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %157 = call i8* @hb_value_get_string(i32* %156)
  store i8* %157, i8** %29, align 8
  %158 = load i8*, i8** %29, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %172

160:                                              ; preds = %154
  %161 = load i8*, i8** %29, align 8
  %162 = call i32 @strcasecmp(i8* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  store i32 1, i32* %21, align 4
  br label %171

165:                                              ; preds = %160
  %166 = load i8*, i8** %29, align 8
  %167 = call i32 @strcasecmp(i8* %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  store i32 2, i32* %21, align 4
  br label %170

170:                                              ; preds = %169, %165
  br label %171

171:                                              ; preds = %170, %164
  br label %172

172:                                              ; preds = %171, %154
  %173 = load i32*, i32** %8, align 8
  %174 = call i32* @hb_dict_get(i32* %173, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %175 = call i8* @hb_value_get_string(i32* %174)
  store i8* %175, i8** %29, align 8
  %176 = load i8*, i8** %29, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %196

178:                                              ; preds = %172
  %179 = load i8*, i8** %29, align 8
  %180 = call i32 @strcasecmp(i8* %179, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  store i32 1, i32* %22, align 4
  br label %195

183:                                              ; preds = %178
  %184 = load i8*, i8** %29, align 8
  %185 = call i32 @strcasecmp(i8* %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %183
  store i32 2, i32* %22, align 4
  br label %194

188:                                              ; preds = %183
  %189 = load i8*, i8** %29, align 8
  %190 = call i32 @strcasecmp(i8* %189, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %188
  store i32 3, i32* %22, align 4
  br label %193

193:                                              ; preds = %192, %188
  br label %194

194:                                              ; preds = %193, %187
  br label %195

195:                                              ; preds = %194, %182
  br label %196

196:                                              ; preds = %195, %172
  %197 = load i32*, i32** %8, align 8
  %198 = call i32* @hb_dict_get(i32* %197, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %199 = call i8* @hb_value_get_int(i32* %198)
  %200 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 7
  store i8* %199, i8** %200, align 8
  %201 = load i32*, i32** %8, align 8
  %202 = call i32* @hb_dict_get(i32* %201, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %203 = call i8* @hb_value_get_int(i32* %202)
  %204 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 6
  store i8* %203, i8** %204, align 8
  %205 = load i32, i32* %22, align 4
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %210, label %207

207:                                              ; preds = %196
  %208 = load i32, i32* %22, align 4
  %209 = icmp eq i32 %208, 3
  br label %210

210:                                              ; preds = %207, %196
  %211 = phi i1 [ true, %196 ], [ %209, %207 ]
  %212 = zext i1 %211 to i32
  store i32 %212, i32* %23, align 4
  %213 = load i32, i32* %22, align 4
  %214 = icmp eq i32 %213, 2
  br i1 %214, label %218, label %215

215:                                              ; preds = %210
  %216 = load i32, i32* %22, align 4
  %217 = icmp eq i32 %216, 3
  br label %218

218:                                              ; preds = %215, %210
  %219 = phi i1 [ true, %210 ], [ %217, %215 ]
  %220 = zext i1 %219 to i32
  %221 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 3
  store i32 %220, i32* %221, align 4
  %222 = load i32*, i32** %8, align 8
  %223 = call i32* @hb_dict_get(i32* %222, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %224 = call i32 @hb_value_get_bool(i32* %223)
  store i32 %224, i32* %30, align 4
  %225 = load i32*, i32** %8, align 8
  %226 = call i32* @hb_dict_get(i32* %225, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %227 = call i32 @hb_value_get_bool(i32* %226)
  store i32 %227, i32* %31, align 4
  %228 = load i32*, i32** %8, align 8
  %229 = call i32* @hb_dict_get(i32* %228, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  store i32* %229, i32** %32, align 8
  %230 = call %struct.TYPE_12__* (...) @lang_get_any()
  store %struct.TYPE_12__* %230, %struct.TYPE_12__** %33, align 8
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  store i8* %233, i8** %34, align 8
  %234 = load i32*, i32** %32, align 8
  %235 = call i32 @hb_value_array_len(i32* %234)
  store i32 %235, i32* %25, align 4
  %236 = load i32, i32* %25, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %218
  %239 = load i32*, i32** %32, align 8
  %240 = call i32* @hb_value_array_get(i32* %239, i32 0)
  %241 = call i8* @hb_value_get_string(i32* %240)
  store i8* %241, i8** %34, align 8
  br label %242

242:                                              ; preds = %238, %218
  %243 = load i8*, i8** %34, align 8
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @strcmp(i8* %243, i8* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %256, label %249

249:                                              ; preds = %242
  %250 = load i8*, i8** %14, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %252, label %254

252:                                              ; preds = %249
  %253 = load i8*, i8** %14, align 8
  store i8* %253, i8** %34, align 8
  store i32 0, i32* %31, align 4
  br label %255

254:                                              ; preds = %249
  store i32 0, i32* %31, align 4
  store i32 0, i32* %30, align 4
  br label %255

255:                                              ; preds = %254, %252
  br label %256

256:                                              ; preds = %255, %242
  %257 = load i8*, i8** %14, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %277

259:                                              ; preds = %256
  %260 = load i32, i32* %31, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %277

262:                                              ; preds = %259
  %263 = load i8*, i8** %14, align 8
  %264 = load i8*, i8** %34, align 8
  %265 = call i64 @strncmp(i8* %263, i8* %264, i32 4)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %262
  store i32 0, i32* %30, align 4
  %268 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 0
  store i32 1, i32* %268, align 8
  %269 = load i32, i32* %23, align 4
  %270 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 1
  store i32 %269, i32* %270, align 4
  %271 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 2
  store i32 1, i32* %271, align 8
  %272 = load i32*, i32** %20, align 8
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %274 = load i32, i32* %11, align 4
  %275 = load i8*, i8** %34, align 8
  %276 = call i32 @add_subtitle_for_lang(i32* %272, %struct.TYPE_13__* %273, i32 %274, i8* %275, %struct.subtitle_behavior_s* %24)
  br label %277

277:                                              ; preds = %267, %262, %259, %256
  %278 = load i32*, i32** %19, align 8
  %279 = call i32* @hb_dict_get(i32* %278, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  store i32* %279, i32** %36, align 8
  %280 = load i32*, i32** %36, align 8
  %281 = icmp eq i32* %280, null
  br i1 %281, label %282, label %287

282:                                              ; preds = %277
  %283 = call i32* (...) @hb_dict_init()
  store i32* %283, i32** %36, align 8
  %284 = load i32*, i32** %19, align 8
  %285 = load i32*, i32** %36, align 8
  %286 = call i32 @hb_dict_set(i32* %284, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32* %285)
  br label %287

287:                                              ; preds = %282, %277
  %288 = load i8*, i8** %14, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %325

290:                                              ; preds = %287
  %291 = load i32, i32* %30, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %325

293:                                              ; preds = %290
  %294 = load i8*, i8** %14, align 8
  %295 = load i8*, i8** %34, align 8
  %296 = call i64 @strncmp(i8* %294, i8* %295, i32 4)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %325, label %298

298:                                              ; preds = %293
  %299 = load i32, i32* %23, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %305, label %301

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = icmp ne i32 %303, 0
  br label %305

305:                                              ; preds = %301, %298
  %306 = phi i1 [ true, %298 ], [ %304, %301 ]
  %307 = zext i1 %306 to i32
  store i32 %307, i32* %37, align 4
  %308 = load i32*, i32** %36, align 8
  %309 = call i32* @hb_value_bool(i32 1)
  %310 = call i32 @hb_dict_set(i32* %308, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32* %309)
  %311 = load i32*, i32** %36, align 8
  %312 = load i32, i32* %37, align 4
  %313 = icmp ne i32 %312, 0
  %314 = xor i1 %313, true
  %315 = zext i1 %314 to i32
  %316 = call i32* @hb_value_bool(i32 %315)
  %317 = call i32 @hb_dict_set(i32* %311, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32* %316)
  %318 = load i32*, i32** %36, align 8
  %319 = call i32* @hb_value_bool(i32 1)
  %320 = call i32 @hb_dict_set(i32* %318, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32* %319)
  %321 = load i32*, i32** %36, align 8
  %322 = load i32, i32* %37, align 4
  %323 = call i32* @hb_value_bool(i32 %322)
  %324 = call i32 @hb_dict_set(i32* %321, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32* %323)
  br label %329

325:                                              ; preds = %293, %290, %287
  %326 = load i32*, i32** %36, align 8
  %327 = call i32* @hb_value_bool(i32 0)
  %328 = call i32 @hb_dict_set(i32* %326, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32* %327)
  br label %329

329:                                              ; preds = %325, %305
  %330 = load i32, i32* %21, align 4
  %331 = icmp sgt i32 %330, 0
  br i1 %331, label %332, label %365

332:                                              ; preds = %329
  %333 = load i32, i32* %21, align 4
  %334 = icmp eq i32 %333, 1
  %335 = zext i1 %334 to i32
  %336 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 0
  store i32 %335, i32* %336, align 8
  %337 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 1
  store i32 0, i32* %337, align 4
  %338 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 2
  store i32 0, i32* %338, align 8
  store i32 0, i32* %38, align 4
  br label %339

339:                                              ; preds = %353, %332
  %340 = load i32, i32* %38, align 4
  %341 = load i32, i32* %25, align 4
  %342 = icmp slt i32 %340, %341
  br i1 %342, label %343, label %356

343:                                              ; preds = %339
  %344 = load i32*, i32** %32, align 8
  %345 = load i32, i32* %38, align 4
  %346 = call i32* @hb_value_array_get(i32* %344, i32 %345)
  %347 = call i8* @hb_value_get_string(i32* %346)
  store i8* %347, i8** %39, align 8
  %348 = load i32*, i32** %20, align 8
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %350 = load i32, i32* %11, align 4
  %351 = load i8*, i8** %39, align 8
  %352 = call i32 @add_subtitle_for_lang(i32* %348, %struct.TYPE_13__* %349, i32 %350, i8* %351, %struct.subtitle_behavior_s* %24)
  br label %353

353:                                              ; preds = %343
  %354 = load i32, i32* %38, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %38, align 4
  br label %339

356:                                              ; preds = %339
  %357 = load i32, i32* %25, align 4
  %358 = icmp sle i32 %357, 0
  br i1 %358, label %359, label %364

359:                                              ; preds = %356
  %360 = load i32*, i32** %20, align 8
  %361 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %362 = load i32, i32* %11, align 4
  %363 = call i32 @add_subtitle_for_lang(i32* %360, %struct.TYPE_13__* %361, i32 %362, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), %struct.subtitle_behavior_s* %24)
  br label %364

364:                                              ; preds = %359, %356
  br label %365

365:                                              ; preds = %364, %329
  %366 = load i32*, i32** %8, align 8
  %367 = call i32* @hb_dict_get(i32* %366, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  %368 = call i32 @hb_value_get_bool(i32* %367)
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %442

370:                                              ; preds = %365
  store i32 0, i32* %35, align 4
  br label %371

371:                                              ; preds = %438, %370
  %372 = load i32, i32* %35, align 4
  %373 = load i32, i32* %18, align 4
  %374 = icmp slt i32 %372, %373
  br i1 %374, label %375, label %441

375:                                              ; preds = %371
  %376 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 5
  %377 = load i32*, i32** %376, align 8
  %378 = load i32, i32* %35, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %375
  br label %438

384:                                              ; preds = %375
  %385 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* %35, align 4
  %389 = call %struct.TYPE_14__* @hb_list_item(i32 %387, i32 %388)
  store %struct.TYPE_14__* %389, %struct.TYPE_14__** %40, align 8
  %390 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = load i64, i64* @CC608SUB, align 8
  %394 = icmp eq i64 %392, %393
  br i1 %394, label %401, label %395

395:                                              ; preds = %384
  %396 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* @CC708SUB, align 8
  %400 = icmp eq i64 %398, %399
  br i1 %400, label %401, label %437

401:                                              ; preds = %395, %384
  %402 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 4
  %403 = load i32, i32* %402, align 8
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %418, label %405

405:                                              ; preds = %401
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = load i32, i32* %11, align 4
  %410 = call i32 @hb_subtitle_can_pass(i64 %408, i32 %409)
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %416

412:                                              ; preds = %405
  %413 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 3
  %414 = load i32, i32* %413, align 4
  %415 = icmp ne i32 %414, 0
  br label %416

416:                                              ; preds = %412, %405
  %417 = phi i1 [ true, %405 ], [ %415, %412 ]
  br label %418

418:                                              ; preds = %416, %401
  %419 = phi i1 [ false, %401 ], [ %417, %416 ]
  %420 = zext i1 %419 to i32
  store i32 %420, i32* %41, align 4
  %421 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 5
  %422 = load i32*, i32** %421, align 8
  %423 = load i32, i32* %35, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  store i32 1, i32* %425, align 4
  %426 = load i32, i32* %41, align 4
  %427 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 4
  %428 = load i32, i32* %427, align 8
  %429 = or i32 %428, %426
  store i32 %429, i32* %427, align 8
  %430 = load i32*, i32** %20, align 8
  %431 = load i32, i32* %35, align 4
  %432 = load i32, i32* %41, align 4
  %433 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %434 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 8
  %436 = call i32 @add_subtitle(i32* %430, i32 %431, i32 0, i32 0, i32 %432, i32 %435)
  br label %441

437:                                              ; preds = %395
  br label %438

438:                                              ; preds = %437, %383
  %439 = load i32, i32* %35, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %35, align 4
  br label %371

441:                                              ; preds = %418, %371
  br label %442

442:                                              ; preds = %441, %365
  %443 = getelementptr inbounds %struct.subtitle_behavior_s, %struct.subtitle_behavior_s* %24, i32 0, i32 5
  %444 = load i32*, i32** %443, align 8
  %445 = call i32 @free(i32* %444)
  store i32 0, i32* %5, align 4
  br label %446

446:                                              ; preds = %442, %100, %56, %47
  %447 = load i32, i32* %5, align 4
  ret i32 %447
}

declare dso_local %struct.TYPE_13__* @hb_find_title_by_index(i32*, i32) #1

declare dso_local i32 @hb_error(i8*, i32) #1

declare dso_local i32 @get_job_mux(i32*) #1

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i8* @hb_value_get_int(i32*) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_15__* @hb_list_audio_config_item(i32, i32) #1

declare dso_local i32* @hb_dict_init(...) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32* @hb_value_array_init(...) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @hb_value_get_bool(i32*) #1

declare dso_local %struct.TYPE_12__* @lang_get_any(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @add_subtitle_for_lang(i32*, %struct.TYPE_13__*, i32, i8*, %struct.subtitle_behavior_s*) #1

declare dso_local i32* @hb_value_bool(i32) #1

declare dso_local %struct.TYPE_14__* @hb_list_item(i32, i32) #1

declare dso_local i32 @hb_subtitle_can_pass(i64, i32) #1

declare dso_local i32 @add_subtitle(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
