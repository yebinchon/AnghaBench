; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_codecprivate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_codecprivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64, i64, i32 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@ff_codec_movvideo_tags = common dso_local global i32 0, align 4
@ff_codec_bmp_tags = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"codec %s is not supported by this format\0A\00", align 1
@AV_CODEC_ID_RAWVIDEO = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"No bmp codec tag found for codec %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@ff_codec_wav_tags = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"No wav codec tag found for codec %s\0A\00", align 1
@FF_PUT_WAV_HEADER_FORCE_WAVEFORMATEX = common dso_local global i32 0, align 4
@MATROSKA_ID_CODECPRIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__*, i32, i32)* @mkv_write_codecprivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_write_codecprivate(i32* %0, i32* %1, %struct.TYPE_6__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = call i32 @avio_open_dyn_buf(i32** %12)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %6, align 4
  br label %225

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @mkv_write_native_codecprivate(i32* %27, i32* %28, %struct.TYPE_6__* %29, i32* %30)
  store i32 %31, i32* %14, align 4
  br label %210

32:                                               ; preds = %23
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %168

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %113

41:                                               ; preds = %38
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ff_codec_movvideo_tags, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @ff_codec_get_tag(i32 %47, i64 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %46, %41
  %56 = load i32, i32* @ff_codec_movvideo_tags, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @ff_codec_get_id(i32 %56, i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %104

65:                                               ; preds = %55
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load i32, i32* @ff_codec_movvideo_tags, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 4
  %76 = call i32 @AV_RL32(i32 %75)
  %77 = call i64 @ff_codec_get_id(i32 %71, i32 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %70, %65
  %83 = load i32*, i32** %12, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 90, %86
  %88 = call i32 @avio_wb32(i32* %83, i64 %87)
  %89 = load i32*, i32** %12, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @avio_wl32(i32* %89, i32 %92)
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %100, %82
  %95 = load i32, i32* %16, align 4
  %96 = icmp slt i32 %95, 82
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @avio_w8(i32* %98, i32 0)
  br label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %94

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103, %70, %55
  %105 = load i32*, i32** %12, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @avio_write(i32* %105, i32 %108, i64 %111)
  br label %167

113:                                              ; preds = %38
  %114 = load i32, i32* @ff_codec_bmp_tags, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i8* @ff_codec_get_tag(i32 %114, i64 %117)
  %119 = icmp ne i8* %118, null
  br i1 %119, label %128, label %120

120:                                              ; preds = %113
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* @AV_LOG_WARNING, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @avcodec_get_name(i64 %125)
  %127 = call i32 @av_log(i32* %121, i32 %122, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %120, %113
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* @ff_codec_bmp_tags, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = call i8* @ff_codec_get_tag(i32 %134, i64 %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %133, %128
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %163, label %147

147:                                              ; preds = %142
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @AV_CODEC_ID_RAWVIDEO, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %147
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* @AV_LOG_ERROR, align 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @avcodec_get_name(i64 %158)
  %160 = call i32 @av_log(i32* %154, i32 %155, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* @EINVAL, align 4
  %162 = call i32 @AVERROR(i32 %161)
  store i32 %162, i32* %14, align 4
  br label %163

163:                                              ; preds = %153, %147, %142
  %164 = load i32*, i32** %12, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %166 = call i32 @ff_put_bmp_header(i32* %164, %struct.TYPE_6__* %165, i32 0, i32 0)
  br label %167

167:                                              ; preds = %163, %104
  br label %209

168:                                              ; preds = %32
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %208

174:                                              ; preds = %168
  %175 = load i32, i32* @ff_codec_wav_tags, align 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = call i8* @ff_codec_get_tag(i32 %175, i64 %178)
  %180 = ptrtoint i8* %179 to i32
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* %17, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %193, label %183

183:                                              ; preds = %174
  %184 = load i32*, i32** %7, align 8
  %185 = load i32, i32* @AV_LOG_ERROR, align 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @avcodec_get_name(i64 %188)
  %190 = call i32 @av_log(i32* %184, i32 %185, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* @EINVAL, align 4
  %192 = call i32 @AVERROR(i32 %191)
  store i32 %192, i32* %14, align 4
  br label %193

193:                                              ; preds = %183, %174
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %193
  %199 = load i32, i32* %17, align 4
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 8
  br label %202

202:                                              ; preds = %198, %193
  %203 = load i32*, i32** %7, align 8
  %204 = load i32*, i32** %12, align 8
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %206 = load i32, i32* @FF_PUT_WAV_HEADER_FORCE_WAVEFORMATEX, align 4
  %207 = call i32 @ff_put_wav_header(i32* %203, i32* %204, %struct.TYPE_6__* %205, i32 %206)
  br label %208

208:                                              ; preds = %202, %168
  br label %209

209:                                              ; preds = %208, %167
  br label %210

210:                                              ; preds = %209, %26
  %211 = load i32*, i32** %12, align 8
  %212 = call i32 @avio_close_dyn_buf(i32* %211, i32** %13)
  store i32 %212, i32* %15, align 4
  %213 = load i32, i32* %15, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %210
  %216 = load i32*, i32** %8, align 8
  %217 = load i32, i32* @MATROSKA_ID_CODECPRIVATE, align 4
  %218 = load i32*, i32** %13, align 8
  %219 = load i32, i32* %15, align 4
  %220 = call i32 @put_ebml_binary(i32* %216, i32 %217, i32* %218, i32 %219)
  br label %221

221:                                              ; preds = %215, %210
  %222 = load i32*, i32** %13, align 8
  %223 = call i32 @av_free(i32* %222)
  %224 = load i32, i32* %14, align 4
  store i32 %224, i32* %6, align 4
  br label %225

225:                                              ; preds = %221, %21
  %226 = load i32, i32* %6, align 4
  ret i32 %226
}

declare dso_local i32 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @mkv_write_native_codecprivate(i32*, i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i8* @ff_codec_get_tag(i32, i64) #1

declare dso_local i64 @ff_codec_get_id(i32, i32) #1

declare dso_local i32 @AV_RL32(i32) #1

declare dso_local i32 @avio_wb32(i32*, i64) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i32, i64) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @avcodec_get_name(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_put_bmp_header(i32*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ff_put_wav_header(i32*, i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @put_ebml_binary(i32*, i32, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
