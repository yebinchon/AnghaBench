; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_audio_mixer.c_task_push_audio_mixer_load.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_audio_mixer.c_task_push_audio_mixer_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_mixer_userdata = type { i32, i32, i32, i32, %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata*, i32, i32, %struct.audio_mixer_userdata*, i32, i32, i32*, i32, i32 }
%struct.audio_mixer_handle = type { i32, i32, i32, i32, %struct.audio_mixer_handle*, %struct.audio_mixer_handle*, %struct.audio_mixer_handle*, i32, i32, %struct.audio_mixer_handle*, i32, i32, i32*, i32, i32 }

@NBIO_TYPE_NONE = common dso_local global i32 0, align 4
@AUDIO_MIXER_TYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".wav\00", align 1
@AUDIO_MIXER_TYPE_WAV = common dso_local global i32 0, align 4
@NBIO_TYPE_WAV = common dso_local global i32 0, align 4
@task_audio_mixer_handle_upload_wav = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".ogg\00", align 1
@AUDIO_MIXER_TYPE_OGG = common dso_local global i32 0, align 4
@NBIO_TYPE_OGG = common dso_local global i32 0, align 4
@task_audio_mixer_handle_upload_ogg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c".mp3\00", align 1
@AUDIO_MIXER_TYPE_MP3 = common dso_local global i32 0, align 4
@NBIO_TYPE_MP3 = common dso_local global i32 0, align 4
@task_audio_mixer_handle_upload_mp3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c".flac\00", align 1
@AUDIO_MIXER_TYPE_FLAC = common dso_local global i32 0, align 4
@NBIO_TYPE_FLAC = common dso_local global i32 0, align 4
@task_audio_mixer_handle_upload_flac = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c".mod\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".s3m\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c".xm\00", align 1
@AUDIO_MIXER_TYPE_MOD = common dso_local global i32 0, align 4
@NBIO_TYPE_MOD = common dso_local global i32 0, align 4
@task_audio_mixer_handle_upload_mod = common dso_local global i32 0, align 4
@cb_nbio_audio_mixer_load = common dso_local global i32 0, align 4
@NBIO_STATUS_INIT = common dso_local global i32 0, align 4
@AUDIO_STREAM_TYPE_SYSTEM = common dso_local global i32 0, align 4
@AUDIO_STREAM_TYPE_USER = common dso_local global i32 0, align 4
@task_file_load_handler = common dso_local global i32 0, align 4
@task_audio_mixer_load_free = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"[audio mixer load] Failed to open '%s': %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_push_audio_mixer_load(i8* %0, i32* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.audio_mixer_userdata*, align 8
  %15 = alloca %struct.audio_mixer_handle*, align 8
  %16 = alloca %struct.audio_mixer_userdata*, align 8
  %17 = alloca %struct.audio_mixer_userdata*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.audio_mixer_userdata* null, %struct.audio_mixer_userdata** %14, align 8
  store %struct.audio_mixer_handle* null, %struct.audio_mixer_handle** %15, align 8
  %18 = call %struct.audio_mixer_userdata* (...) @task_init()
  store %struct.audio_mixer_userdata* %18, %struct.audio_mixer_userdata** %16, align 8
  %19 = call i64 @calloc(i32 1, i32 80)
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
  br label %185

27:                                               ; preds = %23
  %28 = call i64 @calloc(i32 1, i32 80)
  %29 = inttoptr i64 %28 to %struct.audio_mixer_userdata*
  store %struct.audio_mixer_userdata* %29, %struct.audio_mixer_userdata** %14, align 8
  %30 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %31 = icmp ne %struct.audio_mixer_userdata* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %185

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = call %struct.audio_mixer_userdata* @strdup(i8* %34)
  %36 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %37 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %36, i32 0, i32 5
  store %struct.audio_mixer_userdata* %35, %struct.audio_mixer_userdata** %37, align 8
  %38 = call i64 @calloc(i32 1, i32 80)
  %39 = inttoptr i64 %38 to %struct.audio_mixer_handle*
  store %struct.audio_mixer_handle* %39, %struct.audio_mixer_handle** %15, align 8
  %40 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %41 = icmp ne %struct.audio_mixer_handle* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %185

43:                                               ; preds = %33
  %44 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %45 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %48 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %47, i32 0, i32 12
  store i32* %46, i32** %48, align 8
  %49 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %50 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %49, i32 0, i32 5
  %51 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %50, align 8
  %52 = bitcast %struct.audio_mixer_handle* %51 to %struct.audio_mixer_userdata*
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @strlcpy(%struct.audio_mixer_userdata* %52, i8* %53, i32 8)
  %55 = load i32, i32* @NBIO_TYPE_NONE, align 4
  %56 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %57 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %56, i32 0, i32 14
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @AUDIO_MIXER_TYPE_NONE, align 4
  %59 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %60 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %59, i32 0, i32 14
  store i32 %58, i32* %60, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = call i64 @strstr(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %43
  %65 = load i32, i32* @AUDIO_MIXER_TYPE_WAV, align 4
  %66 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %67 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %66, i32 0, i32 14
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @NBIO_TYPE_WAV, align 4
  %69 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %70 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %69, i32 0, i32 14
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @task_audio_mixer_handle_upload_wav, align 4
  %72 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %73 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %72, i32 0, i32 13
  store i32 %71, i32* %73, align 8
  br label %142

74:                                               ; preds = %43
  %75 = load i8*, i8** %8, align 8
  %76 = call i64 @strstr(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i32, i32* @AUDIO_MIXER_TYPE_OGG, align 4
  %80 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %81 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %80, i32 0, i32 14
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @NBIO_TYPE_OGG, align 4
  %83 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %84 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %83, i32 0, i32 14
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @task_audio_mixer_handle_upload_ogg, align 4
  %86 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %87 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %86, i32 0, i32 13
  store i32 %85, i32* %87, align 8
  br label %141

88:                                               ; preds = %74
  %89 = load i8*, i8** %8, align 8
  %90 = call i64 @strstr(i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load i32, i32* @AUDIO_MIXER_TYPE_MP3, align 4
  %94 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %95 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %94, i32 0, i32 14
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @NBIO_TYPE_MP3, align 4
  %97 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %98 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %97, i32 0, i32 14
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @task_audio_mixer_handle_upload_mp3, align 4
  %100 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %101 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %100, i32 0, i32 13
  store i32 %99, i32* %101, align 8
  br label %140

102:                                              ; preds = %88
  %103 = load i8*, i8** %8, align 8
  %104 = call i64 @strstr(i8* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = load i32, i32* @AUDIO_MIXER_TYPE_FLAC, align 4
  %108 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %109 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %108, i32 0, i32 14
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @NBIO_TYPE_FLAC, align 4
  %111 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %112 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %111, i32 0, i32 14
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @task_audio_mixer_handle_upload_flac, align 4
  %114 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %115 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %114, i32 0, i32 13
  store i32 %113, i32* %115, align 8
  br label %139

116:                                              ; preds = %102
  %117 = load i8*, i8** %8, align 8
  %118 = call i64 @strstr(i8* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  %121 = load i8*, i8** %8, align 8
  %122 = call i64 @strstr(i8* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i8*, i8** %8, align 8
  %126 = call i64 @strstr(i8* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %124, %120, %116
  %129 = load i32, i32* @AUDIO_MIXER_TYPE_MOD, align 4
  %130 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %131 = getelementptr inbounds %struct.audio_mixer_handle, %struct.audio_mixer_handle* %130, i32 0, i32 14
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @NBIO_TYPE_MOD, align 4
  %133 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %134 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %133, i32 0, i32 14
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @task_audio_mixer_handle_upload_mod, align 4
  %136 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %137 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %136, i32 0, i32 13
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %128, %124
  br label %139

139:                                              ; preds = %138, %106
  br label %140

140:                                              ; preds = %139, %92
  br label %141

141:                                              ; preds = %140, %78
  br label %142

142:                                              ; preds = %141, %64
  %143 = load %struct.audio_mixer_handle*, %struct.audio_mixer_handle** %15, align 8
  %144 = bitcast %struct.audio_mixer_handle* %143 to %struct.audio_mixer_userdata*
  %145 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %146 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %145, i32 0, i32 4
  store %struct.audio_mixer_userdata* %144, %struct.audio_mixer_userdata** %146, align 8
  %147 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %148 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  %149 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %150 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %149, i32 0, i32 12
  store i32* @cb_nbio_audio_mixer_load, i32** %150, align 8
  %151 = load i32, i32* @NBIO_STATUS_INIT, align 4
  %152 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %153 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %152, i32 0, i32 11
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %142
  %157 = load i32, i32* @AUDIO_STREAM_TYPE_SYSTEM, align 4
  %158 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %17, align 8
  %159 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %158, i32 0, i32 10
  store i32 %157, i32* %159, align 8
  br label %164

160:                                              ; preds = %142
  %161 = load i32, i32* @AUDIO_STREAM_TYPE_USER, align 4
  %162 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %17, align 8
  %163 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %162, i32 0, i32 10
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %160, %156
  %165 = load i32, i32* %12, align 4
  %166 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %17, align 8
  %167 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %17, align 8
  %170 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  %171 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %172 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %173 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %172, i32 0, i32 9
  store %struct.audio_mixer_userdata* %171, %struct.audio_mixer_userdata** %173, align 8
  %174 = load i32, i32* @task_file_load_handler, align 4
  %175 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %176 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %175, i32 0, i32 8
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* @task_audio_mixer_load_free, align 4
  %178 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %179 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %178, i32 0, i32 7
  store i32 %177, i32* %179, align 8
  %180 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %17, align 8
  %181 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %182 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %181, i32 0, i32 6
  store %struct.audio_mixer_userdata* %180, %struct.audio_mixer_userdata** %182, align 8
  %183 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %184 = call i32 @task_queue_push(%struct.audio_mixer_userdata* %183)
  store i32 1, i32* %7, align 4
  br label %233

185:                                              ; preds = %42, %32, %26
  %186 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %187 = icmp ne %struct.audio_mixer_userdata* %186, null
  br i1 %187, label %188, label %216

188:                                              ; preds = %185
  %189 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %190 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %189, i32 0, i32 5
  %191 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %190, align 8
  %192 = call i32 @string_is_empty(%struct.audio_mixer_userdata* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %188
  %195 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %196 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %195, i32 0, i32 5
  %197 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %196, align 8
  %198 = call i32 @free(%struct.audio_mixer_userdata* %197)
  br label %199

199:                                              ; preds = %194, %188
  %200 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %201 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %200, i32 0, i32 4
  %202 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %201, align 8
  %203 = icmp ne %struct.audio_mixer_userdata* %202, null
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %206 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %205, i32 0, i32 4
  %207 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %206, align 8
  %208 = call i32 @free(%struct.audio_mixer_userdata* %207)
  br label %209

209:                                              ; preds = %204, %199
  %210 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %211 = getelementptr inbounds %struct.audio_mixer_userdata, %struct.audio_mixer_userdata* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @nbio_free(i32 %212)
  %214 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %14, align 8
  %215 = call i32 @free(%struct.audio_mixer_userdata* %214)
  br label %216

216:                                              ; preds = %209, %185
  %217 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %17, align 8
  %218 = icmp ne %struct.audio_mixer_userdata* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %17, align 8
  %221 = call i32 @free(%struct.audio_mixer_userdata* %220)
  br label %222

222:                                              ; preds = %219, %216
  %223 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %224 = icmp ne %struct.audio_mixer_userdata* %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load %struct.audio_mixer_userdata*, %struct.audio_mixer_userdata** %16, align 8
  %227 = call i32 @free(%struct.audio_mixer_userdata* %226)
  br label %228

228:                                              ; preds = %225, %222
  %229 = load i8*, i8** %8, align 8
  %230 = load i32, i32* @errno, align 4
  %231 = call i32 @strerror(i32 %230)
  %232 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %229, i32 %231)
  store i32 0, i32* %7, align 4
  br label %233

233:                                              ; preds = %228, %164
  %234 = load i32, i32* %7, align 4
  ret i32 %234
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
