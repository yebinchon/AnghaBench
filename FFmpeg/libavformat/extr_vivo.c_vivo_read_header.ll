; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vivo.c_vivo_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vivo.c_vivo_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i64, i64 }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i8*, i32, i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i32, i64, i64, i32, i32, i32, i32, i32, i64, i32 }

@__const.vivo_read_header.fps = private unnamed_addr constant %struct.TYPE_19__ { i32 1, i32 25, i64 0, i64 0 }, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"too big header, skipping\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"missing colon in key:value pair '%s'\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"header: '%s' = '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"got a valid integer (%ld)\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Duration\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"TimeUnitNumerator\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"TimeUnitDenominator\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"SamplingFrequency\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"NominalBitrate\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Vivo/%d.\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"FPS\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_H263 = common dso_local global i32 0, align 4
@AV_CODEC_ID_G723_1 = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @vivo_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivo_read_header(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_19__, align 8
  %18 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %4, align 8
  %22 = bitcast %struct.TYPE_19__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_19__* @__const.vivo_read_header.fps to i8*), i64 24, i1 false)
  store i64 0, i64* %15, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = call %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_20__* %23, i32* null)
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %7, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = call %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_20__* %25, i32* null)
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %6, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = icmp ne %struct.TYPE_18__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %31 = icmp ne %struct.TYPE_18__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = call i32 @AVERROR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %332

35:                                               ; preds = %29
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  store i32 8000, i32* %39, align 8
  br label %40

40:                                               ; preds = %35, %81, %253
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %42 = call i32 @vivo_get_packet_header(%struct.TYPE_20__* %41)
  store i32 %42, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %2, align 4
  br label %332

46:                                               ; preds = %40
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %46
  br label %254

57:                                               ; preds = %51
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sle i32 %60, 1024
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @avio_read(i32 %65, i8* %68, i32 %71)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  store i8 0, i8* %80, align 1
  br label %93

81:                                               ; preds = %57
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = load i32, i32* @AV_LOG_WARNING, align 4
  %84 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %82, i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = call i32 @avio_skip(i32 %87, i64 %91)
  br label %40

93:                                               ; preds = %62
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %8, align 8
  br label %97

97:                                               ; preds = %252, %121, %115, %93
  %98 = load i8*, i8** %8, align 8
  %99 = load i8, i8* %98, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %101, label %253

101:                                              ; preds = %97
  %102 = load i8*, i8** %8, align 8
  %103 = call i8* @strstr(i8* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %103, i8** %9, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %253

107:                                              ; preds = %101
  %108 = load i8*, i8** %9, align 8
  store i8 0, i8* %108, align 1
  %109 = load i8*, i8** %8, align 8
  store i8* %109, i8** %10, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  store i8* %111, i8** %8, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = icmp eq i8* %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %97

116:                                              ; preds = %107
  %117 = load i8*, i8** %10, align 8
  %118 = call i8* @strchr(i8* %117, i8 signext 58)
  store i8* %118, i8** %11, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %123 = load i32, i32* @AV_LOG_WARNING, align 4
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %122, i32 %123, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %124)
  br label %97

126:                                              ; preds = %116
  %127 = load i8*, i8** %11, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %11, align 8
  store i8 0, i8* %127, align 1
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %130 = load i32, i32* @AV_LOG_DEBUG, align 4
  %131 = load i8*, i8** %10, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %129, i32 %130, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %131, i8* %132)
  %134 = load i8*, i8** %11, align 8
  %135 = call i64 @strtol(i8* %134, i8** %16, i32 10)
  store i64 %135, i64* %12, align 8
  store i32 0, i32* %14, align 4
  %136 = load i8*, i8** %16, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %215

140:                                              ; preds = %126
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %142 = load i32, i32* @AV_LOG_DEBUG, align 4
  %143 = load i64, i64* %12, align 8
  %144 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %141, i32 %142, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %143)
  store i32 1, i32* %14, align 4
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @strcmp(i8* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %140
  %149 = load i64, i64* %12, align 8
  store i64 %149, i64* %15, align 8
  br label %214

150:                                              ; preds = %140
  %151 = load i8*, i8** %10, align 8
  %152 = call i32 @strcmp(i8* %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %150
  %155 = load i64, i64* %12, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 1
  store i64 %155, i64* %159, align 8
  br label %213

160:                                              ; preds = %150
  %161 = load i8*, i8** %10, align 8
  %162 = call i32 @strcmp(i8* %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %160
  %165 = load i64, i64* %12, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 2
  store i64 %165, i64* %169, align 8
  br label %212

170:                                              ; preds = %160
  %171 = load i8*, i8** %10, align 8
  %172 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %170
  %175 = load i64, i64* %12, align 8
  %176 = sdiv i64 %175, 1000
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  store i64 %176, i64* %177, align 8
  br label %211

178:                                              ; preds = %170
  %179 = load i8*, i8** %10, align 8
  %180 = call i32 @strcmp(i8* %179, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %178
  %183 = load i64, i64* %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 3
  store i64 %183, i64* %184, align 8
  br label %210

185:                                              ; preds = %178
  %186 = load i8*, i8** %10, align 8
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %185
  %190 = load i64, i64* %12, align 8
  %191 = trunc i64 %190 to i32
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  store i32 %191, i32* %195, align 8
  br label %209

196:                                              ; preds = %185
  %197 = load i8*, i8** %10, align 8
  %198 = call i32 @strcmp(i8* %197, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %196
  br label %208

201:                                              ; preds = %196
  %202 = load i8*, i8** %10, align 8
  %203 = call i32 @strcmp(i8* %202, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %201
  br label %207

206:                                              ; preds = %201
  store i32 0, i32* %14, align 4
  br label %207

207:                                              ; preds = %206, %205
  br label %208

208:                                              ; preds = %207, %200
  br label %209

209:                                              ; preds = %208, %189
  br label %210

210:                                              ; preds = %209, %182
  br label %211

211:                                              ; preds = %210, %174
  br label %212

212:                                              ; preds = %211, %164
  br label %213

213:                                              ; preds = %212, %154
  br label %214

214:                                              ; preds = %213, %148
  br label %215

215:                                              ; preds = %214, %126
  %216 = load i8*, i8** %10, align 8
  %217 = call i32 @strcmp(i8* %216, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %228, label %219

219:                                              ; preds = %215
  %220 = load i8*, i8** %11, align 8
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 2
  %223 = call i32 @sscanf(i8* %220, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32* %222)
  %224 = icmp ne i32 %223, 1
  br i1 %224, label %225, label %227

225:                                              ; preds = %219
  %226 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %226, i32* %2, align 4
  br label %332

227:                                              ; preds = %219
  store i32 1, i32* %14, align 4
  br label %243

228:                                              ; preds = %215
  %229 = load i8*, i8** %10, align 8
  %230 = call i32 @strcmp(i8* %229, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %242, label %232

232:                                              ; preds = %228
  store i32 1, i32* %14, align 4
  %233 = load i8*, i8** %11, align 8
  %234 = load i32, i32* @AV_LOG_WARNING, align 4
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %236 = call i32 @av_parse_ratio(%struct.TYPE_19__* %17, i8* %233, i32 10000, i32 %234, %struct.TYPE_20__* %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %232
  call void @av_inv_q(%struct.TYPE_19__* sret %18, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %17)
  %239 = bitcast %struct.TYPE_19__* %5 to i8*
  %240 = bitcast %struct.TYPE_19__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %239, i8* align 8 %240, i64 24, i1 false)
  br label %241

241:                                              ; preds = %238, %232
  br label %242

242:                                              ; preds = %241, %228
  br label %243

243:                                              ; preds = %242, %227
  %244 = load i32, i32* %14, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %252, label %246

246:                                              ; preds = %243
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 1
  %249 = load i8*, i8** %10, align 8
  %250 = load i8*, i8** %11, align 8
  %251 = call i32 @av_dict_set(i32* %248, i8* %249, i8* %250, i32 0)
  br label %252

252:                                              ; preds = %246, %243
  br label %97

253:                                              ; preds = %106, %97
  br label %40

254:                                              ; preds = %56
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = call i32 @avpriv_set_pts_info(%struct.TYPE_18__* %255, i32 64, i32 1, i64 %261)
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = trunc i64 %265 to i32
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @avpriv_set_pts_info(%struct.TYPE_18__* %263, i32 64, i32 %266, i64 %268)
  %270 = load i64, i64* %15, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %254
  %273 = load i64, i64* %15, align 8
  %274 = call i32 @av_rescale(i64 %273, i32 1000, i32 1)
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 8
  br label %277

277:                                              ; preds = %272, %254
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 1
  store i64 0, i64* %279, align 8
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 8
  store i64 0, i64* %283, align 8
  %284 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 7
  store i32 %284, i32* %288, align 8
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = icmp eq i32 %291, 1
  br i1 %292, label %293, label %316

293:                                              ; preds = %277
  %294 = load i32, i32* @AV_CODEC_ID_H263, align 4
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 9
  store i32 %294, i32* %298, align 8
  %299 = load i32, i32* @AV_CODEC_ID_G723_1, align 4
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 9
  store i32 %299, i32* %303, align 8
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 3
  store i32 8, i32* %307, align 8
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 4
  store i32 24, i32* %311, align 4
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 5
  store i32 6400, i32* %315, align 8
  br label %316

316:                                              ; preds = %293, %277
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %317, i32 0, i32 1
  store i64 0, i64* %318, align 8
  %319 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 8
  store i64 0, i64* %322, align 8
  %323 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i32 0, i32 0
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 7
  store i32 %323, i32* %327, align 8
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 0
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 6
  store i32 1, i32* %331, align 4
  store i32 0, i32* %2, align 4
  br label %332

332:                                              ; preds = %316, %225, %44, %32
  %333 = load i32, i32* %2, align 4
  ret i32 %333
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_20__*, i32*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @vivo_get_packet_header(%struct.TYPE_20__*) #2

declare dso_local i32 @avio_read(i32, i8*, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, ...) #2

declare dso_local i32 @avio_skip(i32, i64) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*) #2

declare dso_local i32 @av_parse_ratio(%struct.TYPE_19__*, i8*, i32, i32, %struct.TYPE_20__*) #2

declare dso_local void @av_inv_q(%struct.TYPE_19__* sret, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8) #2

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #2

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_18__*, i32, i32, i64) #2

declare dso_local i32 @av_rescale(i64, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
