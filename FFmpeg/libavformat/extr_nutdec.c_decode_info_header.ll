; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutdec.c_decode_info_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutdec.c_decode_info_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32, i32*, %struct.TYPE_14__**, i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32* }

@INFO_STARTCODE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not create chapter.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVSTREAM_EVENT_FLAG_METADATA_UPDATED = common dso_local global i32 0, align 4
@AVFMT_EVENT_FLAG_METADATA_UPDATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"get_str failed while decoding info header\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"invalid stream id %d for info packet\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Disposition\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"r_frame_rate\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Uses\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Depends\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Replaces\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"info header checksum mismatch\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @decode_info_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_info_header(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [256 x i8], align 16
  %17 = alloca [1024 x i8], align 16
  %18 = alloca [256 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_16__*, align 8
  %22 = alloca %struct.TYPE_14__*, align 8
  %23 = alloca i32**, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %4, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %5, align 8
  store i32 0, i32* %13, align 4
  store i32* null, i32** %20, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %22, align 8
  store i32** null, i32*** %23, align 8
  store i32 0, i32* %24, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @INFO_STARTCODE, align 4
  %35 = call i64 @get_packetheader(%struct.TYPE_13__* %32, i32* %33, i32 1, i32 %34)
  store i64 %35, i64* %15, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i64 @avio_tell(i32* %36)
  %38 = load i64, i64* %15, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %15, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ule i64 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @GET_V(i32 %40, i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i8* @get_s(i32* %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = call i8* @ffio_read_varlen(i32* %51)
  %53 = ptrtoint i8* %52 to i64
  store i64 %53, i64* %7, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i8* @ffio_read_varlen(i32* %54)
  %56 = ptrtoint i8* %55 to i64
  store i64 %56, i64* %8, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i8* @ffio_read_varlen(i32* %57)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %99

62:                                               ; preds = %1
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %99, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = udiv i64 %66, %69
  store i64 %70, i64* %25, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = urem i64 %76, %79
  %81 = getelementptr inbounds i32, i32* %75, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %25, align 8
  %84 = load i64, i64* %25, align 8
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %84, %85
  %87 = call %struct.TYPE_16__* @avpriv_new_chapter(%struct.TYPE_15__* %71, i32 %72, i32 %82, i64 %83, i64 %86, i32* null)
  store %struct.TYPE_16__* %87, %struct.TYPE_16__** %21, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %89 = icmp ne %struct.TYPE_16__* %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %65
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %92 = load i32, i32* @AV_LOG_ERROR, align 4
  %93 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %91, i32 %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = call i32 @AVERROR(i32 %94)
  store i32 %95, i32* %2, align 4
  br label %328

96:                                               ; preds = %65
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  store i32** %98, i32*** %23, align 8
  br label %123

99:                                               ; preds = %62, %1
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sub i32 %106, 1
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %105, i64 %108
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  store %struct.TYPE_14__* %110, %struct.TYPE_14__** %22, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  store i32** %112, i32*** %23, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  store i32* %114, i32** %20, align 8
  %115 = load i32, i32* @AVSTREAM_EVENT_FLAG_METADATA_UPDATED, align 4
  store i32 %115, i32* %24, align 4
  br label %122

116:                                              ; preds = %99
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  store i32** %118, i32*** %23, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  store i32* %120, i32** %20, align 8
  %121 = load i32, i32* @AVFMT_EVENT_FLAG_METADATA_UPDATED, align 4
  store i32 %121, i32* %24, align 4
  br label %122

122:                                              ; preds = %116, %102
  br label %123

123:                                              ; preds = %122, %96
  store i32 0, i32* %12, align 4
  br label %124

124:                                              ; preds = %307, %123
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %310

128:                                              ; preds = %124
  %129 = load i32*, i32** %5, align 8
  %130 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %131 = call i32 @get_str(i32* %129, i8* %130, i32 256)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %136 = load i32, i32* @AV_LOG_ERROR, align 4
  %137 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %135, i32 %136, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* %2, align 4
  br label %328

139:                                              ; preds = %128
  %140 = load i32*, i32** %5, align 8
  %141 = call i8* @get_s(i32* %140)
  %142 = ptrtoint i8* %141 to i64
  store i64 %142, i64* %14, align 8
  %143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  store i8 0, i8* %143, align 16
  %144 = load i64, i64* %14, align 8
  %145 = icmp eq i64 %144, -1
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  %147 = load i32*, i32** %5, align 8
  %148 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %149 = call i32 @get_str(i32* %147, i8* %148, i32 1024)
  store i32 %149, i32* %13, align 4
  br label %194

150:                                              ; preds = %139
  %151 = load i64, i64* %14, align 8
  %152 = icmp eq i64 %151, -2
  br i1 %152, label %153, label %169

153:                                              ; preds = %150
  %154 = load i32*, i32** %5, align 8
  %155 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %156 = call i32 @get_str(i32* %154, i8* %155, i32 256)
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = load i32, i32* @AV_LOG_ERROR, align 4
  %162 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %160, i32 %161, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %163 = load i32, i32* %13, align 4
  store i32 %163, i32* %2, align 4
  br label %328

164:                                              ; preds = %153
  %165 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  store i8* %165, i8** %19, align 8
  %166 = load i32*, i32** %5, align 8
  %167 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %168 = call i32 @get_str(i32* %166, i8* %167, i32 1024)
  store i32 %168, i32* %13, align 4
  br label %193

169:                                              ; preds = %150
  %170 = load i64, i64* %14, align 8
  %171 = icmp eq i64 %170, -3
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  %173 = load i32*, i32** %5, align 8
  %174 = call i8* @get_s(i32* %173)
  %175 = ptrtoint i8* %174 to i64
  store i64 %175, i64* %14, align 8
  br label %192

176:                                              ; preds = %169
  %177 = load i64, i64* %14, align 8
  %178 = icmp eq i64 %177, -4
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %19, align 8
  %180 = load i32*, i32** %5, align 8
  %181 = call i8* @ffio_read_varlen(i32* %180)
  %182 = ptrtoint i8* %181 to i64
  store i64 %182, i64* %14, align 8
  br label %191

183:                                              ; preds = %176
  %184 = load i64, i64* %14, align 8
  %185 = icmp ult i64 %184, -4
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %19, align 8
  %187 = load i32*, i32** %5, align 8
  %188 = call i8* @get_s(i32* %187)
  br label %190

189:                                              ; preds = %183
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %19, align 8
  br label %190

190:                                              ; preds = %189, %186
  br label %191

191:                                              ; preds = %190, %179
  br label %192

192:                                              ; preds = %191, %172
  br label %193

193:                                              ; preds = %192, %164
  br label %194

194:                                              ; preds = %193, %146
  %195 = load i32, i32* %13, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %199 = load i32, i32* @AV_LOG_ERROR, align 4
  %200 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %198, i32 %199, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %201 = load i32, i32* %13, align 4
  store i32 %201, i32* %2, align 4
  br label %328

202:                                              ; preds = %194
  %203 = load i32, i32* %9, align 4
  %204 = zext i32 %203 to i64
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp ugt i64 %204, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %202
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %211 = load i32, i32* @AV_LOG_WARNING, align 4
  %212 = load i32, i32* %9, align 4
  %213 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %210, i32 %211, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %212)
  br label %307

214:                                              ; preds = %202
  %215 = load i8*, i8** %19, align 8
  %216 = call i32 @strcmp(i8* %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %306, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* %11, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %218
  %222 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %223 = call i32 @strcmp(i8* %222, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %231, label %225

225:                                              ; preds = %221
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %227 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %228 = load i32, i32* %9, align 4
  %229 = sub i32 %228, 1
  %230 = call i32 @set_disposition_bits(%struct.TYPE_15__* %226, i8* %227, i32 %229)
  br label %307

231:                                              ; preds = %221, %218
  %232 = load i32, i32* %9, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %277

234:                                              ; preds = %231
  %235 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %236 = call i32 @strcmp(i8* %235, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %277, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 1
  %246 = call i32 @sscanf(i8* %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64* %242, i64* %245)
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = mul nsw i64 1000, %254
  %256 = icmp sge i64 %250, %255
  br i1 %256, label %269, label %257

257:                                              ; preds = %238
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp slt i64 %261, 0
  br i1 %262, label %269, label %263

263:                                              ; preds = %257
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp slt i64 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %263, %257, %238
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 1
  store i64 0, i64* %272, align 8
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 0
  store i64 0, i64* %275, align 8
  br label %276

276:                                              ; preds = %269, %263
  br label %307

277:                                              ; preds = %234, %231
  %278 = load i32**, i32*** %23, align 8
  %279 = icmp ne i32** %278, null
  br i1 %279, label %280, label %305

280:                                              ; preds = %277
  %281 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %282 = call i64 @av_strcasecmp(i8* %281, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %305

284:                                              ; preds = %280
  %285 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %286 = call i64 @av_strcasecmp(i8* %285, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %305

288:                                              ; preds = %284
  %289 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %290 = call i64 @av_strcasecmp(i8* %289, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %305

292:                                              ; preds = %288
  %293 = load i32*, i32** %20, align 8
  %294 = icmp ne i32* %293, null
  br i1 %294, label %295, label %300

295:                                              ; preds = %292
  %296 = load i32, i32* %24, align 4
  %297 = load i32*, i32** %20, align 8
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %296
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %295, %292
  %301 = load i32**, i32*** %23, align 8
  %302 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %303 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %304 = call i32 @av_dict_set(i32** %301, i8* %302, i8* %303, i32 0)
  br label %305

305:                                              ; preds = %300, %288, %284, %280, %277
  br label %306

306:                                              ; preds = %305, %214
  br label %307

307:                                              ; preds = %306, %276, %225, %209
  %308 = load i32, i32* %12, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %12, align 4
  br label %124

310:                                              ; preds = %124
  %311 = load i32*, i32** %5, align 8
  %312 = load i64, i64* %15, align 8
  %313 = call i64 @skip_reserved(i32* %311, i64 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %319, label %315

315:                                              ; preds = %310
  %316 = load i32*, i32** %5, align 8
  %317 = call i64 @ffio_get_checksum(i32* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %315, %310
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %321 = load i32, i32* @AV_LOG_ERROR, align 4
  %322 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %320, i32 %321, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  %323 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %323, i32* %2, align 4
  br label %328

324:                                              ; preds = %315
  br label %325

325:                                              ; preds = %324
  %326 = load i32, i32* %13, align 4
  %327 = call i32 @FFMIN(i32 %326, i32 0)
  store i32 %327, i32* %2, align 4
  br label %328

328:                                              ; preds = %325, %319, %197, %159, %134, %90
  %329 = load i32, i32* %2, align 4
  ret i32 %329
}

declare dso_local i64 @get_packetheader(%struct.TYPE_13__*, i32*, i32, i32) #1

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @GET_V(i32, i32) #1

declare dso_local i8* @get_s(i32*) #1

declare dso_local i8* @ffio_read_varlen(i32*) #1

declare dso_local %struct.TYPE_16__* @avpriv_new_chapter(%struct.TYPE_15__*, i32, i32, i64, i64, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @get_str(i32*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @set_disposition_bits(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*) #1

declare dso_local i64 @av_strcasecmp(i8*, i8*) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i64 @skip_reserved(i32*, i64) #1

declare dso_local i64 @ffio_get_checksum(i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
