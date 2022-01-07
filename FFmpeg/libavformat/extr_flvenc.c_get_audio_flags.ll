; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvenc.c_get_audio_flags.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvenc.c_get_audio_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@FLV_SAMPLESSIZE_16BIT = common dso_local global i32 0, align 4
@FLV_SAMPLESSIZE_8BIT = common dso_local global i32 0, align 4
@AV_CODEC_ID_AAC = common dso_local global i32 0, align 4
@FLV_CODECID_AAC = common dso_local global i32 0, align 4
@FLV_SAMPLERATE_44100HZ = common dso_local global i32 0, align 4
@FLV_STEREO = common dso_local global i32 0, align 4
@AV_CODEC_ID_SPEEX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"FLV only supports wideband (16kHz) Speex audio\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"FLV only supports mono Speex audio\0A\00", align 1
@FLV_CODECID_SPEEX = common dso_local global i32 0, align 4
@FLV_SAMPLERATE_11025HZ = common dso_local global i32 0, align 4
@FLV_SAMPLERATE_22050HZ = common dso_local global i32 0, align 4
@FLV_SAMPLERATE_SPECIAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"FLV does not support sample rate %d, choose from (44100, 22050, 11025)\0A\00", align 1
@FLV_CODECID_MP3 = common dso_local global i32 0, align 4
@FLV_CODECID_PCM = common dso_local global i32 0, align 4
@FLV_CODECID_PCM_LE = common dso_local global i32 0, align 4
@FLV_CODECID_ADPCM = common dso_local global i32 0, align 4
@FLV_CODECID_NELLYMOSER_8KHZ_MONO = common dso_local global i32 0, align 4
@FLV_CODECID_NELLYMOSER_16KHZ_MONO = common dso_local global i32 0, align 4
@FLV_CODECID_NELLYMOSER = common dso_local global i32 0, align 4
@FLV_CODECID_PCM_MULAW = common dso_local global i32 0, align 4
@FLV_CODECID_PCM_ALAW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Audio codec '%s' not compatible with FLV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @get_audio_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_audio_flags(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @FLV_SAMPLESSIZE_16BIT, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @FLV_SAMPLESSIZE_8BIT, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AV_CODEC_ID_AAC, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load i32, i32* @FLV_CODECID_AAC, align 4
  %24 = load i32, i32* @FLV_SAMPLERATE_44100HZ, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @FLV_SAMPLESSIZE_16BIT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FLV_STEREO, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %3, align 4
  br label %216

30:                                               ; preds = %15
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AV_CODEC_ID_SPEEX, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %30
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 16000
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %42, i32 %43, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = call i32 @AVERROR(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %216

47:                                               ; preds = %36
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @AV_LOG_ERROR, align 4
  %55 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %53, i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %3, align 4
  br label %216

58:                                               ; preds = %47
  %59 = load i32, i32* @FLV_CODECID_SPEEX, align 4
  %60 = load i32, i32* @FLV_SAMPLERATE_11025HZ, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @FLV_SAMPLESSIZE_16BIT, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %3, align 4
  br label %216

64:                                               ; preds = %30
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %100 [
    i32 48000, label %68
    i32 44100, label %78
    i32 22050, label %82
    i32 11025, label %86
    i32 16000, label %90
    i32 8000, label %90
    i32 5512, label %90
  ]

68:                                               ; preds = %64
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 134
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @FLV_SAMPLERATE_44100HZ, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %110

77:                                               ; preds = %68
  br label %101

78:                                               ; preds = %64
  %79 = load i32, i32* @FLV_SAMPLERATE_44100HZ, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %110

82:                                               ; preds = %64
  %83 = load i32, i32* @FLV_SAMPLERATE_22050HZ, align 4
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  br label %110

86:                                               ; preds = %64
  %87 = load i32, i32* @FLV_SAMPLERATE_11025HZ, align 4
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %110

90:                                               ; preds = %64, %64, %64
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 134
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @FLV_SAMPLERATE_SPECIAL, align 4
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %110

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %64, %99
  br label %101

101:                                              ; preds = %100, %77
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* @AV_LOG_ERROR, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %102, i32 %103, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = call i32 @AVERROR(i32 %108)
  store i32 %109, i32* %3, align 4
  br label %216

110:                                              ; preds = %95, %86, %82, %78, %73
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* @FLV_STEREO, align 4
  %119 = load i32, i32* %6, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %117, %112
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  switch i32 %124, label %204 [
    i32 134, label %125
    i32 128, label %131
    i32 130, label %137
    i32 129, label %143
    i32 135, label %149
    i32 133, label %155
    i32 131, label %185
    i32 132, label %191
    i32 0, label %197
  ]

125:                                              ; preds = %121
  %126 = load i32, i32* @FLV_CODECID_MP3, align 4
  %127 = load i32, i32* @FLV_SAMPLESSIZE_16BIT, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* %6, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %6, align 4
  br label %214

131:                                              ; preds = %121
  %132 = load i32, i32* @FLV_CODECID_PCM, align 4
  %133 = load i32, i32* @FLV_SAMPLESSIZE_8BIT, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %6, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %6, align 4
  br label %214

137:                                              ; preds = %121
  %138 = load i32, i32* @FLV_CODECID_PCM, align 4
  %139 = load i32, i32* @FLV_SAMPLESSIZE_16BIT, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* %6, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %6, align 4
  br label %214

143:                                              ; preds = %121
  %144 = load i32, i32* @FLV_CODECID_PCM_LE, align 4
  %145 = load i32, i32* @FLV_SAMPLESSIZE_16BIT, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* %6, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %6, align 4
  br label %214

149:                                              ; preds = %121
  %150 = load i32, i32* @FLV_CODECID_ADPCM, align 4
  %151 = load i32, i32* @FLV_SAMPLESSIZE_16BIT, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* %6, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %6, align 4
  br label %214

155:                                              ; preds = %121
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 8000
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load i32, i32* @FLV_CODECID_NELLYMOSER_8KHZ_MONO, align 4
  %162 = load i32, i32* @FLV_SAMPLESSIZE_16BIT, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* %6, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %6, align 4
  br label %184

166:                                              ; preds = %155
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 16000
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load i32, i32* @FLV_CODECID_NELLYMOSER_16KHZ_MONO, align 4
  %173 = load i32, i32* @FLV_SAMPLESSIZE_16BIT, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* %6, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %6, align 4
  br label %183

177:                                              ; preds = %166
  %178 = load i32, i32* @FLV_CODECID_NELLYMOSER, align 4
  %179 = load i32, i32* @FLV_SAMPLESSIZE_16BIT, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* %6, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %6, align 4
  br label %183

183:                                              ; preds = %177, %171
  br label %184

184:                                              ; preds = %183, %160
  br label %214

185:                                              ; preds = %121
  %186 = load i32, i32* @FLV_CODECID_PCM_MULAW, align 4
  %187 = load i32, i32* @FLV_SAMPLERATE_SPECIAL, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @FLV_SAMPLESSIZE_16BIT, align 4
  %190 = or i32 %188, %189
  store i32 %190, i32* %6, align 4
  br label %214

191:                                              ; preds = %121
  %192 = load i32, i32* @FLV_CODECID_PCM_ALAW, align 4
  %193 = load i32, i32* @FLV_SAMPLERATE_SPECIAL, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @FLV_SAMPLESSIZE_16BIT, align 4
  %196 = or i32 %194, %195
  store i32 %196, i32* %6, align 4
  br label %214

197:                                              ; preds = %121
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = shl i32 %200, 4
  %202 = load i32, i32* %6, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %6, align 4
  br label %214

204:                                              ; preds = %121
  %205 = load i32*, i32** %4, align 8
  %206 = load i32, i32* @AV_LOG_ERROR, align 4
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @avcodec_get_name(i32 %209)
  %211 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %205, i32 %206, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* @EINVAL, align 4
  %213 = call i32 @AVERROR(i32 %212)
  store i32 %213, i32* %3, align 4
  br label %216

214:                                              ; preds = %197, %191, %185, %184, %149, %143, %137, %131, %125
  %215 = load i32, i32* %6, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %214, %204, %101, %58, %52, %41, %22
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avcodec_get_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
