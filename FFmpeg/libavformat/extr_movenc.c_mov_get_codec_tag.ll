; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_get_codec_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_get_codec_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64, i64 }

@FF_COMPLIANCE_NORMAL = common dso_local global i64 0, align 8
@AV_CODEC_ID_DVVIDEO = common dso_local global i64 0, align 8
@AV_CODEC_ID_RAWVIDEO = common dso_local global i64 0, align 8
@AV_CODEC_ID_H263 = common dso_local global i64 0, align 8
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@AV_CODEC_ID_DNXHD = common dso_local global i64 0, align 8
@AV_CODEC_ID_MPEG2VIDEO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@ff_codec_movvideo_tags = common dso_local global i32 0, align 4
@ff_codec_bmp_tags = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Using MS style video codec tag, the file may be unplayable!\0A\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@ff_codec_movaudio_tags = common dso_local global i32 0, align 4
@ff_codec_wav_tags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Using MS style audio codec tag, the file may be unplayable!\0A\00", align 1
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@ff_codec_movsubtitle_tags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @mov_get_codec_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_get_codec_tag(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %76

14:                                               ; preds = %2
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FF_COMPLIANCE_NORMAL, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %239

20:                                               ; preds = %14
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AV_CODEC_ID_DVVIDEO, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %76, label %28

28:                                               ; preds = %20
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AV_CODEC_ID_RAWVIDEO, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %76, label %36

36:                                               ; preds = %28
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AV_CODEC_ID_H263, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %76, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %76, label %52

52:                                               ; preds = %44
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AV_CODEC_ID_DNXHD, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %76, label %60

60:                                               ; preds = %52
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AV_CODEC_ID_MPEG2VIDEO, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @av_get_bits_per_sample(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %239

76:                                               ; preds = %68, %60, %52, %44, %36, %28, %20, %2
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AV_CODEC_ID_DVVIDEO, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %87 = call i32 @mov_get_dv_codec_tag(%struct.TYPE_19__* %85, %struct.TYPE_18__* %86)
  store i32 %87, i32* %5, align 4
  br label %238

88:                                               ; preds = %76
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AV_CODEC_ID_RAWVIDEO, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %99 = call i32 @mov_get_rawvideo_codec_tag(%struct.TYPE_19__* %97, %struct.TYPE_18__* %98)
  store i32 %99, i32* %5, align 4
  br label %237

100:                                              ; preds = %88
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @AV_CODEC_ID_MPEG2VIDEO, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %111 = call i32 @mov_get_mpeg2_xdcam_codec_tag(%struct.TYPE_19__* %109, %struct.TYPE_18__* %110)
  store i32 %111, i32* %5, align 4
  br label %236

112:                                              ; preds = %100
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %112
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %123 = call i32 @mov_get_h264_codec_tag(%struct.TYPE_19__* %121, %struct.TYPE_18__* %122)
  store i32 %123, i32* %5, align 4
  br label %235

124:                                              ; preds = %112
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @AV_CODEC_ID_DNXHD, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %135 = call i32 @mov_get_dnxhd_codec_tag(%struct.TYPE_19__* %133, %struct.TYPE_18__* %134)
  store i32 %135, i32* %5, align 4
  br label %234

136:                                              ; preds = %124
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %172

144:                                              ; preds = %136
  %145 = load i32, i32* @ff_codec_movvideo_tags, align 4
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i8* @ff_codec_get_tag(i32 %145, i64 %150)
  %152 = ptrtoint i8* %151 to i32
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* %5, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %171, label %155

155:                                              ; preds = %144
  %156 = load i32, i32* @ff_codec_bmp_tags, align 4
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i8* @ff_codec_get_tag(i32 %156, i64 %161)
  %163 = ptrtoint i8* %162 to i32
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %155
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %168 = load i32, i32* @AV_LOG_WARNING, align 4
  %169 = call i32 @av_log(%struct.TYPE_19__* %167, i32 %168, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %170

170:                                              ; preds = %166, %155
  br label %171

171:                                              ; preds = %170, %144
  br label %233

172:                                              ; preds = %136
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %214

180:                                              ; preds = %172
  %181 = load i32, i32* @ff_codec_movaudio_tags, align 4
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i8* @ff_codec_get_tag(i32 %181, i64 %186)
  %188 = ptrtoint i8* %187 to i32
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %5, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %213, label %191

191:                                              ; preds = %180
  %192 = load i32, i32* @ff_codec_wav_tags, align 4
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i8* @ff_codec_get_tag(i32 %192, i64 %197)
  %199 = ptrtoint i8* %198 to i32
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %191
  %203 = load i32, i32* %6, align 4
  %204 = ashr i32 %203, 8
  %205 = and i32 %204, 255
  %206 = load i32, i32* %6, align 4
  %207 = and i32 %206, 255
  %208 = call i32 @MKTAG(i8 signext 109, i8 signext 115, i32 %205, i32 %207)
  store i32 %208, i32* %5, align 4
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %210 = load i32, i32* @AV_LOG_WARNING, align 4
  %211 = call i32 @av_log(%struct.TYPE_19__* %209, i32 %210, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %212

212:                                              ; preds = %202, %191
  br label %213

213:                                              ; preds = %212, %180
  br label %232

214:                                              ; preds = %172
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %231

222:                                              ; preds = %214
  %223 = load i32, i32* @ff_codec_movsubtitle_tags, align 4
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = call i8* @ff_codec_get_tag(i32 %223, i64 %228)
  %230 = ptrtoint i8* %229 to i32
  store i32 %230, i32* %5, align 4
  br label %231

231:                                              ; preds = %222, %214
  br label %232

232:                                              ; preds = %231, %213
  br label %233

233:                                              ; preds = %232, %171
  br label %234

234:                                              ; preds = %233, %132
  br label %235

235:                                              ; preds = %234, %120
  br label %236

236:                                              ; preds = %235, %108
  br label %237

237:                                              ; preds = %236, %96
  br label %238

238:                                              ; preds = %237, %84
  br label %239

239:                                              ; preds = %238, %68, %14
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local i64 @av_get_bits_per_sample(i64) #1

declare dso_local i32 @mov_get_dv_codec_tag(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @mov_get_rawvideo_codec_tag(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @mov_get_mpeg2_xdcam_codec_tag(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @mov_get_h264_codec_tag(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @mov_get_dnxhd_codec_tag(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i8* @ff_codec_get_tag(i32, i64) #1

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
