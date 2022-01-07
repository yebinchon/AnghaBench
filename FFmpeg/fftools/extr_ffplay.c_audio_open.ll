; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_audio_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_audio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AudioParams = type { i32, i32, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i8*, i32, i32, i64 }

@audio_open.next_nb_channels = internal constant [8 x i32] [i32 0, i32 0, i32 1, i32 6, i32 2, i32 6, i32 4, i32 6], align 16
@audio_open.next_sample_rates = internal constant [5 x i32] [i32 0, i32 44100, i32 48000, i32 96000, i32 192000], align 16
@.str = private unnamed_addr constant [19 x i8] c"SDL_AUDIO_CHANNELS\00", align 1
@AV_CH_LAYOUT_STEREO_DOWNMIX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid sample rate or channel count!\0A\00", align 1
@AUDIO_S16SYS = common dso_local global i32 0, align 4
@SDL_AUDIO_MIN_BUFFER_SIZE = common dso_local global i32 0, align 4
@SDL_AUDIO_MAX_CALLBACKS_PER_SEC = common dso_local global i32 0, align 4
@sdl_audio_callback = common dso_local global i32 0, align 4
@SDL_AUDIO_ALLOW_FREQUENCY_CHANGE = common dso_local global i32 0, align 4
@SDL_AUDIO_ALLOW_CHANNELS_CHANGE = common dso_local global i32 0, align 4
@audio_dev = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"SDL_OpenAudio (%d channels, %d Hz): %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"No more combinations to try, audio open failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"SDL advised audio format %d is not supported!\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"SDL advised channel count %d is not supported!\0A\00", align 1
@AV_SAMPLE_FMT_S16 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"av_samples_get_buffer_size failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, %struct.AudioParams*)* @audio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_open(i8* %0, i32 %1, i32 %2, i32 %3, %struct.AudioParams* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.AudioParams*, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  %13 = alloca %struct.TYPE_4__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.AudioParams* %4, %struct.AudioParams** %11, align 8
  %16 = call i32 @FF_ARRAY_ELEMS(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @audio_open.next_sample_rates, i64 0, i64 0))
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = call i8* @SDL_getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %14, align 8
  %19 = load i8*, i8** %14, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load i8*, i8** %14, align 8
  %23 = call i32 @atoi(i8* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @av_get_default_channel_layout(i32 %24)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %21, %5
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @av_get_channel_layout_nb_channels(i32 %31)
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %29, %26
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @av_get_default_channel_layout(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @AV_CH_LAYOUT_STEREO_DOWNMIX, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %34, %29
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @av_get_channel_layout_nb_channels(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* %10, align 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %41
  %56 = load i32, i32* @AV_LOG_ERROR, align 4
  %57 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %217

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %72, %58
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [5 x i32], [5 x i32]* @audio_open.next_sample_rates, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %66, %68
  br label %70

70:                                               ; preds = %62, %59
  %71 = phi i1 [ false, %59 ], [ %69, %62 ]
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %15, align 4
  br label %59

75:                                               ; preds = %70
  %76 = load i32, i32* @AUDIO_S16SYS, align 4
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 7
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* @SDL_AUDIO_MIN_BUFFER_SIZE, align 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SDL_AUDIO_MAX_CALLBACKS_PER_SEC, align 4
  %83 = sdiv i32 %81, %82
  %84 = call i32 @av_log2(i32 %83)
  %85 = shl i32 2, %84
  %86 = call i32 @FFMAX(i32 %79, i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 6
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* @sdl_audio_callback, align 4
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  store i32 %88, i32* %89, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  store i8* %90, i8** %91, align 8
  br label %92

92:                                               ; preds = %132, %75
  %93 = load i32, i32* @SDL_AUDIO_ALLOW_FREQUENCY_CHANGE, align 4
  %94 = load i32, i32* @SDL_AUDIO_ALLOW_CHANNELS_CHANGE, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @SDL_OpenAudioDevice(i32* null, i32 0, %struct.TYPE_4__* %12, %struct.TYPE_4__* %13, i32 %95)
  store i32 %96, i32* @audio_dev, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br i1 %98, label %99, label %136

99:                                               ; preds = %92
  %100 = load i32, i32* @AV_LOG_WARNING, align 4
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (...) @SDL_GetError()
  %106 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %104, i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @FFMIN(i32 7, i32 %108)
  %110 = getelementptr inbounds [8 x i32], [8 x i32]* @audio_open.next_nb_channels, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %111, i32* %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %132, label %116

116:                                              ; preds = %99
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %15, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* @audio_open.next_sample_rates, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %9, align 4
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %123, i32* %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %116
  %129 = load i32, i32* @AV_LOG_ERROR, align 4
  %130 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %129, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %217

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131, %99
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @av_get_default_channel_layout(i32 %134)
  store i32 %135, i32* %8, align 4
  br label %92

136:                                              ; preds = %92
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @AUDIO_S16SYS, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load i32, i32* @AV_LOG_ERROR, align 4
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %142, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  store i32 -1, i32* %6, align 4
  br label %217

146:                                              ; preds = %136
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %148, %150
  br i1 %151, label %152, label %164

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @av_get_default_channel_layout(i32 %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %152
  %159 = load i32, i32* @AV_LOG_ERROR, align 4
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %159, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %161)
  store i32 -1, i32* %6, align 4
  br label %217

163:                                              ; preds = %152
  br label %164

164:                                              ; preds = %163, %146
  %165 = load i32, i32* @AV_SAMPLE_FMT_S16, align 4
  %166 = load %struct.AudioParams*, %struct.AudioParams** %11, align 8
  %167 = getelementptr inbounds %struct.AudioParams, %struct.AudioParams* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.AudioParams*, %struct.AudioParams** %11, align 8
  %171 = getelementptr inbounds %struct.AudioParams, %struct.AudioParams* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.AudioParams*, %struct.AudioParams** %11, align 8
  %174 = getelementptr inbounds %struct.AudioParams, %struct.AudioParams* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 4
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.AudioParams*, %struct.AudioParams** %11, align 8
  %178 = getelementptr inbounds %struct.AudioParams, %struct.AudioParams* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load %struct.AudioParams*, %struct.AudioParams** %11, align 8
  %180 = getelementptr inbounds %struct.AudioParams, %struct.AudioParams* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.AudioParams*, %struct.AudioParams** %11, align 8
  %183 = getelementptr inbounds %struct.AudioParams, %struct.AudioParams* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = call i8* @av_samples_get_buffer_size(i32* null, i32 %181, i32 1, i32 %184, i32 1)
  %186 = ptrtoint i8* %185 to i64
  %187 = load %struct.AudioParams*, %struct.AudioParams** %11, align 8
  %188 = getelementptr inbounds %struct.AudioParams, %struct.AudioParams* %187, i32 0, i32 2
  store i64 %186, i64* %188, align 8
  %189 = load %struct.AudioParams*, %struct.AudioParams** %11, align 8
  %190 = getelementptr inbounds %struct.AudioParams, %struct.AudioParams* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.AudioParams*, %struct.AudioParams** %11, align 8
  %193 = getelementptr inbounds %struct.AudioParams, %struct.AudioParams* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.AudioParams*, %struct.AudioParams** %11, align 8
  %196 = getelementptr inbounds %struct.AudioParams, %struct.AudioParams* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = call i8* @av_samples_get_buffer_size(i32* null, i32 %191, i32 %194, i32 %197, i32 1)
  %199 = ptrtoint i8* %198 to i64
  %200 = load %struct.AudioParams*, %struct.AudioParams** %11, align 8
  %201 = getelementptr inbounds %struct.AudioParams, %struct.AudioParams* %200, i32 0, i32 3
  store i64 %199, i64* %201, align 8
  %202 = load %struct.AudioParams*, %struct.AudioParams** %11, align 8
  %203 = getelementptr inbounds %struct.AudioParams, %struct.AudioParams* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = icmp sle i64 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %164
  %207 = load %struct.AudioParams*, %struct.AudioParams** %11, align 8
  %208 = getelementptr inbounds %struct.AudioParams, %struct.AudioParams* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp sle i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %206, %164
  %212 = load i32, i32* @AV_LOG_ERROR, align 4
  %213 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %212, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %217

214:                                              ; preds = %206
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  store i32 %216, i32* %6, align 4
  br label %217

217:                                              ; preds = %214, %211, %158, %141, %128, %55
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i8* @SDL_getenv(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @av_get_default_channel_layout(i32) #1

declare dso_local i32 @av_get_channel_layout_nb_channels(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @SDL_OpenAudioDevice(i32*, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @SDL_GetError(...) #1

declare dso_local i64 @FFMIN(i32, i32) #1

declare dso_local i8* @av_samples_get_buffer_size(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
