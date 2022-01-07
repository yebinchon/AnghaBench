; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_new_audio_stream.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_new_audio_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i8*, i8*, i8*, i32, i64, i32*, i64, i64, %struct.TYPE_23__*, i32, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, i64, i64 }

@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@filter_scripts = common dso_local global i32 0, align 4
@str = common dso_local global i32 0, align 4
@filters = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Only '-af %s' read, ignoring remaining -af options: Use ',' to separate filters\0A\00", align 1
@audio_channels = common dso_local global i32 0, align 4
@i = common dso_local global i32 0, align 4
@sample_fmts = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_NONE = common dso_local global i32 0, align 4
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid sample format '%s'\0A\00", align 1
@audio_sample_rate = common dso_local global i32 0, align 4
@apad = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"Cannot determine input stream for channel mapping %d.%d\0A\00", align 1
@input_streams = common dso_local global %struct.TYPE_21__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_20__*, i32*, i32)* @new_audio_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @new_audio_stream(%struct.TYPE_20__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.TYPE_19__* @new_output_stream(%struct.TYPE_20__* %14, i32* %15, i32 %16, i32 %17)
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %9, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %8, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 10
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %10, align 8
  %25 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @filter_scripts, align 4
  %29 = load i32, i32* @str, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %35 = call i32 @MATCH_PER_STREAM_OPT(i32 %28, i32 %29, i8* %32, i32* %33, %struct.TYPE_23__* %34)
  %36 = load i32, i32* @filters, align 4
  %37 = load i32, i32* @str, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %43 = call i32 @MATCH_PER_STREAM_OPT(i32 %36, i32 %37, i8* %40, i32* %41, %struct.TYPE_23__* %42)
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %54

48:                                               ; preds = %3
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %49, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %48, %3
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %244, label %59

59:                                               ; preds = %54
  store i8* null, i8** %11, align 8
  %60 = load i32, i32* @audio_channels, align 4
  %61 = load i32, i32* @i, align 4
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %67 = call i32 @MATCH_PER_STREAM_OPT(i32 %60, i32 %61, i8* %64, i32* %65, %struct.TYPE_23__* %66)
  %68 = load i32, i32* @sample_fmts, align 4
  %69 = load i32, i32* @str, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %73 = call i32 @MATCH_PER_STREAM_OPT(i32 %68, i32 %69, i8* %70, i32* %71, %struct.TYPE_23__* %72)
  %74 = load i8*, i8** %11, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %59
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @av_get_sample_fmt(i8* %77)
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @AV_SAMPLE_FMT_NONE, align 4
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32, i32* @AV_LOG_FATAL, align 4
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  %87 = call i32 @exit_program(i32 1)
  br label %88

88:                                               ; preds = %83, %76, %59
  %89 = load i32, i32* @audio_sample_rate, align 4
  %90 = load i32, i32* @i, align 4
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %96 = call i32 @MATCH_PER_STREAM_OPT(i32 %89, i32 %90, i8* %93, i32* %94, %struct.TYPE_23__* %95)
  %97 = load i32, i32* @apad, align 4
  %98 = load i32, i32* @str, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %104 = call i32 @MATCH_PER_STREAM_OPT(i32 %97, i32 %98, i8* %101, i32* %102, %struct.TYPE_23__* %103)
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i8* @av_strdup(i8* %107)
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %114 = call i32 @get_ost_filters(%struct.TYPE_20__* %111, i32* %112, %struct.TYPE_19__* %113)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 9
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %88
  %122 = call i32 @exit_program(i32 1)
  br label %123

123:                                              ; preds = %121, %88
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %240, %123
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %243

130:                                              ; preds = %124
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i64 %135
  store %struct.TYPE_22__* %136, %struct.TYPE_22__** %12, align 8
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %149, label %141

141:                                              ; preds = %130
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %144, %147
  br i1 %148, label %149, label %239

149:                                              ; preds = %141, %130
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %164, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 8
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %159, %162
  br i1 %163, label %164, label %239

164:                                              ; preds = %154, %149
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %13, align 8
  br label %194

170:                                              ; preds = %164
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = icmp ult i64 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %170
  %176 = load i32, i32* @AV_LOG_FATAL, align 4
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 8
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %176, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %179, i32 %184)
  br label %240

186:                                              ; preds = %170
  %187 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @input_streams, align 8
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %187, i64 %190
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %191, align 8
  store %struct.TYPE_21__* %192, %struct.TYPE_21__** %13, align 8
  br label %193

193:                                              ; preds = %186
  br label %194

194:                                              ; preds = %193, %169
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %196 = icmp ne %struct.TYPE_21__* %195, null
  br i1 %196, label %197, label %215

197:                                              ; preds = %194
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %200, %203
  br i1 %204, label %205, label %238

205:                                              ; preds = %197
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %210, %213
  br i1 %214, label %215, label %238

215:                                              ; preds = %205, %194
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 5
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 7
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %220, 1
  %222 = call i64 @av_reallocp_array(i32** %217, i64 %221, i32 4)
  %223 = icmp slt i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %215
  %225 = call i32 @exit_program(i32 1)
  br label %226

226:                                              ; preds = %224, %215
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 5
  %232 = load i32*, i32** %231, align 8
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 7
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %235, 1
  store i64 %236, i64* %234, align 8
  %237 = getelementptr inbounds i32, i32* %232, i64 %235
  store i32 %229, i32* %237, align 4
  br label %238

238:                                              ; preds = %226, %205, %197
  br label %239

239:                                              ; preds = %238, %154, %141
  br label %240

240:                                              ; preds = %239, %175
  %241 = load i32, i32* %7, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %7, align 4
  br label %124

243:                                              ; preds = %124
  br label %244

244:                                              ; preds = %243, %54
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 6
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %251 = load i32*, i32** %5, align 8
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %253 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %254 = call i32 @check_streamcopy_filters(%struct.TYPE_20__* %250, i32* %251, %struct.TYPE_19__* %252, i32 %253)
  br label %255

255:                                              ; preds = %249, %244
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  ret %struct.TYPE_19__* %256
}

declare dso_local %struct.TYPE_19__* @new_output_stream(%struct.TYPE_20__*, i32*, i32, i32) #1

declare dso_local i32 @MATCH_PER_STREAM_OPT(i32, i32, i8*, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @av_get_sample_fmt(i8*) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @get_ost_filters(%struct.TYPE_20__*, i32*, %struct.TYPE_19__*) #1

declare dso_local i64 @av_reallocp_array(i32**, i64, i32) #1

declare dso_local i32 @check_streamcopy_filters(%struct.TYPE_20__*, i32*, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
