; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_audio_mixer.c_task_push_audio_mixer_load_and_play.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_audio_mixer.c_task_push_audio_mixer_load_and_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_mixer_userdata = type { i32, i32, i32, i32, %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata*, i32, i32, %struct.audio_mixer_userdata*, i32, i32*, i32, i32, i32 }
%struct.audio_mixer_handle = type { i32, i32, i32, i32, %struct.audio_mixer_handle*, %struct.audio_mixer_handle*, %struct.audio_mixer_handle*, i32, i32, %struct.audio_mixer_handle*, i32, i32*, i32, i32, i32 }

@NBIO_TYPE_NONE = common dso_local global i32 0, align 4
@AUDIO_MIXER_TYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".wav\00", align 1
@AUDIO_MIXER_TYPE_WAV = common dso_local global i32 0, align 4
@NBIO_TYPE_WAV = common dso_local global i32 0, align 4
@task_audio_mixer_handle_upload_wav_and_play = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".ogg\00", align 1
@AUDIO_MIXER_TYPE_OGG = common dso_local global i32 0, align 4
@NBIO_TYPE_OGG = common dso_local global i32 0, align 4
@task_audio_mixer_handle_upload_ogg_and_play = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c".mp3\00", align 1
@AUDIO_MIXER_TYPE_MP3 = common dso_local global i32 0, align 4
@NBIO_TYPE_MP3 = common dso_local global i32 0, align 4
@task_audio_mixer_handle_upload_mp3_and_play = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c".flac\00", align 1
@AUDIO_MIXER_TYPE_FLAC = common dso_local global i32 0, align 4
@NBIO_TYPE_FLAC = common dso_local global i32 0, align 4
@task_audio_mixer_handle_upload_flac_and_play = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c".mod\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".s3m\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c".xm\00", align 1
@AUDIO_MIXER_TYPE_MOD = common dso_local global i32 0, align 4
@NBIO_TYPE_MOD = common dso_local global i32 0, align 4
@task_audio_mixer_handle_upload_mod_and_play = common dso_local global i32 0, align 4
@AUDIO_STREAM_TYPE_SYSTEM = common dso_local global i32 0, align 4
@AUDIO_STREAM_TYPE_USER = common dso_local global i32 0, align 4
@cb_nbio_audio_mixer_load = common dso_local global i32 0, align 4
@NBIO_STATUS_INIT = common dso_local global i32 0, align 4
@task_file_load_handler = common dso_local global i32 0, align 4
@task_audio_mixer_load_free = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"[audio mixer load] Failed to open '%s': %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_push_audio_mixer_load_and_play(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.audio_mixer_userdata*, align 8
  %15 = alloca %struct.audio_mixer_handle*, align 8
  %16 = alloca %struct.audio_mixer_userdata*, align 8
  %17 = alloca %struct.audio_mixer_userdata*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.audio_mixer_userdata* null, %struct.audio_mixer_userdata** %14, align 8
  store %struct.audio_mixer_handle* null, %struct.audio_mixer_handle** %15, align 8
  %18 = call %struct.audio_mixer_userdata* (...) @task_init()
  store %struct.audio_mixer_userdata* %18, %struct.audio_mixer_userdata** %16, align 8
  %19 = call i64 @calloc(i32 1, i32 88)
  %20 = inttoptr i64 %19 to %struct.audio_mixer_userdata*
  store %struct.audio_mixer_userdata* %20, %struct.audio_mixer_userdata** %17, align 8
  %21 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %22 = icmp ne %struct.audio_mixer_userdata* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %17, align 8
  %25 = icmp ne %struct.audio_mixer_userdata* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %6
  br label %182

27:                                               ; preds = %23
  %28 = call i64 @calloc(i32 1, i32 88)
  %29 = inttoptr i64 %28 to %struct.audio_mixer_userdata*
  store %struct.audio_mixer_userdata* %29, %struct.audio_mixer_userdata** %14, align 8
  %30 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %31 = icmp ne %struct.audio_mixer_userdata* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %182

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = call %struct.audio_mixer_userdata* @strdup(i8* %34)
  %36 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %37 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %36, i32 0, i32 5
  store %struct.audio_mixer_userdata* %35, %struct.audio_mixer_userdata** %37, align 8
  %38 = call i64 @calloc(i32 1, i32 88)
  %39 = inttoptr i64 %38 to %struct.audio_mixer_handle*
  store %struct.audio_mixer_handle* %39, %struct.audio_mixer_handle** %15, align 8
  %40 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %41 = icmp ne %struct.audio_mixer_handle* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %182

43:                                               ; preds = %33
  %44 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %45 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %47 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %46, i32 0, i32 5
  %48 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %47, align 8
  %49 = bitcast %struct.audio_mixer_handle* %48 to %struct.audio_mixer_userdata*
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @strlcpy(%struct.audio_mixer_userdata* %49, i8* %50, i32 8)
  %52 = load i32, i32* @NBIO_TYPE_NONE, align 4
  %53 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %54 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %53, i32 0, i32 14
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @AUDIO_MIXER_TYPE_NONE, align 4
  %56 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %57 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %56, i32 0, i32 14
  store i32 %55, i32* %57, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i64 @strstr(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %43
  %62 = load i32, i32* @AUDIO_MIXER_TYPE_WAV, align 4
  %63 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %64 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %63, i32 0, i32 14
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @NBIO_TYPE_WAV, align 4
  %66 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %67 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %66, i32 0, i32 14
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @task_audio_mixer_handle_upload_wav_and_play, align 4
  %69 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %70 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %69, i32 0, i32 13
  store i32 %68, i32* %70, align 4
  br label %139

71:                                               ; preds = %43
  %72 = load i8*, i8** %8, align 8
  %73 = call i64 @strstr(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load i32, i32* @AUDIO_MIXER_TYPE_OGG, align 4
  %77 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %78 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %77, i32 0, i32 14
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @NBIO_TYPE_OGG, align 4
  %80 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %81 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %80, i32 0, i32 14
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @task_audio_mixer_handle_upload_ogg_and_play, align 4
  %83 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %84 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %83, i32 0, i32 13
  store i32 %82, i32* %84, align 4
  br label %138

85:                                               ; preds = %71
  %86 = load i8*, i8** %8, align 8
  %87 = call i64 @strstr(i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i32, i32* @AUDIO_MIXER_TYPE_MP3, align 4
  %91 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %92 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %91, i32 0, i32 14
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @NBIO_TYPE_MP3, align 4
  %94 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %95 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %94, i32 0, i32 14
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @task_audio_mixer_handle_upload_mp3_and_play, align 4
  %97 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %98 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %97, i32 0, i32 13
  store i32 %96, i32* %98, align 4
  br label %137

99:                                               ; preds = %85
  %100 = load i8*, i8** %8, align 8
  %101 = call i64 @strstr(i8* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load i32, i32* @AUDIO_MIXER_TYPE_FLAC, align 4
  %105 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %106 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %105, i32 0, i32 14
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @NBIO_TYPE_FLAC, align 4
  %108 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %109 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %108, i32 0, i32 14
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @task_audio_mixer_handle_upload_flac_and_play, align 4
  %111 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %112 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %111, i32 0, i32 13
  store i32 %110, i32* %112, align 4
  br label %136

113:                                              ; preds = %99
  %114 = load i8*, i8** %8, align 8
  %115 = call i64 @strstr(i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %113
  %118 = load i8*, i8** %8, align 8
  %119 = call i64 @strstr(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i8*, i8** %8, align 8
  %123 = call i64 @strstr(i8* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %121, %117, %113
  %126 = load i32, i32* @AUDIO_MIXER_TYPE_MOD, align 4
  %127 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %128 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %127, i32 0, i32 14
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @NBIO_TYPE_MOD, align 4
  %130 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %131 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %130, i32 0, i32 14
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* @task_audio_mixer_handle_upload_mod_and_play, align 4
  %133 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %134 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %133, i32 0, i32 13
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %125, %121
  br label %136

136:                                              ; preds = %135, %103
  br label %137

137:                                              ; preds = %136, %89
  br label %138

138:                                              ; preds = %137, %75
  br label %139

139:                                              ; preds = %138, %61
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32, i32* @AUDIO_STREAM_TYPE_SYSTEM, align 4
  %144 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %17, align 8
  %145 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %144, i32 0, i32 12
  store i32 %143, i32* %145, align 8
  br label %150

146:                                              ; preds = %139
  %147 = load i32, i32* @AUDIO_STREAM_TYPE_USER, align 4
  %148 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %17, align 8
  %149 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %148, i32 0, i32 12
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %146, %142
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %17, align 8
  %153 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %17, align 8
  %156 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %158 = bitcast %struct.audio_mixer_handle* %157 to %struct.audio_mixer_userdata*
  %159 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %160 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %159, i32 0, i32 4
  store %struct.audio_mixer_userdata* %158, %struct.audio_mixer_userdata** %160, align 8
  %161 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %162 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  %163 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %164 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %163, i32 0, i32 11
  store i32* @cb_nbio_audio_mixer_load, i32** %164, align 8
  %165 = load i32, i32* @NBIO_STATUS_INIT, align 4
  %166 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %167 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %166, i32 0, i32 10
  store i32 %165, i32* %167, align 8
  %168 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %169 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %170 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %169, i32 0, i32 9
  store %struct.audio_mixer_userdata* %168, %struct.audio_mixer_userdata** %170, align 8
  %171 = load i32, i32* @task_file_load_handler, align 4
  %172 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %173 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %172, i32 0, i32 8
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* @task_audio_mixer_load_free, align 4
  %175 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %176 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %175, i32 0, i32 7
  store i32 %174, i32* %176, align 8
  %177 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %17, align 8
  %178 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %179 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %178, i32 0, i32 6
  store %struct.audio_mixer_userdata* %177, %struct.audio_mixer_userdata** %179, align 8
  %180 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %181 = call i32 @task_queue_push(%struct.audio_mixer_userdata* %180)
  store i32 1, i32* %7, align 4
  br label %230

182:                                              ; preds = %42, %32, %26
  %183 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %184 = icmp ne %struct.audio_mixer_userdata* %183, null
  br i1 %184, label %185, label %213

185:                                              ; preds = %182
  %186 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %187 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %186, i32 0, i32 5
  %188 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %187, align 8
  %189 = call i32 @string_is_empty(%struct.audio_mixer_userdata* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %185
  %192 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %193 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %192, i32 0, i32 5
  %194 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %193, align 8
  %195 = call i32 @free(%struct.audio_mixer_userdata* %194)
  br label %196

196:                                              ; preds = %191, %185
  %197 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %198 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %197, i32 0, i32 4
  %199 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %198, align 8
  %200 = icmp ne %struct.audio_mixer_userdata* %199, null
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %203 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %202, i32 0, i32 4
  %204 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %203, align 8
  %205 = call i32 @free(%struct.audio_mixer_userdata* %204)
  br label %206

206:                                              ; preds = %201, %196
  %207 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %208 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @nbio_free(i32 %209)
  %211 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %212 = call i32 @free(%struct.audio_mixer_userdata* %211)
  br label %213

213:                                              ; preds = %206, %182
  %214 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %17, align 8
  %215 = icmp ne %struct.audio_mixer_userdata* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %17, align 8
  %218 = call i32 @free(%struct.audio_mixer_userdata* %217)
  br label %219

219:                                              ; preds = %216, %213
  %220 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %221 = icmp ne %struct.audio_mixer_userdata* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %224 = call i32 @free(%struct.audio_mixer_userdata* %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i8*, i8** %8, align 8
  %227 = load i32, i32* @errno, align 4
  %228 = call i32 @strerror(i32 %227)
  %229 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %226, i32 %228)
  store i32 0, i32* %7, align 4
  br label %230

230:                                              ; preds = %225, %150
  %231 = load i32, i32* %7, align 4
  ret i32 %231
}

declare dso_local %struct.audio_mixer_userdata* @task_init(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local %struct.audio_mixer_userdata* @strdup(i8*) #1

declare dso_local i32 @strlcpy(%struct.audio_mixer_userdata*, i8*, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @task_queue_push(%struct.audio_mixer_userdata*) #1

declare dso_local i32 @string_is_empty(%struct.audio_mixer_userdata*) #1

declare dso_local i32 @free(%struct.audio_mixer_userdata*) #1

declare dso_local i32 @nbio_free(i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
