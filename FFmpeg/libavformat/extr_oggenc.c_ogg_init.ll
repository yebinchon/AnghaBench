; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggenc.c_ogg_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggenc.c_ogg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, %struct.TYPE_26__**, %struct.TYPE_25__* }
%struct.TYPE_26__ = type { %struct.TYPE_22__, %struct.TYPE_21__*, i32, %struct.TYPE_24__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32**, i32, i32, i32*, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i32, i64 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"The pagesize option is deprecated\0A\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_CODEC_ID_OPUS = common dso_local global i64 0, align 8
@AV_CODEC_ID_VORBIS = common dso_local global i64 0, align 8
@AV_CODEC_ID_THEORA = common dso_local global i64 0, align 8
@AV_CODEC_ID_SPEEX = common dso_local global i64 0, align 8
@AV_CODEC_ID_FLAC = common dso_local global i64 0, align 8
@AV_CODEC_ID_VP8 = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unsupported codec id in stream %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"No extradata present\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVFMT_FLAG_BITEXACT = common dso_local global i32 0, align 4
@AV_DICT_DONT_OVERWRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Error writing FLAC headers\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Error writing Speex headers\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Error writing Opus headers\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Error writing VP8 headers\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"vorbis\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"theora\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Extradata corrupted\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"Changing time base from %d/%d to %d/%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"theora kfgshift %d, vrev %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*)* @ogg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogg_init(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  store %struct.TYPE_25__* %23, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %30 = load i32, i32* @AV_LOG_WARNING, align 4
  %31 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %29, i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %1
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %545, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %548

39:                                               ; preds = %33
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %42, i64 %44
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %45, align 8
  store %struct.TYPE_26__* %46, %struct.TYPE_26__** %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %9, align 4
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %39
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AV_CODEC_ID_OPUS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %69 = call i32 @avpriv_set_pts_info(%struct.TYPE_26__* %68, i32 64, i32 1, i32 48000)
  br label %78

70:                                               ; preds = %59
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @avpriv_set_pts_info(%struct.TYPE_26__* %71, i32 64, i32 1, i32 %76)
  br label %78

78:                                               ; preds = %70, %67
  br label %79

79:                                               ; preds = %78, %39
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AV_CODEC_ID_VORBIS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %134

87:                                               ; preds = %79
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @AV_CODEC_ID_THEORA, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %134

95:                                               ; preds = %87
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @AV_CODEC_ID_SPEEX, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %134

103:                                              ; preds = %95
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AV_CODEC_ID_FLAC, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %103
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @AV_CODEC_ID_OPUS, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %111
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @AV_CODEC_ID_VP8, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %119
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %129 = load i32, i32* @AV_LOG_ERROR, align 4
  %130 = load i32, i32* %6, align 4
  %131 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %128, i32 %129, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = call i32 @AVERROR(i32 %132)
  store i32 %133, i32* %2, align 4
  br label %549

134:                                              ; preds = %119, %111, %103, %95, %87, %79
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %134
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %161, label %148

148:                                              ; preds = %141, %134
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @AV_CODEC_ID_VP8, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %148
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %158 = load i32, i32* @AV_LOG_ERROR, align 4
  %159 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %157, i32 %158, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %160 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %160, i32* %2, align 4
  br label %549

161:                                              ; preds = %148, %141
  %162 = call %struct.TYPE_24__* @av_mallocz(i32 40)
  store %struct.TYPE_24__* %162, %struct.TYPE_24__** %5, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %164 = icmp ne %struct.TYPE_24__* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = call i32 @AVERROR(i32 %166)
  store i32 %167, i32* %2, align 4
  br label %549

168:                                              ; preds = %161
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 8
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @AVFMT_FLAG_BITEXACT, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %212, label %179

179:                                              ; preds = %168
  br label %180

180:                                              ; preds = %207, %179
  %181 = call i32 (...) @av_get_random_seed()
  store i32 %181, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %182

182:                                              ; preds = %203, %180
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %6, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %206

186:                                              ; preds = %182
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 5
  %189 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %189, i64 %191
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %194, align 8
  store %struct.TYPE_24__* %195, %struct.TYPE_24__** %10, align 8
  %196 = load i32, i32* %9, align 4
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %196, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %186
  br label %206

202:                                              ; preds = %186
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %7, align 4
  br label %182

206:                                              ; preds = %201, %182
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* %6, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %180, label %211

211:                                              ; preds = %207
  br label %212

212:                                              ; preds = %211, %168
  %213 = load i32, i32* %9, align 4
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @AV_DICT_DONT_OVERWRITE, align 4
  %222 = call i32 @av_dict_copy(i32* %217, i32 %220, i32 %221)
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 3
  store %struct.TYPE_24__* %223, %struct.TYPE_24__** %225, align 8
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @AV_CODEC_ID_FLAC, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %257

233:                                              ; preds = %212
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %235, align 8
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @AVFMT_FLAG_BITEXACT, align 4
  %242 = and i32 %240, %241
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 2
  %245 = call i32 @ogg_build_flac_headers(%struct.TYPE_21__* %236, %struct.TYPE_24__* %237, i32 %242, i32* %244)
  store i32 %245, i32* %11, align 4
  %246 = load i32, i32* %11, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %233
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %250 = load i32, i32* @AV_LOG_ERROR, align 4
  %251 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %249, i32 %250, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 3
  %254 = call i32 @av_freep(%struct.TYPE_24__** %253)
  %255 = load i32, i32* %11, align 4
  store i32 %255, i32* %2, align 4
  br label %549

256:                                              ; preds = %233
  br label %544

257:                                              ; preds = %212
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @AV_CODEC_ID_SPEEX, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %289

265:                                              ; preds = %257
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %267, align 8
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @AVFMT_FLAG_BITEXACT, align 4
  %274 = and i32 %272, %273
  %275 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %275, i32 0, i32 2
  %277 = call i32 @ogg_build_speex_headers(%struct.TYPE_21__* %268, %struct.TYPE_24__* %269, i32 %274, i32* %276)
  store i32 %277, i32* %12, align 4
  %278 = load i32, i32* %12, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %288

280:                                              ; preds = %265
  %281 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %282 = load i32, i32* @AV_LOG_ERROR, align 4
  %283 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %281, i32 %282, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 3
  %286 = call i32 @av_freep(%struct.TYPE_24__** %285)
  %287 = load i32, i32* %12, align 4
  store i32 %287, i32* %2, align 4
  br label %549

288:                                              ; preds = %265
  br label %543

289:                                              ; preds = %257
  %290 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @AV_CODEC_ID_OPUS, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %327

297:                                              ; preds = %289
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %299, align 8
  %301 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @AVFMT_FLAG_BITEXACT, align 4
  %306 = and i32 %304, %305
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %307, i32 0, i32 2
  %309 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @ogg_build_opus_headers(%struct.TYPE_21__* %300, %struct.TYPE_24__* %301, i32 %306, i32* %308, i32 %311, i32 %314)
  store i32 %315, i32* %13, align 4
  %316 = load i32, i32* %13, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %326

318:                                              ; preds = %297
  %319 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %320 = load i32, i32* @AV_LOG_ERROR, align 4
  %321 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %319, i32 %320, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %322 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %322, i32 0, i32 3
  %324 = call i32 @av_freep(%struct.TYPE_24__** %323)
  %325 = load i32, i32* %13, align 4
  store i32 %325, i32* %2, align 4
  br label %549

326:                                              ; preds = %297
  br label %542

327:                                              ; preds = %289
  %328 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i32 0, i32 1
  %330 = load %struct.TYPE_21__*, %struct.TYPE_21__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @AV_CODEC_ID_VP8, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %356

335:                                              ; preds = %327
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %337 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %338 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %339 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @AVFMT_FLAG_BITEXACT, align 4
  %343 = and i32 %341, %342
  %344 = call i32 @ogg_build_vp8_headers(%struct.TYPE_27__* %336, %struct.TYPE_26__* %337, %struct.TYPE_24__* %338, i32 %343)
  store i32 %344, i32* %14, align 4
  %345 = load i32, i32* %14, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %355

347:                                              ; preds = %335
  %348 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %349 = load i32, i32* @AV_LOG_ERROR, align 4
  %350 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %348, i32 %349, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %351 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %352 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %351, i32 0, i32 3
  %353 = call i32 @av_freep(%struct.TYPE_24__** %352)
  %354 = load i32, i32* %14, align 4
  store i32 %354, i32* %2, align 4
  br label %549

355:                                              ; preds = %335
  br label %541

356:                                              ; preds = %327
  %357 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %357, i32 0, i32 1
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @AV_CODEC_ID_VORBIS, align 8
  %363 = icmp eq i64 %361, %362
  %364 = zext i1 %363 to i64
  %365 = select i1 %363, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)
  store i8* %365, i8** %16, align 8
  %366 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %367 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %366, i32 0, i32 1
  %368 = load %struct.TYPE_21__*, %struct.TYPE_21__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @AV_CODEC_ID_VORBIS, align 8
  %372 = icmp eq i64 %370, %371
  %373 = zext i1 %372 to i64
  %374 = select i1 %372, i32 3, i32 129
  store i32 %374, i32* %17, align 4
  %375 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %376 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %375, i32 0, i32 1
  %377 = load %struct.TYPE_21__*, %struct.TYPE_21__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %377, i32 0, i32 1
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @AV_CODEC_ID_VORBIS, align 8
  %381 = icmp eq i64 %379, %380
  %382 = zext i1 %381 to i64
  %383 = select i1 %381, i32 1, i32 0
  store i32 %383, i32* %18, align 4
  %384 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %385 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %384, i32 0, i32 1
  %386 = load %struct.TYPE_21__*, %struct.TYPE_21__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %386, i32 0, i32 4
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %390 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %389, i32 0, i32 1
  %391 = load %struct.TYPE_21__*, %struct.TYPE_21__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %395 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %394, i32 0, i32 1
  %396 = load %struct.TYPE_21__*, %struct.TYPE_21__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %396, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* @AV_CODEC_ID_VORBIS, align 8
  %400 = icmp eq i64 %398, %399
  %401 = zext i1 %400 to i64
  %402 = select i1 %400, i32 30, i32 42
  %403 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %403, i32 0, i32 1
  %405 = load i32**, i32*** %404, align 8
  %406 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %407 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %406, i32 0, i32 4
  %408 = load i32*, i32** %407, align 8
  %409 = call i64 @avpriv_split_xiph_headers(i32 %388, i32 %393, i32 %402, i32** %405, i32* %408)
  %410 = icmp slt i64 %409, 0
  br i1 %410, label %411, label %419

411:                                              ; preds = %356
  %412 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %413 = load i32, i32* @AV_LOG_ERROR, align 4
  %414 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %412, i32 %413, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %415 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %416 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %415, i32 0, i32 3
  %417 = call i32 @av_freep(%struct.TYPE_24__** %416)
  %418 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %418, i32* %2, align 4
  br label %549

419:                                              ; preds = %356
  %420 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %421 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* @AVFMT_FLAG_BITEXACT, align 4
  %424 = and i32 %422, %423
  %425 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %425, i32 0, i32 4
  %427 = load i32*, i32** %426, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 1
  %429 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %430 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %429, i32 0, i32 2
  %431 = load i32, i32* %18, align 4
  %432 = call i32* @ogg_write_vorbiscomment(i32 7, i32 %424, i32* %428, i32* %430, i32 %431, i32* null, i32 0)
  store i32* %432, i32** %15, align 8
  %433 = load i32*, i32** %15, align 8
  %434 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %435 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %434, i32 0, i32 1
  %436 = load i32**, i32*** %435, align 8
  %437 = getelementptr inbounds i32*, i32** %436, i64 1
  store i32* %433, i32** %437, align 8
  %438 = load i32*, i32** %15, align 8
  %439 = icmp ne i32* %438, null
  br i1 %439, label %443, label %440

440:                                              ; preds = %419
  %441 = load i32, i32* @ENOMEM, align 4
  %442 = call i32 @AVERROR(i32 %441)
  store i32 %442, i32* %2, align 4
  br label %549

443:                                              ; preds = %419
  %444 = load i32, i32* %17, align 4
  %445 = call i32 @bytestream_put_byte(i32** %15, i32 %444)
  %446 = load i8*, i8** %16, align 8
  %447 = call i32 @bytestream_put_buffer(i32** %15, i8* %446, i32 6)
  %448 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %448, i32 0, i32 1
  %450 = load %struct.TYPE_21__*, %struct.TYPE_21__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = load i64, i64* @AV_CODEC_ID_THEORA, align 8
  %454 = icmp eq i64 %452, %453
  br i1 %454, label %455, label %540

455:                                              ; preds = %443
  %456 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %456, i32 0, i32 1
  %458 = load i32**, i32*** %457, align 8
  %459 = getelementptr inbounds i32*, i32** %458, i64 0
  %460 = load i32*, i32** %459, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 22
  %462 = call i32 @AV_RB32(i32* %461)
  store i32 %462, i32* %19, align 4
  %463 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %464 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %463, i32 0, i32 1
  %465 = load i32**, i32*** %464, align 8
  %466 = getelementptr inbounds i32*, i32** %465, i64 0
  %467 = load i32*, i32** %466, align 8
  %468 = getelementptr inbounds i32, i32* %467, i64 26
  %469 = call i32 @AV_RB32(i32* %468)
  store i32 %469, i32* %20, align 4
  %470 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %471 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = load i32, i32* %20, align 4
  %475 = icmp ne i32 %473, %474
  br i1 %475, label %483, label %476

476:                                              ; preds = %455
  %477 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %478 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = load i32, i32* %19, align 4
  %482 = icmp ne i32 %480, %481
  br i1 %482, label %483, label %501

483:                                              ; preds = %476, %455
  %484 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %485 = load i32, i32* @AV_LOG_DEBUG, align 4
  %486 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %487 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %491 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = load i32, i32* %20, align 4
  %495 = load i32, i32* %19, align 4
  %496 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %484, i32 %485, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %489, i32 %493, i32 %494, i32 %495)
  %497 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %498 = load i32, i32* %20, align 4
  %499 = load i32, i32* %19, align 4
  %500 = call i32 @avpriv_set_pts_info(%struct.TYPE_26__* %497, i32 64, i32 %498, i32 %499)
  br label %501

501:                                              ; preds = %483, %476
  %502 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %503 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %502, i32 0, i32 1
  %504 = load i32**, i32*** %503, align 8
  %505 = getelementptr inbounds i32*, i32** %504, i64 0
  %506 = load i32*, i32** %505, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 40
  %508 = load i32, i32* %507, align 4
  %509 = and i32 %508, 3
  %510 = shl i32 %509, 3
  %511 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %512 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %511, i32 0, i32 1
  %513 = load i32**, i32*** %512, align 8
  %514 = getelementptr inbounds i32*, i32** %513, i64 0
  %515 = load i32*, i32** %514, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 41
  %517 = load i32, i32* %516, align 4
  %518 = ashr i32 %517, 5
  %519 = or i32 %510, %518
  %520 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %521 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %520, i32 0, i32 2
  store i32 %519, i32* %521, align 8
  %522 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %523 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %522, i32 0, i32 1
  %524 = load i32**, i32*** %523, align 8
  %525 = getelementptr inbounds i32*, i32** %524, i64 0
  %526 = load i32*, i32** %525, align 8
  %527 = getelementptr inbounds i32, i32* %526, i64 9
  %528 = load i32, i32* %527, align 4
  %529 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %530 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %529, i32 0, i32 3
  store i32 %528, i32* %530, align 4
  %531 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %532 = load i32, i32* @AV_LOG_DEBUG, align 4
  %533 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %534 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %533, i32 0, i32 2
  %535 = load i32, i32* %534, align 8
  %536 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %537 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %536, i32 0, i32 3
  %538 = load i32, i32* %537, align 4
  %539 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %531, i32 %532, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %535, i32 %538)
  br label %540

540:                                              ; preds = %501, %443
  br label %541

541:                                              ; preds = %540, %355
  br label %542

542:                                              ; preds = %541, %326
  br label %543

543:                                              ; preds = %542, %288
  br label %544

544:                                              ; preds = %543, %256
  br label %545

545:                                              ; preds = %544
  %546 = load i32, i32* %6, align 4
  %547 = add nsw i32 %546, 1
  store i32 %547, i32* %6, align 4
  br label %33

548:                                              ; preds = %33
  store i32 0, i32* %2, align 4
  br label %549

549:                                              ; preds = %548, %440, %411, %347, %318, %280, %248, %165, %156, %127
  %550 = load i32, i32* %2, align 4
  ret i32 %550
}

declare dso_local i32 @av_log(%struct.TYPE_27__*, i32, i8*, ...) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_26__*, i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_24__* @av_mallocz(i32) #1

declare dso_local i32 @av_get_random_seed(...) #1

declare dso_local i32 @av_dict_copy(i32*, i32, i32) #1

declare dso_local i32 @ogg_build_flac_headers(%struct.TYPE_21__*, %struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32 @av_freep(%struct.TYPE_24__**) #1

declare dso_local i32 @ogg_build_speex_headers(%struct.TYPE_21__*, %struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32 @ogg_build_opus_headers(%struct.TYPE_21__*, %struct.TYPE_24__*, i32, i32*, i32, i32) #1

declare dso_local i32 @ogg_build_vp8_headers(%struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_24__*, i32) #1

declare dso_local i64 @avpriv_split_xiph_headers(i32, i32, i32, i32**, i32*) #1

declare dso_local i32* @ogg_write_vorbiscomment(i32, i32, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @bytestream_put_byte(i32**, i32) #1

declare dso_local i32 @bytestream_put_buffer(i32**, i8*, i32) #1

declare dso_local i32 @AV_RB32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
