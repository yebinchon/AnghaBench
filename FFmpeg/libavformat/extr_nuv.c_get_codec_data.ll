; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nuv.c_get_codec_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nuv.c_get_codec_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8*, i8*, i32, i8*, i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ff_codec_bmp_tags = common dso_local global i32 0, align 4
@AV_CODEC_ID_NUV = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid sample rate %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_CODEC_ID_NONE = common dso_local global i32 0, align 4
@nuv_audio_tags = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16LE = common dso_local global i32 0, align 4
@AVSTREAM_PARSE_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32)* @get_codec_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_codec_data(i32* %0, i32* %1, %struct.TYPE_5__* %2, %struct.TYPE_5__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  br label %242

22:                                               ; preds = %18, %5
  br label %23

23:                                               ; preds = %237, %22
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @avio_feof(i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %241

28:                                               ; preds = %23
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @avio_r8(i32* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  switch i32 %31, label %231 [
    i32 130, label %32
    i32 129, label %79
    i32 128, label %230
  ]

32:                                               ; preds = %28
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @avio_r8(i32* %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @avio_skip(i32* %35, i32 6)
  %37 = load i32*, i32** %8, align 8
  %38 = call i8* @avio_rl32(i32* %37)
  %39 = call i32 @PKTSIZE(i8* %38)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %78

42:                                               ; preds = %32
  %43 = load i32, i32* %14, align 4
  %44 = icmp eq i32 %43, 82
  br i1 %44, label %45, label %78

45:                                               ; preds = %42
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 7
  %57 = call i32 @av_freep(i32* %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 6
  store i32 0, i32* %61, align 8
  br label %62

62:                                               ; preds = %52, %45
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @ff_get_extradata(i32* null, %struct.TYPE_6__* %65, i32* %66, i32 %67)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = call i32 @AVERROR(i32 %71)
  store i32 %72, i32* %6, align 4
  br label %242

73:                                               ; preds = %62
  store i32 0, i32* %13, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  br label %242

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %42, %32
  br label %237

79:                                               ; preds = %28
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @avio_skip(i32* %80, i32 7)
  %82 = load i32*, i32** %8, align 8
  %83 = call i8* @avio_rl32(i32* %82)
  %84 = call i32 @PKTSIZE(i8* %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 512
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %237

88:                                               ; preds = %79
  %89 = load i32*, i32** %8, align 8
  %90 = call i8* @avio_rl32(i32* %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %92 = icmp ne %struct.TYPE_5__* %91, null
  br i1 %92, label %93, label %126

93:                                               ; preds = %88
  %94 = load i32*, i32** %8, align 8
  %95 = call i8* @avio_rl32(i32* %94)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  store i8* %95, i8** %99, align 8
  %100 = load i32, i32* @ff_codec_bmp_tags, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i8* @ff_codec_get_id(i32 %100, i8* %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @MKTAG(i8 signext 82, i8 signext 74, i8 signext 80, i8 signext 71)
  %118 = icmp eq i8* %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %93
  %120 = load i32, i32* @AV_CODEC_ID_NUV, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i32 %120, i32* %124, align 8
  br label %125

125:                                              ; preds = %119, %93
  br label %129

126:                                              ; preds = %88
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @avio_skip(i32* %127, i32 4)
  br label %129

129:                                              ; preds = %126, %125
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %131 = icmp ne %struct.TYPE_5__* %130, null
  br i1 %131, label %132, label %221

132:                                              ; preds = %129
  %133 = load i32*, i32** %8, align 8
  %134 = call i8* @avio_rl32(i32* %133)
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  store i8* %134, i8** %138, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = call i8* @avio_rl32(i32* %139)
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 5
  store i8* %140, i8** %144, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 5
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ule i8* %149, null
  br i1 %150, label %151, label %161

151:                                              ; preds = %132
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* @AV_LOG_ERROR, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 5
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @av_log(i32* %152, i32 %153, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %158)
  %160 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %160, i32* %6, align 4
  br label %242

161:                                              ; preds = %132
  %162 = load i32*, i32** %8, align 8
  %163 = call i8* @avio_rl32(i32* %162)
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  store i8* %163, i8** %167, align 8
  %168 = load i32*, i32** %8, align 8
  %169 = call i8* @avio_rl32(i32* %168)
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 4
  store i8* %169, i8** %173, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 3
  store i32 0, i32* %177, align 8
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @ff_wav_codec_get_id(i8* %182, i8* %187)
  store i32 %188, i32* %15, align 4
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* @AV_CODEC_ID_NONE, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %212

192:                                              ; preds = %161
  %193 = load i32, i32* @nuv_audio_tags, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = call i8* @ff_codec_get_id(i32 %193, i8* %198)
  %200 = ptrtoint i8* %199 to i32
  store i32 %200, i32* %15, align 4
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* @AV_CODEC_ID_PCM_S16LE, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %211

204:                                              ; preds = %192
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @ff_get_pcm_codec_id(i8* %209, i32 0, i32 0, i32 -2)
  store i32 %210, i32* %15, align 4
  br label %211

211:                                              ; preds = %204, %192
  br label %212

212:                                              ; preds = %211, %161
  %213 = load i32, i32* %15, align 4
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  store i32 %213, i32* %217, align 8
  %218 = load i32, i32* @AVSTREAM_PARSE_FULL, align 4
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  br label %224

221:                                              ; preds = %129
  %222 = load i32*, i32** %8, align 8
  %223 = call i32 @avio_skip(i32* %222, i32 16)
  br label %224

224:                                              ; preds = %221, %212
  %225 = load i32, i32* %13, align 4
  %226 = sub nsw i32 %225, 24
  store i32 %226, i32* %13, align 4
  %227 = load i32*, i32** %8, align 8
  %228 = load i32, i32* %13, align 4
  %229 = call i32 @avio_skip(i32* %227, i32 %228)
  store i32 0, i32* %6, align 4
  br label %242

230:                                              ; preds = %28
  store i32 11, i32* %13, align 4
  br label %237

231:                                              ; preds = %28
  %232 = load i32*, i32** %8, align 8
  %233 = call i32 @avio_skip(i32* %232, i32 7)
  %234 = load i32*, i32** %8, align 8
  %235 = call i8* @avio_rl32(i32* %234)
  %236 = call i32 @PKTSIZE(i8* %235)
  store i32 %236, i32* %13, align 4
  br label %237

237:                                              ; preds = %231, %230, %87, %78
  %238 = load i32*, i32** %8, align 8
  %239 = load i32, i32* %13, align 4
  %240 = call i32 @avio_skip(i32* %238, i32 %239)
  br label %23

241:                                              ; preds = %23
  store i32 0, i32* %6, align 4
  br label %242

242:                                              ; preds = %241, %224, %151, %76, %70, %21
  %243 = load i32, i32* %6, align 4
  ret i32 %243
}

declare dso_local i32 @avio_feof(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @PKTSIZE(i8*) #1

declare dso_local i8* @avio_rl32(i32*) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @ff_get_extradata(i32*, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @ff_codec_get_id(i32, i8*) #1

declare dso_local i8* @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*) #1

declare dso_local i32 @ff_wav_codec_get_id(i8*, i8*) #1

declare dso_local i32 @ff_get_pcm_codec_id(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
