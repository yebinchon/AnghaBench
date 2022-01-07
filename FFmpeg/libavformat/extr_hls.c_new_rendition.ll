; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_new_rendition.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_new_rendition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rendition = type { i32, i8*, i8*, i8*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.rendition_info = type { i8*, i8*, i8*, i8*, i8*, i64*, i32, i32, i32 }

@AVMEDIA_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"AUDIO\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"VIDEO\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"SUBTITLES\00", align 1
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"CLOSED-CAPTIONS\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Can't support the type: %s\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"The URI tag is REQUIRED for subtitle.\0A\00", align 1
@FF_COMPLIANCE_EXPERIMENTAL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"Can't support the subtitle(uri: %s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@AV_DISPOSITION_DEFAULT = common dso_local global i32 0, align 4
@AV_DISPOSITION_FORCED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"public.accessibility.describes-music-and-sound\00", align 1
@AV_DISPOSITION_HEARING_IMPAIRED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"public.accessibility.describes-video\00", align 1
@AV_DISPOSITION_VISUAL_IMPAIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rendition* (%struct.TYPE_6__*, %struct.rendition_info*, i8*)* @new_rendition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rendition* @new_rendition(%struct.TYPE_6__* %0, %struct.rendition_info* %1, i8* %2) #0 {
  %4 = alloca %struct.rendition*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.rendition_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rendition*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.rendition_info* %1, %struct.rendition_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @AVMEDIA_TYPE_UNKNOWN, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %16 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  store i32 %21, i32* %9, align 4
  br label %48

22:                                               ; preds = %3
  %23 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %24 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  store i32 %29, i32* %9, align 4
  br label %47

30:                                               ; preds = %22
  %31 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %32 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  store i32 %37, i32* %9, align 4
  br label %46

38:                                               ; preds = %30
  %39 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %40 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store %struct.rendition* null, %struct.rendition** %4, align 8
  br label %263

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %36
  br label %47

47:                                               ; preds = %46, %28
  br label %48

48:                                               ; preds = %47, %20
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @AVMEDIA_TYPE_UNKNOWN, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load i32, i32* @AV_LOG_WARNING, align 4
  %57 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %58 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %55, i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  store %struct.rendition* null, %struct.rendition** %4, align 8
  br label %263

61:                                               ; preds = %48
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %67 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i32, i32* @AV_LOG_ERROR, align 4
  %77 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %75, i32 %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  store %struct.rendition* null, %struct.rendition** %4, align 8
  br label %263

78:                                               ; preds = %65, %61
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @FF_COMPLIANCE_EXPERIMENTAL, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %78
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load i32, i32* @AV_LOG_WARNING, align 4
  %95 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %96 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %93, i32 %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %97)
  store %struct.rendition* null, %struct.rendition** %4, align 8
  br label %263

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %78
  %101 = call %struct.rendition* @av_mallocz(i32 48)
  store %struct.rendition* %101, %struct.rendition** %8, align 8
  %102 = load %struct.rendition*, %struct.rendition** %8, align 8
  %103 = icmp ne %struct.rendition* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  store %struct.rendition* null, %struct.rendition** %4, align 8
  br label %263

105:                                              ; preds = %100
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load %struct.rendition*, %struct.rendition** %8, align 8
  %111 = call i32 @dynarray_add(i32* %107, i32* %109, %struct.rendition* %110)
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.rendition*, %struct.rendition** %8, align 8
  %114 = getelementptr inbounds %struct.rendition, %struct.rendition* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.rendition*, %struct.rendition** %8, align 8
  %116 = getelementptr inbounds %struct.rendition, %struct.rendition* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %119 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @strcpy(i8* %117, i32 %120)
  %122 = load %struct.rendition*, %struct.rendition** %8, align 8
  %123 = getelementptr inbounds %struct.rendition, %struct.rendition* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %126 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @strcpy(i8* %124, i32 %127)
  %129 = load %struct.rendition*, %struct.rendition** %8, align 8
  %130 = getelementptr inbounds %struct.rendition, %struct.rendition* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %133 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @strcpy(i8* %131, i32 %134)
  %136 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %137 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %142, label %167

142:                                              ; preds = %105
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %144 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %145 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = call %struct.TYPE_7__* @new_playlist(%struct.TYPE_6__* %143, i8* %146, i8* %147)
  %149 = load %struct.rendition*, %struct.rendition** %8, align 8
  %150 = getelementptr inbounds %struct.rendition, %struct.rendition* %149, i32 0, i32 5
  store %struct.TYPE_7__* %148, %struct.TYPE_7__** %150, align 8
  %151 = load %struct.rendition*, %struct.rendition** %8, align 8
  %152 = getelementptr inbounds %struct.rendition, %struct.rendition* %151, i32 0, i32 5
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = icmp ne %struct.TYPE_7__* %153, null
  br i1 %154, label %155, label %166

155:                                              ; preds = %142
  %156 = load %struct.rendition*, %struct.rendition** %8, align 8
  %157 = getelementptr inbounds %struct.rendition, %struct.rendition* %156, i32 0, i32 5
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load %struct.rendition*, %struct.rendition** %8, align 8
  %161 = getelementptr inbounds %struct.rendition, %struct.rendition* %160, i32 0, i32 5
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load %struct.rendition*, %struct.rendition** %8, align 8
  %165 = call i32 @dynarray_add(i32* %159, i32* %163, %struct.rendition* %164)
  br label %166

166:                                              ; preds = %155, %142
  br label %167

167:                                              ; preds = %166, %105
  %168 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %169 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %168, i32 0, i32 5
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %207

174:                                              ; preds = %167
  %175 = load %struct.rendition*, %struct.rendition** %8, align 8
  %176 = getelementptr inbounds %struct.rendition, %struct.rendition* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @strlen(i8* %177)
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = icmp ult i64 %180, 5
  br i1 %181, label %182, label %206

182:                                              ; preds = %174
  %183 = load %struct.rendition*, %struct.rendition** %8, align 8
  %184 = getelementptr inbounds %struct.rendition, %struct.rendition* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = load i32, i32* %13, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  store i8 44, i8* %188, align 1
  %189 = load %struct.rendition*, %struct.rendition** %8, align 8
  %190 = getelementptr inbounds %struct.rendition, %struct.rendition* %189, i32 0, i32 2
  %191 = load i8*, i8** %190, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  %196 = ptrtoint i8* %195 to i32
  %197 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %198 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %197, i32 0, i32 5
  %199 = load i64*, i64** %198, align 8
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = sub i64 8, %201
  %203 = sub i64 %202, 2
  %204 = trunc i64 %203 to i32
  %205 = call i32 @strncpy(i32 %196, i64* %199, i32 %204)
  br label %206

206:                                              ; preds = %182, %174
  br label %207

207:                                              ; preds = %206, %167
  %208 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %209 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %208, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %207
  %214 = load i32, i32* @AV_DISPOSITION_DEFAULT, align 4
  %215 = load %struct.rendition*, %struct.rendition** %8, align 8
  %216 = getelementptr inbounds %struct.rendition, %struct.rendition* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %213, %207
  %220 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %221 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %220, i32 0, i32 3
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @strcmp(i8* %222, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %231, label %225

225:                                              ; preds = %219
  %226 = load i32, i32* @AV_DISPOSITION_FORCED, align 4
  %227 = load %struct.rendition*, %struct.rendition** %8, align 8
  %228 = getelementptr inbounds %struct.rendition, %struct.rendition* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  br label %231

231:                                              ; preds = %225, %219
  %232 = load %struct.rendition_info*, %struct.rendition_info** %6, align 8
  %233 = getelementptr inbounds %struct.rendition_info, %struct.rendition_info* %232, i32 0, i32 4
  %234 = load i8*, i8** %233, align 8
  store i8* %234, i8** %11, align 8
  br label %235

235:                                              ; preds = %260, %231
  %236 = load i8*, i8** %11, align 8
  %237 = call i8* @av_strtok(i8* %236, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %12)
  store i8* %237, i8** %10, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %261

239:                                              ; preds = %235
  %240 = load i8*, i8** %10, align 8
  %241 = call i32 @strcmp(i8* %240, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %249, label %243

243:                                              ; preds = %239
  %244 = load i32, i32* @AV_DISPOSITION_HEARING_IMPAIRED, align 4
  %245 = load %struct.rendition*, %struct.rendition** %8, align 8
  %246 = getelementptr inbounds %struct.rendition, %struct.rendition* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 8
  br label %260

249:                                              ; preds = %239
  %250 = load i8*, i8** %10, align 8
  %251 = call i32 @strcmp(i8* %250, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %259, label %253

253:                                              ; preds = %249
  %254 = load i32, i32* @AV_DISPOSITION_VISUAL_IMPAIRED, align 4
  %255 = load %struct.rendition*, %struct.rendition** %8, align 8
  %256 = getelementptr inbounds %struct.rendition, %struct.rendition* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  br label %259

259:                                              ; preds = %253, %249
  br label %260

260:                                              ; preds = %259, %243
  store i8* null, i8** %11, align 8
  br label %235

261:                                              ; preds = %235
  %262 = load %struct.rendition*, %struct.rendition** %8, align 8
  store %struct.rendition* %262, %struct.rendition** %4, align 8
  br label %263

263:                                              ; preds = %261, %104, %90, %72, %52, %44
  %264 = load %struct.rendition*, %struct.rendition** %4, align 8
  ret %struct.rendition* %264
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, ...) #1

declare dso_local %struct.rendition* @av_mallocz(i32) #1

declare dso_local i32 @dynarray_add(i32*, i32*, %struct.rendition*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local %struct.TYPE_7__* @new_playlist(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i32, i64*, i32) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
