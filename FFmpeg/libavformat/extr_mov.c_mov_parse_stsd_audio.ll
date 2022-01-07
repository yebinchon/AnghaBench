; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_parse_stsd_audio.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_parse_stsd_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_14__ = type { i32, i64, i32, i32, i64, i32 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"compatible_brands\00", align 1
@AV_DICT_MATCH_CASE = common dso_local global i32 0, align 4
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"audio channels %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"version =%d, isom =%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"qt  \00", align 1
@AVSTREAM_PARSE_FULL = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S24BE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S24LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S32BE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S32LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32*, %struct.TYPE_16__*, %struct.TYPE_14__*)* @mov_parse_stsd_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mov_parse_stsd_audio(%struct.TYPE_15__* %0, i32* %1, %struct.TYPE_16__* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i8* @avio_rb16(i32* %13)
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AV_DICT_MATCH_CASE, align 4
  %22 = call %struct.TYPE_17__* @av_dict_get(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* null, i32 %21)
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %12, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i8* @avio_rb16(i32* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @avio_rb32(i32* %25)
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @avio_rb16(i32* %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i8* @avio_rb16(i32* %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = load i32, i32* @AV_LOG_TRACE, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_12__* %43, i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i8* @avio_rb16(i32* %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i8* @avio_rb16(i32* %56)
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @avio_rb32(i32* %58)
  %60 = ashr i32 %59, 16
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  store i32 %60, i32* %64, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = load i32, i32* @AV_LOG_TRACE, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_12__* %67, i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %80 = icmp ne %struct.TYPE_17__* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @strstr(i32 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %81, %78
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %192

92:                                               ; preds = %87
  %93 = load i32, i32* %11, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %192

95:                                               ; preds = %92, %81, %4
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @avio_rb32(i32* %99)
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @avio_rb32(i32* %103)
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @avio_rb32(i32* %105)
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @avio_rb32(i32* %109)
  br label %169

111:                                              ; preds = %95
  %112 = load i32, i32* %11, align 4
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %168

114:                                              ; preds = %111
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @avio_rb32(i32* %115)
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @avio_rb64(i32* %117)
  %119 = call i32 @av_int2double(i32 %118)
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  store i32 %119, i32* %123, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @avio_rb32(i32* %124)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  store i32 %125, i32* %129, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = call i32 @avio_rb32(i32* %130)
  %132 = load i32*, i32** %6, align 8
  %133 = call i32 @avio_rb32(i32* %132)
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  store i32 %133, i32* %137, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @avio_rb32(i32* %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @avio_rb32(i32* %140)
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 @avio_rb32(i32* %144)
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @MKTAG(i8 signext 108, i8 signext 112, i8 signext 99, i8 signext 109)
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %114
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @ff_mov_get_lpcm_codec_id(i32 %160, i32 %161)
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 4
  store i32 %162, i32* %166, align 8
  br label %167

167:                                              ; preds = %155, %114
  br label %168

168:                                              ; preds = %167, %111
  br label %169

169:                                              ; preds = %168, %98
  %170 = load i32, i32* %11, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %11, align 4
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %191

175:                                              ; preds = %172
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, -2
  br i1 %179, label %180, label %191

180:                                              ; preds = %175, %169
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  switch i32 %185, label %190 [
    i32 133, label %186
    i32 132, label %186
  ]

186:                                              ; preds = %180, %180
  %187 = load i32, i32* @AVSTREAM_PARSE_FULL, align 4
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 8
  br label %190

190:                                              ; preds = %180, %186
  br label %191

191:                                              ; preds = %190, %175, %172
  br label %192

192:                                              ; preds = %191, %92, %87
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %231

197:                                              ; preds = %192
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 8
  br i1 %203, label %204, label %213

204:                                              ; preds = %197
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %206 = call i64 @MKTAG(i8 signext 114, i8 signext 97, i8 signext 119, i8 signext 32)
  %207 = call i8* @mov_codec_id(%struct.TYPE_16__* %205, i64 %206)
  %208 = ptrtoint i8* %207 to i32
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 4
  store i32 %208, i32* %212, align 8
  br label %230

213:                                              ; preds = %197
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 16
  br i1 %219, label %220, label %229

220:                                              ; preds = %213
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %222 = call i64 @MKTAG(i8 signext 116, i8 signext 119, i8 signext 111, i8 signext 115)
  %223 = call i8* @mov_codec_id(%struct.TYPE_16__* %221, i64 %222)
  %224 = ptrtoint i8* %223 to i32
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 4
  store i32 %224, i32* %228, align 8
  br label %229

229:                                              ; preds = %220, %213
  br label %230

230:                                              ; preds = %229, %204
  br label %231

231:                                              ; preds = %230, %192
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  switch i32 %236, label %351 [
    i32 129, label %237
    i32 128, label %237
    i32 130, label %250
    i32 131, label %250
    i32 135, label %313
    i32 134, label %324
    i32 137, label %335
    i32 136, label %346
  ]

237:                                              ; preds = %231, %231
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 16
  br i1 %243, label %244, label %249

244:                                              ; preds = %237
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 4
  store i32 131, i32* %248, align 8
  br label %249

249:                                              ; preds = %244, %237
  br label %352

250:                                              ; preds = %231, %231
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %255, 8
  br i1 %256, label %257, label %262

257:                                              ; preds = %250
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 4
  store i32 129, i32* %261, align 8
  br label %312

262:                                              ; preds = %250
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = icmp eq i32 %267, 24
  br i1 %268, label %269, label %286

269:                                              ; preds = %262
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 8
  %275 = icmp eq i32 %274, 131
  br i1 %275, label %276, label %278

276:                                              ; preds = %269
  %277 = load i32, i32* @AV_CODEC_ID_PCM_S24BE, align 4
  br label %280

278:                                              ; preds = %269
  %279 = load i32, i32* @AV_CODEC_ID_PCM_S24LE, align 4
  br label %280

280:                                              ; preds = %278, %276
  %281 = phi i32 [ %277, %276 ], [ %279, %278 ]
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 4
  store i32 %281, i32* %285, align 8
  br label %311

286:                                              ; preds = %262
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %291, 32
  br i1 %292, label %293, label %310

293:                                              ; preds = %286
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 8
  %299 = icmp eq i32 %298, 131
  br i1 %299, label %300, label %302

300:                                              ; preds = %293
  %301 = load i32, i32* @AV_CODEC_ID_PCM_S32BE, align 4
  br label %304

302:                                              ; preds = %293
  %303 = load i32, i32* @AV_CODEC_ID_PCM_S32LE, align 4
  br label %304

304:                                              ; preds = %302, %300
  %305 = phi i32 [ %301, %300 ], [ %303, %302 ]
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 4
  store i32 %305, i32* %309, align 8
  br label %310

310:                                              ; preds = %304, %286
  br label %311

311:                                              ; preds = %310, %280
  br label %312

312:                                              ; preds = %311, %257
  br label %352

313:                                              ; preds = %231
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 2
  store i32 6, i32* %315, align 8
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 0
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = mul nsw i32 2, %320
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 3
  store i32 %321, i32* %323, align 4
  br label %352

324:                                              ; preds = %231
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 2
  store i32 6, i32* %326, align 8
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 0
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = mul nsw i32 1, %331
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 3
  store i32 %332, i32* %334, align 4
  br label %352

335:                                              ; preds = %231
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 2
  store i32 64, i32* %337, align 8
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = mul nsw i32 34, %342
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 3
  store i32 %343, i32* %345, align 4
  br label %352

346:                                              ; preds = %231
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 2
  store i32 160, i32* %348, align 8
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 3
  store i32 33, i32* %350, align 4
  br label %352

351:                                              ; preds = %231
  br label %352

352:                                              ; preds = %351, %346, %335, %324, %313, %312, %249
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_13__*, %struct.TYPE_13__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 4
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @av_get_bits_per_sample(i32 %357)
  store i32 %358, i32* %9, align 4
  %359 = load i32, i32* %9, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %377

361:                                              ; preds = %352
  %362 = load i32, i32* %9, align 4
  %363 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_13__*, %struct.TYPE_13__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 1
  store i32 %362, i32* %366, align 4
  %367 = load i32, i32* %9, align 4
  %368 = ashr i32 %367, 3
  %369 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 0
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = mul nsw i32 %368, %373
  %375 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %376 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i32 0, i32 5
  store i32 %374, i32* %376, align 8
  br label %377

377:                                              ; preds = %361, %352
  ret void
}

declare dso_local i8* @avio_rb16(i32*) #1

declare dso_local %struct.TYPE_17__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i32, ...) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local i32 @av_int2double(i32) #1

declare dso_local i32 @avio_rb64(i32*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @ff_mov_get_lpcm_codec_id(i32, i32) #1

declare dso_local i8* @mov_codec_id(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @av_get_bits_per_sample(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
